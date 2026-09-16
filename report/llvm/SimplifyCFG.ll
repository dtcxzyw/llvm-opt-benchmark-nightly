Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyCFG?download=true
inline.NumInlined: 15223
inline.NumDeleted: 6880
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN12_GLOBAL__N_114SimplifyCFGOpt3runEPN4llvm10BasicBlockE:bb.a
  %i.aks = getelementptr inbounds [32 x i8], ptr %i.akj, i64 %i.akr
  br label %_ZNK4llvm4User10getOperandEj.exit153.i.i.i

_ZNK4llvm4User10getOperandEj.exit153.i.i.i:       ; preds = %bb.ev, %bb.eu
  %i.akt = phi ptr [ %i.ako, %bb.eu ], [ %i.aks, %bb.ev ]
  %i.aku = getelementptr inbounds nuw [32 x i8], ptr %i.akt, i64 %indvars.iv.i.i.i
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !106 ; 2 uses
  %i.akw = load i32, ptr %i.akh, align 8, !tbaa !112 ; 2 uses
  %i.akx = load i32, ptr %i.aki, align 4, !tbaa !113
  %.not.i154.i.i.i = icmp ult i32 %i.akw, %i.akx
  br i1 %.not.i154.i.i.i, label %bb.ex, label %bb.ew, !prof !119

bb.ew:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit153.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.akg, ptr noundef %i.akv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i

bb.ex:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit153.i.i.i
  %i.aky = zext i32 %i.akw to i64
  %i.akz = load ptr, ptr %i.akg, align 8, !tbaa !77
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.akz, i64 %i.aky
  store ptr %i.akv, ptr %i.ala, align 1
  %i.alb = load i32, ptr %i.akh, align 8, !tbaa !112
  %i.alc = add i32 %i.alb, 1
  store i32 %i.alc, ptr %i.akh, align 8, !tbaa !112
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i: ; preds = %bb.ex, %bb.ew
  %i.ald = getelementptr inbounds nuw i8, ptr %.086271.i.i.i, i64 8 ; 2 uses
  %.not113.i.i.i = icmp eq ptr %i.ald, %i.xj
  br i1 %.not113.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_11InstructionEEEZL19canSinkInstructionsS4_RNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEEE3$_1EEbOT_T0_.exit.thread.i.i.i", label %bb.et

"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_11InstructionEEEZL19canSinkInstructionsS4_RNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEEE3$_1EEbOT_T0_.exit.thread.i.i.i": ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i, %_ZNK4llvm4User13getOperandUseEj.exit.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_11InstructionEEEZL19canSinkInstructionsS4_RNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEEE3$_1EEbOT_T0_.exit.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL19canSinkInstructionsN4llvm8ArrayRefIPNS2_11InstructionEEERNS2_8DenseMapIPKNS2_3UseENS2_11SmallVectorIPNS2_5ValueELj4EEENS2_12DenseMapInfoISA_vEENS2_6detail12DenseMapPairISA_SE_EEEEE3$_1EclIPKS5_EEbT_.exit70.i.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i143.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not112.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.adp
  br i1 %.not112.i.i.i, label %.critedge119.i.i.i, label %bb.db, !llvm.loop !591

.critedge119.i.i.i:                               ; preds = %_ZN4llvm12MMRAMetadataD2Ev.exit.i.i.i, %bb.bx, %bb.cb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.i.i.i, %.lr.ph241.i.split.i.i, %.lr.ph261.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_11InstructionEEEZL19canSinkInstructionsS4_RNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEEE3$_1EEbOT_T0_.exit.thread.i.i.i", %_ZL35replacingOperandWithVariableIsCheapPKN4llvm11InstructionEi.exit.thread.i.i.i, %_ZL35replacingOperandWithVariableIsCheapPKN4llvm11InstructionEi.exit.i.i.i, %.split.i.i.i, %bb.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm3isaIJNS_8CallBaseEEPKNS_11InstructionEEEbRKT0_.exit.i.i.i, %bb.cz, %.lr.ph241.i.i.i
  %.19.i.i.i = phi i1 [ true, %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_11InstructionEEEZL19canSinkInstructionsS4_RNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEEE3$_1EEbOT_T0_.exit.thread.i.i.i" ], [ true, %_ZN4llvm3isaIJNS_8CallBaseEEPKNS_11InstructionEEEbRKT0_.exit.i.i.i ], [ false, %bb.cz ], [ false, %bb.cb ], [ false, %.lr.ph261.i.i.i ], [ false, %bb.ca ], [ false, %.lr.ph241.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ false, %.split.i.i.i ], [ false, %_ZL35replacingOperandWithVariableIsCheapPKN4llvm11InstructionEi.exit.i.i.i ], [ false, %_ZL35replacingOperandWithVariableIsCheapPKN4llvm11InstructionEi.exit.thread.i.i.i ], [ false, %.lr.ph241.i.split.i.i ], [ false, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.i.i.i ], [ false, %bb.bx ], [ false, %_ZN4llvm12MMRAMetadataD2Ev.exit.i.i.i ]
  %i.ale = load i32, ptr %i.bm, align 4, !tbaa !256 ; 2 uses
  %i.alf = icmp eq i32 %i.ale, 0
  br i1 %i.alf, label %_ZL19canSinkInstructionsN4llvm8ArrayRefIPNS_11InstructionEEERNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEE.exit.i.i, label %bb.ey

bb.ey:                                            ; preds = %.critedge119.i.i.i
  %i.alg = load ptr, ptr %53, align 8, !tbaa !257
  %i.alh = zext i32 %i.ale to i64                 ; 2 uses
  %i.ali = shl nuw nsw i64 %i.alh, 5
  %i.alj = add nuw nsw i64 %i.alh, 31
  %i.alk = lshr i64 %i.alj, 3
  %i.all = and i64 %i.alk, 1073741820
  %i.alm = add nuw nsw i64 %i.all, %i.ali
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.alg, i64 noundef %i.alm, i64 noundef 8) #27
  br label %_ZL19canSinkInstructionsN4llvm8ArrayRefIPNS_11InstructionEEERNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEE.exit.i.i

