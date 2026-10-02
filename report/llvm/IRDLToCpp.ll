Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRDLToCpp?download=true
inline.NumInlined: 4112
inline.NumDeleted: 2287
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6appendINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEvEEvT_SL_:bb.a
  %i.y = phi i32 [ %i.r, %_ZSt10__distanceIN4llvm15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_St18input_iterator_tag.exit ], [ %.pre, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aa, %.sroa.2.0.copyload
  br i1 %.not5.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_copyINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEPS6_EEvT_SM_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !17
  %i.ac = zext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ak = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.bi, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i ]
  %.06.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.al = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ak) #20, !noalias !1464
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !80, !noalias !1464
  %i.an = call ptr %i.am(ptr noundef nonnull align 8 dereferenceable(64) %i.al) #20, !noalias !1464, !inline_history !1458
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !1466, !noalias !1467
  call void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.an) #20, !inline_history !1461
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ap, ptr %.06.i.i.i.i, align 8, !tbaa !28
  %i.aq = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ag
  br i1 %i.ar, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !30 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.au, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.aq, ptr %.06.i.i.i.i, align 8, !tbaa !53
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !31
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !31
  %.pre.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.aw = phi i64 [ %i.as, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ay = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #20 ; 0 uses
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !78  ; 3 uses
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !78
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.g
  %i.bb = phi ptr [ %i.bg, %bb.g ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ]
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !95
  %i.bd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.bb) #20
  %i.be = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(64) %i.bd) #20, !inline_history !1462
  br i1 %i.be, label %.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.loopexit_crit_edge.i.i.i.i, label %bb.g

