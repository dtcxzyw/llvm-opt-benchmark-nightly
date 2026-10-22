Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOverload?download=true
inline.NumInlined: 15476
inline.NumDeleted: 6061
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK5clang8EnumDecl14getIntegerTypeEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i) #28
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %bb.d, %bb.e
  %.sroa.03.0.in.in.i = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %.sroa.03.0.i = and i64 %.sroa.03.0.in.i, -8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  %.sroa.06.1 = phi i64 [ %.sroa.03.0.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit ], [ %i.d, %bb.c ], [ 0, %bb.a ]
  ret i64 %.sroa.06.1
}

declare noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5clang4Type35isIntegralOrUnscopedEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5clang4Type14isIntegralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL25IgnoreNarrowingConversionRN5clang10ASTContextEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %common.ret39 [
    i16 62, label %.thread
    i16 81, label %.lr.ph
  ]

common.ret39:                                     ; preds = %bb.a, %bb.b, %.lr.ph, %.thread
  %common.ret39.op = phi ptr [ %i.l, %.thread ], [ %1, %bb.a ], [ %.01836, %.lr.ph ], [ %i.q, %bb.b ]
  ret ptr %common.ret39.op

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1853
  %i.e = tail call fastcc noundef ptr @_ZL25IgnoreNarrowingConversionRN5clang10ASTContextEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.d)
  %i.f = load i32, ptr %1, align 8                ; 2 uses
  %i.g = and i32 %i.f, 524288
  %i.h = icmp ne i32 %i.g, 0
  %i.i = lshr i32 %i.f, 20
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = tail call noundef ptr @_ZN5clang16ExprWithCleanups6CreateERKNS_10ASTContextEPNS_4ExprEbN4llvm8ArrayRefINS6_12PointerUnionIJPNS_9BlockDeclEPNS_19CompoundLiteralExprEEEEEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.e, i1 noundef zeroext %i.h, ptr nonnull %i.k, i64 %i.j) #28
  br label %common.ret39

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01836 = phi ptr [ %i.q, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.m = load i32, ptr %.01836, align 8
  %i.n = lshr i32 %i.m, 19
  %i.o = and i32 %i.n, 127
  switch i32 %i.o, label %common.ret39 [
    i32 5, label %bb.b
    i32 27, label %bb.b
    i32 28, label %bb.b
    i32 29, label %bb.b
    i32 38, label %bb.b
    i32 36, label %bb.b
    i32 37, label %bb.b
    i32 39, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.01836, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !506  ; 3 uses
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, 511
  %.not = icmp eq i16 %i.s, 81
  br i1 %.not, label %.lr.ph, label %common.ret39
}

declare void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #6

declare noundef nonnull align 4 dereferenceable(29) ptr @_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1) #28
  br label %_ZN4llvm7APFloat7StorageC2IJEEERKNS_12fltSemanticsEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1) #28
  br label %_ZN4llvm7APFloat7StorageC2IJEEERKNS_12fltSemanticsEDpOT_.exit

_ZN4llvm7APFloat7StorageC2IJEEERKNS_12fltSemanticsEDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2, i8 noundef signext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2, i8 noundef signext %3) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2, i8 noundef signext %3) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

declare noundef i32 @_ZNK4llvm7APFloat16convertToIntegerERNS_6APSIntENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(13), i8 noundef signext, ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare noundef i32 @_ZNK5clang10ASTContext20getFloatingTypeOrderENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904), i64, i64) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5clang4Expr16EvaluateAsRValueERNS0_10EvalResultERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(23904), i1 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5clang4Expr19isCXX11ConstantExprERKNS_10ASTContextEPNS_7APValueE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i8 noundef signext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !75
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ %i.d, %bb.d ], [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

declare noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #6

declare noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm6APSInt6extendEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APSInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(13) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !90, !range !86, !noundef !87
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvm5APIntD2Ev.exit, label %_ZN4llvm5APIntD2Ev.exit2

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a
  %.sink7.sroa.gep8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) #28
  br label %bb.b

