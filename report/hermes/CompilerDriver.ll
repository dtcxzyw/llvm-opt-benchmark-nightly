inline.NumInlined: 6810
inline.NumDeleted: 3465
begin_hunk_0_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  %i.bfl = getelementptr inbounds nuw i8, ptr %78, i64 6
  store i8 %i.bfk, ptr %i.bfl, align 2, !tbaa !404, !noalias !387
  %i.bfm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL18DumpSourceLocationE, i64 152), align 8, !tbaa !405, !noalias !387
  %i.bfn = icmp ne i32 %i.bfm, 0
  %i.bfo = getelementptr inbounds nuw i8, ptr %78, i64 3
  %i.bfp = zext i1 %i.bfn to i8
  store i8 %i.bfp, ptr %i.bfo, align 1, !tbaa !411, !noalias !387
  %_ZN2clL13DumpBeforeAllE.val.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13DumpBeforeAllE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %_ZN2clL10DumpBeforeB5cxx11E.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10DumpBeforeB5cxx11E, i64 152), align 8, !tbaa !177, !noalias !387
  %_ZN2clL10DumpBeforeB5cxx11E.val4.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10DumpBeforeB5cxx11E, i64 160), align 8, !tbaa !177, !noalias !387
  call fastcc void @_ZN12_GLOBAL__N_121initializeDumpOptionsERN6hermes35CodeGenerationSettings_DumpSettingsERKN4llvh2cl3optIbLb0ENS4_6parserIbEEEERKNS4_4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS6_ISH_EEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bet, i8 %_ZN2clL13DumpBeforeAllE.val.i, ptr %_ZN2clL10DumpBeforeB5cxx11E.val.i, ptr %_ZN2clL10DumpBeforeB5cxx11E.val4.i), !noalias !387
  %_ZN2clL12DumpAfterAllE.val.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12DumpAfterAllE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %_ZN2clL9DumpAfterB5cxx11E.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL9DumpAfterB5cxx11E, i64 152), align 8, !tbaa !177, !noalias !387
  %_ZN2clL9DumpAfterB5cxx11E.val3.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL9DumpAfterB5cxx11E, i64 160), align 8, !tbaa !177, !noalias !387
  call fastcc void @_ZN12_GLOBAL__N_121initializeDumpOptionsERN6hermes35CodeGenerationSettings_DumpSettingsERKN4llvh2cl3optIbLb0ENS4_6parserIbEEEERKNS4_4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS6_ISH_EEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bey, i8 %_ZN2clL12DumpAfterAllE.val.i, ptr %_ZN2clL9DumpAfterB5cxx11E.val.i, ptr %_ZN2clL9DumpAfterB5cxx11E.val3.i), !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #26, !noalias !387
  %_ZN2clL15FunctionsToDumpB5cxx11E.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15FunctionsToDumpB5cxx11E, i64 152), align 8, !tbaa !177, !noalias !387 ; 2 uses
  %_ZN2clL15FunctionsToDumpB5cxx11E.val2.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL15FunctionsToDumpB5cxx11E, i64 160), align 8, !tbaa !177, !noalias !387 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  store i32 1, ptr %79, align 8, !alias.scope !412, !noalias !387
  %i.bfq = getelementptr inbounds nuw i8, ptr %79, i64 4
  store i32 0, ptr %i.bfq, align 4, !tbaa !400, !alias.scope !412, !noalias !387
  %.06.i.i.i.i.ptr.i.i5.i = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.i.i5.i, align 8, !tbaa !57, !alias.scope !412, !noalias !387
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i6.i = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i6.i, align 8, !tbaa !58, !alias.scope !412, !noalias !387
  %.06.i.i.i.i.ptr.1.i.i7.i = getelementptr inbounds nuw i8, ptr %79, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.1.i.i7.i, align 8, !tbaa !57, !alias.scope !412, !noalias !387
  %.sroa.4.0..sroa_idx.i.i.i.i.1.i.i8.i = getelementptr inbounds nuw i8, ptr %79, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.1.i.i8.i, align 8, !tbaa !58, !alias.scope !412, !noalias !387
  %.06.i.i.i.i.ptr.2.i.i9.i = getelementptr inbounds nuw i8, ptr %79, i64 40
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.2.i.i9.i, align 8, !tbaa !57, !alias.scope !412, !noalias !387
  %.sroa.4.0..sroa_idx.i.i.i.i.2.i.i10.i = getelementptr inbounds nuw i8, ptr %79, i64 48
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.2.i.i10.i, align 8, !tbaa !58, !alias.scope !412, !noalias !387
  %.06.i.i.i.i.ptr.3.i.i11.i = getelementptr inbounds nuw i8, ptr %79, i64 56
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.3.i.i11.i, align 8, !tbaa !57, !alias.scope !412, !noalias !387
  %.sroa.4.0..sroa_idx.i.i.i.i.3.i.i12.i = getelementptr inbounds nuw i8, ptr %79, i64 64
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.3.i.i12.i, align 8, !tbaa !58, !alias.scope !412, !noalias !387
  %.not5.i.i = icmp eq ptr %_ZN2clL15FunctionsToDumpB5cxx11E.val.i, %_ZN2clL15FunctionsToDumpB5cxx11E.val2.i
  br i1 %.not5.i.i, label %_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit.i, label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %bb.kt
  %i.bfr = getelementptr inbounds nuw i8, ptr %77, i64 8
  br label %bb.ku