_ZL19canSinkInstructionsN4llvm8ArrayRefIPNS_11InstructionEEERNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEE.exit.i.i: ; preds = %bb.ey, %.critedge119.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br i1 %.19.i.i.i, label %bb.ez, label %.critedge.i.i

bb.ez:                                            ; preds = %_ZL19canSinkInstructionsN4llvm8ArrayRefIPNS_11InstructionEEERNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEE.exit.i.i
  %i.aln = load ptr, ptr %i.be, align 8, !tbaa !77 ; 2 uses
  %i.alo = load i32, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %i.alp = zext i32 %i.alo to i64
  %.idx.i118.i.i = shl nuw nsw i64 %i.alp, 3
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aln, i64 %.idx.i118.i.i
  %.not6.i.i.i.i = icmp eq i32 %i.alo, 0
  br i1 %.not6.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit.i.i, label %.lr.ph.i.i119.i.i

.lr.ph.i.i119.i.i:                                ; preds = %bb.ez
  %.pre.i.i120.i.i = load i8, ptr %i.bd, align 8, !tbaa !72, !range !73, !noalias !714
  br label %bb.fa

bb.fa:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i, %.lr.ph.i.i119.i.i
  %i.alr = phi i8 [ %.pre.i.i120.i.i, %.lr.ph.i.i119.i.i ], [ %i.ame, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i ]
  %.07.i.i.i.i = phi ptr [ %i.aln, %.lr.ph.i.i119.i.i ], [ %i.amf, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i ] ; 2 uses
  %i.als = load ptr, ptr %.07.i.i.i.i, align 8, !tbaa !252 ; 3 uses
  %i.alt = trunc nuw i8 %i.alr to i1
  br i1 %i.alt, label %bb.fb, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.alu = load ptr, ptr %58, align 8, !tbaa !75, !noalias !714 ; 2 uses
  %i.alv = load i32, ptr %i.bc, align 4, !tbaa !137, !noalias !714 ; 4 uses
  %i.alw = zext i32 %i.alv to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.alw, 3
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alu, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i.i = icmp eq i32 %i.alv, 0
  br i1 %.not22.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.fb, %.critedge.i.i.i.i.i.i
  %.023.i.i.i.i.i.i = phi ptr [ %i.alz, %.critedge.i.i.i.i.i.i ], [ %i.alu, %bb.fb ] ; 2 uses
  %i.aly = load ptr, ptr %.023.i.i.i.i.i.i, align 8, !tbaa !138, !noalias !714
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.aly, %i.als
  br i1 %.not15.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i, label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.alz = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i123.i.i = icmp eq ptr %i.alz, %i.alx
  br i1 %.not.i.i.i.i123.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.critedge.i.i.i.i.i.i, %bb.fb
  %i.ama = load i32, ptr %i.bb, align 8, !tbaa !136, !noalias !714
  %i.amb = icmp ult i32 %i.alv, %i.ama
  br i1 %i.amb, label %bb.fc, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i

bb.fc:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.amc = add nuw i32 %i.alv, 1
  store i32 %i.amc, ptr %i.bc, align 4, !tbaa !137, !noalias !714
  store ptr %i.als, ptr %i.alx, align 8, !tbaa !138, !noalias !714
  br label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.fa
  %i.amd = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %58, ptr noundef %i.als) #27, !noalias !714 ; 0 uses
  %.pre.i.i.i121.i.i = load i8, ptr %i.bd, align 8, !tbaa !72, !range !73, !noalias !714
  %.pre.fr.i.i.i.i.i = freeze i8 %.pre.i.i.i121.i.i
  br label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i, %bb.fc
  %i.ame = phi i8 [ %.pre.fr.i.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i ], [ 1, %bb.fc ], [ 1, %.lr.ph.i.i.i.i.i.i ]
  %i.amf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i122.i.i = icmp eq ptr %i.amf, %i.alq
  br i1 %.not.i.i122.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit.i.i, label %bb.fa, !llvm.loop !594

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit.i.i: ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i.i.i, %bb.ez
  %i.amg = add nuw nsw i32 %.075363.i.i, 1        ; 2 uses
  %i.amh = call noundef nonnull align 8 dereferenceable(65) ptr @_ZN4llvm23LockstepReverseIteratorILb1EEmmEv(ptr noundef nonnull align 8 dereferenceable(65) %59) ; 0 uses
  %i.ami = load i8, ptr %i.bi, align 8, !tbaa !247, !range !73, !noundef !74
  %i.amj = trunc nuw i8 %i.ami to i1
  br i1 %i.amj, label %.critedge.thread543.i.i, label %.lr.ph366.i.i, !llvm.loop !595

.critedge.i.i:                                    ; preds = %_ZL19canSinkInstructionsN4llvm8ArrayRefIPNS_11InstructionEEERNS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEE.exit.i.i, %_ZNK4llvm8CallBase12isConvergentEv.exit.peel.i.i.i, %bb.bo, %_ZNK4llvm8CallBase11cannotMergeEv.exit.peel.i.i.i, %bb.bn, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.peel.i.i.i, %bb.bl, %bb.bk, %.lr.ph.preheader.i.i.i, %.lr.ph.preheader.i.i.i, %.lr.ph.preheader.i.i.i, %.lr.ph.preheader.i.i.i, %.lr.ph.preheader.i.i.i, %.lr.ph.preheader.i.i.i, %.critedge.i.i.i, %_ZNK4llvm8CallBase12isConvergentEv.exit.i.i.i, %bb.bu, %_ZNK4llvm8CallBase11cannotMergeEv.exit.i.i.i, %bb.bt, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i, %bb.br, %bb.bq, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.amk = icmp eq i32 %.075363.i.i, 0
  br i1 %i.amk, label %.critedge94.i.i, label %.critedge.thread543.i.i

.critedge.thread543.i.i:                          ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit.i.i, %.critedge.i.i
  %.075316545.i.i = phi i32 [ %.075363.i.i, %.critedge.i.i ], [ %i.amg, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit.i.i ] ; 4 uses
  %i.aml = call noundef zeroext i1 @_ZN4llvm35IsBlockFollowedByDeoptOrUnreachableEPKNS_10BasicBlockE(ptr noundef nonnull %1) #27
  br i1 %i.aml, label %.thread289.i.i, label %bb.fd