_ZN4llvm5APIntD2Ev.exit2:                         ; preds = %bb.a
  %.sink7.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) #28
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit2, %_ZN4llvm5APIntD2Ev.exit
  %.sink7.sroa.phi = phi ptr [ %.sink7.sroa.gep, %_ZN4llvm5APIntD2Ev.exit2 ], [ %.sink7.sroa.gep8, %_ZN4llvm5APIntD2Ev.exit ]
  %.sink7 = phi ptr [ %4, %_ZN4llvm5APIntD2Ev.exit2 ], [ %3, %_ZN4llvm5APIntD2Ev.exit ]
  %i.d = load i8, ptr %i.a, align 4, !tbaa !90, !range !86, !noundef !87
  %i.e = load i32, ptr %.sink7.sroa.phi, align 8, !tbaa !91
  %i.f = load i64, ptr %.sink7, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8, !tbaa !91
  store i64 %i.f, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.d, ptr %i.h, align 4, !tbaa !90
  ret void
}

declare noundef zeroext i1 @_ZNK5clang4Type13isComplexTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZNK5clang26StandardConversionSequence4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #28 ; 27 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = and i64 %i.b, 255                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw [8 x i8], ptr @_ZZL25GetImplicitConversionNameN5clang22ImplicitConversionKindEE4Name, i64 %i.c
  %3 = load ptr, ptr %2, align 8, !tbaa !507      ; 4 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %1
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !512  ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %3, i64 noundef %i.d) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i = icmp eq i64 %i.d, 0
  br i1 %.not.i2.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %3, i64 %i.d, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !512
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  store ptr %i.o, ptr %i.g, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.b, %1, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %1 ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ] ; 2 uses
  %i.p = load i64, ptr %0, align 8
  %i.q = and i64 %i.p, 65280
  %.not13 = icmp eq i64 %i.q, 0
  br i1 %.not13, label %_ZN4llvm11raw_ostreamlsEPKc.exit30, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.r = trunc nuw i8 %.0 to i1
  br i1 %i.r, label %bb.f, label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !511
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !512  ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 4
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str, i64 noundef 4) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.h:                                             ; preds = %bb.f
  store i32 540945696, ptr %i.v, align 1
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.h, %bb.g, %bb.e
  %4 = load i64, ptr %0, align 8
  %5 = lshr i64 %4, 8
  %6 = and i64 %5, 255
  %7 = getelementptr inbounds nuw [8 x i8], ptr @_ZZL25GetImplicitConversionNameN5clang22ImplicitConversionKindEE4Name, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !507      ; 4 uses
  %.not.i.i22 = icmp eq ptr %8, null
  br i1 %.not.i.i22, label %_ZN4llvm11raw_ostreamlsEPKc.exit26, label %_ZN4llvm9StringRefC2EPKc.exit.i23

_ZN4llvm9StringRefC2EPKc.exit.i23:                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #28 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !511
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !512 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ugt i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i23
  %i.am = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %8, i64 noundef %i.ad) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.j:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i23
  %.not.i2.i24 = icmp eq i64 %i.ad, 0
  br i1 %.not.i2.i24, label %_ZN4llvm11raw_ostreamlsEPKc.exit26, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %8, i64 %i.ad, i1 false)
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !512
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ad
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21, %bb.i, %bb.j, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67
  %.not14 = icmp eq ptr %i.aq, null
  br i1 %.not14, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = load ptr, ptr %9, align 8, !tbaa !511
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.as = load ptr, ptr %10, align 8, !tbaa !512  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, 22
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.1, i64 noundef 22) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.as, ptr noundef nonnull align 1 dereferenceable(22) @.str.1, i64 22, i1 false)
  %i.ay = load ptr, ptr %10, align 8, !tbaa !512
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 22
  store ptr %i.az, ptr %10, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %i.ba = load i64, ptr %0, align 8               ; 2 uses
  %i.bb = and i64 %i.ba, 68719476736
  %.not15 = icmp eq i64 %i.bb, 0
  br i1 %.not15, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bc = load ptr, ptr %11, align 8, !tbaa !511
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.bd = load ptr, ptr %12, align 8, !tbaa !512  ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ult i64 %i.bg, 27
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.2, i64 noundef 27) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.bd, ptr noundef nonnull align 1 dereferenceable(27) @.str.2, i64 27, i1 false)
  %i.bj = load ptr, ptr %12, align 8, !tbaa !512
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 27
  store ptr %i.bk, ptr %12, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.s:                                             ; preds = %bb.o
  %i.bl = and i64 %i.ba, 34359738368
  %.not16 = icmp eq i64 %i.bl, 0
  br i1 %.not16, label %_ZN4llvm11raw_ostreamlsEPKc.exit30, label %bb.t

