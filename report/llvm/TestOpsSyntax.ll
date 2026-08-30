Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestOpsSyntax?download=true
inline.NumInlined: 49754
inline.NumDeleted: 16231
loop-unroll.NumCompletelyUnrolled: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 88
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN4test21ParseWrappedKeywordOp5printERN4mlir12OpAsmPrinterE:bb.a
  br label %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !66
  br label %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit

_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret void
}

declare { ptr, i64 } @_ZN4test21ParseWrappedKeywordOp10getKeywordEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4test15ParseB64BytesOp5parseERN4mlir11OpAsmParserERNS1_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %4) #28
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.j = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !15
  store ptr %i.j, ptr %5, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.o, ptr %i.r, align 8, !tbaa !18
  %i.s = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(34) %5) #28
  %i.t = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.v, align 1, !tbaa !15
  store ptr @.str.3, ptr %3, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.w, align 8, !tbaa !18
  %i.x = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(34) %3) #28
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.x, ptr %i.s) #28
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr %i.z, ptr %i.ab) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.09.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.ac = load ptr, ptr %4, align 8, !tbaa !74    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i8 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test15ParseB64BytesOp5printERN4mlir12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !76 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull @.str.4, i64 noundef 2) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8736, ptr %i.h, align 1
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store ptr %i.o, ptr %i.g, align 8, !tbaa !66
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.p = tail call { ptr, i64 } @_ZN4test15ParseB64BytesOp6getB64Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  store ptr %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = extractvalue { ptr, i64 } %i.p, 1
  store i64 %i.s, ptr %i.r, align 8
  call void @_ZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.t = load ptr, ptr %1, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !77
  %i.x = load ptr, ptr %2, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !81
  %i.aa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.x, i64 noundef %i.z) #28 ; 0 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !70 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.5, i64 noundef 1) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  store i8 34, ptr %i.ai, align 1
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !66
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.d, %bb.e
  %i.an = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !81
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !83
  %i.e = add i64 %i.d, 2
  %i.f = udiv i64 %i.e, 3
  %i.g = shl i64 %i.f, 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i8 noundef signext 0) #28
  %i.h = load i64, ptr %i.c, align 8, !tbaa !83   ; 4 uses
  %i.i = urem i64 %i.h, 3
  %i.j = sub nuw i64 %i.h, %i.i
  %.not = icmp ult i64 %i.h, 3
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.c, align 8, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi i64 [ %i.h, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.043.lcssa = phi i64 [ 0, %bb.a ], [ %i.bf, %._crit_edge.loopexit ] ; 6 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.be, %._crit_edge.loopexit ] ; 4 uses
  %i.l = add i64 %.0.lcssa, 1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.k
  br i1 %i.m, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.046 = phi i64 [ %i.be, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.04345 = phi i64 [ %i.bf, %.lr.ph ], [ 0, %bb.a ] ; 5 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !85
  %i.o = getelementptr i8, ptr %i.n, i64 %.046    ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8                  ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = or disjoint i32 %i.v, %i.y
  %i.aa = or disjoint i32 %i.v, %i.r
  %i.ab = lshr i32 %i.q, 2
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.af = load ptr, ptr %0, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.04345
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !18
  %i.ah = lshr i32 %i.aa, 12
  %i.ai = and i32 %i.ah, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.am = load ptr, ptr %0, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.04345
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !18
  %i.ap = lshr i32 %i.z, 6
  %i.aq = and i32 %i.ap, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %i.au = load ptr, ptr %0, align 8, !tbaa !78
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.04345
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.at, ptr %i.aw, align 1, !tbaa !18
  %i.ax = and i32 %i.y, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = load ptr, ptr %0, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.04345
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store i8 %i.ba, ptr %i.bd, align 1, !tbaa !18
  %i.be = add i64 %.046, 3                        ; 3 uses
  %i.bf = add i64 %.04345, 4                      ; 2 uses
  %i.bg = icmp ult i64 %i.be, %i.j
  br i1 %i.bg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !86

bb.b:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %1, align 8, !tbaa !85
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.0.lcssa
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = shl nuw nsw i32 %i.bk, 4
  %i.bm = lshr i32 %i.bk, 2
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = load ptr, ptr %0, align 8, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.043.lcssa
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !18
  %i.bs = and i32 %i.bl, 48
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 16, !tbaa !18
  %i.bw = load ptr, ptr %0, align 8, !tbaa !78
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.043.lcssa
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !18
  br label %.sink.split

bb.c:                                             ; preds = %._crit_edge
  %i.bz = add i64 %.0.lcssa, 2
  %i.ca = icmp eq i64 %i.bz, %i.k
  br i1 %i.ca, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cb = load ptr, ptr %1, align 8, !tbaa !85    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0.lcssa
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.l
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = or disjoint i32 %i.cj, %i.cf
  %i.cl = lshr i32 %i.ce, 2
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = load ptr, ptr %0, align 8, !tbaa !78
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.043.lcssa
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !18
  %i.cr = lshr i32 %i.ck, 12
  %i.cs = and i32 %i.cr, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !18
  %i.cw = load ptr, ptr %0, align 8, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.043.lcssa
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 %i.cv, ptr %i.cy, align 1, !tbaa !18
  %i.cz = shl nuw nsw i32 %i.ci, 2
  %i.da = and i32 %i.cz, 60
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZZN4llvm12encodeBase64INS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_E5Table, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 4, !tbaa !18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.b
  %.sink = phi i8 [ 61, %bb.b ], [ %i.dd, %bb.d ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !78
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.043.lcssa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i8 %.sink, ptr %i.dg, align 1, !tbaa !18
  %i.dh = load ptr, ptr %0, align 8, !tbaa !78
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.043.lcssa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  store i8 61, ptr %i.dj, align 1, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  ret void
}

declare { ptr, i64 } @_ZN4test15ParseB64BytesOp6getB64Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4test18FormatInferType2Op16inferReturnTypesEPN4mlir11MLIRContextESt8optionalINS1_8LocationEENS1_10ValueRangeENS1_14DictionaryAttrENS1_11PropertyRefENS1_11RegionRangeERN4llvm15SmallVectorImplINS1_4TypeEEE(ptr noundef %0, ptr nofree readnone captures(none) %1, i8 %2, i64 %3, i64 %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readnone byval(%"class.mlir::PropertyRef") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.mlir::RegionRange") align 8 captures(none) %7, ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 12)) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %0, i32 noundef 16, i32 noundef 0) #28
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6assignESt16initializer_listIS2_E.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.thread.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 8) #28
  %.pre8.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !34
  %i.g = zext i32 %.pre8.pre.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6assignESt16initializer_listIS2_E.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6assignESt16initializer_listIS2_E.exit: ; preds = %bb.a, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.thread.i
  %.pre8.i.i5.i = phi i64 [ %i.g, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.thread.i ], [ 0, %bb.a ]
  %i.h = load ptr, ptr %8, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.pre8.i.i5.i
  store ptr %i.a, ptr %i.i, align 1
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !34
  %i.j = add i32 %.pre.i.i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !34
  ret i8 1
}

declare ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4test16WrappingRegionOp5parseERN4mlir11OpAsmParserERNS1_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.91", align 8 ; 10 uses
  %4 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.6, i64 5, ptr noundef nonnull align 8 dereferenceable(34) %2) #28, !inline_history !87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #28 ; 5 uses
end_hunk_0