bb.ku:                                            ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i.i, %.lr.ph.i.i120
  %.sroa.02.06.i.i = phi ptr [ %_ZN2clL15FunctionsToDumpB5cxx11E.val.i, %.lr.ph.i.i120 ], [ %i.bfy, %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #26, !noalias !415
  %i.bfs = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !18, !noalias !415
  store ptr %i.bfs, ptr %77, align 8, !tbaa !333, !noalias !415
  %i.bft = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8
  %i.bfu = load i64, ptr %i.bft, align 8, !tbaa !155, !noalias !415
  store i64 %i.bfu, ptr %i.bfr, align 8, !tbaa !334, !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26, !noalias !416
  %i.bfv = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %79, ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !421
  %i.bfw = load ptr, ptr %i.h, align 8, !tbaa !422, !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26, !noalias !416
  br i1 %i.bfv, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bfx = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E20InsertIntoBucketImplIS2_EEPS8_RKS2_RKT_SC_(ptr noundef nonnull align 8 dereferenceable(72) %79, ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef %i.bfw), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bfx, ptr noundef nonnull align 8 dereferenceable(16) %77, i64 16, i1 false), !tbaa.struct !259, !noalias !421
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i.i

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i.i: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26, !noalias !415
  %i.bfy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 32 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.bfy, %_ZN2clL15FunctionsToDumpB5cxx11E.val2.i
  br i1 %.not.i.i121, label %_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit.i, label %bb.ku

_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit.i: ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit.i.i, %bb.kt
  %i.bfz = load i32, ptr %i.bfd, align 8, !noalias !387
  %i.bga = and i32 %i.bfz, 1
  %.not.i.i.i.i.i122 = icmp eq i32 %i.bga, 0
  br i1 %.not.i.i.i.i.i122, label %bb.kw, label %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit.i

bb.kw:                                            ; preds = %_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit.i
  %i.bgb = load ptr, ptr %.06.i.i.i.i.ptr.i.i.i, align 8, !tbaa !424, !noalias !387
  call void @_ZdlPv(ptr noundef %i.bgb) #26, !noalias !387
  br label %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit.i

_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit.i: ; preds = %bb.kw, %_ZN12_GLOBAL__N_123stringListOptToDenseSetERKN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS1_6parserIS8_EEEE.exit.i
  store i32 1, ptr %i.bfd, align 8, !noalias !387
  store i32 0, ptr %i.bfe, align 4, !tbaa !400, !noalias !387
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.i.i.i, align 8, !tbaa !57, !noalias !387
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !58, !noalias !387
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.1.i.i.i, align 8, !tbaa !57, !noalias !387
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.1.i.i.i, align 8, !tbaa !58, !noalias !387
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8, !tbaa !57, !noalias !387
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.2.i.i.i, align 8, !tbaa !58, !noalias !387
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.i.i.ptr.3.i.i.i, align 8, !tbaa !57, !noalias !387
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.3.i.i.i, align 8, !tbaa !58, !noalias !387
  call void @_ZN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4swapERS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.bfd, ptr noundef nonnull align 8 dereferenceable(72) %79), !noalias !387
  %i.bgc = load i32, ptr %79, align 8, !noalias !387
  %i.bgd = and i32 %i.bgc, 1
  %.not.i.i.i.i123 = icmp eq i32 %i.bgd, 0
  br i1 %.not.i.i.i.i123, label %bb.kx, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i