bb.t:                                             ; preds = %bb.s
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bm = load ptr, ptr %13, align 8, !tbaa !511
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.bn = load ptr, ptr %14, align 8, !tbaa !512  ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bq, 20
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.3, i64 noundef 20) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.bn, ptr noundef nonnull align 1 dereferenceable(20) @.str.3, i64 20, i1 false)
  %i.bt = load ptr, ptr %14, align 8, !tbaa !512
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  store ptr %i.bu, ptr %14, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.m, %bb.s, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.1 = phi i8 [ %.0, %_ZN4llvm11raw_ostreamlsEPKc.exit ], [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.m ], [ 1, %bb.v ], [ 1, %bb.q ], [ 1, %bb.u ]
  %i.bv = load i64, ptr %0, align 8
  %i.bw = and i64 %i.bv, 4278190080
  %.not17 = icmp eq i64 %i.bw, 0
  %i.bx = trunc nuw i8 %.1 to i1                  ; 2 uses
  br i1 %.not17, label %_ZN4llvm11raw_ostreamlsEPKc.exit47, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  br i1 %i.bx, label %bb.x, label %_ZN4llvm11raw_ostreamlsEPKc.exit42

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !511
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !512 ; 2 uses
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult i64 %i.ce, 4
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str, i64 noundef 4) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42

bb.z:                                             ; preds = %bb.x
  store i32 540945696, ptr %i.cb, align 1
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !512
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store ptr %i.ci, ptr %i.ca, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42

_ZN4llvm11raw_ostreamlsEPKc.exit42:               ; preds = %bb.z, %bb.y, %bb.w
  %15 = load i64, ptr %0, align 8
  %16 = lshr i64 %15, 24
  %17 = and i64 %16, 255
  %18 = getelementptr inbounds nuw [8 x i8], ptr @_ZZL25GetImplicitConversionNameN5clang22ImplicitConversionKindEE4Name, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !507    ; 4 uses
  %.not.i.i43 = icmp eq ptr %19, null
  br i1 %.not.i.i43, label %_ZN4llvm11raw_ostreamlsEPKc.exit51, label %_ZN4llvm9StringRefC2EPKc.exit.i44

_ZN4llvm9StringRefC2EPKc.exit.i44:                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42
  %i.cj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #28 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !511
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !512 ; 2 uses
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cj, %i.cq
  br i1 %i.cr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i44
  %i.cs = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %19, i64 noundef %i.cj) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

bb.ab:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i44
  %.not.i2.i45 = icmp eq i64 %i.cj, 0
  br i1 %.not.i2.i45, label %_ZN4llvm11raw_ostreamlsEPKc.exit51, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr nonnull align 1 %19, i64 %i.cj, i1 false)
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !512
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cj
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

_ZN4llvm11raw_ostreamlsEPKc.exit47:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  br i1 %i.bx, label %_ZN4llvm11raw_ostreamlsEPKc.exit51, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !511
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !512 ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ult i64 %i.db, 23
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.4, i64 noundef 23) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.cy, ptr noundef nonnull align 1 dereferenceable(23) @.str.4, i64 23, i1 false)
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !512
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 23
  store ptr %i.df, ptr %i.cx, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