bb.fd:                                            ; preds = %.critedge.thread543.i.i
  store i8 0, ptr %i.bi, align 8, !tbaa !247
  store i32 0, ptr %i.bg, align 8, !tbaa !112
  %i.amm = load ptr, ptr %59, align 8, !tbaa !715 ; 2 uses
  %i.amn = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !716 ; 2 uses
  %.idx.i124.i.i = shl nuw nsw i64 %i.amn, 3
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 %.idx.i124.i.i
  %.not18.i.i.i = icmp eq i64 %i.amn, 0
  br i1 %.not18.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i125.i.i

.lr.ph.i125.i.i:                                  ; preds = %bb.fd, %bb.fh
  %.01319.i.i.i = phi ptr [ %i.ang, %bb.fh ], [ %i.amm, %bb.fd ] ; 2 uses
  %i.amp = load ptr, ptr %.01319.i.i.i, align 8, !tbaa !116
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 48
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !110 ; 3 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !80
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 56
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !130
  %i.amw = icmp eq ptr %i.amr, %i.amv
  %i.amx = load ptr, ptr %i.amr, align 8
  %i.amy = getelementptr inbounds i8, ptr %i.amx, i64 -24 ; 2 uses
  br i1 %i.amw, label %.sink.split.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i125.i.i
  %i.amz = load i32, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %i.ana = load i32, ptr %i.bh, align 4, !tbaa !113
  %.not.i.i126.i.i = icmp ult i32 %i.amz, %i.ana
  br i1 %.not.i.i126.i.i, label %bb.fg, label %bb.ff, !prof !119

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull %i.amy)
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.anb = zext i32 %i.amz to i64
  %i.anc = load ptr, ptr %i.be, align 8, !tbaa !77
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %i.anb
  store ptr %i.amy, ptr %i.and, align 1
  %i.ane = load i32, ptr %i.bg, align 8, !tbaa !112
  %i.anf = add i32 %i.ane, 1
  store i32 %i.anf, ptr %i.bg, align 8, !tbaa !112
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.ang = getelementptr inbounds nuw i8, ptr %.01319.i.i.i, i64 8 ; 2 uses
  %.not.i127.i.i = icmp eq ptr %i.ang, %i.amo
  br i1 %.not.i127.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i125.i.i

._crit_edge.i.i.i:                                ; preds = %bb.fh
  %.pre.i128.i.i = load i32, ptr %i.bg, align 8, !tbaa !112
  %i.anh = icmp eq i32 %.pre.i128.i.i, 0
  br i1 %i.anh, label %.sink.split.i.i.i, label %_ZN4llvm23LockstepReverseIteratorILb1EE5resetEv.exit.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.i125.i.i, %._crit_edge.i.i.i, %bb.fd
  store i8 1, ptr %i.bi, align 8, !tbaa !247
  br label %_ZN4llvm23LockstepReverseIteratorILb1EE5resetEv.exit.i.i

_ZN4llvm23LockstepReverseIteratorILb1EE5resetEv.exit.i.i: ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  store ptr %i.bn, ptr %60, align 8, !tbaa !75
  store i32 4, ptr %i.bo, align 8, !tbaa !136
  store i32 0, ptr %i.bp, align 4, !tbaa !137
  store i8 1, ptr %i.bq, align 8, !tbaa !72
  %smax.i.i = call i32 @llvm.smax.i32(i32 %.075316545.i.i, i32 1)
  br label %bb.fi

bb.fi:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit149.i.i, %_ZN4llvm23LockstepReverseIteratorILb1EE5resetEv.exit.i.i
  %.071391.i.i = phi i32 [ 0, %_ZN4llvm23LockstepReverseIteratorILb1EE5resetEv.exit.i.i ], [ %i.aod, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit149.i.i ] ; 4 uses
  %.val100.i.i = load ptr, ptr %i.be, align 8, !tbaa !77
  %i.ani = call fastcc noundef zeroext i1 @"_ZZL30sinkCommonCodeFromPredecessorsPN4llvm10BasicBlockEPNS_14DomTreeUpdaterEENK3$_0clERNS_23LockstepReverseIteratorILb1EEE"(ptr nonnull %56, ptr nonnull %58, ptr %.val100.i.i)
  br i1 %i.ani, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %i.anj = load ptr, ptr %i.be, align 8, !tbaa !77 ; 2 uses
  %i.ank = load i32, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %i.anl = zext i32 %i.ank to i64
  %.idx.i131.i.i = shl nuw nsw i64 %i.anl, 3
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anj, i64 %.idx.i131.i.i
  %.not6.i.i132.i.i = icmp eq i32 %i.ank, 0
  br i1 %.not6.i.i132.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit149.i.i, label %.lr.ph.i.i133.i.i

.lr.ph.i.i133.i.i:                                ; preds = %bb.fj
  %.pre.i.i134.i.i = load i8, ptr %i.bq, align 8, !tbaa !72, !range !73, !noalias !717
  br label %bb.fk

bb.fk:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i, %.lr.ph.i.i133.i.i
  %i.ann = phi i8 [ %.pre.i.i134.i.i, %.lr.ph.i.i133.i.i ], [ %i.aoa, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i ]
  %.07.i.i135.i.i = phi ptr [ %i.anj, %.lr.ph.i.i133.i.i ], [ %i.aob, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i ] ; 2 uses
  %i.ano = load ptr, ptr %.07.i.i135.i.i, align 8, !tbaa !252 ; 3 uses
  %i.anp = trunc nuw i8 %i.ann to i1
  br i1 %i.anp, label %bb.fl, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i136.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.anq = load ptr, ptr %60, align 8, !tbaa !75, !noalias !717 ; 2 uses
  %i.anr = load i32, ptr %i.bp, align 4, !tbaa !137, !noalias !717 ; 4 uses
  %i.ans = zext i32 %i.anr to i64
  %.idx.i.i.i.i141.i.i = shl nuw nsw i64 %i.ans, 3
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anq, i64 %.idx.i.i.i.i141.i.i ; 2 uses
  %.not22.i.i.i.i142.i.i = icmp eq i32 %i.anr, 0
  br i1 %.not22.i.i.i.i142.i.i, label %._crit_edge.i.i.i.i148.i.i, label %.lr.ph.i.i.i.i143.i.i