bb.kx:                                            ; preds = %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit.i
  %i.bge = load ptr, ptr %.06.i.i.i.i.ptr.i.i5.i, align 8, !tbaa !424, !noalias !387
  call void @_ZdlPv(ptr noundef %i.bge) #26, !noalias !387
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i: ; preds = %bb.kx, %_ZN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEaSEOS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #26, !noalias !387
  %i.bgf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL34GenerateNamesForAnonymousFunctionsE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %i.bgg = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i8 %i.bgf, ptr %i.bgg, align 8, !tbaa !426, !noalias !387
  %i.bgh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL14BytecodeFormatE, i64 152), align 8, !tbaa !180, !noalias !387
  %i.bgi = icmp eq i32 %i.bgh, 0                  ; 3 uses
  br i1 %i.bgi, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i
  store i8 0, ptr %i.ber, align 1, !tbaa !398, !noalias !387
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i
  %i.bgj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL12InstrumentIRE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %i.bgk = getelementptr inbounds nuw i8, ptr %78, i64 7
  store i8 %i.bgj, ptr %i.bgk, align 1, !tbaa !427, !noalias !387
  %i.bgl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cl18EnableBlockScopingE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %i.bgm = getelementptr inbounds nuw i8, ptr %78, i64 9
  store i8 %i.bgl, ptr %i.bgm, align 1, !tbaa !428, !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #26, !noalias !387
  %i.bgn = getelementptr inbounds nuw i8, ptr %80, i64 1
  %i.bgo = getelementptr inbounds nuw i8, ptr %80, i64 2
  %i.bgp = getelementptr inbounds nuw i8, ptr %80, i64 3
  %i.bgq = getelementptr inbounds nuw i8, ptr %80, i64 4
  %i.bgr = getelementptr inbounds nuw i8, ptr %80, i64 5
  %i.bgs = zext i1 %i.bgi to i8
  store i8 %i.bgs, ptr %80, align 1, !tbaa !429, !noalias !387
  %i.bgt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cl17OptimizationLevelE, i64 152), align 8, !tbaa !43, !noalias !387
  %.not.i124 = icmp ne i32 %i.bgt, 0
  %brmerge.not.i = and i1 %i.bgi, %.not.i124
  br i1 %brmerge.not.i, label %bb.la, label %_ZNK2cl6CLFlagcvbEv.exit.i

bb.la:                                            ; preds = %bb.kz
  %i.bgu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6InlineE, i64 144), align 8, !tbaa !431, !noalias !387 ; 2 uses
  %i.bgv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6InlineE, i64 328), align 8, !tbaa !431, !noalias !387 ; 2 uses
  %i.bgw = icmp ugt i32 %i.bgu, %i.bgv
  br i1 %i.bgw, label %_ZNK2cl6CLFlagcvbEv.exit.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bgx = icmp ult i32 %i.bgu, %i.bgv
  %i.bgy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6InlineE, i64 496), align 8, !range !179, !noalias !387
  %spec.select.i129 = select i1 %i.bgx, i8 0, i8 %i.bgy
  br label %_ZNK2cl6CLFlagcvbEv.exit.i