_ZN4llvm11raw_ostreamlsEPKc.exit51:               ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZN4llvm11raw_ostreamlsEPKc.exit42, %bb.af, %bb.ae, %_ZN4llvm11raw_ostreamlsEPKc.exit47
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang29UserDefinedConversionSequence4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #28 ; 13 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = and i64 %i.b, 4278255615
  %or.cond11 = icmp eq i64 %i.c, 0
  br i1 %or.cond11, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang26StandardConversionSequence4dumpEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !511
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !512  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str, i64 noundef 4) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i32 540945696, ptr %i.g, align 1
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !512
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.n, ptr %i.f, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !514
  %.not7 = icmp eq ptr %i.p, null
  br i1 %.not7, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !512  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !511
  %.not.i = icmp ult ptr %i.r, %i.t
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef zeroext 39) #28
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.v, ptr %i.q, align 8, !tbaa !512
  store i8 39, ptr %i.r, align 1, !tbaa !75
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.u, %bb.f ], [ %i.a, %bb.g ] ; 4 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !514
  tail call void @_ZNK5clang9NamedDecl9printNameERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %.0.i) #28
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !512  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !511
  %.not.i14 = icmp ult ptr %i.y, %i.aa
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, i8 noundef zeroext 39) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit16

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !512
  store i8 39, ptr %i.y, align 1, !tbaa !75
  br label %_ZN4llvm11raw_ostreamlsEc.exit16

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !511
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !512 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 24
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.5, i64 noundef 24) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit16

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 1 dereferenceable(24) @.str.5, i64 24, i1 false)
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !512
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.an, ptr %i.af, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEc.exit16

_ZN4llvm11raw_ostreamlsEc.exit16:                 ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 4278255615
  %or.cond13 = icmp eq i64 %i.aq, 0
  br i1 %or.cond13, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !511
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !512 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, 4
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str, i64 noundef 4) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22

bb.o:                                             ; preds = %bb.m
  store i32 540945696, ptr %i.au, align 1
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22

_ZN4llvm11raw_ostreamlsEPKc.exit22:               ; preds = %bb.n, %bb.o
  tail call void @_ZNK5clang26StandardConversionSequence4dumpEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ao)
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit16, %_ZN4llvm11raw_ostreamlsEPKc.exit22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang26ImplicitConversionSequence4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #28 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = icmp ugt i64 %.0.copyload.i.i.i.i.i, 15
  br i1 %i.c, label %bb.b, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !511
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !512  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 31
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.6, i64 noundef 31) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.g, ptr noundef nonnull align 1 dereferenceable(31) @.str.6, i64 31, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !512
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 31
  store ptr %i.n, ptr %i.f, align 8, !tbaa !512
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.a
  %i.o = load i32, ptr %0, align 8
  %i.p = and i32 %i.o, 2147483647
  switch i32 %i.p, label %_ZN4llvm11raw_ostreamlsEPKc.exit16 [
    i32 0, label %bb.e
    i32 2, label %bb.h
    i32 4, label %bb.k
    i32 3, label %bb.n
    i32 5, label %bb.q
  ]

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !511
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !512  ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 21
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.7, i64 noundef 21) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.t, ptr noundef nonnull align 1 dereferenceable(21) @.str.7, i64 21, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema22AddConversionCandidateEPNS_17CXXConversionDeclENS_14DeclAccessPairEPNS_13CXXRecordDeclEPNS_4ExprENS_8QualTypeERNS_20OverloadCandidateSetEbbbb:bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %13, i8 0, i64 16, i1 false)
  store ptr %i.kt, ptr %i.ks, align 8, !tbaa !515
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 0, ptr %i.ku, align 8, !tbaa !516
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 4, ptr %i.kv, align 4, !tbaa !517
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  store i8 0, ptr %i.kw, align 8, !tbaa !574
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 129
  store i8 0, ptr %i.kx, align 1, !tbaa !575
  %i.ky = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 152 ; 3 uses
  store ptr %i.kz, ptr %i.ky, align 8, !tbaa !515
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 144
  store i32 0, ptr %i.la, align 8, !tbaa !516
  %i.lb = getelementptr inbounds nuw i8, ptr %13, i64 148
  store i32 4, ptr %i.lb, align 4, !tbaa !517
  %i.lc = call noundef zeroext i1 @_ZN5clang4Sema24CheckFunctionConstraintsEPKNS_12FunctionDeclERNS_22ConstraintSatisfactionENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(184) %13, i32 0, i1 noundef zeroext false) #28
  %.not = xor i1 %i.lc, true
  %i.ld = load i8, ptr %i.kw, align 8, !range !86
  %i.le = trunc nuw i8 %i.ld to i1
  %or.cond = select i1 %.not, i1 %i.le, i1 false
  br i1 %or.cond, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lf = load i32, ptr %i.gr, align 8
  %i.lg = and i32 %i.lf, -261122
  %i.lh = or disjoint i32 %i.lg, 15360
  store i32 %i.lh, ptr %i.gr, align 8
  %i.li = load ptr, ptr %i.ky, align 8, !tbaa !515 ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.kz
  br i1 %i.lj, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.li) #28
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i: ; preds = %bb.ak, %bb.aj
  %i.lk = load ptr, ptr %i.ks, align 8, !tbaa !515 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.kt
  br i1 %i.ll, label %_ZN5clang22ConstraintSatisfactionD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.lk) #28
  br label %_ZN5clang22ConstraintSatisfactionD2Ev.exit

