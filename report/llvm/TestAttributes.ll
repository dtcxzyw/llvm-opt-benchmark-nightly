Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestAttributes?download=true
inline.NumInlined: 15677
inline.NumDeleted: 8364
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4test22TestAttrWithFormatAttr5parseERN4mlir9AsmParserENS1_4TypeE:bb.a
bb.bt:                                            ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEELb0ELb0EED2Ev.exit76
  %i.mg = load ptr, ptr %18, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i.i.i.i.i77 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i.i.i.i77, label %_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit78, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mh = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !233
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #24
  br label %_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit78

_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit78: ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEELb0ELb0EED2Ev.exit76, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.mm = load i8, ptr %i.j, align 8, !tbaa !223, !range !70, !noundef !71
  %i.mn = trunc nuw i8 %i.mm to i1
  store i8 0, ptr %i.j, align 8, !tbaa !223
  br i1 %i.mn, label %bb.bv, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIiLj12EEELb0ELb0EED2Ev.exit

bb.bv:                                            ; preds = %_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit78
  %i.mo = load ptr, ptr %17, align 8, !tbaa !47   ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIiLj12EEELb0ELb0EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @free(ptr noundef %i.mo) #22
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIiLj12EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIiLj12EEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit78, %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.mr = load i8, ptr %i.i, align 8, !tbaa !221, !range !70, !noundef !71
  %i.ms = trunc nuw i8 %i.mr to i1
  store i8 0, ptr %i.i, align 8, !tbaa !221
  br i1 %i.ms, label %bb.bx, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bx:                                            ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIiLj12EEELb0ELb0EED2Ev.exit
  %i.mt = load ptr, ptr %16, align 8, !tbaa !150  ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bx
  %i.mw = load i64, ptr %i.mu, align 8, !tbaa !58
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mx) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bx, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIiLj12EEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  ret ptr %.sroa.0107.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN4mlir11FieldParserIllE5parseERNS_9AsmParserE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.758, align 8            ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !85
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #22, !inline_history !767
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %0, ptr %1, align 8, !tbaa !238
  %i.f = call i16 @_ZN4mlir9AsmParser28parseOptionalIntegerAndCheckIlZNS0_20parseOptionalIntegerIlEENS_19OptionalParseResultERT_EUlRN4llvm5APIntEE_EES3_S5_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.f to i8
  %i.g = and i16 %i.f, 256
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN4mlir9AsmParser12parseIntegerIlEEN4llvm11ParseResultERT_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !57
  store ptr @.str.148, ptr %3, align 8, !tbaa !58
  store i8 3, ptr %i.h, align 8, !tbaa !59
  %i.j = load ptr, ptr %0, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(34) %3) #22, !inline_history !767
  %i.m = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #22
  %i.n = load ptr, ptr %2, align 8, !tbaa !68
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !69, !range !70, !noundef !71
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !69
  br i1 %i.q, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN4mlir9AsmParser12parseIntegerIlEEN4llvm11ParseResultERT_.exit

_ZN4mlir9AsmParser12parseIntegerIlEEN4llvm11ParseResultERT_.exit: ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i
  %.sroa.03.0.i = phi i8 [ %i.m, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ %.sroa.0.0.extract.trunc.i, %bb.a ] ; 2 uses
  %i.s = trunc nuw i8 %.sroa.03.0.i to i1
  %i.t = load i64, ptr %i.a, align 8
  %spec.select2 = select i1 %i.s, i64 %i.t, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %spec.select2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.03.0.i, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN4mlir11FieldParserImmE5parseERNS_9AsmParserE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.919, align 8            ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !85
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #22, !inline_history !768
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %0, ptr %1, align 8, !tbaa !124
  %i.f = call i16 @_ZN4mlir9AsmParser28parseOptionalIntegerAndCheckImZNS0_20parseOptionalIntegerImEENS_19OptionalParseResultERT_EUlRN4llvm5APIntEE_EES3_S5_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.f to i8
  %i.g = and i16 %i.f, 256
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN4mlir9AsmParser12parseIntegerImEEN4llvm11ParseResultERT_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !57
  store ptr @.str.148, ptr %3, align 8, !tbaa !58
  store i8 3, ptr %i.h, align 8, !tbaa !59
  %i.j = load ptr, ptr %0, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(34) %3) #22, !inline_history !768
  %i.m = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #22
  %i.n = load ptr, ptr %2, align 8, !tbaa !68
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !69, !range !70, !noundef !71
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !69
  br i1 %i.q, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN4mlir9AsmParser12parseIntegerImEEN4llvm11ParseResultERT_.exit