.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.loopexit_crit_edge.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre7.pre.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !78
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #20 ; 0 uses
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !78  ; 3 uses
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !78
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.loopexit_crit_edge.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.bi = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pre7.pre.i.i.i.i, %.lr.ph.i.i.i.i._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.loopexit_crit_edge.i.i.i.i ], [ %i.bg, %bb.g ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.bi, %.sroa.2.0.copyload
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_copyINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEPS6_EEvT_SM_T0_.exit.loopexit, label %bb.e, !llvm.loop !1463

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_copyINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEPS6_EEvT_SM_T0_.exit.loopexit: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail11op_iteratorINS2_4irdl6TypeOpENS2_6Region10OpIteratorEEEPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESF_EES9_St20forward_iterator_tagSF_lPSF_SF_EppEv.exit.i.i.i.i
  %.pre19 = load i32, ptr %i.q, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_copyINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEPS6_EEvT_SM_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_copyINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEPS6_EEvT_SM_T0_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_copyINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEPS6_EEvT_SM_T0_.exit.loopexit, %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm.exit
  %i.bk = phi i32 [ %.pre19, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_copyINS_15mapped_iteratorIN4mlir6detail11op_iteratorINSA_4irdl6TypeOpENSA_6Region10OpIteratorEEEPFS6_SE_ES6_EEPS6_EEvT_SM_T0_.exit.loopexit ], [ %i.y, %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bl = trunc i64 %.0.lcssa.i to i32
  %i.bm = add i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.q, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL20generateOpDefinitionB5cxx11RN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %4 = alloca %"class.std::tuple.337", align 8    ; 9 uses
  %5 = alloca %"class.llvm::support::detail::FormatFunctor.312", align 8 ; 6 uses
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %7 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %8 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %9 = alloca %"class.std::tuple.323", align 8    ; 5 uses
  %10 = alloca %"class.llvm::support::detail::FormatFunctor.312", align 8 ; 4 uses
  %11 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %12 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %13 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %14 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %15 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.llvm::iterator_range.425", align 8 ; 7 uses
  %17 = alloca %"class.std::optional.360", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.llvm::formatv_object.693", align 8 ; 14 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.mlir::irdl::RegionOp", align 8 ; 6 uses
  %24 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %25 = alloca %"class.llvm::SmallVector.286", align 8 ; 19 uses
  %26 = alloca %"class.llvm::SmallVector.286", align 8 ; 20 uses
  %27 = alloca %"class.std::optional.696", align 8 ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.llvm::formatv_object.704", align 8 ; 11 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.llvm::formatv_object.704", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.llvm::formatv_object.709", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %"class.llvm::formatv_object.709", align 8 ; 11 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.llvm::formatv_object.322", align 8 ; 13 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.llvm::formatv_object.713", align 8 ; 17 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.llvm::formatv_object.716", align 8 ; 17 uses
  %44 = alloca %"class.llvm::SmallVector.286", align 8 ; 14 uses
  %45 = alloca %"class.llvm::SmallVector.286", align 8 ; 14 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.llvm::formatv_object.336", align 8 ; 16 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %50 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 11 uses
  %51 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %52 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %53 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %54 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %55 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %56 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %57 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %58 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %59 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %63 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %64 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %65 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %66 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %67 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %68 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %69 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %70 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %71 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %76 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %77 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %78 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %79 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %80 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %81 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %82 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %83 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %87 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %88 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %89 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %90 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %91 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %92 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %93 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %94 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %95 = alloca %"class.llvm::formatv_object.330", align 8 ; 11 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %99 = alloca %"struct.(anonymous namespace)::OpStrings", align 8 ; 12 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %104 = alloca %"class.llvm::formatv_object.677", align 8 ; 16 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %109 = alloca %"class.llvm::SmallString", align 8 ; 9 uses
  %110 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.d = load atomic i8, ptr @_ZGVZL20generateOpDefinitionB5cxx11RN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE16perOpDefTemplate acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL20generateOpDefinitionB5cxx11RN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE16perOpDefTemplate) #20
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4mlir4irdl6detail8TemplateC2EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL20generateOpDefinitionB5cxx11RN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE16perOpDefTemplate, ptr nonnull @.str.96, i64 1948)
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4mlir4irdl6detail8TemplateD2Ev, ptr nonnull @_ZZL20generateOpDefinitionB5cxx11RN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE16perOpDefTemplate, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL20generateOpDefinitionB5cxx11RN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE16perOpDefTemplate) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #20
  call fastcc void @_ZN12_GLOBAL__N_110getStringsEN4mlir4irdl11OperationOpE(ptr dead_on_unwind noalias writable align 8 %99, ptr %2)
  call fastcc void @_ZN12_GLOBAL__N_18fillDictERN4llvm9StringMapINS0_11SmallStringILj8EEENS0_15MallocAllocatorEEERKNS_9OpStringsE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(192) %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #20
  %i.h = getelementptr inbounds nuw i8, ptr %99, i64 48 ; 3 uses
  %.val = load ptr, ptr %i.h, align 8, !tbaa !17  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %99, i64 56 ; 4 uses
  %.val7 = load i32, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.j = zext i32 %.val7 to i64
  %.idx = shl nuw nsw i64 %i.j, 5
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.l = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 4 uses
  store ptr %i.l, ptr %100, align 8, !tbaa !28, !alias.scope !1831
  %i.m = getelementptr inbounds nuw i8, ptr %100, i64 8 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !30, !alias.scope !1831
  store i8 0, ptr %i.l, align 8, !tbaa !31, !alias.scope !1831
  %i.n = icmp eq i32 %.val7, 0
  br i1 %i.n, label %"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_0S8_EEEEEES8_OT_NS_9StringRefE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.p = ptrtoint ptr %91 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %92, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i20.i.i.i = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %92, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i21.i.i.i = getelementptr inbounds nuw i8, ptr %92, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %92, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %92, i64 40 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i22.i.i.i = getelementptr inbounds nuw i8, ptr %92, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %96, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %90, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %90, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %90, i64 48
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %100, i64 noundef %i.bu) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #20, !noalias !1831
  %.val15.val.i.i.i = load ptr, ptr %.val, align 8, !tbaa !53, !noalias !1832
  %i.ac = getelementptr i8, ptr %.val, i64 8
  %.val15.val18.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !30, !noalias !1832
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  call void @llvm.lifetime.start.p0(ptr nonnull %94), !noalias !1839
  store ptr %.val15.val.i.i.i, ptr %94, align 8, !noalias !1840
  %i.ad = getelementptr inbounds nuw i8, ptr %94, i64 8
  store i64 %.val15.val18.i.i.i, ptr %i.ad, align 8, !noalias !1840
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #20, !noalias !1840
  %i.ae = ptrtoint ptr %94 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %95, i64 48 ; 2 uses
  store ptr @.str.79, ptr %95, align 8, !tbaa !45, !alias.scope !1841, !noalias !1840
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i64 18, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !46, !alias.scope !1841, !noalias !1840
  %i.ag = getelementptr inbounds nuw i8, ptr %95, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !48, !alias.scope !1841, !noalias !1840
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %95, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !46, !alias.scope !1841, !noalias !1840
  %i.ah = getelementptr inbounds nuw i8, ptr %95, i64 32
  store i8 1, ptr %i.ah, align 8, !tbaa !52, !alias.scope !1841, !noalias !1840
  %i.ai = getelementptr inbounds nuw i8, ptr %95, i64 40 ; 2 uses
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !97, !alias.scope !1841, !noalias !1840
  %i.aj = ptrtoint ptr %i.ai to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.af, align 8, !alias.scope !1841, !noalias !1840
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %95, i64 56
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !31, !alias.scope !1841, !noalias !1840
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %i.ak = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 4 uses
  store ptr %i.ak, ptr %97, align 8, !tbaa !28, !alias.scope !1844, !noalias !1831
  %i.al = getelementptr inbounds nuw i8, ptr %97, i64 8 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !30, !alias.scope !1844, !noalias !1831
  store i8 0, ptr %i.ak, align 8, !tbaa !31, !alias.scope !1844, !noalias !1831
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #20, !noalias !1845
  %i.am = getelementptr inbounds nuw i8, ptr %93, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !36, !noalias !1845
  %i.an = getelementptr inbounds nuw i8, ptr %93, i64 40
  store i8 0, ptr %i.an, align 8, !tbaa !37, !noalias !1845
  %i.ao = getelementptr inbounds nuw i8, ptr %93, i64 44
  store i32 1, ptr %i.ao, align 4, !tbaa !38, !noalias !1845
  %i.ap = getelementptr inbounds nuw i8, ptr %93, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !noalias !1845
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %93, align 8, !tbaa !40, !noalias !1845
  %i.aq = getelementptr inbounds nuw i8, ptr %93, i64 48
  store ptr %97, ptr %i.aq, align 8, !tbaa !42, !noalias !1845
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %93, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.ar = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %93, ptr noundef nonnull align 8 dereferenceable(33) %95) #20 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %93) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #20, !noalias !1845
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #20, !noalias !1840
  call void @llvm.lifetime.end.p0(ptr nonnull %94), !noalias !1839
  %i.as = load i64, ptr %i.al, align 8, !tbaa !30, !noalias !1831 ; 2 uses
  %i.at = load i64, ptr %i.m, align 8, !tbaa !30, !alias.scope !1831
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aw = load ptr, ptr %97, align 8, !tbaa !53, !noalias !1831
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef %i.aw, i64 noundef %i.as) #20 ; 0 uses
  %i.ay = load ptr, ptr %97, align 8, !tbaa !53, !noalias !1831 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !31, !noalias !1831
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #20, !noalias !1831
  %.not1013.i.i.i = icmp eq i32 %.val7, 1
  br i1 %.not1013.i.i.i, label %"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_0S8_EEEEEES8_OT_NS_9StringRefE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.be = ptrtoint ptr %88 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %89, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i26.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %89, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %89, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %89, i64 40 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i28.i.i.i = getelementptr inbounds nuw i8, ptr %89, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %87, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %87, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %87, i64 48
  br label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i, %bb.e
  %.0612.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i ]
  %.sroa.01.011.i.i.i = phi ptr [ %.val, %bb.e ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #20, !noalias !1831
  %.val16.val.i.i.i = load ptr, ptr %.sroa.01.011.i.i.i, align 8, !tbaa !53, !noalias !1832
  %i.br = getelementptr i8, ptr %.sroa.01.011.i.i.i, i64 8
  %.val16.val17.i.i.i = load i64, ptr %i.br, align 8, !tbaa !30, !noalias !1832
  call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  call void @llvm.lifetime.start.p0(ptr nonnull %91), !noalias !1852
  store ptr %.val16.val.i.i.i, ptr %91, align 8, !noalias !1853
  store i64 %.val16.val17.i.i.i, ptr %i.o, align 8, !noalias !1853
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #20, !noalias !1853
  store ptr @.str.79, ptr %92, align 8, !tbaa !45, !alias.scope !1854, !noalias !1853
  store i64 18, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i20.i.i.i, align 8, !tbaa !46, !alias.scope !1854, !noalias !1853
  store ptr %i.q, ptr %i.r, align 8, !tbaa !48, !alias.scope !1854, !noalias !1853
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i21.i.i.i, align 8, !tbaa !46, !alias.scope !1854, !noalias !1853
  store i8 1, ptr %i.s, align 8, !tbaa !52, !alias.scope !1854, !noalias !1853
  store i64 %i.p, ptr %i.t, align 8, !tbaa !97, !alias.scope !1854, !noalias !1853
end_hunk_0
begin_hunk_1_@_ZL20generateOpDefinitionB5cxx11RN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %58), !noalias !1971
  %i.kt = load i64, ptr %i.km, align 8, !tbaa !30, !noalias !1963 ; 2 uses
  %i.ku = load i64, ptr %i.jm, align 8, !tbaa !30, !alias.scope !1963
  %i.kv = sub i64 4611686018427387903, %i.ku
  %i.kw = icmp ult i64 %i.kv, %i.kt
  br i1 %i.kw, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i114

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i108
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i114: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i108
  %i.kx = load ptr, ptr %61, align 8, !tbaa !53, !noalias !1963
  %i.ky = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef %i.kx, i64 noundef %i.kt) #20 ; 0 uses
  %i.kz = load ptr, ptr %61, align 8, !tbaa !53, !noalias !1963 ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.kl
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i114
  %i.lb = load i64, ptr %i.kl, align 8, !tbaa !31, !noalias !1963
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #20, !noalias !1963
  %.not1013.i.i.i117 = icmp eq i32 %.val13, 1
  br i1 %.not1013.i.i.i117, label %"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_3S8_EEEEEES8_OT_NS_9StringRefE.exit", label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i116
  %i.ld = getelementptr inbounds nuw i8, ptr %.val12, i64 32
  %i.le = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.lf = ptrtoint ptr %52 to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i26.i.i.i119 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %53, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i27.i.i.i120 = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %53, i64 40 ; 2 uses
  %i.lk = ptrtoint ptr %i.lj to i64
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i28.i.i.i121 = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.ll = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %51, i64 40
  %i.lp = getelementptr inbounds nuw i8, ptr %51, i64 44
  %i.lq = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %51, i64 48
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i106, %bb.s
  %.0612.i.i.i101 = phi i64 [ %i.jo, %bb.s ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i106 ]
  %.sroa.01.011.i.i.i102 = phi ptr [ %.val12, %bb.s ], [ %i.mb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i106 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20, !noalias !1963
  %.val16.val.i.i.i103 = load ptr, ptr %.sroa.01.011.i.i.i102, align 8, !tbaa !53, !noalias !1964
  %i.ls = getelementptr i8, ptr %.sroa.01.011.i.i.i102, i64 8
  %.val16.val17.i.i.i104 = load i64, ptr %i.ls, align 8, !tbaa !30, !noalias !1964
  call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  call void @llvm.lifetime.start.p0(ptr nonnull %55), !noalias !1984
  store ptr %.val16.val.i.i.i103, ptr %55, align 8, !noalias !1985
  store i64 %.val16.val17.i.i.i104, ptr %i.jp, align 8, !noalias !1985
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20, !noalias !1985
  store ptr @.str.101, ptr %56, align 8, !tbaa !45, !alias.scope !1986, !noalias !1985
  store i64 24, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i20.i.i.i98, align 8, !tbaa !46, !alias.scope !1986, !noalias !1985
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !48, !alias.scope !1986, !noalias !1985
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i21.i.i.i99, align 8, !tbaa !46, !alias.scope !1986, !noalias !1985
  store i8 1, ptr %i.jt, align 8, !tbaa !52, !alias.scope !1986, !noalias !1985
  store i64 %i.jq, ptr %i.ju, align 8, !tbaa !97, !alias.scope !1986, !noalias !1985
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.jr, align 8, !alias.scope !1986, !noalias !1985
  store i64 %i.jv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i22.i.i.i100, align 8, !tbaa !31, !alias.scope !1986, !noalias !1985
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  store ptr %i.jw, ptr %60, align 8, !tbaa !28, !alias.scope !1989, !noalias !1963
  store i64 0, ptr %i.jx, align 8, !tbaa !30, !alias.scope !1989, !noalias !1963
  store i8 0, ptr %i.jw, align 8, !tbaa !31, !alias.scope !1989, !noalias !1963
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20, !noalias !1990
  store i32 0, ptr %i.jy, align 8, !tbaa !36, !noalias !1990
  store i8 0, ptr %i.jz, align 8, !tbaa !37, !noalias !1990
  store i32 1, ptr %i.ka, align 4, !tbaa !38, !noalias !1990
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, i8 0, i64 24, i1 false), !noalias !1990
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %54, align 8, !tbaa !40, !noalias !1990
  store ptr %60, ptr %i.kc, align 8, !tbaa !42, !noalias !1990
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %54, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.lt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %54, ptr noundef nonnull align 8 dereferenceable(33) %56) #20 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %54) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20, !noalias !1990
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %55), !noalias !1984
  %i.lu = load i64, ptr %i.jx, align 8, !tbaa !30, !noalias !1963 ; 2 uses
  %i.lv = add i64 %i.lu, %.0612.i.i.i101          ; 2 uses
  %i.lw = load ptr, ptr %60, align 8, !tbaa !53, !noalias !1963 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.jw
  br i1 %i.lx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24.i.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24.i.i.i133: ; preds = %bb.u
  %i.ly = icmp ult i64 %i.lu, 16
  call void @llvm.assume(i1 %i.ly)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i105: ; preds = %bb.u
  %i.lz = load i64, ptr %i.jw, align 8, !tbaa !31, !noalias !1963
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !1963
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i.i.i102, i64 32 ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.mb, %i.jk
  br i1 %.not.i.i.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i108, label %bb.u, !llvm.loop !1718

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i128, %.lr.ph.i.i.i118
  %i.mc = phi ptr [ %i.ld, %.lr.ph.i.i.i118 ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i128 ] ; 3 uses
  %.sroa.04.014.i.i.i122 = phi ptr [ %.val12, %.lr.ph.i.i.i118 ], [ %i.mc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i128 ]
  %i.md = load i64, ptr %i.jm, align 8, !tbaa !30, !alias.scope !1963
  %i.me = icmp eq i64 %i.md, 4611686018427387903
  br i1 %i.me, label %bb.w, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.i.i.i123

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #22
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.i.i.i123: ; preds = %bb.v
  %i.mf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull @.str.6, i64 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20, !noalias !1963
  %.val14.val.i.i.i124 = load ptr, ptr %i.mc, align 8, !tbaa !53, !noalias !1964
  %i.mg = getelementptr i8, ptr %.sroa.04.014.i.i.i122, i64 40
  %.val14.val19.i.i.i125 = load i64, ptr %i.mg, align 8, !tbaa !30, !noalias !1964
  call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.lifetime.start.p0(ptr nonnull %52), !noalias !1997
  store ptr %.val14.val.i.i.i124, ptr %52, align 8, !noalias !1998
  store i64 %.val14.val19.i.i.i125, ptr %i.le, align 8, !noalias !1998
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20, !noalias !1998
  store ptr @.str.101, ptr %53, align 8, !tbaa !45, !alias.scope !1999, !noalias !1998
  store i64 24, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i26.i.i.i119, align 8, !tbaa !46, !alias.scope !1999, !noalias !1998
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !48, !alias.scope !1999, !noalias !1998
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i27.i.i.i120, align 8, !tbaa !46, !alias.scope !1999, !noalias !1998
  store i8 1, ptr %i.li, align 8, !tbaa !52, !alias.scope !1999, !noalias !1998
  store i64 %i.lf, ptr %i.lj, align 8, !tbaa !97, !alias.scope !1999, !noalias !1998
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.lg, align 8, !alias.scope !1999, !noalias !1998
  store i64 %i.lk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i28.i.i.i121, align 8, !tbaa !31, !alias.scope !1999, !noalias !1998
  call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  store ptr %i.ll, ptr %62, align 8, !tbaa !28, !alias.scope !2002, !noalias !1963
  store i64 0, ptr %i.lm, align 8, !tbaa !30, !alias.scope !2002, !noalias !1963
  store i8 0, ptr %i.ll, align 8, !tbaa !31, !alias.scope !2002, !noalias !1963
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20, !noalias !2003
  store i32 0, ptr %i.ln, align 8, !tbaa !36, !noalias !2003
  store i8 0, ptr %i.lo, align 8, !tbaa !37, !noalias !2003
  store i32 1, ptr %i.lp, align 4, !tbaa !38, !noalias !2003
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, i8 0, i64 24, i1 false), !noalias !2003
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %51, align 8, !tbaa !40, !noalias !2003
  store ptr %62, ptr %i.lr, align 8, !tbaa !42, !noalias !2003
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %51, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.mh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %51, ptr noundef nonnull align 8 dereferenceable(33) %53) #20 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20, !noalias !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20, !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %52), !noalias !1997
  %i.mi = load i64, ptr %i.lm, align 8, !tbaa !30, !noalias !1963 ; 2 uses
  %i.mj = load i64, ptr %i.jm, align 8, !tbaa !30, !alias.scope !1963
  %i.mk = sub i64 4611686018427387903, %i.mj
  %i.ml = icmp ult i64 %i.mk, %i.mi
  br i1 %i.ml, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit29.i.i.i126