_ZN5clang22ConstraintSatisfactionD2Ev.exit:       ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.ai
  %i.lm = load ptr, ptr %i.ky, align 8, !tbaa !515 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.kz
  br i1 %i.ln, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i167, label %bb.am

bb.am:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.lm) #28
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i167

_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i167: ; preds = %bb.am, %.critedge
  %i.lo = load ptr, ptr %i.ks, align 8, !tbaa !515 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.kt
  br i1 %i.lp, label %_ZN5clang22ConstraintSatisfactionD2Ev.exit168, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i167
  call void @free(ptr noundef %i.lo) #28
  br label %_ZN5clang22ConstraintSatisfactionD2Ev.exit168

_ZN5clang22ConstraintSatisfactionD2Ev.exit168:    ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i167, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5clang22ConstraintSatisfactionD2Ev.exit168, %bb.ah
  %.sroa.0.0.copyload.i169 = load i64, ptr %i.hh, align 8, !tbaa !75 ; 2 uses
  %i.lq = and i64 %.sroa.0.0.copyload.i169, -16
  %i.lr = inttoptr i64 %i.lq to ptr
  %i.ls = load ptr, ptr %i.lr, align 16, !tbaa !74 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %.sroa.0.0.copyload.i.i171 = load i64, ptr %i.lt, align 8, !tbaa !75
  %i.lu = and i64 %.sroa.0.0.copyload.i.i171, 15
  %.not.i172 = icmp eq i64 %i.lu, 0
  br i1 %.not.i172, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lv = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i169) #28
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %bb.ao, %bb.ap
  %.sroa.03.0.in.in.i = phi ptr [ %i.lw, %bb.ap ], [ %i.ls, %bb.ao ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %i.lx = and i64 %.sroa.03.0.in.i, -16
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !75 ; 2 uses
  %i.mb = and i64 %5, -16
  %i.mc = inttoptr i64 %i.mb to ptr               ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !75
  %i.mf = and i64 %i.me, -16
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = load ptr, ptr %i.mg, align 16, !tbaa !74
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = and i64 %i.mi, -8                       ; 2 uses
  %i.mk = icmp eq i64 %i.ma, %i.mj
  br i1 %i.mk, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  %.sroa.0.0.copyload.i176 = load i32, ptr %i.ie, align 8, !tbaa !554
  %i.ml = call noundef zeroext i1 @_ZN5clang4Sema13IsDerivedFromENS_14SourceLocationENS_8QualTypeES2_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i176, i64 %i.ma, i64 %i.mj) #28
  br i1 %i.ml, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  %i.mm = load i32, ptr %i.gr, align 8
  %i.mn = and i32 %i.mm, -261122
  %i.mo = or disjoint i32 %i.mn, 4096
  store i32 %i.mo, ptr %i.gr, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.mp = load ptr, ptr %i.if, align 8, !tbaa !1228, !nonnull !87, !align !500
  %.sroa.0.0.copyload.i177 = load i64, ptr %i.c, align 8, !tbaa !75
  %i.mq = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store i64 0, ptr %15, align 8
  call void @_ZN5clang11DeclRefExprC1ERKNS_10ASTContextEPNS_9ValueDeclEbNS_8QualTypeENS_13ExprValueKindENS_14SourceLocationERKNS_18DeclarationNameLocENS_15NonOdrUseReasonE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(23904) %i.mp, ptr noundef nonnull %1, i1 noundef zeroext false, i64 %.sroa.0.0.copyload.i177, i32 noundef 1, i32 %i.mq, ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.mr = load ptr, ptr %i.if, align 8, !tbaa !1228, !nonnull !87, !align !500
  %.sroa.0.0.copyload.i178 = load i64, ptr %i.c, align 8, !tbaa !75
  %i.ms = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.mr, i64 %.sroa.0.0.copyload.i178) #28 ; 0 uses
  %i.mt = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !1250, !range !86, !noundef !87
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.at, label %_ZN5clang16ImplicitCastExprC2ENS0_9OnStack_tENS_8QualTypeENS_8CastKindEPNS_4ExprENS_13ExprValueKindENS_17FPOptionsOverrideE.exit