.lr.ph.i.i.i.i143.i.i:                            ; preds = %bb.fl, %.critedge.i.i.i.i146.i.i
  %.023.i.i.i.i144.i.i = phi ptr [ %i.anv, %.critedge.i.i.i.i146.i.i ], [ %i.anq, %bb.fl ] ; 2 uses
  %i.anu = load ptr, ptr %.023.i.i.i.i144.i.i, align 8, !tbaa !138, !noalias !717
  %.not15.i.i.i.i145.i.i = icmp eq ptr %i.anu, %i.ano
  br i1 %.not15.i.i.i.i145.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i, label %.critedge.i.i.i.i146.i.i

.critedge.i.i.i.i146.i.i:                         ; preds = %.lr.ph.i.i.i.i143.i.i
  %i.anv = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i144.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i147.i.i = icmp eq ptr %i.anv, %i.ant
  br i1 %.not.i.i.i.i147.i.i, label %._crit_edge.i.i.i.i148.i.i, label %.lr.ph.i.i.i.i143.i.i

._crit_edge.i.i.i.i148.i.i:                       ; preds = %.critedge.i.i.i.i146.i.i, %bb.fl
  %i.anw = load i32, ptr %i.bo, align 8, !tbaa !136, !noalias !717
  %i.anx = icmp ult i32 %i.anr, %i.anw
  br i1 %i.anx, label %bb.fm, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i136.i.i

bb.fm:                                            ; preds = %._crit_edge.i.i.i.i148.i.i
  %i.any = add nuw i32 %i.anr, 1
  store i32 %i.any, ptr %i.bp, align 4, !tbaa !137, !noalias !717
  store ptr %i.ano, ptr %i.ant, align 8, !tbaa !138, !noalias !717
  br label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i136.i.i: ; preds = %._crit_edge.i.i.i.i148.i.i, %bb.fk
  %i.anz = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %60, ptr noundef %i.ano) #27, !noalias !717 ; 0 uses
  %.pre.i.i.i137.i.i = load i8, ptr %i.bq, align 8, !tbaa !72, !range !73, !noalias !717
  %.pre.fr.i.i.i138.i.i = freeze i8 %.pre.i.i.i137.i.i
  br label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i: ; preds = %.lr.ph.i.i.i.i143.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i136.i.i, %bb.fm
  %i.aoa = phi i8 [ %.pre.fr.i.i.i138.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i136.i.i ], [ 1, %bb.fm ], [ 1, %.lr.ph.i.i.i.i143.i.i ]
  %i.aob = getelementptr inbounds nuw i8, ptr %.07.i.i135.i.i, i64 8 ; 2 uses
  %.not.i.i140.i.i = icmp eq ptr %i.aob, %i.anm
  br i1 %.not.i.i140.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit149.i.i, label %bb.fk, !llvm.loop !594

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit149.i.i: ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.i139.i.i, %bb.fj
  %i.aoc = call noundef nonnull align 8 dereferenceable(65) ptr @_ZN4llvm23LockstepReverseIteratorILb1EEmmEv(ptr noundef nonnull align 8 dereferenceable(65) %59) ; 0 uses
  %i.aod = add nuw nsw i32 %.071391.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aod, %smax.i.i
  br i1 %exitcond.not.i.i, label %.thread288.i.i, label %bb.fi, !llvm.loop !598

bb.fn:                                            ; preds = %bb.fi
  %i.aoe = icmp eq i32 %.071391.i.i, 0
  br i1 %i.aoe, label %.critedge92.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_ZN4llvm19SmallPtrSetImplBase8copyFromEPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(56) %58, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %60) #27
  %i.aof = call noundef nonnull align 8 dereferenceable(65) ptr @_ZN4llvm23LockstepReverseIteratorILb1EEppEv(ptr noundef nonnull align 8 dereferenceable(65) %59) ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fw, %bb.fo
  %.172399.in.i.i = phi i32 [ %.071391.i.i, %bb.fo ], [ %.172399.i.i, %bb.fw ] ; 2 uses
  %.176398.i.i = phi i32 [ %.071391.i.i, %bb.fo ], [ %.277.i.i, %bb.fw ]
  %.172399.i.i = add nsw i32 %.172399.in.i.i, -1  ; 2 uses
  %i.aog = load ptr, ptr %i.be, align 8, !tbaa !77 ; 3 uses
  %i.aoh = load i32, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %i.aoi = zext i32 %i.aoh to i64
  %.idx412.i.i = shl nuw nsw i64 %i.aoi, 3
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 %.idx412.i.i ; 2 uses
  %.not392.i.i = icmp eq i32 %i.aoh, 0
  br i1 %.not392.i.i, label %._crit_edge396.i.i, label %.lr.ph395.i.i

.lr.ph395.i.i:                                    ; preds = %bb.fp
  %i.aok = load i8, ptr %i.bq, align 8, !tbaa !72, !range !73, !noundef !74
  %i.aol = trunc nuw i8 %i.aok to i1
  br i1 %i.aol, label %.lr.ph395.split.us.i.i, label %.lr.ph395.split.i.i

.lr.ph395.split.us.i.i:                           ; preds = %.lr.ph395.i.i
  %i.aom = load i32, ptr %i.bp, align 4, !tbaa !137 ; 2 uses
  %i.aon = icmp eq i32 %i.aom, 0
  br i1 %i.aon, label %._crit_edge396.i.i, label %.lr.ph395.split.us.split.preheader.i.i

.lr.ph395.split.us.split.preheader.i.i:           ; preds = %.lr.ph395.split.us.i.i
  %.pre459.i.i = load ptr, ptr %60, align 8, !tbaa !75
  br label %.lr.ph395.split.us.split.i.i

.lr.ph395.split.us.split.i.i:                     ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i, %.lr.ph395.split.us.split.preheader.i.i
  %i.aoo = phi i32 [ %i.aoz, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i ], [ %i.aom, %.lr.ph395.split.us.split.preheader.i.i ] ; 4 uses
  %i.aop = phi ptr [ %i.apa, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i ], [ %.pre459.i.i, %.lr.ph395.split.us.split.preheader.i.i ] ; 5 uses
  %.070393.us.i.i = phi ptr [ %i.apb, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i ], [ %i.aog, %.lr.ph395.split.us.split.preheader.i.i ] ; 2 uses
  %i.aoq = load ptr, ptr %.070393.us.i.i, align 8, !tbaa !252
  %i.aor = zext i32 %i.aoo to i64
  %.idx.i.i153.us.i.i = shl nuw nsw i64 %i.aor, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i.i153.us.i.i
  %.not1923.i.i.us.i.i = icmp eq i32 %i.aoo, 0
  br i1 %.not1923.i.i.us.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i, label %.lr.ph.i.i154.us.i.i

