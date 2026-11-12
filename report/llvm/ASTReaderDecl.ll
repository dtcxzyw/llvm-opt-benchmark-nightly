Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReaderDecl?download=true
inline.NumInlined: 19414
inline.NumDeleted: 7686
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5clang9ASTReader20loadPendingDeclChainEPNS_4DeclEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %.sroa.0.0, ptr %16, align 8, !tbaa !1465, !alias.scope !2542
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nofree noundef nonnull align 8 dereferenceable(8) %16) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 4, ptr %i.ap, align 8, !tbaa !1463
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.aq, align 1, !tbaa !1462
  store ptr %15, ptr %14, align 8, !tbaa !974
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull align 8 dereferenceable(34) %14)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %12, i1 noundef zeroext true) #29
  unreachable

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %.sroa.0.0.extract.trunc = trunc i64 %i.am to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @_ZN4llvm15BitstreamCursor10readRecordEjRNS_15SmallVectorImplImEEPNS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %17, ptr noundef nonnull align 8 dereferenceable(344) %i.i, i32 noundef %.sroa.0.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %_ZN4llvm8ExpectedIjE9takeErrorEv.exit47, label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjE9takeErrorEv.exit47:          ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.av, align 1, !tbaa !1462
  store ptr @.str.10, ptr %19, align 8, !tbaa !974
  store i8 3, ptr %i.au, align 8, !tbaa !1463
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store ptr null, ptr %22, align 8, !tbaa !1465, !alias.scope !2543
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nofree noundef nonnull align 8 dereferenceable(8) %22) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 4, ptr %i.aw, align 8, !tbaa !1463
  %i.ax = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.ax, align 1, !tbaa !1462
  store ptr %21, ptr %20, align 8, !tbaa !974
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %18, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr noundef nonnull align 8 dereferenceable(34) %20)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %18, i1 noundef zeroext true) #29
  unreachable

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.ay = load i32, ptr %i.af, align 8, !tbaa !975 ; 3 uses
  %.not4068 = icmp eq i32 %i.ay, 0
  br i1 %.not4068, label %_ZN4llvm8ExpectedIjED2Ev.exit52, label %.lr.ph

_ZN4llvm8ExpectedIjED2Ev.exit52:                  ; preds = %.lr.ph, %_ZN4llvm8ExpectedIjED2Ev.exit
  %.033.lcssa = phi ptr [ %1, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %i.be, %.lr.ph ]
  call void @_ZN5clang13ASTDeclReader16attachLatestDeclEPNS_4DeclES2_(ptr noundef %i.e, ptr noundef %.033.lcssa)
  %i.az = load ptr, ptr %11, align 8, !tbaa !164  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ae
  br i1 %i.ba, label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit52
  call void @free(ptr noundef %i.az) #25
  br label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit

_ZN4llvm11SmallVectorImLj64EED2Ev.exit:           ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit52, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN5clang19SavedStreamPositionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.j

.lr.ph:                                           ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit, %.lr.ph
  %.070 = phi i32 [ %i.bf, %.lr.ph ], [ 0, %_ZN4llvm8ExpectedIjED2Ev.exit ] ; 2 uses
  %.03369 = phi ptr [ %i.be, %.lr.ph ], [ %1, %_ZN4llvm8ExpectedIjED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bb = xor i32 %.070, -1
  %i.bc = add i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !1081
  %i.bd = call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(3832) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  %i.be = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 %i.bd) #25 ; 3 uses
  call void @_ZN5clang13ASTDeclReader18attachPreviousDeclERNS_9ASTReaderEPNS_4DeclES4_S4_(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef %i.be, ptr noundef %.03369, ptr noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bf = add nuw i32 %.070, 1                    ; 2 uses
  %.not40 = icmp eq i32 %i.bf, %i.ay
  br i1 %.not40, label %_ZN4llvm8ExpectedIjED2Ev.exit52, label %.lr.ph, !llvm.loop !2538

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, %bb.d
  ret void
}

declare noundef ptr @_ZNK5clang9ASTReader19getOwningModuleFileEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(16376), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm15BitstreamCursor10readRecordEjRNS_15SmallVectorImplImEEPNS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(344), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN5clang13serialization13ModuleManager5visitEN4llvm12function_refIFbRNS0_10ModuleFileEEEEPNS2_15SmallPtrSetImplIPS4_EE(ptr noundef nonnull align 8 dereferenceable(264), ptr, i64, ptr noundef) local_unnamed_addr #3

declare void @_ZN5clang19TranslationUnitDecl21setAnonymousNamespaceEPNS_13NamespaceDeclE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang7VarDecl27getMemberSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN5clang11ParmVarDecl13setDefaultArgEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #3

declare void @_ZN5clang9FieldDecl21setInClassInitializerEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang13CXXRecordDecl27getMemberSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