_ZNK2cl6CLFlagcvbEv.exit.i:                       ; preds = %bb.lb, %bb.la, %bb.kz
  %i.bgz = phi i8 [ 0, %bb.kz ], [ %spec.select.i129, %bb.lb ], [ 1, %bb.la ]
  store i8 %i.bgz, ptr %i.bgn, align 1, !tbaa !432, !noalias !387
  %i.bha = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL14ReusePropCacheE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  store i8 %i.bha, ptr %i.bgo, align 1, !tbaa !433, !noalias !387
  %i.bhb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cl14StaticBuiltinsE, i64 152), align 8, !tbaa !72, !noalias !387
  %i.bhc = icmp eq i32 %i.bhb, 0
  %i.bhd = zext i1 %i.bhc to i8
  store i8 %i.bhd, ptr %i.bgp, align 1, !tbaa !434, !noalias !387
  %i.bhe = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13StaticRequireE, i64 144), align 8, !tbaa !431, !noalias !387 ; 2 uses
  %i.bhf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13StaticRequireE, i64 328), align 8, !tbaa !431, !noalias !387 ; 2 uses
  %i.bhg = icmp ugt i32 %i.bhe, %i.bhf
  %i.bhh = icmp ult i32 %i.bhe, %i.bhf
  %i.bhi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13StaticRequireE, i64 496), align 8, !range !179, !noalias !387
  %spec.select50.i = select i1 %i.bhh, i8 0, i8 %i.bhi
  %.0.i.i13.i = select i1 %i.bhg, i8 1, i8 %spec.select50.i
  store i8 %.0.i.i13.i, ptr %i.bgq, align 1, !tbaa !435, !noalias !387
  %i.bhj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL19UseUnsafeIntrinsicsE, i64 144), align 8, !tbaa !431, !noalias !387 ; 2 uses
  %i.bhk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL19UseUnsafeIntrinsicsE, i64 328), align 8, !tbaa !431, !noalias !387 ; 2 uses
  %i.bhl = icmp ugt i32 %i.bhj, %i.bhk
  %i.bhm = icmp ult i32 %i.bhj, %i.bhk
  %i.bhn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL19UseUnsafeIntrinsicsE, i64 496), align 8, !range !179, !noalias !387
  %spec.select51.i = select i1 %i.bhm, i8 0, i8 %i.bhn
  %.0.i.i15.i = select i1 %i.bhl, i8 1, i8 %spec.select51.i
  store i8 %.0.i.i15.i, ptr %i.bgr, align 1, !tbaa !436, !noalias !387
  %i.bho = call noalias noundef nonnull dereferenceable(672) ptr @_Znwm(i64 noundef 672) #28, !noalias !437 ; 27 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 8 ; 8 uses
  store i32 1, ptr %i.bhp, align 8, !tbaa !442, !noalias !444
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bho, i64 12 ; 2 uses
  store i32 1, ptr %i.bhq, align 4, !tbaa !445, !noalias !444
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bho, align 8, !tbaa !7, !noalias !444
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bho, i64 16 ; 2 uses
  call void @_ZSt10_ConstructIN6hermes7ContextEJRNS0_22CodeGenerationSettingsERNS0_20OptimizationSettingsESt10unique_ptrIN4llvh8DenseMapINS7_9StringRefENS8_IS9_S9_NS7_12DenseMapInfoIS9_EENS7_6detail12DenseMapPairIS9_S9_EEEESB_NSD_IS9_SF_EEEESt14default_deleteISH_EESt6vectorIjSaIjEEEEvPT_DpOT0_(ptr noundef nonnull %i.bhr, ptr noundef nonnull align 8 dereferenceable(392) %78, ptr noundef nonnull align 1 dereferenceable(6) %80, ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull align 8 dereferenceable(24) %111), !noalias !444
  %i.bhs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL13NonStrictModeE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %i.bht = trunc nuw i8 %i.bhs to i1
  %i.bhu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10StrictModeE, i64 152), align 8, !range !179, !noalias !387
  %i.bhv = select i1 %i.bht, i8 0, i8 %i.bhu
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bho, i64 184
  store i8 %i.bhv, ptr %i.bhw, align 8, !tbaa !446, !noalias !387
  %i.bhx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cl10EnableEvalE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bho, i64 185
  store i8 %i.bhx, ptr %i.bhy, align 1, !tbaa !487, !noalias !387
  %i.bhz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cl8ES6ClassE, i64 152), align 8, !tbaa !156, !range !179, !noalias !387, !noundef !61
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bho, i64 209
  store i8 %i.bhz, ptr %i.bia, align 1, !tbaa !488, !noalias !387
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bho, i64 176 ; 4 uses
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !489, !noalias !387, !nonnull !61, !align !68 ; 2 uses
  %i.bid = call ptr @getenv(ptr noundef nonnull @.str.322) #26, !noalias !387 ; 2 uses
  %i.bie = icmp eq ptr %i.bid, null
  br i1 %i.bie, label %_ZN6hermes8oscompat12should_colorEi.exit.i.i, label %bb.lc