.lr.ph.i.i154.us.i.i:                             ; preds = %.lr.ph395.split.us.split.i.i, %.critedge.i.i.us.i.i
  %.01524.i.i.us.i.i = phi ptr [ %i.aou, %.critedge.i.i.us.i.i ], [ %i.aop, %.lr.ph395.split.us.split.i.i ] ; 3 uses
  %i.aot = load ptr, ptr %.01524.i.i.us.i.i, align 8, !tbaa !138
  %.not20.i.i.us.i.i = icmp eq ptr %i.aot, %i.aoq
  br i1 %.not20.i.i.us.i.i, label %bb.fq, label %.critedge.i.i.us.i.i

.critedge.i.i.us.i.i:                             ; preds = %.lr.ph.i.i154.us.i.i
  %i.aou = getelementptr inbounds nuw i8, ptr %.01524.i.i.us.i.i, i64 8 ; 2 uses
  %.not19.i.i.us.i.i = icmp eq ptr %i.aou, %i.aos
  br i1 %.not19.i.i.us.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i, label %.lr.ph.i.i154.us.i.i

bb.fq:                                            ; preds = %.lr.ph.i.i154.us.i.i
  %i.aov = add i32 %i.aoo, -1                     ; 3 uses
  store i32 %i.aov, ptr %i.bp, align 4, !tbaa !137
  %i.aow = zext i32 %i.aov to i64
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aop, i64 %i.aow
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !138
  store ptr %i.aoy, ptr %.01524.i.i.us.i.i, align 8, !tbaa !138
  %.pre458.i.i = load ptr, ptr %60, align 8, !tbaa !75
  br label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i: ; preds = %.critedge.i.i.us.i.i, %bb.fq, %.lr.ph395.split.us.split.i.i
  %i.aoz = phi i32 [ 0, %.lr.ph395.split.us.split.i.i ], [ %i.aov, %bb.fq ], [ %i.aoo, %.critedge.i.i.us.i.i ]
  %i.apa = phi ptr [ %i.aop, %.lr.ph395.split.us.split.i.i ], [ %.pre458.i.i, %bb.fq ], [ %i.aop, %.critedge.i.i.us.i.i ]
  %i.apb = getelementptr inbounds nuw i8, ptr %.070393.us.i.i, i64 8 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.apb, %i.aoj
  br i1 %.not.us.i.i, label %._crit_edge396.i.i, label %.lr.ph395.split.us.split.i.i, !llvm.loop !599

._crit_edge396.i.i:                               ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.us.i.i, %.lr.ph395.split.us.i.i, %bb.fp
  %.val96.i.i = load ptr, ptr %i.be, align 8, !tbaa !77
  %i.apc = call fastcc noundef zeroext i1 @"_ZZL30sinkCommonCodeFromPredecessorsPN4llvm10BasicBlockEPNS_14DomTreeUpdaterEENK3$_0clERNS_23LockstepReverseIteratorILb1EEE"(ptr nonnull %56, ptr nonnull %58, ptr %.val96.i.i)
  br i1 %i.apc, label %bb.fw, label %bb.fv

.lr.ph395.split.i.i:                              ; preds = %.lr.ph395.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i
  %.070393.i.i = phi ptr [ %i.apt, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i ], [ %i.aog, %.lr.ph395.i.i ] ; 2 uses
  %i.apd = load ptr, ptr %.070393.i.i, align 8, !tbaa !252 ; 2 uses
  %i.ape = load i8, ptr %i.bq, align 8, !tbaa !72, !range !73, !noundef !74
  %i.apf = trunc nuw i8 %i.ape to i1
  br i1 %i.apf, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %.lr.ph395.split.i.i
  %i.apg = load ptr, ptr %60, align 8, !tbaa !75  ; 3 uses
  %i.aph = load i32, ptr %i.bp, align 4, !tbaa !137 ; 3 uses
  %i.api = zext i32 %i.aph to i64
  %.idx.i.i153.i.i = shl nuw nsw i64 %i.api, 3
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 %.idx.i.i153.i.i
  %.not1923.i.i.i.i = icmp eq i32 %i.aph, 0
  br i1 %.not1923.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i, label %.lr.ph.i.i154.i.i

.lr.ph.i.i154.i.i:                                ; preds = %bb.fr, %.critedge.i.i.i.i
  %.01524.i.i.i.i = phi ptr [ %i.apl, %.critedge.i.i.i.i ], [ %i.apg, %bb.fr ] ; 3 uses
  %i.apk = load ptr, ptr %.01524.i.i.i.i, align 8, !tbaa !138
  %.not20.i.i.i.i = icmp eq ptr %i.apk, %i.apd
  br i1 %.not20.i.i.i.i, label %bb.fs, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i154.i.i
  %i.apl = getelementptr inbounds nuw i8, ptr %.01524.i.i.i.i, i64 8 ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %i.apl, %i.apj
  br i1 %.not19.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i, label %.lr.ph.i.i154.i.i

bb.fs:                                            ; preds = %.lr.ph.i.i154.i.i
  %i.apm = add i32 %i.aph, -1                     ; 2 uses
  store i32 %i.apm, ptr %i.bp, align 4, !tbaa !137
  %i.apn = zext i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apg, i64 %i.apn
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !138
  store ptr %i.app, ptr %.01524.i.i.i.i, align 8, !tbaa !138
  br label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i