declare void @_ZN5clang13CXXRecordDecl29setTemplateSpecializationKindENS_26TemplateSpecializationKindE(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang13serialization21DataStreamBasicReaderINS_15ASTRecordReaderEE21readExceptionSpecInfoERN4llvm15SmallVectorImplINS_8QualTypeEEE(ptr dead_on_unwind noalias writable sret(%"struct.clang::FunctionProtoType::ExceptionSpecInfo") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !163
  %i.f = zext i32 %i.d to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !164
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !165
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !1519
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { ptr, i64 } @_ZN5clang13serialization21DataStreamBasicReaderINS_15ASTRecordReaderEE9readArrayINS_8QualTypeEEEN4llvm8ArrayRefIT_EERNS6_15SmallVectorImplIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr %i.m, ptr %i.a, align 8, !tbaa !1509
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !165
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.o = add i32 %i.j, -6
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1032
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !973
  %i.u = tail call noundef ptr @_ZN5clang9ASTReader8ReadStmtERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.r, ptr noundef nonnull align 8 dereferenceable(3832) %i.t) #25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1520
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  switch i32 %i.j, label %bb.h [
    i32 10, label %bb.f
    i32 9, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1032 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !973
  %i.aa = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.x, ptr noundef nonnull align 8 dereferenceable(3832) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #25
  %i.ab = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.x, i64 %i.aa) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1521
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !1032 ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !973
  %i.af = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ad, ptr noundef nonnull align 8 dereferenceable(3832) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #25
  %i.ag = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ad, i64 %i.af) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1522
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1032 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !973
  %i.am = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.aj, ptr noundef nonnull align 8 dereferenceable(3832) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #25
  %i.an = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.aj, i64 %i.am) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1521
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind noalias writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !2545
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2552
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !1519
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.d, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, -4096
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 16             ; 4 uses
  %i.k = lshr i64 %i.j, 34
  %i.l = trunc i64 %i.k to i16
  %i.m = and i16 %i.l, 16383
  store i16 %i.m, ptr %0, align 8, !tbaa !1505
  %i.n = and i64 %i.j, 2147483648                 ; 2 uses
  %.lobit = lshr exact i64 %i.n, 31
  %i.o = trunc nuw nsw i64 %.lobit to i16
  %i.p = or disjoint i16 %i.h, %i.o
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = lshr i64 %i.j, 48
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1081
  br label %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit

_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.0.0.i, ptr %i.u, align 8, !tbaa !1081
  %i.v = lshr i64 %i.j, 31
  %i.w = trunc i64 %i.v to i16
  %i.x = and i16 %i.w, 6
  %i.y = or disjoint i16 %i.x, %i.p               ; 4 uses
  store i16 %i.y, ptr %i.f, align 8
  tail call void @_ZNK5clang17FunctionProtoType20getExceptionSpecInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExceptionSpecInfo") align 8 %i.c, ptr noundef nonnull align 16 dereferenceable(48) %1)
  %i.z = load i64, ptr %i.i, align 16             ; 11 uses
  %i.aa = and i64 %i.z, 16777216
  %.not.i4 = icmp eq i64 %i.aa, 0
  br i1 %.not.i4, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = lshr i64 %i.z, 48                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = lshr i64 %i.z, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.ae, 1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.lobit.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = add i64 %i.ag, 7
  %i.ai = and i64 %i.ah, -8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 4 uses
  %i.ak = and i64 %i.z, 1073741824
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load i24, ptr %i.aj, align 8            ; 2 uses
  %i.am = lshr i24 %i.al, 10
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i24 %i.am, 1
  %i.an = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.an
  %i.aq = lshr i24 %i.al, 11
  %.lobit.i.i.i.i.i.i.i.i.i = and i24 %i.aq, 1
  %i.ar = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.as = phi ptr [ %i.ap, %bb.d ], [ %i.aj, %bb.c ]
  %i.at = phi i64 [ %i.ar, %bb.d ], [ 0, %bb.c ]
  %i.au = and i64 %i.z, 503316480
  %i.av = icmp eq i64 %i.au, 67108864
  br i1 %i.av, label %bb.e, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %i.aw = load i24, ptr %i.aj, align 8
  %i.ax = and i24 %i.aw, 1023
  %i.ay = zext nneg i24 %i.ax to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i: ; preds = %bb.e, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.e ], [ 0, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i ]
  %i.az = trunc i64 %i.z to i32
  %i.ba = lshr i32 %i.az, 25
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5clang17FunctionProtoType15getExtProtoInfoEv.55, i64 %i.bc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %spec.select.i.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i.i = add nsw i32 %i.bb, -6
  %switch.i.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i.i, 3
  %i.bf = zext i1 %switch.i.i.i.i.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %switch.ext
  %i.bi = and i64 %i.z, 536870912
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 7
  %i.bn = and i64 %i.bm, -8
  %i.bo = inttoptr i64 %i.bn to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.bo, align 8, !tbaa !165
  br label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