bb.at:                                            ; preds = %bb.as
  call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 81) #28
  br label %_ZN5clang16ImplicitCastExprC2ENS0_9OnStack_tENS_8QualTypeENS_8CastKindEPNS_4ExprENS_13ExprValueKindENS_17FPOptionsOverrideE.exit

_ZN5clang16ImplicitCastExprC2ENS0_9OnStack_tENS_8QualTypeENS_8CastKindEPNS_4ExprENS_13ExprValueKindENS_17FPOptionsOverrideE.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %.sroa.0.0.copyload.i.i179 = load i64, ptr %i.c, align 8, !tbaa !75
  %i.mv = and i64 %.sroa.0.0.copyload.i.i179, -16
  %i.mw = inttoptr i64 %i.mv to ptr
  %i.mx = load ptr, ptr %i.mw, align 16, !tbaa !74 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load i8, ptr %i.my, align 16
  %i.na = add i8 %i.mz, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i180 = icmp ult i8 %i.na, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i180, label %bb.au, label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit183

bb.au:                                            ; preds = %_ZN5clang16ImplicitCastExprC2ENS0_9OnStack_tENS_8QualTypeENS_8CastKindEPNS_4ExprENS_13ExprValueKindENS_17FPOptionsOverrideE.exit
  %i.nb = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.mx) #28
  br label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit183

_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit183: ; preds = %_ZN5clang16ImplicitCastExprC2ENS0_9OnStack_tENS_8QualTypeENS_8CastKindEPNS_4ExprENS_13ExprValueKindENS_17FPOptionsOverrideE.exit, %bb.au
  %.1.i.i181 = phi ptr [ %i.nb, %bb.au ], [ %i.mx, %_ZN5clang16ImplicitCastExprC2ENS0_9OnStack_tENS_8QualTypeENS_8CastKindEPNS_4ExprENS_13ExprValueKindENS_17FPOptionsOverrideE.exit ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.1.i.i181, i64 24
  %.sroa.0.0.copyload.i1.i182 = load i64, ptr %i.nc, align 8, !tbaa !75 ; 3 uses
  store i64 %.sroa.0.0.copyload.i1.i182, ptr %16, align 8
  %i.nd = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  %i.ne = call noundef zeroext i1 @_ZN5clang4Sema23RequireCompleteTypeImplENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindEPNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.nd, i64 %.sroa.0.0.copyload.i1.i182, i32 noundef 1, ptr noundef null) #28
  br i1 %i.ne, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit183
  %i.nf = load i32, ptr %i.gr, align 8
  %i.ng = and i32 %i.nf, -261122
  %i.nh = or disjoint i32 %i.ng, 6144
  store i32 %i.nh, ptr %i.gr, align 8
  br label %bb.bk