bb.lc:                                            ; preds = %_ZNK2cl6CLFlagcvbEv.exit.i
  %i.bif = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.323, ptr noundef nonnull dereferenceable(1) %i.bid) #27, !noalias !387
  %i.big = icmp eq i32 %i.bif, 0
  br i1 %i.big, label %_ZN6hermes8oscompat12should_colorEi.exit.i.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bih = call noundef i32 @isatty(i32 noundef 2) #26, !noalias !387
  %i.bii = icmp ne i32 %i.bih, 0
  %i.bij = zext i1 %i.bii to i8
  br label %_ZN6hermes8oscompat12should_colorEi.exit.i.i

_ZN6hermes8oscompat12should_colorEi.exit.i.i:     ; preds = %bb.ld, %bb.lc, %_ZNK2cl6CLFlagcvbEv.exit.i
  %.0.i.i17.i = phi i8 [ %i.bij, %bb.ld ], [ 0, %bb.lc ], [ 0, %_ZNK2cl6CLFlagcvbEv.exit.i ]
  %i.bik = call noundef i32 @isatty(i32 noundef 2) #26, !noalias !387
  %.not.i18.i = icmp eq i32 %i.bik, 0
  br i1 %.not.i18.i, label %_ZN12_GLOBAL__N_123guessErrorOutputOptionsEv.exit.i, label %bb.le

bb.le:                                            ; preds = %_ZN6hermes8oscompat12should_colorEi.exit.i.i
  %i.bil = call noundef i32 @_ZN4llvh3sys7Process18StandardErrColumnsEv() #26, !noalias !387
  %i.bim = zext i32 %i.bil to i64
  br label %_ZN12_GLOBAL__N_123guessErrorOutputOptionsEv.exit.i

_ZN12_GLOBAL__N_123guessErrorOutputOptionsEv.exit.i: ; preds = %bb.le, %_ZN6hermes8oscompat12should_colorEi.exit.i.i
  %.sroa.3.0.i.i = phi i64 [ -1, %_ZN6hermes8oscompat12should_colorEi.exit.i.i ], [ %i.bim, %bb.le ]
  %i.bin = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL18MaxDiagnosticWidthE, i64 152), align 8, !tbaa !490, !noalias !387 ; 3 uses
  %i.bio = icmp slt i32 %i.bin, 0
  %.not1.i.i = icmp eq i32 %i.bin, 0
  %i.bip = zext nneg i32 %i.bin to i64
  %spec.select.i.i = select i1 %.not1.i.i, i64 %.sroa.3.0.i.i, i64 %i.bip
  %.sroa.3.1.i.i = select i1 %i.bio, i64 -1, i64 %spec.select.i.i
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bic, i64 120
  store i8 %.0.i.i17.i, ptr %i.biq, align 8, !tbaa !495, !noalias !387
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bic, i64 128
  store i64 %.sroa.3.1.i.i, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !58, !noalias !387
  %i.bir = load ptr, ptr %i.bib, align 8, !tbaa !489, !noalias !387, !nonnull !61, !align !68
  %i.bis = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6WerrorE, i64 152), align 8, !tbaa !496, !noalias !387
  %i.bit = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL8WnoerrorE, i64 152), align 8, !tbaa !496, !noalias !387
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bir, i64 328 ; 6 uses
  br label %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i