bb.x:                                             ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.i.i.i123
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit29.i.i.i126: ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.i.i.i123
  %i.mm = load ptr, ptr %62, align 8, !tbaa !53, !noalias !1963
  %i.mn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef %i.mm, i64 noundef %i.mi) #20 ; 0 uses
  %i.mo = load ptr, ptr %62, align 8, !tbaa !53, !noalias !1963 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.ll
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit29.i.i.i126
  %i.mq = load i64, ptr %i.ll, align 8, !tbaa !31, !noalias !1963
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit29.i.i.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !1963
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mc, i64 32 ; 2 uses
  %.not10.i.i.i129 = icmp eq ptr %i.ms, %i.jk
  br i1 %.not10.i.i.i129, label %"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_3S8_EEEEEES8_OT_NS_9StringRefE.exit", label %bb.v, !llvm.loop !1739

"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_3S8_EEEEEES8_OT_NS_9StringRefE.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i128, %"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_2S8_EEEEEES8_OT_NS_9StringRefE.exit", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i116
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20
  %i.mt = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #20
  %i.mu = load ptr, ptr %i.h, align 8, !tbaa !17, !noalias !2004 ; 2 uses
  %i.mv = load i32, ptr %i.i, align 8, !tbaa !18, !noalias !2004
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [32 x i8], ptr %i.mu, i64 %i.mw
  call void @_ZN4llvm6detail9join_implIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_T_S9_NS_9StringRefESt20forward_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %106, ptr noundef %i.mu, ptr noundef %i.mx, ptr nonnull @.str.98, i64 1)
  %i.my = load i32, ptr %i.i, align 8, !tbaa !18
  %.not.i = icmp ne i32 %i.my, 0                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  %i.mz = zext i1 %.not.i to i64                  ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !30, !noalias !2005
  %i.nc = sub i64 4611686018427387903, %i.nb
  %i.nd = icmp ult i64 %i.nc, %i.mz
  br i1 %i.nd, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.y:                                             ; preds = %"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_3S8_EEEEEES8_OT_NS_9StringRefE.exit"
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #22, !noalias !2005
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %"_ZN4llvm4joinINS_14iterator_rangeINS_15mapped_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZL20generateOpDefinitionRNS_9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpEE3$_3S8_EEEEEES8_OT_NS_9StringRefE.exit"
  %i.ne = select i1 %.not.i, ptr @.str.98, ptr @.str.74
  %i.nf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %106, ptr noundef nonnull %i.ne, i64 noundef %i.mz) #20, !noalias !2005 ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 5 uses
  store ptr %i.ng, ptr %105, align 8, !tbaa !28, !alias.scope !2005
  %i.nh = load ptr, ptr %i.nf, align 8, !tbaa !53 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 5 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !30 ; 3 uses
  %i.nm = icmp ult i64 %i.nl, 16
  call void @llvm.assume(i1 %i.nm)
  %i.nn = add nuw nsw i64 %i.nl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ng, ptr noundef nonnull align 8 dereferenceable(1) %i.ni, i64 %i.nn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.nh, ptr %105, align 8, !tbaa !53, !alias.scope !2005
  %i.no = load i64, ptr %i.ni, align 8, !tbaa !31
  store i64 %i.no, ptr %i.ng, align 8, !tbaa !31, !alias.scope !2005
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.np = phi i64 [ %i.nl, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %105, i64 8
  store i64 %i.np, ptr %i.nr, align 8, !tbaa !30, !alias.scope !2005
  store ptr %i.ni, ptr %i.nf, align 8, !tbaa !53
  store i64 0, ptr %i.nq, align 8, !tbaa !30
  store i8 0, ptr %i.ni, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #20
  %i.ns = load ptr, ptr %i.cq, align 8, !tbaa !17, !noalias !2006 ; 2 uses
  %i.nt = load i32, ptr %i.cr, align 8, !tbaa !18, !noalias !2006
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr %i.ns, i64 %i.nu
  call void @_ZN4llvm6detail9join_implIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_T_S9_NS_9StringRefESt20forward_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %108, ptr noundef %i.ns, ptr noundef %i.nv, ptr nonnull @.str.98, i64 1)
  %i.nw = load i32, ptr %i.cr, align 8, !tbaa !18
  %.not.i134 = icmp ne i32 %i.nw, 0               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %i.nx = zext i1 %.not.i134 to i64               ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %108, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !30, !noalias !2007
  %i.oa = sub i64 4611686018427387903, %i.nz
  %i.ob = icmp ult i64 %i.oa, %i.nx
  br i1 %i.ob, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i135

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #22, !noalias !2007
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i135: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.oc = select i1 %.not.i134, ptr @.str.98, ptr @.str.74
  %i.od = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %108, ptr noundef nonnull %i.oc, i64 noundef %i.nx) #20, !noalias !2007 ; 6 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %107, i64 16 ; 5 uses
  store ptr %i.oe, ptr %107, align 8, !tbaa !28, !alias.scope !2007
  %i.of = load ptr, ptr %i.od, align 8, !tbaa !53 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 5 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i135
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !30 ; 3 uses
  %i.ok = icmp ult i64 %i.oj, 16
  call void @llvm.assume(i1 %i.ok)
  %i.ol = add nuw nsw i64 %i.oj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oe, ptr noundef nonnull align 8 dereferenceable(1) %i.og, i64 %i.ol, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i135
  store ptr %i.of, ptr %107, align 8, !tbaa !53, !alias.scope !2007
  %i.om = load i64, ptr %i.og, align 8, !tbaa !31
  store i64 %i.om, ptr %i.oe, align 8, !tbaa !31, !alias.scope !2007
  %.phi.trans.insert.i137 = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %.pre.i138 = load i64, ptr %.phi.trans.insert.i137, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit139

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit139: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  %i.on = phi i64 [ %i.oj, %bb.ab ], [ %.pre.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ]
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %107, i64 8
  store i64 %i.on, ptr %i.op, align 8, !tbaa !30, !alias.scope !2007
  store ptr %i.og, ptr %i.od, align 8, !tbaa !53
  store i64 0, ptr %i.oo, align 8, !tbaa !30
  store i8 0, ptr %i.og, align 8, !tbaa !31
  call void @_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_S6_S6_S6_EEEDabPKcDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::formatv_object.677") align 8 %104, i1 noundef zeroext true, ptr noundef nonnull @.str.97, ptr noundef nonnull align 8 dereferenceable(32) %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(32) %101, ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull align 8 dereferenceable(32) %105, ptr noundef nonnull align 8 dereferenceable(32) %107)
  %i.oq = load ptr, ptr %107, align 8, !tbaa !53  ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.oe
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit139
  %i.os = load i64, ptr %i.oe, align 8, !tbaa !31
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  %i.ou = load ptr, ptr %108, align 8, !tbaa !53  ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ox = load i64, ptr %i.ov, align 8, !tbaa !31
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #20
  %i.oz = load ptr, ptr %105, align 8, !tbaa !53  ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.ng
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.pb = load i64, ptr %i.ng, align 8, !tbaa !31
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.pd = load ptr, ptr %106, align 8, !tbaa !53  ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %106, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !31
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  %i.pi = getelementptr inbounds nuw i8, ptr %109, i64 24 ; 2 uses
  store ptr %i.pi, ptr %109, align 8, !tbaa !23, !alias.scope !2010
  %i.pj = getelementptr inbounds nuw i8, ptr %109, i64 8
  store i64 0, ptr %i.pj, align 8, !tbaa !25, !alias.scope !2010
  %i.pk = getelementptr inbounds nuw i8, ptr %109, i64 16
  store i64 8, ptr %i.pk, align 8, !tbaa !24, !alias.scope !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20, !noalias !2010
  %i.pl = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 2, ptr %i.pl, align 8, !tbaa !36, !noalias !2010
  %i.pm = getelementptr inbounds nuw i8, ptr %50, i64 40
  store i8 0, ptr %i.pm, align 8, !tbaa !37, !noalias !2010
  %i.pn = getelementptr inbounds nuw i8, ptr %50, i64 44
  store i32 1, ptr %i.pn, align 4, !tbaa !38, !noalias !2010
  %i.po = getelementptr inbounds nuw i8, ptr %50, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.po, i8 0, i64 24, i1 false), !noalias !2010
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %50, align 8, !tbaa !40, !noalias !2010
  %i.pp = getelementptr inbounds nuw i8, ptr %50, i64 48
  store ptr %109, ptr %i.pp, align 8, !tbaa !102, !noalias !2010
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %50, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.pq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %50, ptr noundef nonnull align 8 dereferenceable(33) %104) #20 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %50) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20, !noalias !2010
  %i.pr = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.99, i64 13) #20
  %i.ps = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr nonnull @.str.99, i64 13, i32 noundef %i.pr) #20 ; 2 uses
  %i.pt = load ptr, ptr %1, align 8, !tbaa !81
  %i.pu = zext i32 %i.ps to i64
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.pu ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i150, label %_ZN4llvm14StringMapEntryINS_11SmallStringILj8EEEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %_ZN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEixENS_9StringRefE.exit