bb.aw:                                            ; preds = %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit183
  %i.ni = call noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i1.i182)
  %i.nj = load ptr, ptr %i.if, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.nk = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(23904) %i.nj) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.nl = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZN5clang15OpaqueValueExprC2ENS_14SourceLocationENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(24) %17, i32 %i.nl, i64 %i.nk, i32 noundef %i.ni, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call fastcc void @_ZL21TryCopyInitializationRN5clang4SemaEPNS_4ExprENS_8QualTypeEbbbb(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %17, i64 %5, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.nm = load i32, ptr %18, align 8
  %i.nn = and i32 %i.nm, 2147483647
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, ptr noundef nonnull align 8 dereferenceable(56) %i.np, i64 56, i1 false), !tbaa.struct !1359
  %i.nq = load i32, ptr %i.gr, align 8
  %i.nr = or i32 %i.nq, 128
  store i32 %i.nr, ptr %i.gr, align 8
  %i.ns = call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #28
  %.not113 = icmp eq ptr %i.ns, null
  br i1 %.not113, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nt = load i64, ptr %i.np, align 8
  %i.nu = lshr i64 %i.nt, 8
  %i.nv = and i64 %i.nu, 255
  %19 = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5clang17GetConversionRankENS_22ImplicitConversionKindEE4Rank, i64 %i.nv
  %20 = load i32, ptr %19, align 4, !tbaa !59
  %.not114 = icmp eq i32 %20, 0
  br i1 %.not114, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nw = load i32, ptr %i.gr, align 8
  %i.nx = and i32 %i.nw, -261122
  %i.ny = or disjoint i32 %i.nx, 7168
  store i32 %i.ny, ptr %i.gr, align 8
  br label %bb.bh

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.nz = load ptr, ptr %i.mc, align 16, !tbaa !74
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %.sroa.0.0.copyload.i.i.i.i185 = load i64, ptr %i.oa, align 8, !tbaa !75
  %i.ob = and i64 %.sroa.0.0.copyload.i.i.i.i185, -16
  %i.oc = inttoptr i64 %i.ob to ptr
  %i.od = load ptr, ptr %i.oc, align 16, !tbaa !74
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load i8, ptr %i.oe, align 16
  %i.og = icmp eq i8 %i.of, 43
  br i1 %i.og, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.oh = load i64, ptr %i.np, align 8
  %i.oi = and i64 %i.oh, 255
  %i.oj = icmp eq i64 %i.oi, 1
  br i1 %i.oj, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ok = load i32, ptr %i.gr, align 8
  %i.ol = and i32 %i.ok, -261122
  %i.om = or disjoint i32 %i.ol, 6144
  store i32 %i.om, ptr %i.gr, align 8
  br label %bb.bh

bb.bd:                                            ; preds = %bb.aw
  %i.on = load i32, ptr %i.gr, align 8
  %i.oo = and i32 %i.on, -261122
  %i.op = or disjoint i32 %i.oo, 6144
  store i32 %i.op, ptr %i.gr, align 8
  br label %bb.bh

bb.be:                                            ; preds = %bb.ba, %bb.bb
  %.sroa.0.0.copyload.i186 = load i32, ptr %i.ie, align 8, !tbaa !554
  %i.oq = call noundef ptr @_ZN5clang4Sema13CheckEnableIfEPNS_12FunctionDeclENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i32 %.sroa.0.0.copyload.i186, ptr null, i64 0, i1 zeroext poison) ; 2 uses
  %.not115 = icmp eq ptr %i.oq, null
  br i1 %.not115, label %.critedge117, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.or = load i32, ptr %i.gr, align 8
  %i.os = and i32 %i.or, -261122
  %i.ot = or disjoint i32 %i.os, 9216
  store i32 %i.ot, ptr %i.gr, align 8
  store ptr %i.oq, ptr %i.gm, align 8, !tbaa !75
  br label %bb.bh