bb.ft:                                            ; preds = %.lr.ph395.split.i.i
  %i.apq = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %60, ptr noundef %i.apd) #27 ; 2 uses
  %.not.not.i.i.i50.i = icmp eq ptr %i.apq, null
  br i1 %.not.not.i.i.i50.i, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %60, ptr noundef nonnull %i.apq) #27
  %i.apr = load i32, ptr %i.bp, align 4, !tbaa !137
  %i.aps = add i32 %i.apr, -1
  store i32 %i.aps, ptr %i.bp, align 4, !tbaa !137
  br label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE5eraseES2_.exit.i.i: ; preds = %.critedge.i.i.i.i, %bb.fu, %bb.ft, %bb.fs, %bb.fr
  %i.apt = getelementptr inbounds nuw i8, ptr %.070393.i.i, i64 8 ; 2 uses
  %.not.i51.i = icmp eq ptr %i.apt, %i.aoj
  br i1 %.not.i51.i, label %._crit_edge396.i.i, label %.lr.ph395.split.i.i, !llvm.loop !600

bb.fv:                                            ; preds = %._crit_edge396.i.i
  call void @_ZN4llvm19SmallPtrSetImplBase8copyFromEPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(56) %58, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %60) #27
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %._crit_edge396.i.i
  %.277.i.i = phi i32 [ %.176398.i.i, %._crit_edge396.i.i ], [ %.172399.i.i, %bb.fv ] ; 2 uses
  %i.apu = call noundef nonnull align 8 dereferenceable(65) ptr @_ZN4llvm23LockstepReverseIteratorILb1EEppEv(ptr noundef nonnull align 8 dereferenceable(65) %59) ; 0 uses
  %i.apv = icmp sgt i32 %.172399.in.i.i, 1
  br i1 %i.apv, label %bb.fp, label %.thread288.i.i, !llvm.loop !601

.thread288.i.i:                                   ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit149.i.i, %bb.fw
  %.378.i.i = phi i32 [ %.277.i.i, %bb.fw ], [ %.075316545.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_8ArrayRefIPNS_11InstructionEEEEEvOT_.exit149.i.i ] ; 5 uses
  %.not298.i.i = icmp eq i32 %.378.i.i, 0
  %i.apw = load i8, ptr %i.bq, align 8, !tbaa !72, !range !73, !noundef !74
  %i.apx = trunc nuw i8 %i.apw to i1
  br i1 %i.apx, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %.thread288.i.i
  %i.apy = load ptr, ptr %60, align 8, !tbaa !75
  call void @free(ptr noundef %i.apy) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.fx, %.thread288.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  br i1 %.not298.i.i, label %.critedge94.i.i, label %bb.fy

bb.fy:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  br i1 %.174.i.i, label %bb.fz, label %bb.gf

.thread289.i.i:                                   ; preds = %.critedge.thread543.i.i
  br i1 %.174.i.i, label %.thread293.i.i, label %bb.gf

bb.fz:                                            ; preds = %bb.fy
  store i8 0, ptr %i.bi, align 8, !tbaa !247
  store i32 0, ptr %i.bg, align 8, !tbaa !112
  %i.apz = load ptr, ptr %59, align 8, !tbaa !715 ; 2 uses
  %i.aqa = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !716 ; 2 uses
  %.idx.i156.i.i = shl nuw nsw i64 %i.aqa, 3
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apz, i64 %.idx.i156.i.i
  %.not18.i157.i.i = icmp eq i64 %i.aqa, 0
  br i1 %.not18.i157.i.i, label %.sink.split.i164.i.i, label %.lr.ph.i158.i.i

.lr.ph.i158.i.i:                                  ; preds = %bb.fz, %bb.gd
  %.01319.i159.i.i = phi ptr [ %i.aqt, %bb.gd ], [ %i.apz, %bb.fz ] ; 2 uses
  %i.aqc = load ptr, ptr %.01319.i159.i.i, align 8, !tbaa !116
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 48
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !110 ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !80
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 56
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !130
  %i.aqj = icmp eq ptr %i.aqe, %i.aqi
  %i.aqk = load ptr, ptr %i.aqe, align 8
  %i.aql = getelementptr inbounds i8, ptr %i.aqk, i64 -24 ; 2 uses
  br i1 %i.aqj, label %.sink.split.i164.i.i, label %bb.ga

bb.ga:                                            ; preds = %.lr.ph.i158.i.i
  %i.aqm = load i32, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %i.aqn = load i32, ptr %i.bh, align 4, !tbaa !113
  %.not.i.i160.i.i = icmp ult i32 %i.aqm, %i.aqn
  br i1 %.not.i.i160.i.i, label %bb.gc, label %bb.gb, !prof !119

bb.gb:                                            ; preds = %bb.ga
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull %i.aql)
  br label %bb.gd