_ZN4llvm14StringMapEntryINS_11SmallStringILj8EEEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.px = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 54, i64 noundef 8) #20 ; 8 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.py, ptr noundef nonnull align 1 dereferenceable(13) @.str.99, i64 13, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 53
  store i8 0, ptr %i.pz, align 1, !tbaa !31
  store i64 13, ptr %i.px, align 8, !tbaa !85
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 32 ; 2 uses
  store i64 0, ptr %i.qb, align 8
  store ptr %i.qb, ptr %i.qa, align 8, !tbaa !23
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store i64 0, ptr %i.qc, align 8, !tbaa !25
  %i.qd = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store i64 8, ptr %i.qd, align 8, !tbaa !24
  store ptr %i.px, ptr %i.pv, align 8, !tbaa !83
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !86
  %i.qg = add i32 %i.qf, 1
  store i32 %i.qg, ptr %i.qe, align 4, !tbaa !86
  %i.qh = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %i.ps) #20
  %i.qi = load ptr, ptr %1, align 8, !tbaa !81
  %i.qj = zext i32 %i.qh to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qj
  %.pre.i151 = load ptr, ptr %i.qk, align 8, !tbaa !83
  br label %_ZN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEixENS_9StringRefE.exit

_ZN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEixENS_9StringRefE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZN4llvm14StringMapEntryINS_11SmallStringILj8EEEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.ql = phi ptr [ %.pre.i151, %_ZN4llvm14StringMapEntryINS_11SmallStringILj8EEEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i ], [ %i.pw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.qm, ptr noundef nonnull align 8 dereferenceable(32) %109) ; 0 uses
  %i.qo = load ptr, ptr %109, align 8, !tbaa !23  ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.pi
  br i1 %i.qp, label %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEixENS_9StringRefE.exit
  call void @free(ptr noundef %i.qo) #20
  br label %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit

