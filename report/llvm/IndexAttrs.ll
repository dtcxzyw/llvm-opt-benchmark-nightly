Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IndexAttrs?download=true
inline.NumInlined: 751
inline.NumDeleted: 471
begin_hunk_0_@_ZNK4mlir5index21IndexCmpPredicateAttr5printERNS_10AsmPrinterE:bb.a

bb.c:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.e:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.f:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.h:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.i:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.j:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

bb.k:                                             ; preds = %bb.a
  br label %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit

_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.not.i.i = phi i1 [ true, %bb.k ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.a ]
  %.sroa.12.0.i = phi i64 [ 0, %bb.k ], [ 3, %bb.j ], [ 2, %bb.b ], [ 3, %bb.c ], [ 3, %bb.d ], [ 3, %bb.e ], [ 3, %bb.f ], [ 3, %bb.g ], [ 3, %bb.h ], [ 3, %bb.i ], [ 2, %bb.a ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ @.str.10, %bb.k ], [ @.str.9, %bb.j ], [ @.str.1, %bb.b ], [ @.str.2, %bb.c ], [ @.str.3, %bb.d ], [ @.str.4, %bb.e ], [ @.str.5, %bb.f ], [ @.str.6, %bb.g ], [ @.str.7, %bb.h ], [ @.str.8, %bb.i ], [ @.str, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(16) %1) #13, !inline_history !75 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %.sroa.12.0.i, %i.o
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull %.sroa.0.0.i, i64 noundef %.sroa.12.0.i) #13 ; 0 uses
  br label %_ZN4mlirlsINS_10AsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit

bb.m:                                             ; preds = %_ZN4mlir5index26stringifyIndexCmpPredicateENS0_17IndexCmpPredicateE.exit
  br i1 %.not.i.i, label %_ZN4mlirlsINS_10AsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %.sroa.0.0.i, i64 %.sroa.12.0.i, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.12.0.i
  store ptr %i.s, ptr %i.k, align 8, !tbaa !80
  br label %_ZN4mlirlsINS_10AsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit

_ZN4mlirlsINS_10AsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  ret void
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4mlir5index21IndexCmpPredicateAttr8getValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !71
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4mlir5index12IndexDialect14parseAttributeERNS_16DialectAsmParserENS_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.llvm::StringLiteral", align 8 ; 8 uses
  %9 = alloca %"class.mlir::AsmParser::KeywordSwitch", align 8 ; 12 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr %1, ptr %9, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = load ptr, ptr %1, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #13, !inline_history !83
  store ptr %i.i, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 34 ; 3 uses
  store i8 0, ptr %i.l, align 2, !tbaa !84
  %i.m = load ptr, ptr %1, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 672
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i8 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j) #13, !inline_history !83
  %i.q = trunc nuw i8 %i.p to i1
  %.pre.i = load i8, ptr %i.l, align 2, !tbaa !84, !range !63 ; 2 uses
  br i1 %i.q, label %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = trunc nuw i8 %.pre.i to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 256, ptr %i.k, align 8
  br label %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.thread.i

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.k, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !87
  br label %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.thread.i

_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i"

_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.20, ptr %8, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 13, ptr %i.t, align 8
  %i.u = trunc nuw i8 %.pre.i to i1
  br i1 %i.u, label %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i", label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !89   ; 2 uses
  switch i64 %i.w, label %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread8.i" [
    i64 0, label %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i"
    i64 13, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i.i:            ; preds = %bb.e
  %.sroa.04.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !55 ; 2 uses
  %i.x = load i64, ptr %.sroa.04.0.copyload.i.i, align 1
  %i.y = xor i64 %i.x, 7234314203403677027
  %i.z = getelementptr i8, ptr %.sroa.04.0.copyload.i.i, i64 5
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 7310575174727001458
  %i.ac = or i64 %i.y, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread8.i"

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  %i.ag = call ptr @_ZN4mlir5index21IndexCmpPredicateAttr5parseERNS_9AsmParserENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr readnone poison) ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.k, align 8, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.aj, align 1, !tbaa !87
  br label %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i"

"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i": ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.i, %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.thread.i
  %.sroa.021.1 = phi ptr [ null, %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.i ], [ %i.ag, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i ], [ null, %_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEEC2ERS0_PN4llvm9StringRefE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZL24generatedAttributeParserRN4mlir9AsmParserEPN4llvm9StringRefENS_4TypeERNS_9AttributeE.exit

"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread8.i": ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.f

"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i": ; preds = %bb.e
  %i.ak = load ptr, ptr %9, align 8, !tbaa !91, !nonnull !64, !align !97 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr nonnull %8, i64 1) #13, !inline_history !98
  %.pre6.i = load i8, ptr %i.l, align 2, !tbaa !84, !range !63
  %i.ao = trunc nuw i8 %.pre6.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.ao, label %_ZL24generatedAttributeParserRN4mlir9AsmParserEPN4llvm9StringRefENS_4TypeERNS_9AttributeE.exit, label %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i._crit_edge"

"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i._crit_edge": ; preds = %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i"
  %.sroa.2.0.copyload.i.i.pre = load i64, ptr %i.v, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i._crit_edge", %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread8.i"
  %.sroa.2.0.copyload.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.pre, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i._crit_edge" ], [ %i.w, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread8.i" ]
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 0, ptr %i.ap, align 1, !tbaa !87
  br label %_ZL24generatedAttributeParserRN4mlir9AsmParserEPN4llvm9StringRefENS_4TypeERNS_9AttributeE.exit