end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_SimplifyCFG.cpp:bb.a
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL15MergeCondStoresE, i64 120), align 8, !tbaa !217
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL15MergeCondStoresE, i64 137), align 1, !tbaa !527
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL15MergeCondStoresE, i64 136), align 8, !tbaa !2226
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL15MergeCondStoresE, i64 32), align 8, !tbaa !418
  store i64 139, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL15MergeCondStoresE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL15MergeCondStoresE) #27
  %i.ar = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvmL15MergeCondStoresE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL27MergeCondStoresAggressivelyE, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 120), align 8, !tbaa !217
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL27MergeCondStoresAggressivelyE, ptr nonnull align 1 dereferenceable(43) @.str.33, i64 42) #27
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 10), align 2
  %i.at = and i16 %i.as, -97
  %i.au = or disjoint i16 %i.at, 32
  store i16 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 10), align 2
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 120), align 8, !tbaa !217
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 137), align 1, !tbaa !527
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 136), align 8, !tbaa !2226
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 32), align 8, !tbaa !418
  store i64 117, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL27MergeCondStoresAggressivelyE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL27MergeCondStoresAggressivelyE) #27
  %i.av = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvmL27MergeCondStoresAggressivelyE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL25SpeculateOneExpensiveInstE, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 120), align 8, !tbaa !217
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL25SpeculateOneExpensiveInstE, ptr nonnull align 1 dereferenceable(29) @.str.36, i64 28) #27
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 10), align 2
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 32
  store i16 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 120), align 8, !tbaa !217
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 137), align 1, !tbaa !527
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 136), align 8, !tbaa !2226
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 32), align 8, !tbaa !418
  store i64 68, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL25SpeculateOneExpensiveInstE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL25SpeculateOneExpensiveInstE) #27
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvmL25SpeculateOneExpensiveInstE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL19MaxSpeculationDepthE, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 120), align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL19MaxSpeculationDepthE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL19MaxSpeculationDepthE, ptr nonnull align 1 dereferenceable(22) @.str.39, i64 21) #27
  %i.ba = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 10), align 2
  %i.bb = and i16 %i.ba, -97
  %i.bc = or disjoint i16 %i.bb, 32
  store i16 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 10), align 2
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 120), align 8, !tbaa !129
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 140), align 4, !tbaa !528
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 136), align 8, !tbaa !2225
  store ptr @.str.40, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 32), align 8, !tbaa !418
  store i64 91, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19MaxSpeculationDepthE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL19MaxSpeculationDepthE) #27
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL19MaxSpeculationDepthE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL17MaxSmallBlockSizeE, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 120), align 8, !tbaa !363
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZN4llvmL17MaxSmallBlockSizeE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL17MaxSmallBlockSizeE, ptr nonnull align 1 dereferenceable(33) @.str.42, i64 32) #27
  %i.be = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 10), align 2
  %i.bf = and i16 %i.be, -97
  %i.bg = or disjoint i16 %i.bf, 32
  store i16 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 10), align 2
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 120), align 8, !tbaa !363
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 140), align 4, !tbaa !529
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 136), align 8, !tbaa !2227
  store ptr @.str.43, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 32), align 8, !tbaa !418
  store i64 76, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17MaxSmallBlockSizeE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL17MaxSmallBlockSizeE) #27
  %i.bh = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZN4llvmL17MaxSmallBlockSizeE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL19BranchFoldThresholdE, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 120), align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL19BranchFoldThresholdE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL19BranchFoldThresholdE, ptr nonnull align 1 dereferenceable(34) @.str.45, i64 33) #27
  %i.bi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 10), align 2
  %i.bj = and i16 %i.bi, -97
  %i.bk = or disjoint i16 %i.bj, 32
  store i16 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 10), align 2
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 120), align 8, !tbaa !129
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 140), align 4, !tbaa !528
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 136), align 8, !tbaa !2225
  store ptr @.str.46, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 32), align 8, !tbaa !418
  store i64 58, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL19BranchFoldThresholdE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL19BranchFoldThresholdE) #27
  %i.bl = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL19BranchFoldThresholdE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 120), align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, ptr nonnull align 1 dereferenceable(54) @.str.48, i64 53) #27
  %i.bm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 10), align 2
  %i.bn = and i16 %i.bm, -97
  %i.bo = or disjoint i16 %i.bn, 32
  store i16 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 10), align 2
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 120), align 8, !tbaa !129
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 140), align 4, !tbaa !528
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 136), align 8, !tbaa !2225
  store ptr @.str.49, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 32), align 8, !tbaa !418
  store i64 136, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE) #27
  %i.bp = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL38BranchFoldToCommonDestVectorMultiplierE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL28EnableMergeCompatibleInvokesE, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 120), align 8, !tbaa !217
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL28EnableMergeCompatibleInvokesE, ptr nonnull align 1 dereferenceable(37) @.str.51, i64 36) #27
  %i.bq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 10), align 2
  %i.br = and i16 %i.bq, -97
  %i.bs = or disjoint i16 %i.br, 32
  store i16 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 120), align 8, !tbaa !217
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 137), align 1, !tbaa !527
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 136), align 8, !tbaa !2226
  store ptr @.str.52, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 32), align 8, !tbaa !418
  store i64 60, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL28EnableMergeCompatibleInvokesE) #27
  %i.bt = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvmL28EnableMergeCompatibleInvokesE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL23MaxSwitchCasesPerResultE, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 120), align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL23MaxSwitchCasesPerResultE, ptr nonnull align 1 dereferenceable(28) @.str.54, i64 27) #27
  %i.bu = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 10), align 2
  %i.bv = and i16 %i.bu, -97
  %i.bw = or disjoint i16 %i.bv, 32
  store i16 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 10), align 2
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 120), align 8, !tbaa !129
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 140), align 4, !tbaa !528
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 136), align 8, !tbaa !2225
  store ptr @.str.55, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 32), align 8, !tbaa !418
  store i64 57, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL23MaxSwitchCasesPerResultE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL23MaxSwitchCasesPerResultE) #27
  %i.bx = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL23MaxSwitchCasesPerResultE, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 120), align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 128), align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 144), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, ptr nonnull align 1 dereferenceable(31) @.str.57, i64 30) #27
  %i.by = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 10), align 2
  %i.bz = and i16 %i.by, -97
  %i.ca = or disjoint i16 %i.bz, 32
  store i16 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 10), align 2
  store i32 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 120), align 8, !tbaa !129
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 140), align 4, !tbaa !528
  store i32 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 136), align 8, !tbaa !2225
  store ptr @.str.58, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 32), align 8, !tbaa !418
  store i64 76, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, i64 40), align 8, !tbaa !151
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL26MaxJumpThreadingLiveBlocksE) #27
  %i.cb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL26MaxJumpThreadingLiveBlocksE, ptr nonnull @__dso_handle) #27 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind }

!llvm.module.flags = !{!56, !57}
!llvm.ident = !{!58}
!llvm.errno.tbaa = !{!63}