_ZN4llvm11SmallVectorIcLj8EED2Ev.exit:            ; preds = %_ZN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEixENS_9StringRefE.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  %i.qq = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  store ptr %i.qq, ptr %44, align 8, !tbaa !17
  %i.qr = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 7 uses
  store i32 0, ptr %i.qr, align 8, !tbaa !18
  %i.qs = getelementptr inbounds nuw i8, ptr %44, i64 12 ; 2 uses
  store i32 1, ptr %i.qs, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.qt = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  store ptr %i.qt, ptr %45, align 8, !tbaa !17
  %i.qu = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 7 uses
  store i32 0, ptr %i.qu, align 8, !tbaa !18
  %i.qv = getelementptr inbounds nuw i8, ptr %45, i64 12 ; 2 uses
  store i32 1, ptr %i.qv, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.qx = load i32, ptr %i.qw, align 4, !noalias !2011 ; 3 uses
  %i.qy = and i32 %i.qx, 8388607
  %i.qz = icmp ne i32 %i.qy, 0
  call void @llvm.assume(i1 %i.qz)
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.rb = lshr i32 %i.qx, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.rb, 1
  %i.rc = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %i.ra, i64 %i.rc
  %i.re = lshr i32 %i.qx, 21
  %i.rf = and i32 %i.re, 2040
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !75, !noalias !2011
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [32 x i8], ptr %i.rh, i64 %i.rk
  call void @_ZN4mlir6Region6getOpsINS_4irdl9RegionsOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.425") align 8 %16, ptr noundef nonnull align 8 dereferenceable(28) %i.rl)
  %i.rm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ro = load ptr, ptr %i.rm, align 8, !tbaa !78 ; 2 uses
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !78
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZN4mlir7OpTrait16AtMostOneChildOfIJNS_4irdl10OperandsOpENS2_9ResultsOpENS2_12AttributesOpENS2_9RegionsOpEEE4ImplINS2_11OperationOpEE5getOpIS6_EENSt9enable_ifIXsr3std11disjunctionISt7is_sameIT_S3_ESD_ISE_S4_ESD_ISE_S5_ESD_ISE_S6_EEE5valueESt8optionalISE_EE4typeEv.exit.thread.i.i, label %_ZN4mlir7OpTrait16AtMostOneChildOfIJNS_4irdl10OperandsOpENS2_9ResultsOpENS2_12AttributesOpENS2_9RegionsOpEEE4ImplINS2_11OperationOpEE5getOpIS6_EENSt9enable_ifIXsr3std11disjunctionISt7is_sameIT_S3_ESD_ISE_S4_ESD_ISE_S5_ESD_ISE_S6_EEE5valueESt8optionalISE_EE4typeEv.exit.i.i