.critedge117:                                     ; preds = %bb.be
  %i.ou = call fastcc noundef zeroext i1 @_ZL31isNonViableMultiVersionOverloadPN5clang12FunctionDeclE(ptr noundef nonnull %1)
  br i1 %i.ou, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.critedge117
  %i.ov = load i32, ptr %i.gr, align 8
  %i.ow = and i32 %i.ov, -261122
  %i.ox = or disjoint i32 %i.ow, 13312
  store i32 %i.ox, ptr %i.gr, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %.critedge117, %bb.bg, %bb.bd, %bb.bc, %bb.az
  %i.oy = load i32, ptr %18, align 8
  %i.oz = and i32 %i.oy, 2147483647
  %i.pa = icmp eq i32 %i.oz, 3
  br i1 %i.pa, label %bb.bi, label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit187

bb.bi:                                            ; preds = %bb.bh
  %i.pb = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !515 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.pe = icmp eq ptr %i.pc, %i.pd
  br i1 %i.pe, label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit187, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef %i.pc) #28
  br label %_ZN5clang26ImplicitConversionSequenceD2Ev.exit187

_ZN5clang26ImplicitConversionSequenceD2Ev.exit187: ; preds = %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5clang26ImplicitConversionSequenceD2Ev.exit187, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.ag, %_ZN5clang22ConstraintSatisfactionD2Ev.exit, %bb.bk, %bb.ar, %bb.u
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #28
  br label %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread218

_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread218: ; preds = %.lr.ph.i.i.i, %.split, %_ZL29isAllowableExplicitConversionRN5clang4SemaENS_8QualTypeES2_b.exit, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit149, %bb.h, %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema16DeduceReturnTypeEPNS_12FunctionDeclENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN5clang11DeclRefExprC1ERKNS_10ASTContextEPNS_9ValueDeclEbNS_8QualTypeENS_13ExprValueKindENS_14SourceLocationERKNS_18DeclarationNameLocENS_15NonOdrUseReasonE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i1 noundef zeroext, i64, i32 noundef, i32, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = and i64 %0, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !74  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16              ; 2 uses
  %i.f = and i8 %i.e, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.f, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !75
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  %i.m = and i8 %i.l, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.m, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, label %.thread

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #28 ; 3 uses
  %.not.not = icmp eq ptr %i.n, null
  br i1 %.not.not, label %.thread, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 16
  br label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge, %bb.a
  %i.o = phi i8 [ %.pre, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.e, %bb.a ]
  %.1.i9 = phi ptr [ %i.n, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = icmp eq i8 %i.o, 42
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i9, i64 16
  %i.r = load i24, ptr %i.q, align 16
  %i.s = and i24 %i.r, 1048576
  %.not4.i = icmp eq i24 %i.s, 0
  br i1 %.not4.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i
  %.05.i = phi ptr [ %.1.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.1.i9, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !74  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i8 %i.y, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.z, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.w) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.d, %.lr.ph.i
  %.1.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.ac = load i24, ptr %i.ab, align 16
  %i.ad = and i24 %i.ac, 1048576
  %.not.i = icmp eq i24 %i.ad, 0
  br i1 %.not.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, label %.lr.ph.i, !llvm.loop !9

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.c
  %.0.lcssa.i = phi ptr [ %.1.i9, %bb.c ], [ %.1.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 16, !tbaa !75
  %i.af = and i64 %.sroa.0.0.copyload.i, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.0.0.copyload.i.i.i.i4 = load i64, ptr %i.ai, align 8, !tbaa !75
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i4, -16
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i8, ptr %i.am, align 16
  %i.ao = add i8 %i.an, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ao, 2
  %i.ap = select i1 %spec.select.i.i.i.i.i.i.i.i.i, i32 1, i32 2
  br label %.thread

.thread:                                          ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, %bb.b, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit
  %i.aq = phi i32 [ 1, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread ], [ %i.ap, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit ], [ 0, %bb.b ], [ 0, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit ]
  ret i32 %i.aq
}

end_hunk_1