bb.f:                                             ; preds = %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit
  %i.bp = and i64 %i.z, 255
  %.not.i.i.i.i = icmp eq i64 %i.bp, 24
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !974
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !1001
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 16
  %i.bw = icmp eq i8 %i.bv, 24
  br i1 %i.bw, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i:  ; preds = %bb.g
  %i.bx = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(48) %1) #25
  %.not.i.i = icmp eq ptr %i.bx, null
  %.pre = load i64, ptr %i.i, align 16            ; 2 uses
  br i1 %.not.i.i, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i

_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i: ; preds = %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, %bb.f
  %i.by = phi i64 [ %i.z, %bb.f ], [ %.pre, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ] ; 2 uses
  %i.bz = lshr i64 %i.by, 21
  %i.ca = and i64 %i.bz, 7
  br label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit: ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i, %bb.g, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i
  %i.cb = phi i64 [ %i.z, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i ], [ %i.by, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i ], [ %.pre, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ], [ %i.z, %bb.g ] ; 12 uses
  %.sroa.0.0.i5 = phi i64 [ %.sroa.0.0.copyload.i, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i ], [ %i.ca, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i ], [ 0, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ], [ 0, %bb.g ]
  store i64 %.sroa.0.0.i5, ptr %i.a, align 8, !tbaa !165
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = lshr i32 %i.cc, 19
  %i.ce = and i32 %i.cd, 3
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !2552
  %i.cf = and i64 %i.cb, 536870912
  %.not.i6 = icmp eq i64 %i.cf, 0                 ; 2 uses
  br i1 %.not.i6, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge, label %bb.h

_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge: ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit
  %.pre25 = and i64 %i.cb, 1073741824
  br label %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit

bb.h:                                             ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ch = lshr i64 %i.cb, 48
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = lshr i64 %i.cb, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i7 = and i64 %i.cj, 1
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.lobit.i.i.i.i.i.i.i.i.i.i7
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.cl, 7
  %i.cn = and i64 %i.cm, -8
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = and i64 %i.cb, 1073741824               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = load i24, ptr %i.co, align 8            ; 2 uses
  %i.cr = lshr i24 %i.cq, 10
  %.lobit.i.i.i.i.i.i.i.i.i8 = and i24 %i.cr, 1
  %i.cs = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i8 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = lshr i24 %i.cq, 11
  %.lobit.i.i.i.i.i.i.i.i = and i24 %i.cv, 1
  %i.cw = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.cx = phi ptr [ %i.cu, %bb.i ], [ %i.co, %bb.h ]
  %i.cy = phi i64 [ %i.cw, %bb.i ], [ 0, %bb.h ]
  %i.cz = and i64 %i.cb, 503316480
  %i.da = icmp eq i64 %i.cz, 67108864
  br i1 %i.da, label %bb.j, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i

bb.j:                                             ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i
  %i.db = load i24, ptr %i.co, align 8
  %i.dc = and i24 %i.db, 1023
  %i.dd = zext nneg i24 %i.dc to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i: ; preds = %bb.j, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = phi i64 [ %i.dd, %bb.j ], [ 0, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i ]
  %i.de = lshr i32 %i.cc, 25
  %i.df = and i32 %i.de, 15                       ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5clang17FunctionProtoType15getExtProtoInfoEv.55, i64 %i.dg
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %switch.ext28 = zext i8 %switch.load27 to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %spec.select.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i = add nsw i32 %i.df, -6
  %switch.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i, 3
  %i.dj = zext i1 %switch.i.i.i.i.i.i to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %switch.ext28
  br label %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit

_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit: ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i
  %.pre-phi = phi i64 [ %.pre25, %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge ], [ %i.cp, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i ]
  %.0.i = phi ptr [ null, %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge ], [ %i.dl, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.dm, align 8, !tbaa !2553
  %.not.i.i9 = icmp eq i64 %.pre-phi, 0
  br i1 %.not.i.i9, label %_ZNK5clang17FunctionProtoType23getAArch64SMEAttributesEv.exit, label %_ZNK5clang17FunctionProtoType21hasExtraAttributeInfoEv.exit.i

_ZNK5clang17FunctionProtoType21hasExtraAttributeInfoEv.exit.i: ; preds = %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.do = lshr i64 %i.cb, 48                      ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  %i.dq = lshr i64 %i.cb, 31
  %.lobit.i.i.i.i.i = and i64 %i.dq, 1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.lobit.i.i.i.i.i
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = add i64 %i.ds, 7
  %i.du = and i64 %i.dt, -8
  %i.dv = inttoptr i64 %i.du to ptr               ; 5 uses
  %i.dw = load i24, ptr %i.dv, align 8            ; 8 uses
  %i.dx = and i24 %i.dw, 1024
  %.not.i10 = icmp eq i24 %i.dx, 0
  br i1 %.not.i10, label %_ZNK5clang17FunctionProtoType20hasArmTypeAttributesEv.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang17FunctionProtoType21hasExtraAttributeInfoEv.exit.i
end_hunk_0