_ZL24generatedAttributeParserRN4mlir9AsmParserEPN4llvm9StringRefENS_4TypeERNS_9AttributeE.exit: ; preds = %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i", %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i", %bb.f
  %.sroa.021.2 = phi ptr [ %.sroa.021.1, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i" ], [ null, %bb.f ], [ null, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i" ]
  %.sroa.020.0 = phi ptr [ null, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i" ], [ %.sroa.01.0.copyload.i.i, %bb.f ], [ null, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i" ]
  %.sroa.5.0 = phi i64 [ 0, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.thread.i" ], [ %.sroa.2.0.copyload.i.i, %bb.f ], [ 0, %"_ZN4mlir9AsmParser13KeywordSwitchINS_19OptionalParseResultEE4CaseIZL24generatedAttributeParserRS0_PN4llvm9StringRefENS_4TypeERNS_9AttributeEE3$_0vEERS3_NS6_13StringLiteralEOT_.exit.i" ]
  %i.aq = load i16, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.ar = and i16 %i.aq, 256
  %.not = icmp eq i16 %i.ar, 0
  br i1 %.not, label %bb.g, label %bb.s

bb.g:                                             ; preds = %_ZL24generatedAttributeParserRN4mlir9AsmParserEPN4llvm9StringRefENS_4TypeERNS_9AttributeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.at, align 1, !tbaa !42
  %i.au = load ptr, ptr %1, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(34) %11) #13
  %i.ax = load ptr, ptr %10, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 3, ptr %7, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.12, ptr %i.az, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 19, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 9 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !59
  %.not.i.i.i.i.i = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i, !prof !60

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.be = zext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !57
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ba, align 8, !tbaa !57
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.pr = load ptr, ptr %10, align 8, !tbaa !43
  %.not.i.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.bk, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.bl, align 1, !tbaa !42
  store ptr %.sroa.020.0, ptr %6, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.5.0, ptr %i.bm, align 8, !tbaa !37
  %i.bn = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.bj, ptr noundef nonnull align 8 dereferenceable(34) %6) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr23 = load ptr, ptr %10, align 8, !tbaa !43
  %.not.i.i9 = icmp eq ptr %.pr23, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 3, ptr %5, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.13, ptr %i.bo, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 14, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i10, align 8, !tbaa !56
  %i.bp = load i32, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %i.bq = load i32, ptr %i.bc, align 4, !tbaa !59
  %.not.i.i.i.i.i11 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i.i.i.i.i11, label %bb.m, label %bb.l, !prof !60

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit

bb.m:                                             ; preds = %bb.k
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bu = load i32, ptr %i.ba, align 8, !tbaa !57
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ba, align 8, !tbaa !57
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.pr25.pr = load ptr, ptr %10, align 8, !tbaa !43
  %.not.i.i12 = icmp eq ptr %.pr25.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bw, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.bx, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.by, align 1, !tbaa !42
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bz, align 8, !tbaa !37
  %i.ca = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.bj, ptr noundef nonnull align 8 dereferenceable(34) %4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pr32.pr.pre = load ptr, ptr %10, align 8, !tbaa !43
  %i.cb = icmp eq ptr %.pr32.pr.pre, null
  br i1 %i.cb, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 3, ptr %3, align 8, !tbaa !52
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.14, ptr %i.cc, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i17, align 8, !tbaa !56
  %i.cd = load i32, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %i.ce = load i32, ptr %i.bc, align 4, !tbaa !59
  %.not.i.i.i.i.i18 = icmp ult i32 %i.cd, %i.ce
  br i1 %.not.i.i.i.i.i18, label %bb.p, label %bb.o, !prof !60

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

bb.p:                                             ; preds = %bb.n
  %i.cf = zext i32 %i.cd to i64
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ci = load i32, ptr %i.ba, align 8, !tbaa !57
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ba, align 8, !tbaa !57
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.pr34 = load ptr, ptr %10, align 8, !tbaa !43
  %.not.i = icmp eq ptr %.pr34, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #13
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit, %bb.g, %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit, %bb.q, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !62, !range !63, !noundef !64
  %i.cm = trunc nuw i8 %i.cl to i1
  store i8 0, ptr %i.ck, align 8, !tbaa !62
  br i1 %i.cm, label %bb.r, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cn) #13
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.thread, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.s

bb.s:                                             ; preds = %_ZL24generatedAttributeParserRN4mlir9AsmParserEPN4llvm9StringRefENS_4TypeERNS_9AttributeE.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.021.0 = phi ptr [ %.sroa.021.2, %_ZL24generatedAttributeParserRN4mlir9AsmParserEPN4llvm9StringRefENS_4TypeERNS_9AttributeE.exit ], [ null, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  ret ptr %.sroa.021.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir5index12IndexDialect14printAttributeENS_9AttributeERNS_17DialectAsmPrinterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::index::IndexCmpPredicateAttr", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5index21IndexCmpPredicateAttrEvE2idE
  br i1 %i.c, label %bb.b, label %_ZL25generatedAttributePrinterN4mlir9AttributeERNS_10AsmPrinterE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(16) %2) #13, !inline_history !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
end_hunk_0