_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i: ; preds = %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge, %_ZN12_GLOBAL__N_123guessErrorOutputOptionsEv.exit.i
  %.sroa.023.0.i.i = phi ptr [ %i.bit, %_ZN12_GLOBAL__N_123guessErrorOutputOptionsEv.exit.i ], [ %.sroa.023.0.i.i.be, %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge ] ; 9 uses
  %.sroa.027.0.i.i = phi ptr [ %i.bis, %_ZN12_GLOBAL__N_123guessErrorOutputOptionsEv.exit.i ], [ %.sroa.027.0.i.i.be, %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge ] ; 9 uses
  %i.biv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL8WnoerrorE, i64 160), align 8, !tbaa !496, !noalias !387
  %.not78.i.i = icmp eq ptr %.sroa.023.0.i.i, %i.biv
  br i1 %.not78.i.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i
  %i.biw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL8WnoerrorE, i64 152), align 8, !tbaa !496, !noalias !387
  %i.bix = ptrtoint ptr %.sroa.023.0.i.i to i64
  %i.biy = ptrtoint ptr %i.biw to i64
  %i.biz = sub i64 %i.bix, %i.biy
  %i.bja = lshr exact i64 %i.biz, 2
  %i.bjb = and i64 %i.bja, 4294967295
  %i.bjc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL8WnoerrorE, i64 176), align 8, !tbaa !9, !noalias !387
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %i.bjb
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !3, !noalias !387
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i
  %.017.i.i = phi i32 [ %i.bje, %bb.lf ], [ 0, %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i ] ; 3 uses
  %i.bjf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6WerrorE, i64 160), align 8, !tbaa !496, !noalias !387
  %.not79.i.i = icmp eq ptr %.sroa.027.0.i.i, %i.bjf
  br i1 %.not79.i.i, label %.thread.i.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bjg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6WerrorE, i64 152), align 8, !tbaa !496, !noalias !387
  %i.bjh = ptrtoint ptr %.sroa.027.0.i.i to i64
  %i.bji = ptrtoint ptr %i.bjg to i64
  %i.bjj = sub i64 %i.bjh, %i.bji
  %i.bjk = lshr exact i64 %i.bjj, 2
  %i.bjl = and i64 %i.bjk, 4294967295
  %i.bjm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6WerrorE, i64 176), align 8, !tbaa !9, !noalias !387
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjm, i64 %i.bjl
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !3, !noalias !387 ; 3 uses
  %.not.i19.i = icmp eq i32 %i.bjo, 0
  br i1 %.not.i19.i, label %.thread.i.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bjp = add i32 %.017.i.i, -1
  %or.cond.not.i.i = icmp ult i32 %i.bjp, %i.bjo
  br i1 %or.cond.not.i.i, label %bb.lj, label %bb.lk

.thread.i.i:                                      ; preds = %bb.lh, %bb.lg
  %.not18.i.i = icmp eq i32 %.017.i.i, 0
  br i1 %.not18.i.i, label %_ZN12_GLOBAL__N_129setWarningsAreErrorsFromFlagsERN6hermes18SourceErrorManagerE.exit.i, label %.thread45.i.i

bb.lj:                                            ; preds = %bb.li
  %i.bjq = icmp ult i32 %.017.i.i, %i.bjo
  br i1 %i.bjq, label %.thread45.i.i, label %_ZN12_GLOBAL__N_129setWarningsAreErrorsFromFlagsERN6hermes18SourceErrorManagerE.exit.i

bb.lk:                                            ; preds = %bb.li
  %i.bjr = load i32, ptr %.sroa.027.0.i.i, align 4, !tbaa !497, !noalias !387 ; 4 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i, i64 4 ; 5 uses
  %i.bjt = icmp eq i32 %i.bjr, 0
  %i.bju = load i64, ptr %i.biu, align 8, !tbaa !499, !noalias !387 ; 8 uses
  %i.bjv = trunc i64 %i.bju to i1                 ; 2 uses
  br i1 %i.bjt, label %bb.ll, label %bb.lu

.thread45.i.i:                                    ; preds = %bb.lj, %.thread.i.i
  %i.bjw = load i32, ptr %.sroa.023.0.i.i, align 4, !tbaa !497, !noalias !387 ; 4 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i.i, i64 4 ; 5 uses
  %i.bjy = icmp eq i32 %i.bjw, 0
  %i.bjz = load i64, ptr %i.biu, align 8, !tbaa !499, !noalias !387 ; 6 uses
  %i.bka = trunc i64 %i.bjz to i1                 ; 2 uses
  br i1 %i.bjy, label %bb.lq, label %bb.lx

bb.ll:                                            ; preds = %bb.lk
  br i1 %i.bjv, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bkb = lshr i64 %i.bju, 58
  %i.bkc = shl nsw i64 -1, %i.bkb
  %i.bkd = xor i64 %i.bkc, -1
  %i.bke = shl nuw i64 %i.bkd, 1
  %i.bkf = and i64 %i.bju, -288230376151711743
  %i.bkg = or i64 %i.bke, %i.bkf
  store i64 %i.bkg, ptr %i.biu, align 8, !tbaa !499, !noalias !387
  br label %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge

bb.ln:                                            ; preds = %bb.ll
  %i.bkh = inttoptr i64 %i.bju to ptr             ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bkh, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !387 ; 2 uses
  %.not.i.i.i.i.i.i125 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i125, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.thread.i.i.i.i.i, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.thread.i.i.i.i.i: ; preds = %bb.ln
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 16
  %i.bkj = load i32, ptr %i.bki, align 8, !tbaa !501, !noalias !387 ; 2 uses
  %i.bkk = add i32 %i.bkj, 63
  %i.bkl = lshr i32 %i.bkk, 6
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i.i.i

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i: ; preds = %bb.ln
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bkh, align 8, !noalias !387
  %i.bkm = shl i64 %.sroa.2.0.copyload.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0.0.copyload.i.i.i.i.i, i8 -1, i64 %i.bkm, i1 false), !noalias !387
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !506, !noalias !387 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkh, i64 16 ; 2 uses
  %i.bko = load i32, ptr %i.bkn, align 8, !tbaa !501, !noalias !387 ; 2 uses
  %i.bkp = add i32 %i.bko, 63
  %i.bkq = lshr i32 %i.bkp, 6                     ; 3 uses
  %i.bkr = zext nneg i32 %i.bkq to i64            ; 3 uses
  %i.bks = icmp ugt i64 %.pre.i.i.i.i.i, %i.bkr
  br i1 %i.bks, label %bb.lo, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i.i.i

bb.lo:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i
  %i.bkt = sub nuw i64 %.pre.i.i.i.i.i, %i.bkr
  %i.bku = load ptr, ptr %i.bkh, align 8, !tbaa !507, !noalias !387
  %i.bkv = getelementptr inbounds nuw [8 x i8], ptr %i.bku, i64 %i.bkr
  %i.bkw = shl i64 %i.bkt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bkv, i8 0, i64 %i.bkw, i1 false), !noalias !387
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.bkn, align 8, !tbaa !501, !noalias !387
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i.i.i

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i.i.i: ; preds = %bb.lo, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.thread.i.i.i.i.i
  %i.bkx = phi i32 [ %i.bkq, %bb.lo ], [ %i.bkq, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i ], [ %i.bkl, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.thread.i.i.i.i.i ]
  %i.bky = phi i32 [ %.pre.i.i.i.i.i.i.i, %bb.lo ], [ %i.bko, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i ], [ %i.bkj, %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.thread.i.i.i.i.i ]
  %i.bkz = and i32 %i.bky, 63                     ; 2 uses
  %.not.i.i.i.i.i.i.i126 = icmp eq i32 %i.bkz, 0
  br i1 %.not.i.i.i.i.i.i.i126, label %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge, label %bb.lp

bb.lp:                                            ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i.i.i.i
  %i.bla = zext nneg i32 %i.bkz to i64
  %i.blb = shl nsw i64 -1, %i.bla
  %i.blc = xor i64 %i.blb, -1
  %i.bld = add nsw i32 %i.bkx, -1
  %i.ble = zext i32 %i.bld to i64
  %i.blf = load ptr, ptr %i.bkh, align 8, !tbaa !507, !noalias !387
  %i.blg = getelementptr inbounds nuw [8 x i8], ptr %i.blf, i64 %i.ble ; 2 uses
  %i.blh = load i64, ptr %i.blg, align 8, !tbaa !58, !noalias !387
  %i.bli = and i64 %i.blh, %i.blc
  store i64 %i.bli, ptr %i.blg, align 8, !tbaa !58, !noalias !387
  br label %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge

bb.lq:                                            ; preds = %.thread45.i.i
  br i1 %i.bka, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.blj = and i64 %i.bjz, -288230376151711743
  store i64 %i.blj, ptr %i.biu, align 8, !tbaa !499, !noalias !387
  br label %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge

bb.ls:                                            ; preds = %bb.lq
  %i.blk = inttoptr i64 %i.bjz to ptr             ; 2 uses
  %.sroa.2.0..sroa_idx.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.blk, i64 8
  %.sroa.2.0.copyload.i.i2.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i1.i.i.i, align 8, !noalias !387 ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i2.i.i.i, 0
  br i1 %.not.i.i.i3.i.i.i, label %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %.sroa.0.0.copyload.i.i4.i.i.i = load ptr, ptr %i.blk, align 8, !noalias !387
  %i.bll = shl i64 %.sroa.2.0.copyload.i.i2.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0.0.copyload.i.i4.i.i.i, i8 0, i64 %i.bll, i1 false), !noalias !387
  br label %_ZN6hermes18SourceErrorManager20setWarningsAreErrorsEb.exit.i.i.backedge

bb.lu:                                            ; preds = %bb.lk
  br i1 %i.bjv, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.blm = lshr i64 %i.bju, 1
end_hunk_0