!0 = distinct !{null}
!1 = distinct !{!1, !111}
!2 = distinct !{!2, !111}
!3 = distinct !{!3, !111}
!4 = distinct !{!4, !111}
!5 = distinct !{!5, !111}
!6 = distinct !{null, null}
!7 = distinct !{!7, !111}
!8 = distinct !{!8, !111}
!9 = distinct !{!9, !111}
!10 = distinct !{!10, !111}
!11 = distinct !{!11, !111}
!12 = distinct !{!12, !111}
!13 = distinct !{!13, !111}
!14 = distinct !{!14, !111}
!15 = distinct !{!15, !111}
!16 = distinct !{!16, !111}
!17 = distinct !{!17, !111}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{!20, !111}
!21 = distinct !{!21, !111}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{!24, !111}
!25 = distinct !{!25, !111}
!26 = distinct !{!26, !111}
!27 = distinct !{!27, !111}
!28 = distinct !{!28, !111}
!29 = distinct !{!29, !111}
!30 = distinct !{ptr @_ZN4llvm13IRBuilderBase9CreateXorEPNS_5ValueES2_RKNS_5TwineE, null}
!31 = distinct !{null}
!32 = distinct !{!32, !111}
!33 = distinct !{!33, !111}
!34 = distinct !{!34, !111}
!35 = distinct !{!35, !111}
!36 = distinct !{!36, !111}
!37 = distinct !{!37, !111}
!38 = distinct !{!38, !111}
!39 = distinct !{ptr @_ZN4llvm13IRBuilderBase8CreateBrEPNS_10BasicBlockE, null}
!40 = distinct !{null, null}
!41 = distinct !{!41, !111}
!42 = distinct !{!42, !111}
!43 = distinct !{!43, !111}
!44 = distinct !{!44, !111}
!45 = distinct !{!45, !111}
!46 = distinct !{!46, !111}
!47 = distinct !{!47, !111}
!48 = distinct !{!48, !111}
!49 = distinct !{!49, !111}
!50 = distinct !{!50, !111}
!51 = distinct !{!51, !111}
!52 = distinct !{null, null}
!53 = distinct !{!53, !111}
!54 = distinct !{!54, !111}
!55 = distinct !{!55, !111}
!56 = !{i32 8, !"PIC Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 2}
!58 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!"omnipotent char", !59, i64 0}
!61 = !{!"int", !60, i64 0}
!62 = !{!"__libc_errno", !61, i64 0}
!63 = !{!62, !61, i64 0}
!64 = !{!"vtable pointer", !59, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"any pointer", !60, i64 0}
!67 = !{!"_ZTSSt14_Function_base", !60, i64 0, !66, i64 16}
!68 = !{!67, !66, i64 16}
!69 = !{!"any p2 pointer", !66, i64 0}
!70 = !{!"bool", !60, i64 0}
!71 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !69, i64 0, !61, i64 8, !61, i64 12, !70, i64 16}
!72 = !{!71, !70, i64 16}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!71, !69, i64 0}
!76 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !66, i64 0, !61, i64 8, !61, i64 12}
!77 = !{!76, !66, i64 0}
!78 = !{!"p1 _ZTSN4llvm10BasicBlockE", !66, i64 0}
!79 = !{!"_ZTSN4llvm12ilist_detail16node_base_parentINS_10BasicBlockEEE", !78, i64 0}
!80 = !{!79, !78, i64 0}
!81 = !{!"short", !60, i64 0}
!82 = !{!"p1 _ZTSN4llvm4TypeE", !66, i64 0}
!83 = !{!"p1 _ZTSN4llvm3UseE", !66, i64 0}
!84 = !{!"_ZTSN4llvm5ValueE", !60, i64 0, !60, i64 1, !60, i64 1, !81, i64 2, !61, i64 4, !61, i64 7, !61, i64 7, !61, i64 7, !61, i64 7, !82, i64 8, !83, i64 16}
!85 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !66, i64 0}
!86 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !85, i64 0, !85, i64 8}
!87 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvLb0EvEEEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm10ilist_nodeINS_10BasicBlockEJEEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_10BasicBlockENS_8FunctionEJEEE", !89, i64 0}
!91 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !66, i64 0}
!92 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0ENS_10BasicBlockEEELb0EEE", !91, i64 0, !91, i64 8}
!93 = !{!"_ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !92, i64 0, !79, i64 16}
!94 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !93, i64 0}
!95 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !94, i64 0}
!96 = !{!"_ZTSN4llvm12simple_ilistINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !95, i64 0}
!97 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEENS_21SymbolTableListTraitsIS2_JS4_S7_EEEEE", !96, i64 0}
!98 = !{!"_ZTSN4llvm15SymbolTableListINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !97, i64 0}
!99 = !{!"p1 _ZTSN4llvm8FunctionE", !66, i64 0}
!100 = !{!"_ZTSN4llvm10BasicBlockE", !84, i64 0, !90, i64 24, !61, i64 40, !98, i64 48, !99, i64 72}
!101 = !{!100, !99, i64 72}
!102 = !{!"p1 _ZTSN4llvm5ValueE", !66, i64 0}
!103 = !{!"p2 _ZTSN4llvm3UseE", !69, i64 0}
!104 = !{!"p1 _ZTSN4llvm4UserE", !66, i64 0}
!105 = !{!"_ZTSN4llvm3UseE", !102, i64 0, !83, i64 8, !103, i64 16, !104, i64 24}
!106 = !{!105, !102, i64 0}
!107 = !{!84, !60, i64 0}
!108 = !{!84, !83, i64 16}
!109 = !{!105, !83, i64 8}
!110 = !{!92, !91, i64 0}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!76, !61, i64 8}
!113 = !{!76, !61, i64 12}
!114 = !{!83, !83, i64 0}
!115 = !{!105, !104, i64 24}
!116 = !{!78, !78, i64 0}
!117 = !{!"_ZTSSt22_Optional_payload_baseISt5tupleIJPN4llvm10BasicBlockENS1_11Instruction9BinaryOpsEbEEE", !60, i64 0, !70, i64 16}
!118 = !{!117, !70, i64 16}
!119 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!120 = !{!"_ZTSN4llvm11Instruction9BinaryOpsE", !60, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!70, !70, i64 0}
!123 = !{!84, !82, i64 8}
!124 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!125 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !124, i64 0, !61, i64 8, !70, i64 12}
!126 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !125, i64 0}
!127 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !126, i64 0}
!128 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !61, i64 0, !127, i64 8}
!129 = !{!128, !61, i64 0}
!130 = !{!92, !91, i64 8}
!131 = !{!"_ZTSN4llvm4UserE", !84, i64 0}
!132 = !{!"_ZTSN4llvm8ConstantE", !131, i64 0}
!133 = !{!"p1 _ZTSN4llvm6ModuleE", !66, i64 0}
!134 = !{!"_ZTSN4llvm11GlobalValueE", !132, i64 0, !82, i64 24, !61, i64 32, !61, i64 32, !61, i64 32, !61, i64 33, !61, i64 33, !61, i64 33, !61, i64 33, !61, i64 33, !61, i64 34, !61, i64 34, !61, i64 36, !133, i64 40}
!135 = !{!134, !61, i64 36}
!136 = !{!71, !61, i64 8}
end_hunk_1