_ZN4mlir7OpTrait16AtMostOneChildOfIJNS_4irdl10OperandsOpENS2_9ResultsOpENS2_12AttributesOpENS2_9RegionsOpEEE4ImplINS2_11OperationOpEE5getOpIS6_EENSt9enable_ifIXsr3std11disjunctionISt7is_sameIT_S3_ESD_ISE_S4_ESD_ISE_S5_ESD_ISE_S6_EEE5valueESt8optionalISE_EE4typeEv.exit.thread.i.i: ; preds = %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %_ZL33generateRegionConstraintVerifiersRN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpERKN12_GLOBAL__N_19OpStringsERNS_15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESL_.exit.i

_ZN4mlir7OpTrait16AtMostOneChildOfIJNS_4irdl10OperandsOpENS2_9ResultsOpENS2_12AttributesOpENS2_9RegionsOpEEE4ImplINS2_11OperationOpEE5getOpIS6_EENSt9enable_ifIXsr3std11disjunctionISt7is_sameIT_S3_ESD_ISE_S4_ESD_ISE_S5_ESD_ISE_S6_EEE5valueESt8optionalISE_EE4typeEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %.sroa.41.0.copyload.i.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8
  %i.rr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ro) #20
  %i.rs = call ptr %.sroa.41.0.copyload.i.i.i(ptr noundef nonnull align 8 dereferenceable(64) %i.rr) #20, !inline_history !1754
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  store ptr %i.rs, ptr %17, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 1, ptr %i.rt, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %99, i64 144
  %i.rv = getelementptr inbounds nuw i8, ptr %99, i64 152 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !18
  %.not.i.not.i.i = icmp eq i32 %i.rw, 0
  br i1 %.not.i.not.i.i, label %_ZL33generateRegionConstraintVerifiersRN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpERKN12_GLOBAL__N_19OpStringsERNS_15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESL_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4mlir7OpTrait16AtMostOneChildOfIJNS_4irdl10OperandsOpENS2_9ResultsOpENS2_12AttributesOpENS2_9RegionsOpEEE4ImplINS2_11OperationOpEE5getOpIS6_EENSt9enable_ifIXsr3std11disjunctionISt7is_sameIT_S3_ESD_ISE_S4_ESD_ISE_S5_ESD_ISE_S6_EEE5valueESt8optionalISE_EE4typeEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %i.rx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %18, i64 8
  %111 = insertelement <2 x ptr> poison, ptr %18, i64 0 ; 2 uses
  %112 = insertelement <2 x ptr> %111, ptr %i.mt, i64 1
  %i.rz = ptrtoint <2 x ptr> %112 to <2 x i64>
  %i.sa = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.sb = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %20, i64 48
  %.ptr.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = ptrtoint ptr %i.sd to i64
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.sh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.sk = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.sl = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.sm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.sn = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.so = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 11 uses
  %i.su = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 11 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.sz = ptrtoint ptr %27 to i64                 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i10.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tc = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.td = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  %i.te = ptrtoint ptr %i.td to i64
  %.sroa.4.0..sroa_idx.i.i.i12.i.i = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.tf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.tj = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.tk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.tm = ptrtoint ptr %28 to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %31, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i17.i.i = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.tp = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.tq = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 2 uses
  %i.tr = ptrtoint ptr %i.tq to i64
  %.sroa.4.0..sroa_idx.i.i.i18.i.i = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.ts = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.tv = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.tw = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.tx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ty = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.tz = ptrtoint ptr %30 to i64
  %i.ua = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i37.i.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %33, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i38.i.i = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.ud = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.ue = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 2 uses
  %i.uf = ptrtoint ptr %i.ue to i64
  %.sroa.4.0..sroa_idx.i.i.i39.i.i = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.ug = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.uj = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.uk = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.ul = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.un = ptrtoint ptr %32 to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %35, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i53.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %35, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i54.i.i = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.uq = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.ur = getelementptr inbounds nuw i8, ptr %35, i64 40 ; 2 uses
  %i.us = ptrtoint ptr %i.ur to i64
  %.sroa.4.0..sroa_idx.i.i.i55.i.i = getelementptr inbounds nuw i8, ptr %35, i64 56
  %i.ut = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ux = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.uy = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.uz = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.va = ptrtoint ptr %34 to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 9 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %38, i64 72 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i76.i.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %38, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i77.i.i = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.vi = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.vj = getelementptr inbounds nuw i8, ptr %38, i64 40 ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %38, i64 56 ; 5 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.vm = ptrtoint ptr %i.vj to i64
  %.sroa.4.0..sroa_idx.i.i.i78.i.i = getelementptr inbounds nuw i8, ptr %38, i64 80
  %i.vn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 8 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 6 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.vq = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.vr = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.vs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.vu = ptrtoint ptr %19 to i64                 ; 2 uses
  %i.vv = insertelement <2 x ptr> poison, ptr %22, i64 0
  %i.vw = insertelement <2 x ptr> %i.vv, ptr %21, i64 1
  %i.vx = ptrtoint <2 x ptr> %i.vw to <2 x i64>
  %i.vy = getelementptr inbounds nuw i8, ptr %41, i64 64 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i109.i.i = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.vz = getelementptr inbounds nuw i8, ptr %41, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i110.i.i = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.wa = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.wb = getelementptr inbounds nuw i8, ptr %41, i64 40 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %41, i64 48
  %i.wd = getelementptr inbounds nuw i8, ptr %41, i64 56 ; 2 uses
  %.ptr.1.i.i.i.i111.i.i = getelementptr inbounds nuw i8, ptr %41, i64 80
  %.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %41, i64 96
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = ptrtoint ptr %i.wc to i64
  %i.wg = ptrtoint ptr %i.wb to i64
  %.sroa.4.0..sroa_idx.i.i.i112.i.i = getelementptr inbounds nuw i8, ptr %41, i64 72
  %.sroa.6.0..sroa_idx.i.i.i113.i.i = getelementptr inbounds nuw i8, ptr %41, i64 88
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %41, i64 104
  %i.wh = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.wl = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.wm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.wn = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.wo = ptrtoint ptr %40 to i64
  %i.wp = insertelement <2 x ptr> %111, ptr %i.b, i64 1
  %i.wq = ptrtoint <2 x ptr> %i.wp to <2 x i64>
  %i.wr = getelementptr inbounds nuw i8, ptr %43, i64 64 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i127.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ws = getelementptr inbounds nuw i8, ptr %43, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i128.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.wt = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.wu = getelementptr inbounds nuw i8, ptr %43, i64 40 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %43, i64 48
  %i.ww = getelementptr inbounds nuw i8, ptr %43, i64 56 ; 2 uses
  %.ptr.1.i.i.i.i129.i.i = getelementptr inbounds nuw i8, ptr %43, i64 80
  %.ptr.2.i.i.i.i130.i.i = getelementptr inbounds nuw i8, ptr %43, i64 96
  %i.wx = ptrtoint ptr %i.ww to i64
  %i.wy = ptrtoint ptr %i.wv to i64
  %i.wz = ptrtoint ptr %i.wu to i64
  %.sroa.4.0..sroa_idx.i.i.i131.i.i = getelementptr inbounds nuw i8, ptr %43, i64 72
  %.sroa.6.0..sroa_idx.i.i.i132.i.i = getelementptr inbounds nuw i8, ptr %43, i64 88
  %.sroa.8.0..sroa_idx.i.i.i133.i.i = getelementptr inbounds nuw i8, ptr %43, i64 104
  %i.xa = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.xc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.xd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.xe = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.xf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xg = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.xh = ptrtoint ptr %42 to i64
  %i.xi = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.xj = getelementptr inbounds nuw i8, ptr %22, i64 26
  br label %bb.ad

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZL33generateRegionConstraintVerifiersRN4llvm9StringMapINS_11SmallStringILj8EEENS_15MallocAllocatorEEEN4mlir4irdl11OperationOpERKN12_GLOBAL__N_19OpStringsERNS_15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESL_.exit.i

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i.i, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.akx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.xk = load ptr, ptr %i.ru, align 8, !tbaa !17
  %i.xl = getelementptr inbounds nuw [32 x i8], ptr %i.xk, i64 %storemerge10.i.i ; 2 uses
  store ptr %i.rx, ptr %18, align 8, !tbaa !28
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !53 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.xo, ptr %i.a, align 8, !tbaa !46
  %i.xp = icmp ugt i64 %i.xo, 15
  br i1 %i.xp, label %bb.ae, label %._crit_edge.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.xq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.xq, ptr %18, align 8, !tbaa !53
  %i.xr = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.xr, ptr %i.rx, align 8, !tbaa !31
end_hunk_1