_ZN4mlir9AsmParser12parseIntegerImEEN4llvm11ParseResultERT_.exit: ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i
  %.sroa.03.0.i = phi i8 [ %i.m, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ %.sroa.0.0.extract.trunc.i, %bb.a ] ; 2 uses
  %i.s = trunc nuw i8 %.sroa.03.0.i to i1
  %i.t = load i64, ptr %i.a, align 8
  %spec.select2 = select i1 %i.s, i64 %i.t, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %spec.select2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.03.0.i, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir11FieldParserISt6vectorIiSaIiEES3_E5parseERNS_9AsmParserE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.377") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.384", align 8   ; 7 uses
  %3 = alloca %class.anon.1065, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %1, ptr %3, align 8, !tbaa !230
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !769
  %i.b = ptrtoint ptr %3 to i64
  %i.c = load ptr, ptr %1, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, ptr nonnull @_ZN4llvm12function_refIFNS_11ParseResultEvEE11callback_fnIZN4mlir11FieldParserISt6vectorIiSaIiEES9_E5parseERNS5_9AsmParserEEUlvE_EES1_l, i64 %i.b, ptr null, i64 0) #22, !inline_history !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load ptr, ptr %2, align 8, !tbaa !232    ; 4 uses
  br i1 %i.g, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load <2 x ptr>, ptr %i.j, align 8, !tbaa !83
  store <2 x ptr> %4, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.k, align 8, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !233
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.q) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.thread, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9FailureOrISt6vectorIiSaIiEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !225, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !70
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !232    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !233
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !83
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !233
  store ptr %i.l, ptr %i.h, align 8, !tbaa !233
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #24
  br label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load <2 x ptr>, ptr %1, align 8, !tbaa !83
  store <2 x ptr> %i.p, ptr %0, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !233
  store ptr %i.s, ptr %i.q, align 8, !tbaa !233
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !225
  br label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !225
  br i1 %i.c, label %bb.g, label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !232    ; 3 uses
  %.not.i.i.i.i.i7.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i, label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !233
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #24
  br label %_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit

_ZNSt8optionalISt6vectorIiSaIiEEEaSEOS3_.exit:    ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir11FieldParserIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEES5_E5parseERNS_9AsmParserE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.393") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.400", align 8 ; 9 uses
  %3 = alloca %class.anon.1067, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %1, ptr %3, align 8, !tbaa !230
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !770
  %i.e = ptrtoint ptr %3 to i64
  %i.f = load ptr, ptr %1, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, ptr nonnull @_ZN4llvm12function_refIFNS_11ParseResultEvEE11callback_fnIZN4mlir11FieldParserINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEESA_E5parseERNS5_9AsmParserEEUlvE_EES1_l, i64 %i.e, ptr null, i64 0) #22, !inline_history !19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEC2EOS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.m, align 4, !tbaa !49
  %i.n = load i32, ptr %i.b, align 8, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEC2EOS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4test23AttrWithTypeBuilderAttrEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %_ZN4llvm9FailureOrINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEC2EOS4_.exit

_ZN4llvm9FailureOrINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEC2EOS4_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sink, ptr %i.p, align 8, !tbaa !227
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.q = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9FailureOrINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEC2EOS4_.exit
  call void @free(ptr noundef %i.q) #22
  br label %_ZN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EED2Ev.exit: ; preds = %_ZN4llvm9FailureOrINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEC2EOS4_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm9FailureOrINS_11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !227, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i8, ptr %i.d, align 8, !range !70
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4test23AttrWithTypeBuilderAttrEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  br label %_ZNSt8optionalIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEaSEOS5_.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.j, align 4, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4test23AttrWithTypeBuilderAttrEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  br label %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !227
  br label %_ZNSt8optionalIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEaSEOS5_.exit

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !227
  br i1 %i.c, label %bb.g, label %_ZNSt8optionalIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEaSEOS5_.exit

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt8optionalIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEaSEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.n) #22
  br label %_ZNSt8optionalIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEaSEOS5_.exit

_ZNSt8optionalIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEEaSEOS5_.exit: ; preds = %bb.b, %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorIN4test23AttrWithTypeBuilderAttrELj6EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir9AsmParser10getCheckedIN4test22TestAttrWithFormatAttrEJPNS_11MLIRContextElNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11IntegerAttrEN4llvm8ArrayRefIiEEmSF_NSE_INS2_23AttrWithTypeBuilderAttrEEEEEEDaNSD_5SMLocEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.llvm::SMLoc", align 8      ; 2 uses
  %12 = alloca %class.anon.752, align 8           ; 5 uses
end_hunk_0
