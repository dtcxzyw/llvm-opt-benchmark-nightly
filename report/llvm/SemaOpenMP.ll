Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZL27checkMappableExpressionListRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEN4llvm3omp6ClauseERNS2_19MappableVarListInfoENS_14SourceLocationERNS_12CXXScopeSpecENS_19DeclarationNameInfoENS5_8ArrayRefIPNS_4ExprEEENS_19OpenMPMapClauseKindENSE_INS_21OpenMPMapModifierKindEEEbb:bb.a
  %i.afa = add i32 %i.aez, 1
  store i32 %i.afa, ptr %i.dr, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625: ; preds = %bb.ee, %bb.ef
  %i.afb = load ptr, ptr %33, align 8, !tbaa !153
  %i.afc = load i32, ptr %i.ec, align 8, !tbaa !154
  %i.afd = zext i32 %i.afc to i64
  call fastcc void @_ZN12_GLOBAL__N_110DSAStackTy31addMappableExpressionComponentsEPKN5clang9ValueDeclEN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS5_3omp6ClauseE(ptr noundef nonnull align 8 dereferenceable(28840) %1, ptr noundef nonnull %i.nu, ptr %i.afb, i64 %i.afd, i32 noundef 71)
  %i.afe = load i32, ptr %i.fk, align 8, !tbaa !154 ; 2 uses
  %i.aff = zext i32 %i.afe to i64                 ; 2 uses
  %i.afg = add nuw nsw i64 %i.aff, 1              ; 5 uses
  %i.afh = load i32, ptr %i.fn, align 4, !tbaa !155
  %.not672 = icmp ult i32 %i.afe, %i.afh
  br i1 %.not672, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626

_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625
  %i.afi = load ptr, ptr %i.fj, align 8, !tbaa !153
  br label %.lr.ph.preheader.i.i628

_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 noundef %i.afg)
  %.pre.i.i632 = load i32, ptr %i.fk, align 8, !tbaa !154
  %.pre691 = zext i32 %.pre.i.i632 to i64         ; 2 uses
  %i.afj = load ptr, ptr %i.fj, align 8, !tbaa !153 ; 2 uses
  %.not11.i.i627 = icmp samesign eq i64 %i.afg, %.pre691
  br i1 %.not11.i.i627, label %.sink.split.i.i, label %.lr.ph.preheader.i.i628

.lr.ph.preheader.i.i628:                          ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626
  %i.afk = phi ptr [ %i.afi, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread ], [ %i.afj, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626 ] ; 2 uses
  %.pre-phi.i.i.pre-phi757 = phi i64 [ %i.aff, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread ], [ %.pre691, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626 ]
  %i.afl = getelementptr inbounds nuw [144 x i8], ptr %i.afk, i64 %i.afg
  %i.afm = getelementptr inbounds nuw [144 x i8], ptr %i.afk, i64 %.pre-phi.i.i.pre-phi757
  br label %.lr.ph.i.i629

.lr.ph.i.i629:                                    ; preds = %.lr.ph.i.i629, %.lr.ph.preheader.i.i628
  %.012.i.i630 = phi ptr [ %i.afq, %.lr.ph.i.i629 ], [ %i.afm, %.lr.ph.preheader.i.i628 ] ; 5 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.012.i.i630, i64 16
  store ptr %i.afn, ptr %.012.i.i630, align 8, !tbaa !153
  %i.afo = getelementptr inbounds nuw i8, ptr %.012.i.i630, i64 8
  store i32 0, ptr %i.afo, align 8, !tbaa !154
  %i.afp = getelementptr inbounds nuw i8, ptr %.012.i.i630, i64 12
  store i32 8, ptr %i.afp, align 4, !tbaa !155
  %i.afq = getelementptr inbounds nuw i8, ptr %.012.i.i630, i64 144 ; 2 uses
  %.not.i.i631 = icmp eq ptr %i.afq, %i.afl
  br i1 %.not.i.i631, label %.sink.split.i.i.loopexit, label %.lr.ph.i.i629, !llvm.loop !50

.sink.split.i.i.loopexit:                         ; preds = %.lr.ph.i.i629
  %.pre690 = load ptr, ptr %i.fj, align 8, !tbaa !153
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.i.i.loopexit, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626
  %i.afr = phi ptr [ %.pre690, %.sink.split.i.i.loopexit ], [ %i.afj, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626 ]
  %i.afs = trunc i64 %i.afg to i32
  store i32 %i.afs, ptr %i.fk, align 8, !tbaa !154
  %i.aft = and i64 %i.afg, 4294967295
  %i.afu = getelementptr inbounds nuw [144 x i8], ptr %i.afr, i64 %i.aft ; 4 uses
  %i.afv = getelementptr inbounds i8, ptr %i.afu, i64 -144 ; 2 uses
  %i.afw = load ptr, ptr %33, align 8, !tbaa !153
  %i.afx = load i32, ptr %i.ec, align 8, !tbaa !154 ; 3 uses
  %i.afy = zext i32 %i.afx to i64                 ; 2 uses
  %.idx673 = shl nuw nsw i64 %i.afy, 4
  %i.afz = getelementptr inbounds i8, ptr %i.afu, i64 -136 ; 4 uses
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !154 ; 2 uses
  %i.agb = zext i32 %i.aga to i64
  %i.agc = add nuw nsw i64 %i.agb, %i.afy         ; 2 uses
  %i.agd = getelementptr inbounds i8, ptr %i.afu, i64 -132
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !155
  %i.agf = zext i32 %i.age to i64
  %i.agg = icmp samesign ugt i64 %i.agc, %i.agf
  br i1 %i.agg, label %bb.eg, label %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE7reserveEm.exit.i637

bb.eg:                                            ; preds = %.sink.split.i.i
  %i.agh = getelementptr inbounds i8, ptr %i.afu, i64 -128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.afv, ptr noundef nonnull %i.agh, i64 noundef %i.agc, i64 noundef 16) #36
  %.pre8.pre.i641 = load i32, ptr %i.afz, align 8, !tbaa !154
  br label %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE7reserveEm.exit.i637

_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE7reserveEm.exit.i637: ; preds = %bb.eg, %.sink.split.i.i
  %.pre8.i638 = phi i32 [ %i.aga, %.sink.split.i.i ], [ %.pre8.pre.i641, %bb.eg ] ; 2 uses
  %.not.i.i639 = icmp eq i32 %i.afx, 0
  br i1 %.not.i.i639, label %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE6appendIPS3_vEEvT_S7_.exit642, label %bb.eh

bb.eh:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE7reserveEm.exit.i637
  %i.agi = load ptr, ptr %i.afv, align 8, !tbaa !153
  %i.agj = zext i32 %.pre8.i638 to i64
  %i.agk = getelementptr inbounds nuw [16 x i8], ptr %i.agi, i64 %i.agj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agk, ptr align 8 %i.afw, i64 %.idx673, i1 false)
  %.pre.i640 = load i32, ptr %i.afz, align 8, !tbaa !154
  br label %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE6appendIPS3_vEEvT_S7_.exit642

_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE6appendIPS3_vEEvT_S7_.exit642: ; preds = %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE7reserveEm.exit.i637, %bb.eh
  %i.agl = phi i32 [ %.pre8.i638, %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE7reserveEm.exit.i637 ], [ %.pre.i640, %bb.eh ]
  %i.agm = add i32 %i.agl, %i.afx
  store i32 %i.agm, ptr %i.afz, align 8, !tbaa !154
  %i.agn = load i16, ptr %i.jx, align 8
  %i.ago = and i16 %i.agn, 511
  %i.agp = icmp eq i16 %i.ago, 46
  %i.agq = select i1 %i.agp, ptr null, ptr %i.nu  ; 2 uses
  %i.agr = load i32, ptr %i.fo, align 8, !tbaa !154 ; 2 uses
  %i.ags = load i32, ptr %i.fp, align 4, !tbaa !155
  %.not.i643 = icmp ult i32 %i.agr, %i.ags
  br i1 %.not.i643, label %bb.ej, label %bb.ei, !prof !271

bb.ei:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE6appendIPS3_vEEvT_S7_.exit642
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef %i.agq)
  br label %.thread447.jt3

bb.ej:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang27OMPClauseMappableExprCommon17MappableComponentEE6appendIPS3_vEEvT_S7_.exit642
  %i.agt = zext i32 %i.agr to i64
  %i.agu = load ptr, ptr %i.fl, align 8, !tbaa !153
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.agu, i64 %i.agt
  store ptr %i.agq, ptr %i.agv, align 1
  %i.agw = load i32, ptr %i.fo, align 8, !tbaa !154
  %i.agx = add i32 %i.agw, 1
  store i32 %i.agx, ptr %i.fo, align 8, !tbaa !154
  br label %.thread447.jt3

.thread447.jt3:                                   ; preds = %_ZL17checkTypeMappableN5clang14SourceLocationENS_11SourceRangeERNS_4SemaEPN12_GLOBAL__N_110DSAStackTyENS_8QualTypeEb.exit, %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit608, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit, %.thread445, %bb.di, %bb.cz, %bb.ei, %bb.ej, %.thread440, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit.thread436.jt3

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit.thread436.jt2: ; preds = %.thread, %_ZL17checkMapConflictsRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEPKNS_9ValueDeclEPKNS_4ExprEbN4llvm8ArrayRefINS_27OMPClauseMappableExprCommon17MappableComponentEEENSB_3omp6ClauseE.exit, %_ZL17checkMapConflictsRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEPKNS_9ValueDeclEPKNS_4ExprEbN4llvm8ArrayRefINS_27OMPClauseMappableExprCommon17MappableComponentEEENSB_3omp6ClauseE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  %i.agy = load ptr, ptr %33, align 8, !tbaa !153 ; 2 uses
  %i.agz = icmp eq ptr %i.agy, %i.eb
  br i1 %i.agz, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt2, label %bb.ek

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit.thread436.jt3: ; preds = %bb.bc, %bb.bb, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit, %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit306, %.thread447.jt3
  %i.aha = load ptr, ptr %33, align 8, !tbaa !153 ; 2 uses
  %i.ahb = icmp eq ptr %i.aha, %i.eb
  br i1 %i.ahb, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt3, label %bb.el

bb.ek:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit.thread436.jt2
  call void @free(ptr noundef %i.agy) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt2

bb.el:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit.thread436.jt3
  call void @free(ptr noundef %i.aha) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt3

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt2: ; preds = %bb.ek, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit.thread436.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %._crit_edge

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt3: ; preds = %bb.el, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit.thread436.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.thread

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt3, %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit, %bb.ac, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ag
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0235486, i64 8 ; 2 uses
  %.not254 = icmp eq ptr %i.ahc, %i.di
  br i1 %.not254, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.thread, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit280.jt2, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang21OpenMPMapModifierKindEEES3_EEbOT_RKT0_.exit
  ret void
}

declare noundef ptr @_ZN5clang12OMPMapClause6CreateERKNS_10ASTContextERKNS_15OMPVarListLocTyEN4llvm8ArrayRefIPNS_4ExprEEENS8_IPNS_9ValueDeclEEENS8_INS7_11SmallVectorINS_27OMPClauseMappableExprCommon17MappableComponentELj8EEEEESB_SA_NS8_INS_21OpenMPMapModifierKindEEENS8_INS_14SourceLocationEEENS_22NestedNameSpecifierLocENS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbSM_(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 4 dereferenceable(12), ptr, i64, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.2126") align 8, ptr noundef byval(%"class.llvm::ArrayRef.1289") align 8, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.1424") align 8, ptr noundef byval(%"class.llvm::ArrayRef.1327") align 8, ptr noundef byval(%"class.clang::NestedNameSpecifierLoc") align 8, ptr noundef byval(%"struct.clang::DeclarationNameInfo") align 8, i32 noundef, i1 noundef zeroext, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 16, 1) i64 @_ZN5clang10SemaOpenMP31ActOnOpenMPDeclareReductionTypeENS_14SourceLocationENS_12ActionResultINS_9OpaquePtrINS_8QualTypeEEELb0EEE(ptr noundef nonnull align 8 dereferenceable(552) %0, i32 %1, ptr %2, i8 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr %2, ptr noundef null) #36 ; 4 uses
  %i.f = icmp ult i64 %i.e, 16
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.e, 15
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZNK5clang8QualType13hasQualifiersEv.exit, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread

_ZNK5clang8QualType13hasQualifiersEv.exit:        ; preds = %bb.b
  %i.h = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i1.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %_ZNK5clang8QualType13hasQualifiersEv.exit.thread

_ZNK5clang8QualType13hasQualifiersEv.exit.thread: ; preds = %bb.b, %_ZNK5clang8QualType13hasQualifiersEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef 4704) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 0, ptr %i.a, align 4, !tbaa !268
  %i.k = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.i

bb.c:                                             ; preds = %_ZNK5clang8QualType13hasQualifiersEv.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !252
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !196
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !252
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.q, align 16              ; 3 uses
  %i.s = add i8 %i.r, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.s, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef 4704) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i32 1, ptr %i.b, align 4, !tbaa !268
  %i.t = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = and i8 %i.r, -2
  %spec.select.i.i.i.i.i.i.i.i.i11 = icmp eq i8 %i.u, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef 4704) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i32 2, ptr %i.c, align 4, !tbaa !268
  %i.v = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.w = add i8 %i.r, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.w, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 noundef 4704) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i32 3, ptr %i.d, align 4, !tbaa !268
  %i.x = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.a, %bb.h, %bb.f, %bb.d, %_ZNK5clang8QualType13hasQualifiersEv.exit.thread
  %.sroa.020.0 = phi i64 [ 0, %bb.a ], [ 0, %_ZNK5clang8QualType13hasQualifiersEv.exit.thread ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %i.e, %bb.g ]
  ret i64 %.sroa.020.0
}

declare i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN5clang10SemaOpenMP41ActOnOpenMPDeclareReductionDirectiveStartEPNS_5ScopeEPNS_11DeclContextENS_15DeclarationNameEN4llvm8ArrayRefISt4pairINS_8QualTypeENS_14SourceLocationEEEENS_15AccessSpecifierEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr %4, i64 %5, i8 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SmallVector.2129", align 8 ; 11 uses
  %9 = alloca %"class.clang::LookupResult", align 8 ; 30 uses
  %10 = alloca %"class.llvm::DenseMap.2131", align 8 ; 12 uses
  %11 = alloca %"class.llvm::DenseMap.2133", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.clang::QualType", align 8  ; 8 uses
  %13 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %16 = alloca %"class.clang::QualType", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 8, ptr %i.f, align 4, !tbaa !155
  %i.g = icmp ugt i64 %5, 8
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4DeclEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.d, i64 noundef %5, i64 noundef 8) #36
  br label %_ZN4llvm15SmallVectorImplIPN5clang4DeclEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4DeclEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.h = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117 ; 2 uses
  %i.i = call noundef i32 @_ZNK5clang4Sema28forRedeclarationInCurContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.h) #36 ; 2 uses
  store i32 0, ptr %9, align 8, !tbaa !1700
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !1701
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 8, ptr %i.n, align 4, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store ptr %i.h, ptr %i.p, align 8, !tbaa !1702
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 %3, ptr %i.q, align 8, !tbaa !1042
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 0, ptr %i.r, align 8, !tbaa !268
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 %3) #36
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 144
  store <4 x i32> <i32 0, i32 0, i32 13, i32 0>, ptr %i.t, align 8, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.v = icmp ne i32 %i.i, 0                      ; 2 uses
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.u, align 8, !tbaa !1719
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 161
  %i.y = icmp eq i32 %i.i, 2
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %i.x, align 1, !tbaa !1720
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 162
  store i8 1, ptr %i.aa, align 2, !tbaa !1721
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 163 ; 2 uses
  %.not.i = xor i1 %i.v, true
  %i.ac = zext i1 %.not.i to i8                   ; 2 uses
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !1713
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 164 ; 2 uses
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !1714
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 165
  store i8 0, ptr %i.ae, align 1, !tbaa !1722
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 166
  store i8 0, ptr %i.af, align 2, !tbaa !1703
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 167
  store i8 0, ptr %i.ag, align 1, !tbaa !1704
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %9) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4DeclEE7reserveEm.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.ai = call noundef ptr @_ZNK5clang4Sema20getEnclosingFunctionEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.ah) #36 ; 2 uses
  %.not62 = icmp eq ptr %i.ai, null
  br i1 %.not62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 384
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !154
  %.not.i65 = icmp ne i32 %i.ak, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i1 [ false, %bb.c ], [ %.not.i65, %bb.d ] ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.an = call noundef zeroext i1 @_ZN5clang4Sema10LookupNameERNS_12LookupResultEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.am, ptr noundef nonnull align 8 dereferenceable(168) %9, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema20FilterLookupForScopeERNS_12LookupResultEPNS_11DeclContextEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ao, ptr noundef nonnull align 8 dereferenceable(168) %9, ptr noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ap = load i32, ptr %i.m, align 8, !tbaa !154
  %.not109120 = icmp eq i32 %i.ap, 0
  br i1 %.not109120, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !153, !noalias !5542 ; 2 uses
  br i1 %i.al, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.sroa.5100.0121.us = phi ptr [ %i.ar, %bb.g ], [ %i.aq, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.5100.0121.us, i64 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.5100.0121.us, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.us = load i64, ptr %.sroa.5100.0121.us, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i.i.i.i.us, -8
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.a, align 8, !tbaa !2378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !197
  %i.au = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIRKS4_JbEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !noalias !5543 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !2378
  %i.aw = call noundef ptr @_ZN5clang23OMPDeclareReductionDecl18getPrevDeclInScopeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.av) #36 ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !2378
  %.not64.us = icmp eq ptr %i.aw, null
  br i1 %.not64.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang23OMPDeclareReductionDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.us = extractvalue { ptr, i8 } %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.us, i64 8
  store i8 1, ptr %i.ay, align 1, !tbaa !197
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformUnaryOperatorEPNS_13UnaryOperatorE:bb.a
  %i.k = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformAddressOfOperandEPNS_4ExprE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformAddressOfOperandEPNS_4ExprE.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %storemerge = phi i64 [ %i.k, %bb.f ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = icmp eq i64 %storemerge, 1
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformAddressOfOperandEPNS_4ExprE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !268
  %i.n = load i32, ptr %1, align 8
  %i.o = lshr i32 %i.n, 19
  %i.p = and i32 %i.o, 31
  %i.q = and i64 %storemerge, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.s = tail call i64 @_ZN5clang4Sema12BuildUnaryOpEPNS_5ScopeENS_14SourceLocationENS_17UnaryOperatorKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef null, i32 %.sroa.0.0.copyload.i, i32 noundef %i.p, ptr noundef %i.r, i1 noundef zeroext false) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformAddressOfOperandEPNS_4ExprE.exit, %bb.g
  %.0 = phi i64 [ %i.s, %bb.g ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformAddressOfOperandEPNS_4ExprE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE33TransformUnaryExprOrTypeTraitExprEPNS_24UnaryExprOrTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i24, ptr %1, align 8
  %i.c = icmp slt i24 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.f = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %.not38 = icmp eq ptr %i.f, null
  br i1 %.not38, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !268
  %i.h = load i24, ptr %1, align 8
  %i.i = lshr i24 %i.h, 19
  %i.j = and i24 %i.i, 15
  %i.k = zext nneg i24 %i.j to i32
  %i.l = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #37
  %.val39 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.m = tail call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, ptr noundef nonnull %i.f, i32 %.sroa.0.0.copyload.i, i32 noundef %i.k, i64 %i.l) #36
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextENS0_24ReuseLambdaContextDecl_tENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, i32 noundef 0, i32 noundef 0, i32 noundef 4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr null, ptr %i.a, align 8, !tbaa !2436
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !196  ; 5 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 511
  %.not = icmp eq i16 %i.r, 20
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2482 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = and i16 %i.u, 511
  %i.w = icmp eq i16 %i.v, 71
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.t, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !5772 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.x, 1
  br i1 %spec.select.i, label %bb.g, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %i.x, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.aa, align 8, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %.sroa.0.0.copyload.i44 = load i32, ptr %i.ab, align 4, !tbaa !268
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ac = call i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %.sroa.0.0.copyload.i45, i32 %.sroa.0.0.copyload.i44, ptr noundef %i.z) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ad = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.p)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit: ; preds = %bb.g, %bb.f, %bb.h
  %storemerge = phi i64 [ %i.ad, %bb.h ], [ %i.ac, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !2436 ; 2 uses
  %.not37 = icmp eq ptr %i.ae, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.af, align 8, !tbaa !268
  %i.ag = load i24, ptr %1, align 8
  %i.ah = lshr i24 %i.ag, 19
  %i.ai = and i24 %i.ah, 15
  %i.aj = zext nneg i24 %i.ai to i32
  %i.ak = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #37
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.al = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull %i.ae, i32 %.sroa.0.0.copyload.i42, i32 noundef %i.aj, i64 %i.ak) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.am = icmp eq i64 %storemerge, 1
  br i1 %i.am, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = and i64 %storemerge, -2
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i43 = load i32, ptr %i.ap, align 8, !tbaa !268
  %i.aq = load i24, ptr %1, align 8
  %i.ar = lshr i24 %i.aq, 19
  %i.as = and i24 %i.ar, 15
  %i.at = zext nneg i24 %i.as to i32
  %.val40 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.au = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, ptr noundef %i.ao, i32 %.sroa.0.0.copyload.i43, i32 noundef %i.at) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.j, %bb.k, %bb.i
  %.1 = phi i64 [ %i.al, %bb.i ], [ %i.au, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.n) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.2 = phi i64 [ %.1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.m, %bb.c ], [ 1, %bb.b ]
  ret i64 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformTypeTraitExprEPNS_13TypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3291", align 8 ; 14 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  %4 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.3179", align 8 ; 8 uses
  %6 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !196  ; 2 uses
  %.not215 = icmp eq i32 %i.e, 0
  br i1 %.not215, label %.thread213, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.u = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.thread213.loopexit, label %bb.c, !llvm.loop !5773

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = lshr i32 %i.v, 27
  %.lobit.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = xor i32 %.lobit.i.i.i.i.i.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2436 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !196 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.d

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !252
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.g, ptr %3, align 8, !tbaa !2484
  store i64 32, ptr %i.h, align 8, !tbaa !2485
  store i64 32, ptr %i.i, align 8, !tbaa !2486
  store i32 0, ptr %i.j, align 8, !tbaa !2487
  store i8 0, ptr %i.k, align 4, !tbaa !2488
  %i.aj = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #36
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !2485
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.ak) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.d, %bb.e
  %i.an = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr %i.ad, ptr nonnull %i.ac) ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.sroa.0.0.copyload.i86 = load i64, ptr %i.ab, align 8, !tbaa !196
  %i.ap = icmp eq i64 %i.an, %.sroa.0.0.copyload.i86
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !271

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.ab, ptr %i.au, align 1
  %i.av = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !2485
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !2486
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %i.an, i32 noundef %i.bd) #36 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !2484
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !2486
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i88 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i88, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %2, align 8, !tbaa !153
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.be, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !154
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.065 = phi i32 [ 1, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ 4, %bb.i ], [ 4, %bb.h ], [ 4, %bb.k ], [ 4, %bb.l ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !2484  ; 3 uses
  %.not.i90 = icmp eq ptr %i.bq, %i.g
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i = or i1 %.not.i90, %i.br
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.v

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 16, !tbaa !196 ; 2 uses
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %i.bv = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #36
  %i.bw = icmp ne i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = udiv i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = mul i64 %i.cb, %i.bz
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  store ptr %i.ce, ptr %4, align 8
  store ptr %i.cd, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.m, ptr %5, align 8, !tbaa !153
  store i32 0, ptr %i.n, align 8, !tbaa !154
  store i32 2, ptr %i.o, align 4, !tbaa !155
  %i.cf = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_7TypeLocERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cf, ptr %i.ce, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) #36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !196
  %i.ci = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36 ; 0 uses
  %i.cj = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36 ; 0 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !268
  store i32 0, ptr %i.ck, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.p, ptr %6, align 8, !tbaa !2484
  store i64 32, ptr %i.q, align 8, !tbaa !2485
  store i64 32, ptr %i.r, align 8, !tbaa !2486
  store i32 0, ptr %i.s, align 8, !tbaa !2487
  store i8 0, ptr %i.t, align 4, !tbaa !2488
  %.sroa.0.0.copyload.i95 = load i64, ptr %i.ab, align 8, !tbaa !196
  %i.cl = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i95) #36
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !2485
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit98

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 noundef %i.cm) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit98

_ZN5clang14TypeLocBuilder7reserveEm.exit98:       ; preds = %bb.n, %bb.o
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !1814
  %.sroa.235.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !1814
  %i.cp = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %6, ptr %.sroa.034.0.copyload, ptr %.sroa.235.0.copyload) ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  br i1 %i.cq, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit108, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit98
  %i.cr = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
  %i.cs = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
  %.sroa.2.0.insert.ext.i100 = zext i32 %i.cs to i64
  %.sroa.2.0.insert.shift.i101 = shl nuw i64 %.sroa.2.0.insert.ext.i100, 32
  %.sroa.0.0.insert.ext.i102 = zext i32 %i.cr to i64
  %.sroa.0.0.insert.insert.i103 = or disjoint i64 %.sroa.2.0.insert.shift.i101, %.sroa.0.0.insert.ext.i102
  %.sroa.0.0.copyload.i104 = load i32, ptr %i.ac, align 8, !tbaa !268
  %.val82 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ct = call i64 @_ZN5clang4Sema18CheckPackExpansionENS_8QualTypeENS_11SourceRangeENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val82, i64 %i.cp, i64 %.sroa.0.0.insert.insert.i103, i32 %.sroa.0.0.copyload.i104, i32 %i.ch) #36 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  br i1 %i.cu, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit108, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 %i.ct, i64 noundef 4, i32 noundef 4) #36
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  %.sroa.0.0.copyload.i106 = load i32, ptr %i.ac, align 8, !tbaa !268
  store i32 %.sroa.0.0.copyload.i106, ptr %i.cw, align 4, !tbaa !268
  %i.cx = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.da = load i64, ptr %i.q, align 8, !tbaa !2485
  %i.db = load i64, ptr %i.r, align 8, !tbaa !2486
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cz, i64 %i.ct, i32 noundef %i.dd) #36 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %6, align 8, !tbaa !2484
  %i.dh = load i64, ptr %i.r, align 8, !tbaa !2486
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.di, i64 %i.dc, i1 false)
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i107 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i107, label %bb.s, label %bb.r, !prof !271

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.de)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit108

bb.s:                                             ; preds = %bb.q
  %i.dl = zext i32 %i.dj to i64
  %i.dm = load ptr, ptr %2, align 8, !tbaa !153
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE35TransformCXXRewrittenBinaryOperatorEPNS_26CXXRewrittenBinaryOperatorE:bb.a
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !5925
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.1, label %.loopexit.i.i.i.1, !prof !269

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.o, %bb.p
  %i.dn = phi i64 [ %i.dt, %bb.p ], [ %i.dg, %bb.o ]
  %.017.i.i.i.i.i.1 = phi i32 [ %i.ds, %bb.p ], [ %i.df, %bb.o ]
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1665, !noalias !5925
  %i.dq = icmp eq ptr %i.cu, %i.dp
  br i1 %i.dq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1, label %bb.p, !prof !271

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.1
  %i.dr = add nuw i32 %.017.i.i.i.i.i.1, 1
  %i.ds = and i32 %i.dr, %i.cz                    ; 3 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 5
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !268, !noalias !5925
  %i.dx = and i32 %i.ds, 31
  %i.dy = lshr i32 %i.dw, %i.dx
  %i.dz = trunc i32 %i.dy to i1
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i.1, label %.loopexit.i.i.i.1, !prof !272

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1: ; preds = %.lr.ph.i.i.i.i.i.1
  %.pre.i.1 = zext i32 %i.cx to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1

.loopexit.i.i.i.1:                                ; preds = %bb.p, %bb.o, %bb.n
  %i.ea = zext i32 %i.cx to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.ea
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1: ; preds = %.loopexit.i.i.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1
  %.pre-phi.i.1 = phi i64 [ %.pre.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.ea, %.loopexit.i.i.i.1 ]
  %.lcssa.sink.i.i.i.1 = phi ptr [ %i.do, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.eb, %.loopexit.i.i.i.1 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.pre-phi.i.1
  %.not.i48.1 = icmp eq ptr %.lcssa.sink.i.i.i.1, %i.ec
  br i1 %.not.i48.1, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %i.ed = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1: ; preds = %bb.q, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %.0.i.1 = phi ptr [ %i.ee, %bb.q ], [ %i.cu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1 ] ; 2 uses
  %.not45.1 = icmp eq ptr %.0.i.1, null
  br i1 %.not45.1, label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1
  %i.ef = ptrtoint ptr %.0.i.1 to i64
  %i.eg = or i64 %i.ef, 3
  %i.eh = zext nneg i32 %i.bz to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.eh
  store i64 %i.eg, ptr %i.ei, align 8
  %i.ej = add nuw nsw i32 %i.bz, 1
  store i32 %i.ej, ptr %i.j, align 8, !tbaa !154
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.m, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) #40
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !2752
  %i.em = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.en = load i32, ptr %3, align 8, !tbaa !2753
  %i.eo = and i64 %i.c, -2
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = and i64 %i.g, -2
  %i.er = inttoptr i64 %i.eq to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.es = call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.em, i32 noundef %i.en, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %i.ep, ptr noundef %i.er, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #36 ; 2 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.et = icmp eq ptr %.pre, %i.i
  br i1 %i.et, label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  call void @free(ptr noundef %.pre) #36
  br label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit

_ZN5clang13UnresolvedSetILj2EED2Ev.exit:          ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1, %.critedge, %bb.s
  %.54272 = phi i64 [ %i.es, %bb.s ], [ %i.es, %.critedge ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1 ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, %bb.b, %bb.a
  %.7 = phi i64 [ 1, %bb.a ], [ %.54272, %_ZN5clang13UnresolvedSetILj2EED2Ev.exit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i64 %.7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23TransformCXXReflectExprEPNS_14CXXReflectExprE() unnamed_addr #26 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE32TransformCXXPseudoDestructorExprEPNS_23CXXPseudoDestructorExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %9 = alloca %"class.clang::OpaquePtr.1985", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.clang::CXXScopeSpec", align 8 ; 12 uses
  %11 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %12 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2760
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr null, ptr %9, align 8, !tbaa !2438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !197
  %i.g = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.h = and i64 %i.e, -2
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 4, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  %i.n = select i1 %i.m, i16 37, i16 26
  %i.o = call i64 @_ZN5clang4Sema28ActOnStartCXXMemberReferenceEPNS_5ScopeEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERNS_9OpaquePtrINS_8QualTypeEEERb(ptr noundef nonnull align 8 dereferenceable(18640) %i.g, ptr noundef null, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i16 noundef zeroext %i.n, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #36 ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %9, align 8, !tbaa !2438   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.s, align 8, !tbaa !1042 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814 ; 2 uses
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i48, 0
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i48, ptr %.sroa.2.0.copyload.i, i64 %i.r, ptr noundef null) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.t, 1
  %.not93 = icmp eq i64 %i.u, 0
  br i1 %.not93, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.074.0 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %.sroa.8.0 = phi ptr [ %i.v, %bb.d ], [ %.sroa.2.0.copyload.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 %.sroa.074.0, ptr %.sroa.8.0) #36
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8 ; 3 uses
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.y = icmp ne i64 %i.x, 0                      ; 2 uses
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %.not94 = icmp eq i64 %i.z, 0
  %.not = or i1 %i.y, %.not94
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i103 = load i64, ptr %i.aa, align 8, !tbaa !196 ; 3 uses
  %i.ab = icmp ult i64 %.sroa.0.0.copyload.i.i103, 16
  br i1 %i.ab, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !2484
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 32, ptr %i.ad, align 8, !tbaa !2485
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.ae, align 8, !tbaa !2486
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.af, align 8, !tbaa !2487
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.ag, align 4, !tbaa !2488
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ai = inttoptr i64 %.sroa.0.0.copyload.i.i103 to ptr ; 4 uses
  %i.aj = and i64 %.sroa.0.0.copyload.i.i103, 15
  %.not.i.i114 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i114, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !252
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 16
  switch i8 %i.am, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.h
    i8 20, label %bb.i
  ]

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.an = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !5926
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.ao = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !5926
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.g
  %i.ap = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah), !inline_history !5926
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.h, %bb.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.aq = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.aq, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !2484
  br label %bb.k

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !2485
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !2486
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.at, i64 %.sroa.014.0.i, i32 noundef %i.ax) #36, !inline_history !5927 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %3, align 8, !tbaa !2484  ; 2 uses
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !2486
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.bc, i64 %i.aw, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bd = phi ptr [ %i.ba, %bb.j ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %.0.i = phi ptr [ %i.ay, %bb.j ], [ null, %._crit_edge.i ] ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.bd, %i.ac
  %i.be = icmp eq ptr %i.bd, null
  %or.cond.i.i = or i1 %.not.i.i104, %i.be
  br i1 %or.cond.i.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #38, !inline_history !5927
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.not45.not = icmp eq ptr %.0.i, null
  br i1 %.not45.not, label %.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread: ; preds = %bb.f, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit
  %.1.i122 = phi ptr [ %.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %.1.i122) #36
  %.sroa.065.0.copyload66 = load i64, ptr %11, align 8
  %.sroa.7.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.7.0.copyload69 = load i32, ptr %.sroa.7.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.q

bb.m:                                             ; preds = %bb.e
  %i.bf = icmp ult ptr %i.q, inttoptr (i64 16 to ptr)
  br i1 %i.bf, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = and i64 %i.r, -16
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !252
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 17
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = and i16 %i.bk, 4
  %.not95 = icmp eq i16 %i.bl, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bm, align 8, !tbaa !268
  %i.bn = or i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.bo = select i1 %i.y, i64 %i.bn, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bp = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i56 = load i32, ptr %i.bq, align 8, !tbaa !268
  %.sroa.09.0.copyload = load ptr, ptr %9, align 8, !tbaa !1814
  %i.br = call ptr @_ZN5clang4Sema17getDestructorNameERKNS_14IdentifierInfoENS_14SourceLocationEPNS_5ScopeERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i32 %.sroa.0.0.copyload.i.i56, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #36 ; 2 uses
  %.not96 = icmp eq ptr %i.br, null
  br i1 %.not96, label %.thread, label %.thread89

.thread89:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.bs = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.bv = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr nonnull %i.br, ptr noundef null) #36
  %.sroa.0.0.copyload.i.i57 = load i32, ptr %i.bq, align 8, !tbaa !268
  %i.bw = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bu, i64 %i.bv, i32 %.sroa.0.0.copyload.i.i57) #36
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef %i.bw) #36
  %.sroa.065.0.copyload67 = load i64, ptr %12, align 8
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.7.0.copyload71 = load i32, ptr %.sroa.7.0..sroa_idx70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.q

bb.q:                                             ; preds = %.thread89, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, %bb.o
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.copyload71, %.thread89 ], [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %.sroa.7.0.copyload69, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ] ; 2 uses
  %.sroa.065.2 = phi i64 [ %.sroa.065.0.copyload67, %.thread89 ], [ %i.bo, %bb.o ], [ %.sroa.065.0.copyload66, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2761 ; 4 uses
  %.not46 = icmp eq ptr %i.by, null
  br i1 %.not46, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i105 = load i64, ptr %i.by, align 8, !tbaa !196 ; 3 uses
  %i.bz = icmp ult i64 %.sroa.0.0.copyload.i.i105, 16
  br i1 %i.bz, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ca, ptr %2, align 8, !tbaa !2484
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 32, ptr %i.cb, align 8, !tbaa !2485
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 32, ptr %i.cc, align 8, !tbaa !2486
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.cd, align 8, !tbaa !2487
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i8 0, ptr %i.ce, align 4, !tbaa !2488
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cg = inttoptr i64 %.sroa.0.0.copyload.i.i105 to ptr ; 4 uses
  %i.ch = and i64 %.sroa.0.0.copyload.i.i105, 15
  %.not.i.i115 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i115, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118:  ; preds = %bb.s
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !252
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i8, ptr %i.cj, align 16
  switch i8 %i.ck, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116 [
    i8 50, label %bb.t
    i8 20, label %bb.u
  ]

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118
  %i.cl = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !5926
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118
  %i.cm = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !5926
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118, %bb.s
  %i.cn = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf), !inline_history !5926
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119: ; preds = %bb.t, %bb.u, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116
  %.sroa.014.0.i117 = phi i64 [ %i.cn, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116 ], [ %i.cl, %bb.t ], [ %i.cm, %bb.u ] ; 2 uses
  %i.co = icmp ult i64 %.sroa.014.0.i117, 16
  br i1 %i.co, label %._crit_edge.i111, label %bb.v

._crit_edge.i111:                                 ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119
  %.pre.i112 = load ptr, ptr %2, align 8, !tbaa !2484
  br label %bb.w

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119
  %i.cp = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.cs = load i64, ptr %i.cb, align 8, !tbaa !2485
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !2486
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cr, i64 %.sroa.014.0.i117, i32 noundef %i.cv) #36, !inline_history !5927 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %2, align 8, !tbaa !2484  ; 2 uses
  %i.cz = load i64, ptr %i.cc, align 8, !tbaa !2486
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr align 1 %i.da, i64 %i.cu, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i111
  %i.db = phi ptr [ %i.cy, %bb.v ], [ %.pre.i112, %._crit_edge.i111 ] ; 3 uses
  %.0.i106 = phi ptr [ %i.cw, %bb.v ], [ null, %._crit_edge.i111 ] ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.db, %i.ca
  %i.dc = icmp eq ptr %i.db, null
  %or.cond.i.i108 = or i1 %.not.i.i107, %i.dc
  br i1 %or.cond.i.i108, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.db) #38, !inline_history !5927
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.not47 = icmp eq ptr %.0.i106, null
  br i1 %.not47, label %.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread: ; preds = %bb.r, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113, %bb.q
  %.042 = phi ptr [ %.0.i106, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113 ], [ null, %bb.q ], [ %i.by, %bb.r ] ; 7 uses
  %i.dd = and i64 %i.o, -2
  %i.de = inttoptr i64 %i.dd to ptr               ; 4 uses
  %.sroa.0.0.copyload.i58 = load i32, ptr %i.j, align 4, !tbaa !268 ; 2 uses
  %i.df = load i8, ptr %i.k, align 8
  %i.dg = trunc i8 %i.df to i1                    ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.dh, align 8, !tbaa !268 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.di, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.065.2, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.7.2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.dj, align 8, !tbaa !196
  %i.dk = and i64 %.sroa.0.0.copyload.i.i61, -16
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !196
  %i.do = load i24, ptr %i.de, align 8
  %i.dp = and i24 %i.do, 65536
  %.not70.i = icmp eq i24 %i.dp, 0
  br i1 %.not70.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread
  %i.dq = and i64 %.sroa.065.2, 4
  %.not.i.i.i.i.i.i63 = icmp eq i64 %i.dq, 0      ; 2 uses
  %i.dr = and i64 %.sroa.065.2, -5                ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %.not71.i = icmp eq i64 %i.dr, 0
  %.not.i = or i1 %.not.i.i.i.i.i.i63, %.not71.i
  br i1 %.not.i, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.dt = and i64 %i.dn, -16
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !252 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dw, align 16            ; 2 uses
  br i1 %i.dg, label %.critedge45.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = icmp eq i8 %i.dx, 49
  br i1 %i.dy, label %.critedge2.i, label %.critedge.i

.critedge45.i:                                    ; preds = %bb.z
  %i.dz = icmp eq i8 %i.dx, 40
  br i1 %i.dz, label %bb.ab, label %.critedge2.i

bb.ab:                                            ; preds = %.critedge45.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %.sroa.0.0.copyload.i49.i = load i64, ptr %i.ea, align 16, !tbaa !196
  %i.eb = and i64 %.sroa.0.0.copyload.i49.i, -16
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !252
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 8, !tbaa !196
  %i.ef = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !252 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i8, ptr %i.ei, align 16
  %i.ek = icmp ne i8 %i.ej, 49
  %.not4272.i = icmp eq ptr %i.eh, null
  %.not42.i = or i1 %.not4272.i, %i.ek
  br i1 %.not42.i, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %bb.ab, %bb.aa, %bb.y, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread
  %i.el = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.em = select i1 %i.dg, i16 37, i16 26
  %i.en = call i64 @_ZN5clang4Sema25BuildPseudoDestructorExprEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERKNS_12CXXScopeSpecEPNS_14TypeSourceInfoES3_S3_NS_27PseudoDestructorTypeStorageE(ptr noundef nonnull align 8 dereferenceable(18640) %i.el, ptr noundef nonnull %i.de, i32 %.sroa.0.0.copyload.i58, i16 noundef zeroext %i.em, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %.042, i32 %.sroa.0.0.copyload.i59, i32 %.sroa.0.0.copyload.i60, ptr noundef nonnull byval(%"class.clang::PseudoDestructorTypeStorage") align 8 %8) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE30RebuildCXXPseudoDestructorExprEPNS_4ExprENS_14SourceLocationEbRNS_12CXXScopeSpecEPNS_14TypeSourceInfoES6_S6_NS_27PseudoDestructorTypeStorageE.exit

.critedge2.i:                                     ; preds = %bb.ab, %.critedge45.i, %bb.aa
  %.0.i.i.i.i.i51.i = select i1 %.not.i.i.i.i.i.i63, ptr %i.ds, ptr null
  %i.eo = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 232
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 17800
  %.sroa.0.0.copyload.i52.i = load i64, ptr %i.ds, align 8, !tbaa !196 ; 2 uses
  %i.es = and i64 %.sroa.0.0.copyload.i52.i, -16
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !196
  %i.ew = and i64 %.sroa.0.0.copyload.i52.i, 7
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = call i64 @_ZN5clang20DeclarationNameTable20getCXXDestructorNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824) %i.er, i64 %i.ex) #36 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i64 %i.ey, ptr %4, align 8, !tbaa !1042
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.7.2, ptr %i.ez, align 8, !tbaa !268
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i64 %i.ey) #36
  store ptr %.0.i.i.i.i.i51.i, ptr %i.fa, align 8, !tbaa !196
  %.not43.i = icmp eq ptr %.042, null
  br i1 %.not43.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.critedge2.i
  %.sroa.0.0.copyload.i54.i = load i64, ptr %.042, align 8, !tbaa !196 ; 2 uses
  %i.fb = and i64 %.sroa.0.0.copyload.i54.i, -16
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !196
  %i.ff = and i64 %i.fe, -16
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !252
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i8, ptr %i.fi, align 16
  %i.fk = add i8 %i.fj, -47
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fk, 3
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %.val47.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.fl = getelementptr inbounds nuw i8, ptr %.val47.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.fm = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.fn = inttoptr i64 %.sroa.0.0.copyload.i54.i to ptr
  store ptr %i.fn, ptr %6, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.fm, ptr %i.fo, align 8
  %i.fp = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i32 %i.fp, i32 noundef 3796) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %.sroa.0.0.copyload.i58.i = load i64, ptr %.042, align 8, !tbaa !196
  store i64 %.sroa.0.0.copyload.i58.i, ptr %7, align 8
  %i.fq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %.val46.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.fr = getelementptr inbounds nuw i8, ptr %.val46.i, i64 216
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = lshr i32 %i.fu, 12
  %i.fw = and i32 %i.fv, 1
  store i32 %i.fw, ptr %i.a, align 4, !tbaa !268
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformAddrLabelExprEPNS_13AddrLabelExprE:bb.a
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.ap, align 8, !tbaa !268
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.aq, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ar = tail call i64 @_ZN5clang4Sema14ActOnAddrLabelENS_14SourceLocationES1_PNS_9LabelDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11, ptr noundef nonnull %.0.i) #36
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.09.0 = phi i64 [ %i.ar, %bb.e ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformConditionalOperatorEPNS_19ConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1724
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1724
  %i.k = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j) ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %i.c, -2
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 8, !tbaa !268
  %i.p = and i64 %i.g, -2
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.r, align 4, !tbaa !268
  %i.s = and i64 %i.k, -2
  %i.t = inttoptr i64 %i.s to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.u = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, ptr noundef %i.n, ptr noundef %i.q, ptr noundef %i.t) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.u, %bb.d ], [ 1, %bb.c ]
  ret i64 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE34TransformBinaryConditionalOperatorEPNS_25BinaryConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1724
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !tbaa !268
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.l, align 4, !tbaa !268
  %i.m = and i64 %i.g, -2
  %i.n = inttoptr i64 %i.m to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.o = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, ptr noundef %i.j, ptr noundef null, ptr noundef %i.n) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ 1, %bb.a ], [ %i.o, %bb.c ], [ 1, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !196
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.sroa.0.0.copyload.i11 = load i64, ptr %1, align 8, !tbaa !196 ; 3 uses
  %i.e = icmp ult i64 %.sroa.0.0.copyload.i11, 16
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !2484
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 32, ptr %i.g, align 8, !tbaa !2485
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.h, align 8, !tbaa !2486
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !2487
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.j, align 4, !tbaa !2488
  %i.k = inttoptr i64 %.sroa.0.0.copyload.i11 to ptr
  %i.l = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i11) #36
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !2485
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.c, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.m) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.b, %bb.c
  %i.p = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.k, ptr nonnull %i.a) ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, label %bb.d

_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !2484
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.u = load i64, ptr %i.g, align 8, !tbaa !2485
  %i.v = load i64, ptr %i.h, align 8, !tbaa !2486
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.t, i64 %i.p, i32 noundef %i.x) #36 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %3, align 8, !tbaa !2484  ; 2 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !2486
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ac, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, %bb.d
  %i.ad = phi ptr [ %i.aa, %bb.d ], [ %.pre, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.y, %bb.d ], [ null, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ]
  %.not.i = icmp eq ptr %i.ad, %i.f
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond.i = or i1 %.not.i, %i.ae
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 12 uses
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !252
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bl [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 59, label %bb.bk
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
    i8 27, label %bb.af
    i8 28, label %bb.ag
    i8 29, label %bb.ah
    i8 30, label %bb.ai
    i8 31, label %bb.aj
    i8 32, label %bb.ak
    i8 33, label %bb.al
    i8 34, label %bb.am
    i8 35, label %bb.an
    i8 36, label %bb.ao
    i8 37, label %bb.ap
    i8 38, label %bb.aq
    i8 39, label %bb.ar
    i8 40, label %bb.as
    i8 58, label %bb.bj
    i8 42, label %bb.at
    i8 43, label %bb.au
    i8 44, label %bb.av
    i8 45, label %bb.aw
    i8 46, label %bb.ax
    i8 47, label %bb.ay
    i8 48, label %bb.az
    i8 49, label %bb.ba
    i8 50, label %bb.bb
    i8 51, label %bb.bc
    i8 52, label %bb.bd
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 56, label %bb.bh
    i8 57, label %bb.bi
  ]

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread: ; preds = %bb.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = and i64 %i.a, -16
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !252
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -8
  %i.k = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.j) #36, !inline_history !6031
  %i.l = ptrtoint ptr %3 to i64
  %i.m = icmp ne ptr %3, null
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = udiv i64 %i.o, %i.p
  %i.r = add i64 %i.q, %i.n
  %i.s = mul i64 %i.r, %i.p
  %i.t = load ptr, ptr %i.g, align 16, !tbaa !252 ; 3 uses
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.w = and i64 %i.v, 15
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, label %bb.d

_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  switch i8 %i.z, label %bb.d [
    i8 51, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.aa = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #36, !inline_history !6031
  %i.ab = extractvalue { ptr, ptr } %i.aa, 1
  %.sroa.0.0.copyload.i.i.i.i486 = load i32, ptr %i.u, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i.i.i486, ptr %i.ab, align 4, !tbaa !268
  br label %bb.e

bb.c:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.ac = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #36, !inline_history !6031
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  %.sroa.0.0.copyload.i.i.i29.i = load i32, ptr %i.u, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i.i29.i, ptr %i.ad, align 4, !tbaa !268
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.ae = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.t, ptr %i.u), !inline_history !6031
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.037.0.i = phi i64 [ %i.v, %bb.b ], [ %i.ae, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.037.0.i, 16
  br i1 %i.af, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20RebuildQualifiedTypeENS_8QualTypeENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.037.0.i, ptr %2, ptr %3), !inline_history !6031 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  %spec.select.i = select i1 %i.ah, i64 0, i64 %i.ag
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ai = getelementptr i8, ptr %2, i64 32
  %.val493 = load i64, ptr %i.ai, align 16, !tbaa !196
  %i.aj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val493, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ak = getelementptr i8, ptr %2, i64 32
  %.val492 = load i64, ptr %i.ak, align 16, !tbaa !196
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val492, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.am = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.an = getelementptr i8, ptr %2, i64 32
  %.val491 = load i64, ptr %i.an, align 16, !tbaa !196
  %i.ao = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformArrayParameterTypeERNS_14TypeLocBuilderENS_21ArrayParameterTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val491, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ap = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE32TransformDependentSizedArrayTypeERNS_14TypeLocBuilderENS_26DependentSizedArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformIncompleteArrayTypeERNS_14TypeLocBuilderENS_22IncompleteArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ar = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformVariableArrayTypeERNS_14TypeLocBuilderENS_20VariableArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.as = getelementptr i8, ptr %2, i64 32
  %.val490 = load i64, ptr %i.as, align 16, !tbaa !196
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE19TransformAtomicTypeERNS_14TypeLocBuilderENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val490, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.au = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23TransformAttributedTypeERNS_14TypeLocBuilderENS_17AttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.av = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE19TransformBitIntTypeERNS_14TypeLocBuilderENS_13BitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aw = getelementptr i8, ptr %2, i64 32
  %.val489 = load i64, ptr %i.aw, align 16, !tbaa !196
  %i.ax = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformBlockPointerTypeERNS_14TypeLocBuilderENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val489, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ay = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformCountAttributedTypeERNS_14TypeLocBuilderENS_22CountAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.az = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20TransformBuiltinTypeERNS_14TypeLocBuilderENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ba = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #36
  %i.bb = extractvalue { ptr, ptr } %i.ba, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bb, align 4, !tbaa !268
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21TransformDecltypeTypeERNS_14TypeLocBuilderENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bd = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE17TransformAutoTypeERNS_14TypeLocBuilderENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE42TransformDeducedTemplateSpecializationTypeERNS_14TypeLocBuilderENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bf = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE34TransformDependentAddressSpaceTypeERNS_14TypeLocBuilderENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bg = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDependentBitIntTypeERNS_14TypeLocBuilderENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bh = tail call fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull readonly %2, ptr readonly %3, i1 noundef zeroext false, i64 0, ptr noundef null), !inline_history !6032
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bi = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE36TransformDependentSizedExtVectorTypeERNS_14TypeLocBuilderENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDependentVectorTypeERNS_14TypeLocBuilderENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bk = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformFunctionNoProtoTypeERNS_14TypeLocBuilderENS_22FunctionNoProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bl = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformFunctionProtoTypeERNS_14TypeLocBuilderENS_20FunctionProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bm = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE35TransformHLSLAttributedResourceTypeERNS_14TypeLocBuilderENS_29HLSLAttributedResourceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bn = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformMacroQualifiedTypeERNS_14TypeLocBuilderENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bo = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformConstantMatrixTypeERNS_14TypeLocBuilderENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE33TransformDependentSizedMatrixTypeERNS_14TypeLocBuilderENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ai:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aj:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.br = getelementptr i8, ptr %2, i64 32
  %.val488 = load i64, ptr %i.br, align 16, !tbaa !196
  %i.bs = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val488, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ak:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bt = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.al:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang14TypeLocBuilder12pushFullCopyENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.am:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bu = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformObjCTypeParamTypeERNS_14TypeLocBuilderENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.an:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bv = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE29TransformOverflowBehaviorTypeERNS_14TypeLocBuilderENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bw = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformPackExpansionTypeERNS_14TypeLocBuilderENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bx = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformPackIndexingTypeERNS_14TypeLocBuilderENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aq:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.by = getelementptr i8, ptr %2, i64 32
  %.val487 = load i64, ptr %i.by, align 16, !tbaa !196
  %i.bz = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE18TransformParenTypeERNS_14TypeLocBuilderENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val487, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE:bb.a
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1853
  call void @free(ptr noundef %i.bo) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.m

.critedge40:                                      ; preds = %.critedge
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit45, label %bb.j

bb.j:                                             ; preds = %.critedge40
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1853
  call void @free(ptr noundef %i.bq) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit45

_ZN5clang12CXXScopeSpecD2Ev.exit45:               ; preds = %.critedge40, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.br = and i64 %i.bj, -16
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !252 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 16
  %.not.i46 = icmp eq i8 %i.bv, 30
  br i1 %.not.i46, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77, label %bb.k

bb.k:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0.0.copyload.i.i.i.i47 = load i64, ptr %i.bw, align 8, !tbaa !196
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i.i47, -16
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !252
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i8, ptr %i.ca, align 16
  %i.cc = icmp eq i8 %i.cb, 30
  br i1 %i.cc, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %.critedge2

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.k
  %i.cd = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bt) #36 ; 2 uses
  %.not38 = icmp eq ptr %i.cd, null
  br i1 %.not38, label %.critedge2, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit45, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.1.i80 = phi ptr [ %i.cd, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %i.bt, %_ZN5clang12CXXScopeSpecD2Ev.exit45 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.i80, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.ce, align 16, !tbaa !196 ; 2 uses
  %.not82 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i
  br i1 %.not82, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77
  %i.cf = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.0.0.copyload.i, i64 noundef 0, i32 noundef 1) #36 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %bb.l, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread77
  %i.cg = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.bj, i64 noundef 16, i32 noundef 8) #36
  %i.ch = extractvalue { ptr, ptr } %i.cg, 1      ; 2 uses
  %.sroa.0.0.copyload.i50 = load i32, ptr %3, align 8, !tbaa !268
  store i32 %.sroa.0.0.copyload.i50, ptr %i.ch, align 8, !tbaa !268
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.u, ptr %i.ci, align 8, !tbaa !2891
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge2, %bb.a
  %.sroa.074.2 = phi i64 [ 0, %bb.a ], [ 0, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 0, %bb.b ], [ 0, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %i.bj, %.critedge2 ]
  ret i64 %.sroa.074.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.32.val, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = add i64 %i.a, 4                          ; 2 uses
  %i.c = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.32.val) #36
  %i.d = icmp ne i64 %i.b, 0
  %i.e = zext i1 %i.d to i64                      ; 2 uses
  %i.f = sub i64 %i.b, %i.e
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %i.h = udiv i64 %i.f, %i.g
  %i.i = add i64 %i.h, %i.e
  %i.j = mul i64 %i.i, %i.g
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = inttoptr i64 %.32.val to ptr
  %i.m = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.l, ptr %i.k) ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.o = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.o, align 8, !tbaa !1048
  %i.p = tail call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val, i64 %i.m) #36 ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.r = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.p, i64 noundef 4, i32 noundef 4) #36
  %i.s = extractvalue { ptr, ptr } %i.r, 1
  %.sroa.0.0.copyload.i.i9 = load i32, ptr %2, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i9, ptr %i.s, align 4, !tbaa !268
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge, %bb.a
  %.sroa.020.1 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.b ], [ 0, %.critedge ]
  ret i64 %.sroa.020.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.1327", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.3297", align 8 ; 5 uses
  %6 = alloca %"class.clang::ObjCObjectTypeLoc", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.3291", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallVector.3179", align 8 ; 10 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %10 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  %11 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !196 ; 2 uses
  %i.c = ptrtoint ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16             ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 1016
  %i.h = lshr i32 %i.e, 24
  %i.i = add nuw nsw i32 %i.h, 20
  %.lhs.trunc.i.i.i.i = add nuw nsw i32 %i.i, %i.g
  %.zext.i.i.i.i = and i32 %.lhs.trunc.i.i.i.i, 2040
  %i.j = add nuw nsw i32 %.zext.i.i.i.i, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.k, %i.c                       ; 2 uses
  %i.m = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #36
  %i.n = icmp ne i64 %i.l, 0
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %i.p = sub i64 %i.l, %i.o
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = udiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  %i.t = mul i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.w = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.v, ptr %i.u) ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  br i1 %i.x, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i80 = load i64, ptr %i.b, align 8, !tbaa !196
  %i.y = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i80) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !153
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.ab, align 4, !tbaa !155
  %i.ac = load i32, ptr %i.d, align 16
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = and i32 %i.ad, 127                      ; 2 uses
  %.not188 = icmp eq i32 %i.ae, 0
  br i1 %.not188, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.at = zext nneg i32 %i.ae to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2436 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 8, !tbaa !196 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.az = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.n

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !252 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 16
  %i.bd = icmp eq i8 %i.bc, 36
  br i1 %i.bd, label %._crit_edge207, label %bb.n

._crit_edge207:                                   ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !2475
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.ak, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.al, align 8, !tbaa !154
  store i32 2, ptr %i.am, align 4, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.0.0.copyload.i89 = load i64, ptr %i.be, align 16, !tbaa !196
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_8QualTypeERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, i64 %.sroa.0.0.copyload.i89, ptr noundef nonnull align 8 dereferenceable(16) %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.0.0.copyload.i.i.i.i90 = load i64, ptr %i.bf, align 16, !tbaa !196 ; 2 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = add i64 %i.bg, 4                        ; 2 uses
  %i.bi = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i90) #36
  %i.bj = icmp ne i64 %i.bh, 0
  %i.bk = zext i1 %i.bj to i64                    ; 2 uses
  %i.bl = sub i64 %i.bh, %i.bk
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = udiv i64 %i.bl, %i.bm
  %i.bo = add i64 %i.bn, %i.bk
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i90 to ptr
  store ptr %i.br, ptr %9, align 8
  store ptr %i.bq, ptr %i.an, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !196
  %i.bu = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #36 ; 0 uses
  %i.bv = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #36 ; 0 uses
  %.val78 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.bw = getelementptr inbounds nuw i8, ptr %.val78, i64 13800 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bw, align 4, !tbaa !268 ; 2 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.ao, ptr %10, align 8, !tbaa !2484
  store i64 32, ptr %i.ap, align 8, !tbaa !2485
  store i64 32, ptr %i.aq, align 8, !tbaa !2486
  store i32 0, ptr %i.ar, align 8, !tbaa !2487
  store i8 0, ptr %i.as, align 4, !tbaa !2488
  %i.bx = load ptr, ptr %9, align 8, !tbaa !2860
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %i.by) #36
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = load i64, ptr %i.ap, align 8, !tbaa !2485
  %i.cc = icmp ult i64 %i.cb, %i.ca
  br i1 %i.cc, label %bb.d, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.d:                                             ; preds = %._crit_edge207
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.ca) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %._crit_edge207, %bb.d
  %.sroa.041.0.copyload = load ptr, ptr %9, align 8, !tbaa !1814
  %.sroa.242.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !1814
  %i.cd = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %10, ptr %.sroa.041.0.copyload, ptr %.sroa.242.0.copyload) ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 16
  br i1 %i.ce, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1, label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 232
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.ci = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ch, i64 %i.cd, i32 %i.bt, i1 noundef zeroext true) #36 ; 2 uses
  %i.cj = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.ci, i64 noundef 4, i32 noundef 4) #36
  %i.ck = extractvalue { ptr, ptr } %i.cj, 1
  %.sroa.0.0.copyload.i95 = load i32, ptr %i.ax, align 8, !tbaa !268
  store i32 %.sroa.0.0.copyload.i95, ptr %i.ck, align 4, !tbaa !268
  %i.cl = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 232
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.co = load i64, ptr %i.ap, align 8, !tbaa !2485
  %i.cp = load i64, ptr %i.aq, align 8, !tbaa !2486
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cn, i64 %i.ci, i32 noundef %i.cr) #36 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %10, align 8, !tbaa !2484
  %i.cv = load i64, ptr %i.aq, align 8, !tbaa !2486
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cw, i64 %i.cq, i1 false)
  %i.cx = load i32, ptr %i.aa, align 8, !tbaa !154 ; 2 uses
  %i.cy = load i32, ptr %i.ab, align 4, !tbaa !155
  %.not.i96 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i96, label %bb.g, label %bb.f, !prof !271

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.cs)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

bb.g:                                             ; preds = %bb.e
  %i.cz = zext i32 %i.cx to i64
  %i.da = load ptr, ptr %7, align 8, !tbaa !153
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr %i.cs, ptr %i.db, align 1
  %i.dc = load i32, ptr %i.aa, align 8, !tbaa !154
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.aa, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4: ; preds = %bb.g, %bb.f
  %i.de = load ptr, ptr %10, align 8, !tbaa !2484 ; 3 uses
  %.not.i97.jt4 = icmp eq ptr %i.de, %i.ao
  %i.df = icmp eq ptr %i.de, null
  %or.cond.i.jt4 = or i1 %.not.i97.jt4, %i.df
  br i1 %or.cond.i.jt4, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4, label %bb.h

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.dg = load ptr, ptr %10, align 8, !tbaa !2484 ; 3 uses
  %.not.i97.jt1 = icmp eq ptr %i.dg, %i.ao
  %i.dh = icmp eq ptr %i.dg, null
  %or.cond.i.jt1 = or i1 %.not.i97.jt1, %i.dh
  br i1 %or.cond.i.jt1, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @_ZdaPv(ptr noundef nonnull %i.de) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1

_ZN5clang14TypeLocBuilderD2Ev.exit.jt4:           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bw, align 8, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.di = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ak
  br i1 %i.dj, label %bb.l, label %bb.j

_ZN5clang14TypeLocBuilderD2Ev.exit.jt1:           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bw, align 8, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.dk = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ak
  br i1 %i.dl, label %bb.m, label %bb.k

bb.j:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @free(ptr noundef %i.di) #36
  br label %bb.l

bb.k:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @free(ptr noundef %i.dk) #36
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.loopexit

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store ptr %i.af, ptr %11, align 8, !tbaa !2484
  store i64 32, ptr %i.ag, align 8, !tbaa !2485
  store i64 32, ptr %i.ah, align 8, !tbaa !2486
  store i32 0, ptr %i.ai, align 8, !tbaa !2487
  store i8 0, ptr %i.aj, align 4, !tbaa !2488
  %i.dm = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #36
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = load i64, ptr %i.ag, align 8, !tbaa !2485
  %i.dp = icmp ult i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit106

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %11, i64 noundef %i.dn) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit106

_ZN5clang14TypeLocBuilder7reserveEm.exit106:      ; preds = %bb.n, %bb.o
  %i.dq = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %11, ptr %i.ay, ptr nonnull %i.ax) ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  br i1 %i.dr, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit111.jt1, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit106
  %i.ds = icmp eq i64 %i.dq, %.sroa.0.0.copyload.i
  br i1 %i.ds, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dt = load i32, ptr %i.aa, align 8, !tbaa !154 ; 2 uses
  %i.du = load i32, ptr %i.ab, align 4, !tbaa !155
  %.not.i110 = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i110, label %bb.s, label %bb.r, !prof !271

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.aw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit111.jt4

bb.s:                                             ; preds = %bb.q
  %i.dv = zext i32 %i.dt to i64
  %i.dw = load ptr, ptr %7, align 8, !tbaa !153
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  store ptr %i.aw, ptr %i.dx, align 1
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91, %bb.s, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112
  %.sroa.6.0.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i91 ], [ %.0.copyload.i14.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i101 ], [ %.0.copyload.i.i.i92, %bb.s ], [ %.0.copyload.i16.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i112 ]
  call void @_ZN5clang12CXXScopeSpec6ExtendERNS_10ASTContextEPNS_17NamespaceBaseDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %.0.i, i32 %.sroa.0.0.i.i67.ph, i32 %.sroa.6.0.i.i) #36
  br label %bb.bg

bb.v:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.ei = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #36
  call void @_ZN5clang12CXXScopeSpec10MakeGlobalERNS_10ASTContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.eh, i32 %i.ei) #36
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit: ; preds = %bb.h
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !2497, !noalias !6183 ; 3 uses
  %i.ek = load ptr, ptr %i.z, align 8, !tbaa !2498, !noalias !6183 ; 2 uses
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !1817, !noalias !6183 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i117, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.en, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !268, !noalias !6184
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !269

.lr.ph.i.i.i.i.i123:                              ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.fg, %bb.x ], [ %i.et, %bb.w ]
  %.017.i.i.i.i.i124 = phi i32 [ %i.ff, %bb.x ], [ %i.es, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1665, !noalias !6184
  %i.fd = icmp eq ptr %i.fc, %i.ap
  br i1 %i.fd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, label %bb.x, !prof !271

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i123
  %i.fe = add nuw i32 %.017.i.i.i.i.i124, 1
  %i.ff = and i32 %i.fe, %i.en                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !268, !noalias !6184
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i123, label %.loopexit.i.i.i117, !prof !272

.loopexit.i.i.i117:                               ; preds = %bb.x, %bb.w, %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.fn = zext i32 %i.el to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125: ; preds = %.lr.ph.i.i.i.i.i123
  %.pre.i126 = zext i32 %i.el to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125, %.loopexit.i.i.i117
  %.pre-phi.i119 = phi i64 [ %.pre.i126, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fn, %.loopexit.i.i.i117 ]
  %.lcssa.sink.i.i.i120 = phi ptr [ %i.fb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i125 ], [ %i.fo, %.loopexit.i.i.i117 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.pre-phi.i119
  %.not.i121 = icmp eq ptr %.lcssa.sink.i.i.i120, %i.fp
  br i1 %.not.i121, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i120, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118, %bb.y
  %.0.i122 = phi ptr [ %i.fr, %bb.y ], [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i118 ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.fv = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #36
  %i.fw = load i64, ptr %12, align 8, !tbaa !2929 ; 5 uses
  %i.fx = icmp ugt i64 %i.fw, 7
  br i1 %i.fx, label %bb.z, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147
    i32 2, label %.lr.ph.i.i.i133.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128: ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit127
  %i.gb = icmp samesign ult i64 %i.fw, 2
  br i1 %i.gb, label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i.i.i129 = load i32, ptr %i.gc, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147: ; preds = %bb.z
  %i.gd = and i64 %i.fw, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.3.0.copyload.i.i.i149 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i148, align 8, !tbaa !1042 ; 2 uses
  %.not8.i.i.i150 = icmp eq i64 %.sroa.3.0.copyload.i.i.i149, 0
  br i1 %.not8.i.i.i150, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, label %.lr.ph.i.i.i133.preheader

.lr.ph.i.i.i133.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %storemerge9.i.i.i135.ph = phi i64 [ 2, %bb.z ], [ %.sroa.3.0.copyload.i.i.i149, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ]
  br label %.lr.ph.i.i.i133

.lr.ph.i.i.i133:                                  ; preds = %.lr.ph.i.i.i133.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  %.010.i.i.i134 = phi i32 [ %i.gi, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ 0, %.lr.ph.i.i.i133.preheader ]
  %storemerge9.i.i.i135 = phi i64 [ %.sroa.3.0.i.i.i.i142, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141 ], [ %storemerge9.i.i.i135.ph, %.lr.ph.i.i.i133.preheader ] ; 4 uses
  %i.gf = icmp ugt i64 %storemerge9.i.i.i135, 7   ; 2 uses
  %i.gg = and i64 %storemerge9.i.i.i135, 6
  %i.gh = icmp eq i64 %i.gg, 0
  %spec.select.i.i.i.i136 = select i1 %i.gh, i32 12, i32 8
  %.0.i.i.i.i137 = select i1 %i.gf, i32 %spec.select.i.i.i.i136, i32 4
  %i.gi = add i32 %.0.i.i.i.i137, %.010.i.i.i134  ; 2 uses
  br i1 %i.gf, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138

bb.ab:                                            ; preds = %.lr.ph.i.i.i133
  %i.gj = trunc i64 %storemerge9.i.i.i135 to i32
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gk, 3
  switch i32 %i.gl, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i64 %storemerge9.i.i.i135, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.3.0.copyload.i.i.i.i145 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i144, align 8, !tbaa !1042
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i142 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i145, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i143 = icmp eq i64 %.sroa.3.0.i.i.i.i142, 0
  br i1 %.not.i.i.i143, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, label %.lr.ph.i.i.i133, !llvm.loop !67

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i141, %bb.ab, %bb.ab, %.lr.ph.i.i.i133
  %i.go = add i32 %i.gi, 4
  %i.gp = zext i32 %i.go to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147, %bb.z
  %i.gq = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i147 ], [ 4, %bb.z ], [ %i.gp, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i138 ]
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.0.copyload.i14.i.i140 = load i32, ptr %i.gs, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151: ; preds = %bb.z
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i15.i.i152 = load ptr, ptr %i.gt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.gu = and i64 %i.fw, -8
  %i.gv = inttoptr i64 %i.gu to ptr
  store ptr %i.gv, ptr %7, align 8, !tbaa !2860
  store ptr %.0.copyload.i15.i.i152, ptr %i.ab, align 8, !tbaa !2859
  %i.gw = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #36 ; 0 uses
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i16.i.i153 = load i32, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151
  %.sroa.6.0.i.i130 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i128 ], [ %.0.copyload.i14.i.i140, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i139 ], [ %.0.copyload.i.i.i129, %bb.aa ], [ %.0.copyload.i16.i.i153, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i151 ]
  call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.fu, ptr noundef %.0.i122, i32 %i.fv, i32 %.sroa.6.0.i.i130) #36
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.gz = and i64 %.sroa.0.0.copyload.i, -8       ; 3 uses
  %i.ha = inttoptr i64 %i.gz to ptr               ; 9 uses
  %.0.copyload.i.i = load ptr, ptr %.sroa.2.0.copyload.i, align 1 ; 7 uses
  store ptr %i.ha, ptr %13, align 8
  store ptr %.0.copyload.i.i, ptr %i.r, align 8
  %i.hb = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i156 = icmp eq i64 %i.hb, 0             ; 2 uses
  br i1 %.not.i.i156, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.am

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !252
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i8, ptr %i.hd, align 16
  %i.hf = icmp eq i8 %i.he, 20
  br i1 %i.hf, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hg, align 16, !tbaa !1042 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2932 ; 2 uses
  %.not285 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not285, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i.i, ptr %i.hi, i64 %3, ptr noundef %4) ; 2 uses
  %i.hk = extractvalue { i64, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { i64, ptr } %i.hj, 1
  %.not286 = icmp eq i64 %i.hk, 0
  br i1 %.not286, label %.critedge53, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0 = phi ptr [ %i.hi, %bb.ad ], [ %i.hl, %bb.ae ]
  %.sroa.0243.0 = phi i64 [ 0, %bb.ad ], [ %i.hk, %bb.ae ]
  %.1 = phi ptr [ %4, %bb.ad ], [ null, %bb.ae ]
  %.sroa.043.1 = phi i64 [ %3, %bb.ad ], [ 0, %bb.ae ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %11, i64 %.sroa.0243.0, ptr %.sroa.8.0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2934
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 16
  %.sroa.0.0.copyload.i161 = load i32, ptr %i.ho, align 8, !tbaa !268
  %i.hp = load i64, ptr %12, align 8, !tbaa !2929 ; 5 uses
  %i.hq = icmp ugt i64 %i.hp, 7
  br i1 %i.hq, label %bb.ag, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162

bb.ag:                                            ; preds = %bb.af
  %i.hr = trunc i64 %i.hp to i32
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = and i32 %i.hs, 3
  switch i32 %i.ht, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181
    i32 2, label %.lr.ph.i.i.i167.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162: ; preds = %bb.af
  %i.hu = icmp samesign ult i64 %i.hp, 2
  br i1 %i.hu, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i.i.i163 = load i32, ptr %i.hv, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181: ; preds = %bb.ag
  %i.hw = and i64 %i.hp, -8
  %i.hx = inttoptr i64 %i.hw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.3.0.copyload.i.i.i183 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i182, align 8, !tbaa !1042 ; 2 uses
  %.not8.i.i.i184 = icmp eq i64 %.sroa.3.0.copyload.i.i.i183, 0
  br i1 %.not8.i.i.i184, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, label %.lr.ph.i.i.i167.preheader

.lr.ph.i.i.i167.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %storemerge9.i.i.i169.ph = phi i64 [ 2, %bb.ag ], [ %.sroa.3.0.copyload.i.i.i183, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ]
  br label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %.lr.ph.i.i.i167.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  %.010.i.i.i168 = phi i32 [ %i.ib, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ 0, %.lr.ph.i.i.i167.preheader ]
  %storemerge9.i.i.i169 = phi i64 [ %.sroa.3.0.i.i.i.i176, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175 ], [ %storemerge9.i.i.i169.ph, %.lr.ph.i.i.i167.preheader ] ; 4 uses
  %i.hy = icmp ugt i64 %storemerge9.i.i.i169, 7   ; 2 uses
  %i.hz = and i64 %storemerge9.i.i.i169, 6
  %i.ia = icmp eq i64 %i.hz, 0
  %spec.select.i.i.i.i170 = select i1 %i.ia, i32 12, i32 8
  %.0.i.i.i.i171 = select i1 %i.hy, i32 %spec.select.i.i.i.i170, i32 4
  %i.ib = add i32 %.0.i.i.i.i171, %.010.i.i.i168  ; 2 uses
  br i1 %i.hy, label %bb.ai, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172

bb.ai:                                            ; preds = %.lr.ph.i.i.i167
  %i.ic = trunc i64 %storemerge9.i.i.i169 to i32
  %i.id = lshr i32 %i.ic, 1
  %i.ie = and i32 %i.id, 3
  switch i32 %i.ie, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172
    i32 3, label %bb.aj
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = and i64 %storemerge9.i.i.i169, -8
  %i.ig = inttoptr i64 %i.if to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i.i.i.i179 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i178, align 8, !tbaa !1042
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175: ; preds = %bb.aj, %bb.ai
  %.sroa.3.0.i.i.i.i176 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i179, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %.not.i.i.i177 = icmp eq i64 %.sroa.3.0.i.i.i.i176, 0
  br i1 %.not.i.i.i177, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, label %.lr.ph.i.i.i167, !llvm.loop !67

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i175, %bb.ai, %bb.ai, %.lr.ph.i.i.i167
  %i.ih = add i32 %i.ib, 4
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181, %bb.ag
  %i.ij = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i181 ], [ 4, %bb.ag ], [ %i.ii, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i172 ]
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %.0.copyload.i14.i.i174 = load i32, ptr %i.il, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185: ; preds = %bb.ag
  %i.im = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i15.i.i186 = load ptr, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.in = and i64 %i.hp, -8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %6, align 8, !tbaa !2860
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.copyload.i15.i.i186, ptr %i.ip, align 8, !tbaa !2859
  %i.iq = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #36 ; 0 uses
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i16.i.i187 = load i32, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162, %bb.ah, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185
  %.sroa.6.0.i.i164 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i162 ], [ %.0.copyload.i14.i.i174, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i173 ], [ %.0.copyload.i.i.i163, %bb.ah ], [ %.0.copyload.i16.i.i187, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i185 ]
  %i.it = inttoptr i64 %.sroa.043.1 to ptr
  store ptr %i.it, ptr %14, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hn, ptr %i.iu, align 8, !tbaa !2936
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.0.0.copyload.i161, ptr %i.iv, align 8, !tbaa !268
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %.sroa.6.0.i.i164, ptr %i.iw, align 4, !tbaa !268
  %i.ix = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.iy = call noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ix, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %.1, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #36
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188
  %i.iz = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.jc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.jb) #36 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188, %bb.ak
  %.sroa.12.1 = phi ptr [ %i.je, %bb.ak ], [ null, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  %.sroa.0260.1 = phi i64 [ %i.jd, %bb.ak ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %.critedge53

bb.am:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  store i64 %i.gz, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  store ptr %i.s, ptr %16, align 8, !tbaa !2484
  store i64 32, ptr %i.t, align 8, !tbaa !2485
  store i64 32, ptr %i.u, align 8, !tbaa !2486
  store i32 0, ptr %i.v, align 8, !tbaa !2487
  store i8 0, ptr %i.w, align 4, !tbaa !2488
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jf, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not.i.i156, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.an
  %i.jg = load ptr, ptr %i.ha, align 8, !tbaa !252
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i8, ptr %i.jh, align 16
  switch i8 %i.ji, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.ao
    i8 20, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jj = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i64 %3, ptr noundef %4, i1 noundef zeroext true), !inline_history !6178
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jk = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i1 noundef zeroext false, i64 %3, ptr noundef %4), !inline_history !6178
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.an
  %i.jl = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr %i.ha, ptr %.0.copyload.i.i), !inline_history !6178
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.ao, %bb.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.jl, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.jj, %bb.ao ], [ %i.jk, %bb.ap ] ; 4 uses
  store i64 %.sroa.014.0.i, ptr %15, align 8, !tbaa !196
  %i.jm = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.jm, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.jn = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 232
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.jq = load i64, ptr %i.t, align 8, !tbaa !2485
  %i.jr = load i64, ptr %i.u, align 8, !tbaa !2486 ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2632 ; 3 uses
  %i.ju = add i64 %i.js, 7
  %i.jv = and i64 %i.ju, -8                       ; 2 uses
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !1580 ; 2 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = add i64 %i.jv, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 2640
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1581
  %i.kb = icmp ult i64 %i.jy, %i.ka
  br i1 %i.kb, label %bb.ar, label %bb.as, !prof !271

bb.ar:                                            ; preds = %bb.aq
  %i.kc = inttoptr i64 %i.jy to ptr
  store ptr %i.kc, ptr %i.jt, align 8, !tbaa !1580
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.kd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, i64 noundef %i.js, i64 noundef %i.jv, i8 3)
  %.pre.i189 = load i64, ptr %i.u, align 8, !tbaa !2486
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit: ; preds = %bb.ar, %bb.as
  %i.ke = phi i64 [ %i.jr, %bb.ar ], [ %.pre.i189, %bb.as ]
  %.0.i.i.i.i190 = phi ptr [ %i.jw, %bb.ar ], [ %i.kd, %bb.as ] ; 3 uses
  %i.kf = load ptr, ptr %16, align 8, !tbaa !2484
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i190, ptr align 1 %i.kg, i64 %i.js, i1 false)
  %i.kh = inttoptr i64 %.sroa.014.0.i to ptr      ; 2 uses
  store ptr %i.kh, ptr %13, align 8, !tbaa !1814
  store ptr %.0.i.i.i.i190, ptr %i.r, align 8, !tbaa !1814
  br label %bb.at

bb.at:                                            ; preds = %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit, %bb.am
  %.sroa.2.0.copyload371 = phi ptr [ %.0.i.i.i.i190, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %.0.copyload.i.i, %bb.am ] ; 2 uses
  %.sroa.07.0.copyload369 = phi ptr [ %i.kh, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.ha, %bb.am ] ; 2 uses
  %.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.014.0.i, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.gz, %bb.am ]
  %i.ki = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !252 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 17
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 4
  %.not282 = icmp eq i16 %i.kn, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ko, align 8, !tbaa !196 ; 2 uses
  br i1 %.not282, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kp = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !252
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i8, ptr %i.ks, align 16            ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 49
  %.pre367.pre377 = load ptr, ptr %0, align 8, !tbaa !2475 ; 3 uses
  br i1 %i.ku, label %.critedge55, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre367.pre377, i64 216
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = and i64 %i.kx, 8192
  %.not = icmp ne i64 %i.ky, 0
  %i.kz = icmp eq i8 %i.kt, 47
  %or.cond = and i1 %i.kz, %.not
  br i1 %or.cond, label %.thread, label %bb.bc

bb.aw:                                            ; preds = %bb.at
  %.pre367.pre = load ptr, ptr %0, align 8, !tbaa !2475 ; 2 uses
  %.pre379 = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %.pre380 = inttoptr i64 %.pre379 to ptr
  %.pre510 = load ptr, ptr %.pre380, align 16, !tbaa !252
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre510, i64 16
  %.pre511 = load i8, ptr %.phi.trans.insert, align 16
  %i.la = icmp eq i8 %.pre511, 47
  br i1 %i.la, label %.thread, label %.critedge55

.thread:                                          ; preds = %bb.av, %bb.aw
  %.pre367537 = phi ptr [ %.pre367.pre, %bb.aw ], [ %.pre367.pre377, %bb.av ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre367537, i64 8
  %i.lc = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 %i.lc, i32 noundef 6967) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #36
  %.pre366 = load ptr, ptr %0, align 8, !tbaa !2475
  %.sroa.07.0.copyload.pre = load ptr, ptr %13, align 8, !tbaa !1814
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !1814
  br label %.critedge55

.critedge55:                                      ; preds = %bb.au, %.thread, %bb.aw
  %.sroa.2.0.copyload = phi ptr [ %.sroa.2.0.copyload.pre, %.thread ], [ %.sroa.2.0.copyload371, %bb.aw ], [ %.sroa.2.0.copyload371, %bb.au ]
  %.sroa.07.0.copyload = phi ptr [ %.sroa.07.0.copyload.pre, %.thread ], [ %.sroa.07.0.copyload369, %bb.aw ], [ %.sroa.07.0.copyload369, %bb.au ]
  %i.ld = phi ptr [ %.pre366, %.thread ], [ %.pre367.pre, %bb.aw ], [ %.pre367.pre377, %bb.au ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 232
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.lg = load i64, ptr %12, align 8, !tbaa !2929 ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 7
  br i1 %i.lh, label %bb.ax, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198

bb.ax:                                            ; preds = %.critedge55
  %i.li = trunc i64 %i.lg to i32
  %i.lj = lshr i32 %i.li, 1
  %i.lk = and i32 %i.lj, 3
  switch i32 %i.lk, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i221
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217
    i32 2, label %.lr.ph.i.i.i203.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198: ; preds = %.critedge55
  %i.ll = icmp samesign ult i64 %i.lg, 2
  br i1 %i.ll, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224, label %bb.ay

bb.ay:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i198
  %i.lm = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i.i.i199 = load i32, ptr %i.lm, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit224

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217: ; preds = %bb.ax
  %i.ln = and i64 %i.lg, -8
  %i.lo = inttoptr i64 %i.ln to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.3.0.copyload.i.i.i219 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i218, align 8, !tbaa !1042 ; 2 uses
  %.not8.i.i.i220 = icmp eq i64 %.sroa.3.0.copyload.i.i.i219, 0
  br i1 %.not8.i.i.i220, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209, label %.lr.ph.i.i.i203.preheader

.lr.ph.i.i.i203.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217, %bb.ax
  %storemerge9.i.i.i205.ph = phi i64 [ 2, %bb.ax ], [ %.sroa.3.0.copyload.i.i.i219, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i217 ]
  br label %.lr.ph.i.i.i203

.lr.ph.i.i.i203:                                  ; preds = %.lr.ph.i.i.i203.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  %.010.i.i.i204 = phi i32 [ %i.ls, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ 0, %.lr.ph.i.i.i203.preheader ]
  %storemerge9.i.i.i205 = phi i64 [ %.sroa.3.0.i.i.i.i212, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211 ], [ %storemerge9.i.i.i205.ph, %.lr.ph.i.i.i203.preheader ] ; 4 uses
  %i.lp = icmp ugt i64 %storemerge9.i.i.i205, 7   ; 2 uses
  %i.lq = and i64 %storemerge9.i.i.i205, 6
  %i.lr = icmp eq i64 %i.lq, 0
  %spec.select.i.i.i.i206 = select i1 %i.lr, i32 12, i32 8
  %.0.i.i.i.i207 = select i1 %i.lp, i32 %spec.select.i.i.i.i206, i32 4
  %i.ls = add i32 %.0.i.i.i.i207, %.010.i.i.i204  ; 2 uses
  br i1 %i.lp, label %bb.az, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208

bb.az:                                            ; preds = %.lr.ph.i.i.i203
  %i.lt = trunc i64 %storemerge9.i.i.i205 to i32
  %i.lu = lshr i32 %i.lt, 1
  %i.lv = and i32 %i.lu, 3
  switch i32 %i.lv, label %default.unreachable535 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208
    i32 3, label %bb.ba
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211
  ]

bb.ba:                                            ; preds = %bb.az
  %i.lw = and i64 %storemerge9.i.i.i205, -8
  %i.lx = inttoptr i64 %i.lw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.3.0.copyload.i.i.i.i215 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i214, align 8, !tbaa !1042
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211: ; preds = %bb.ba, %bb.az
  %.sroa.3.0.i.i.i.i212 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i215, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %.not.i.i.i213 = icmp eq i64 %.sroa.3.0.i.i.i.i212, 0
  br i1 %.not.i.i.i213, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208, label %.lr.ph.i.i.i203, !llvm.loop !67

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i208: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i211, %bb.az, %bb.az, %.lr.ph.i.i.i203
  %i.ly = add i32 %i.ls, 4
  %i.lz = zext i32 %i.ly to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i209
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE33TransformUnaryExprOrTypeTraitExprEPNS_24UnaryExprOrTypeTraitExprE:bb.a
bb.c:                                             ; preds = %bb.b
  %.val40 = load ptr, ptr %0, align 8, !tbaa !3339 ; 2 uses
  %i.g = getelementptr i8, ptr %.val40, i64 13800
  %.val40.val = load i32, ptr %i.g, align 4, !tbaa !2489
  %.not64 = icmp eq i32 %.val40.val, 0
  %i.h = icmp eq ptr %i.e, %i.f
  %or.cond = and i1 %i.h, %.not64
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %1 to i64
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 8, !tbaa !268
  %i.k = load i24, ptr %1, align 8
  %i.l = lshr i24 %i.k, 19
  %i.m = and i24 %i.l, 15
  %i.n = zext nneg i24 %i.m to i32
  %i.o = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #37
  %i.p = tail call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, ptr noundef nonnull %i.f, i32 %.sroa.0.0.copyload.i, i32 noundef %i.n, i64 %i.o) #36
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextENS0_24ReuseLambdaContextDecl_tENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, i32 noundef 0, i32 noundef 0, i32 noundef 4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr null, ptr %i.a, align 8, !tbaa !2436
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !196  ; 6 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 511
  %.not = icmp eq i16 %i.u, 20
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2482 ; 3 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 511
  %i.z = icmp eq i16 %i.y, 71
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aa = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.w, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !6891 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.aa, 1
  br i1 %spec.select.i, label %bb.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.i:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %0, align 8, !tbaa !3339 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val.i, i64 13800
  %.val.val.i = load i32, ptr %i.ab, align 4, !tbaa !2489
  %i.ac = icmp eq i32 %.val.val.i, 0
  %i.ad = and i64 %i.aa, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = icmp eq ptr %i.w, %i.ae
  %or.cond61 = and i1 %i.af, %i.ac
  br i1 %or.cond61, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = ptrtoint ptr %i.s to i64
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.0.0.copyload.i48 = load i32, ptr %i.ah, align 8, !tbaa !268
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.sroa.0.0.copyload.i47 = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.aj = call i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %.sroa.0.0.copyload.i48, i32 %.sroa.0.0.copyload.i47, ptr noundef %i.ae) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  %storemerge = phi i64 [ %i.ak, %bb.l ], [ %i.aj, %bb.k ], [ %i.ag, %bb.j ], [ %i.aa, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !2436 ; 2 uses
  %.not37 = icmp eq ptr %i.al, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.am, align 8, !tbaa !268
  %i.an = load i24, ptr %1, align 8
  %i.ao = lshr i24 %i.an, 19
  %i.ap = and i24 %i.ao, 15
  %i.aq = zext nneg i24 %i.ap to i32
  %i.ar = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #37
  %.val41 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.as = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.al, i32 %.sroa.0.0.copyload.i45, i32 noundef %i.aq, i64 %i.ar) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.n:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.at = icmp eq i64 %storemerge, 1
  br i1 %i.at, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 2 uses
  %i.au = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.au, align 4, !tbaa !2489
  %.not63 = icmp eq i32 %.val.val, 0
  %i.av = and i64 %storemerge, -2
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  br i1 %.not63, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !196
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.az = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

._crit_edge:                                      ; preds = %bb.o, %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.ba, align 8, !tbaa !268
  %i.bb = load i24, ptr %1, align 8
  %i.bc = lshr i24 %i.bb, 19
  %i.bd = and i24 %i.bc, 15
  %i.be = zext nneg i24 %i.bd to i32
  %i.bf = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %i.aw, i32 %.sroa.0.0.copyload.i46, i32 noundef %i.be) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %._crit_edge, %bb.q, %bb.m
  %.sroa.052.0 = phi i64 [ %i.as, %bb.m ], [ %i.bf, %._crit_edge ], [ %i.az, %bb.q ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.q) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.d, %bb.e, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.sroa.052.1 = phi i64 [ %.sroa.052.0, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.i, %bb.d ], [ %i.p, %bb.e ], [ 1, %bb.b ]
  ret i64 %.sroa.052.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformTypeTraitExprEPNS_13TypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3291", align 8 ; 14 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  %4 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.3179", align 8 ; 8 uses
  %6 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !196  ; 2 uses
  %.not217 = icmp eq i32 %i.e, 0
  br i1 %.not217, label %.thread212, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.u = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.thread212, label %bb.c, !llvm.loop !6892

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0220 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.b ] ; 3 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = lshr i32 %i.v, 27
  %.lobit.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = xor i32 %.lobit.i.i.i.i.i.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2436 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !196 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.d

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !252
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.g, ptr %3, align 8, !tbaa !2484
  store i64 32, ptr %i.h, align 8, !tbaa !2485
  store i64 32, ptr %i.i, align 8, !tbaa !2486
  store i32 0, ptr %i.j, align 8, !tbaa !2487
  store i8 0, ptr %i.k, align 4, !tbaa !2488
  %i.aj = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #36
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !2485
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.ak) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.d, %bb.e
  %i.an = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr %i.ad, ptr nonnull %i.ac) ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.sroa.0.0.copyload.i79 = load i64, ptr %i.ab, align 8, !tbaa !196
  %i.ap = icmp eq i64 %i.an, %.sroa.0.0.copyload.i79
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !271

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.ab, ptr %i.au, align 1
  %i.av = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !2485
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !2486
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %i.an, i32 noundef %i.bd) #36 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !2484
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !2486
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i81 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i81, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %2, align 8, !tbaa !153
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.be, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !154
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.065 = phi i32 [ 4, %bb.i ], [ 1, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ 4, %bb.h ], [ 4, %bb.k ], [ 4, %bb.l ]
  %.2 = phi i1 [ %.0220, %bb.i ], [ %.0220, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ %.0220, %bb.h ], [ true, %bb.k ], [ true, %bb.l ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !2484  ; 3 uses
  %.not.i83 = icmp eq ptr %i.bq, %i.g
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i = or i1 %.not.i83, %i.br
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.v

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 16, !tbaa !196 ; 2 uses
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %i.bv = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #36
  %i.bw = icmp ne i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = udiv i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = mul i64 %i.cb, %i.bz
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  store ptr %i.ce, ptr %4, align 8
  store ptr %i.cd, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.m, ptr %5, align 8, !tbaa !153
  store i32 0, ptr %i.n, align 8, !tbaa !154
  store i32 2, ptr %i.o, align 4, !tbaa !155
  %i.cf = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_7TypeLocERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cf, ptr %i.ce, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) #36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !196
  %i.ci = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36 ; 0 uses
  %i.cj = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36 ; 0 uses
  %.val72 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ck = getelementptr inbounds nuw i8, ptr %.val72, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !268
  store i32 0, ptr %i.ck, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.p, ptr %6, align 8, !tbaa !2484
  store i64 32, ptr %i.q, align 8, !tbaa !2485
  store i64 32, ptr %i.r, align 8, !tbaa !2486
  store i32 0, ptr %i.s, align 8, !tbaa !2487
  store i8 0, ptr %i.t, align 4, !tbaa !2488
  %.sroa.0.0.copyload.i88 = load i64, ptr %i.ab, align 8, !tbaa !196
  %i.cl = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i88) #36
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !2485
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit91

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 noundef %i.cm) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit91

_ZN5clang14TypeLocBuilder7reserveEm.exit91:       ; preds = %bb.n, %bb.o
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !1814
  %.sroa.235.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !1814
  %i.cp = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %6, ptr %.sroa.034.0.copyload, ptr %.sroa.235.0.copyload) ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  br i1 %i.cq, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit91
  %i.cr = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
  %i.cs = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
  %.sroa.2.0.insert.ext.i93 = zext i32 %i.cs to i64
  %.sroa.2.0.insert.shift.i94 = shl nuw i64 %.sroa.2.0.insert.ext.i93, 32
  %.sroa.0.0.insert.ext.i95 = zext i32 %i.cr to i64
  %.sroa.0.0.insert.insert.i96 = or disjoint i64 %.sroa.2.0.insert.shift.i94, %.sroa.0.0.insert.ext.i95
  %.sroa.0.0.copyload.i97 = load i32, ptr %i.ac, align 8, !tbaa !268
  %.val75 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ct = call i64 @_ZN5clang4Sema18CheckPackExpansionENS_8QualTypeENS_11SourceRangeENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val75, i64 %i.cp, i64 %.sroa.0.0.insert.insert.i96, i32 %.sroa.0.0.copyload.i97, i32 %i.ch) #36 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  br i1 %i.cu, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 %i.ct, i64 noundef 4, i32 noundef 4) #36
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  %.sroa.0.0.copyload.i99 = load i32, ptr %i.ac, align 8, !tbaa !268
  store i32 %.sroa.0.0.copyload.i99, ptr %i.cw, align 4, !tbaa !268
  %i.cx = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.da = load i64, ptr %i.q, align 8, !tbaa !2485
  %i.db = load i64, ptr %i.r, align 8, !tbaa !2486
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cz, i64 %i.ct, i32 noundef %i.dd) #36 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %6, align 8, !tbaa !2484
  %i.dh = load i64, ptr %i.r, align 8, !tbaa !2486
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.di, i64 %i.dc, i1 false)
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i100 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i100, label %bb.s, label %bb.r, !prof !271

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.de)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101

bb.s:                                             ; preds = %bb.q
  %i.dl = zext i32 %i.dj to i64
end_hunk_6
begin_hunk_7_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE35TransformCXXRewrittenBinaryOperatorEPNS_26CXXRewrittenBinaryOperatorE:bb.a
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1: ; preds = %.loopexit.i.i.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1
  %.pre-phi.i.1 = phi i64 [ %.pre.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.eb, %.loopexit.i.i.i.1 ]
  %.lcssa.sink.i.i.i.1 = phi ptr [ %i.dp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.ec, %.loopexit.i.i.i.1 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.pre-phi.i.1
  %.not.i43.1 = icmp eq ptr %.lcssa.sink.i.i.i.1, %i.ed
  br i1 %.not.i43.1, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %i.ee = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1: ; preds = %bb.q, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %.0.i.1 = phi ptr [ %i.ef, %bb.q ], [ %i.cv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1 ] ; 3 uses
  %.not39.1 = icmp eq ptr %.0.i.1, null
  br i1 %.not39.1, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1
  %i.eg = ptrtoint ptr %.0.i.1 to i64
  %i.eh = or i64 %i.eg, 3
  %.not40.1 = icmp ne ptr %.0.i.1, %i.cv
  %spec.select.1 = select i1 %.not40.1, i1 true, i1 %.4.ph
  %i.ei = zext nneg i32 %i.ca to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ei
  store i64 %i.eh, ptr %i.ej, align 8
  %i.ek = add nuw nsw i32 %i.ca, 1
  store i32 %i.ek, ptr %i.k, align 8, !tbaa !154
  br label %.critedge.thread59

.critedge.thread59:                               ; preds = %bb.r, %bb.m, %bb.l, %bb.k
  %.4.ph.1 = phi i1 [ %spec.select.1, %bb.r ], [ %.4.ph, %bb.k ], [ %.4.ph, %bb.l ], [ %.4.ph, %bb.m ]
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 3 uses
  %i.el = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.el, align 4, !tbaa !2489
  %i.em = icmp ne i32 %.val.val, 0
  %or.cond = select i1 %i.em, i1 true, i1 %.4.ph.1
  %.pre = and i64 %i.d, -2
  %.pre72 = inttoptr i64 %.pre to ptr             ; 2 uses
  br i1 %or.cond, label %.critedge.thread59._crit_edge, label %bb.s

bb.s:                                             ; preds = %.critedge.thread59
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !2748 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %.pre72
  br i1 %i.eo, label %bb.t, label %.critedge.thread59._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ep = and i64 %i.h, -2
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !2749 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eq
  br i1 %i.es, label %bb.u, label %.critedge.thread59._crit_edge

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr %i.en, ptr %i.a, align 16, !tbaa !1046
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.er, ptr %i.et, align 8, !tbaa !1046
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull %1, i1 noundef zeroext false, ptr nonnull %i.a, i64 2) #36
  %i.eu = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

.critedge.thread59._crit_edge:                    ; preds = %.critedge.thread59, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) #40
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !2752
  %i.ex = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.ey = load i32, ptr %3, align 8, !tbaa !2753
  %i.ez = and i64 %i.h, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ex, i32 noundef %i.ey, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.pre72, ptr noundef %i.fa, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #36
  br label %.critedge

.critedge:                                        ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1, %.critedge.thread59._crit_edge, %bb.u
  %.sroa.053.3 = phi i64 [ %i.fb, %.critedge.thread59._crit_edge ], [ %i.eu, %bb.u ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1 ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  %i.fc = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.j
  br i1 %i.fd, label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.fc) #36
  br label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit

_ZN5clang13UnresolvedSetILj2EED2Ev.exit:          ; preds = %.critedge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, %bb.b, %bb.a
  %.sroa.053.5 = phi i64 [ 1, %bb.a ], [ %.sroa.053.3, %_ZN5clang13UnresolvedSetILj2EED2Ev.exit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i64 %.sroa.053.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23TransformCXXReflectExprEPNS_14CXXReflectExprE() unnamed_addr #26 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE32TransformCXXPseudoDestructorExprEPNS_23CXXPseudoDestructorExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %9 = alloca %"class.clang::OpaquePtr.1985", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.clang::CXXScopeSpec", align 8 ; 12 uses
  %11 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %12 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2760
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr null, ptr %9, align 8, !tbaa !2438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !197
  %i.g = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.h = and i64 %i.e, -2
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 4, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  %i.n = select i1 %i.m, i16 37, i16 26
  %i.o = call i64 @_ZN5clang4Sema28ActOnStartCXXMemberReferenceEPNS_5ScopeEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERNS_9OpaquePtrINS_8QualTypeEEERb(ptr noundef nonnull align 8 dereferenceable(18640) %i.g, ptr noundef null, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i16 noundef zeroext %i.n, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #36 ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %9, align 8, !tbaa !2438   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.s, align 8, !tbaa !1042 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814 ; 2 uses
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i48, 0
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i48, ptr %.sroa.2.0.copyload.i, i64 %i.r, ptr noundef null) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.t, 1
  %.not93 = icmp eq i64 %i.u, 0
  br i1 %.not93, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.074.0 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %.sroa.8.0 = phi ptr [ %i.v, %bb.d ], [ %.sroa.2.0.copyload.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 %.sroa.074.0, ptr %.sroa.8.0) #36
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8 ; 3 uses
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.y = icmp ne i64 %i.x, 0                      ; 2 uses
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %.not94 = icmp eq i64 %i.z, 0
  %.not = or i1 %i.y, %.not94
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i103 = load i64, ptr %i.aa, align 8, !tbaa !196 ; 3 uses
  %i.ab = icmp ult i64 %.sroa.0.0.copyload.i.i103, 16
  br i1 %i.ab, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !2484
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 32, ptr %i.ad, align 8, !tbaa !2485
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.ae, align 8, !tbaa !2486
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.af, align 8, !tbaa !2487
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.ag, align 4, !tbaa !2488
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ai = inttoptr i64 %.sroa.0.0.copyload.i.i103 to ptr ; 4 uses
  %i.aj = and i64 %.sroa.0.0.copyload.i.i103, 15
  %.not.i.i114 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i114, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !252
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 16
  switch i8 %i.am, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.h
    i8 20, label %bb.i
  ]

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.an = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !7032
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.ao = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !7032
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.g
  %i.ap = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah), !inline_history !7032
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.h, %bb.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.aq = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.aq, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !2484
  br label %bb.k

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !2485
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !2486
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.at, i64 %.sroa.014.0.i, i32 noundef %i.ax) #36, !inline_history !7033 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %3, align 8, !tbaa !2484  ; 2 uses
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !2486
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.bc, i64 %i.aw, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bd = phi ptr [ %i.ba, %bb.j ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %.0.i = phi ptr [ %i.ay, %bb.j ], [ null, %._crit_edge.i ] ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.bd, %i.ac
  %i.be = icmp eq ptr %i.bd, null
  %or.cond.i.i = or i1 %.not.i.i104, %i.be
  br i1 %or.cond.i.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #38, !inline_history !7033
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.not45.not = icmp eq ptr %.0.i, null
  br i1 %.not45.not, label %.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread: ; preds = %bb.f, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit
  %.1.i122 = phi ptr [ %.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %.1.i122) #36
  %.sroa.065.0.copyload66 = load i64, ptr %11, align 8
  %.sroa.7.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.7.0.copyload69 = load i32, ptr %.sroa.7.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.q

bb.m:                                             ; preds = %bb.e
  %i.bf = icmp ult ptr %i.q, inttoptr (i64 16 to ptr)
  br i1 %i.bf, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = and i64 %i.r, -16
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !252
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 17
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = and i16 %i.bk, 4
  %.not95 = icmp eq i16 %i.bl, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bm, align 8, !tbaa !268
  %i.bn = or i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.bo = select i1 %i.y, i64 %i.bn, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bp = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i56 = load i32, ptr %i.bq, align 8, !tbaa !268
  %.sroa.09.0.copyload = load ptr, ptr %9, align 8, !tbaa !1814
  %i.br = call ptr @_ZN5clang4Sema17getDestructorNameERKNS_14IdentifierInfoENS_14SourceLocationEPNS_5ScopeERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i32 %.sroa.0.0.copyload.i.i56, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #36 ; 2 uses
  %.not96 = icmp eq ptr %i.br, null
  br i1 %.not96, label %.thread, label %.thread89

.thread89:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.bs = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.bv = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr nonnull %i.br, ptr noundef null) #36
  %.sroa.0.0.copyload.i.i57 = load i32, ptr %i.bq, align 8, !tbaa !268
  %i.bw = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bu, i64 %i.bv, i32 %.sroa.0.0.copyload.i.i57) #36
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef %i.bw) #36
  %.sroa.065.0.copyload67 = load i64, ptr %12, align 8
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.7.0.copyload71 = load i32, ptr %.sroa.7.0..sroa_idx70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.q

bb.q:                                             ; preds = %.thread89, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, %bb.o
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.copyload71, %.thread89 ], [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %.sroa.7.0.copyload69, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ] ; 2 uses
  %.sroa.065.2 = phi i64 [ %.sroa.065.0.copyload67, %.thread89 ], [ %i.bo, %bb.o ], [ %.sroa.065.0.copyload66, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2761 ; 4 uses
  %.not46 = icmp eq ptr %i.by, null
  br i1 %.not46, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i105 = load i64, ptr %i.by, align 8, !tbaa !196 ; 3 uses
  %i.bz = icmp ult i64 %.sroa.0.0.copyload.i.i105, 16
  br i1 %i.bz, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ca, ptr %2, align 8, !tbaa !2484
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 32, ptr %i.cb, align 8, !tbaa !2485
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 32, ptr %i.cc, align 8, !tbaa !2486
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.cd, align 8, !tbaa !2487
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i8 0, ptr %i.ce, align 4, !tbaa !2488
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cg = inttoptr i64 %.sroa.0.0.copyload.i.i105 to ptr ; 4 uses
  %i.ch = and i64 %.sroa.0.0.copyload.i.i105, 15
  %.not.i.i115 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i115, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118:  ; preds = %bb.s
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !252
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i8, ptr %i.cj, align 16
  switch i8 %i.ck, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116 [
    i8 50, label %bb.t
    i8 20, label %bb.u
  ]

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118
  %i.cl = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !7032
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118
  %i.cm = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !7032
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118, %bb.s
  %i.cn = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf), !inline_history !7032
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119: ; preds = %bb.t, %bb.u, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116
  %.sroa.014.0.i117 = phi i64 [ %i.cn, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116 ], [ %i.cl, %bb.t ], [ %i.cm, %bb.u ] ; 2 uses
  %i.co = icmp ult i64 %.sroa.014.0.i117, 16
  br i1 %i.co, label %._crit_edge.i111, label %bb.v

._crit_edge.i111:                                 ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119
  %.pre.i112 = load ptr, ptr %2, align 8, !tbaa !2484
  br label %bb.w

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119
  %i.cp = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.cs = load i64, ptr %i.cb, align 8, !tbaa !2485
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !2486
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cr, i64 %.sroa.014.0.i117, i32 noundef %i.cv) #36, !inline_history !7033 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %2, align 8, !tbaa !2484  ; 2 uses
  %i.cz = load i64, ptr %i.cc, align 8, !tbaa !2486
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr align 1 %i.da, i64 %i.cu, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i111
  %i.db = phi ptr [ %i.cy, %bb.v ], [ %.pre.i112, %._crit_edge.i111 ] ; 3 uses
  %.0.i106 = phi ptr [ %i.cw, %bb.v ], [ null, %._crit_edge.i111 ] ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.db, %i.ca
  %i.dc = icmp eq ptr %i.db, null
  %or.cond.i.i108 = or i1 %.not.i.i107, %i.dc
  br i1 %or.cond.i.i108, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.db) #38, !inline_history !7033
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.not47 = icmp eq ptr %.0.i106, null
  br i1 %.not47, label %.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread: ; preds = %bb.r, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113, %bb.q
  %.042 = phi ptr [ %.0.i106, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113 ], [ null, %bb.q ], [ %i.by, %bb.r ] ; 7 uses
  %i.dd = and i64 %i.o, -2
  %i.de = inttoptr i64 %i.dd to ptr               ; 4 uses
  %.sroa.0.0.copyload.i58 = load i32, ptr %i.j, align 4, !tbaa !268 ; 2 uses
  %i.df = load i8, ptr %i.k, align 8
  %i.dg = trunc i8 %i.df to i1                    ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.dh, align 8, !tbaa !268 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.di, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.065.2, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.7.2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.dj, align 8, !tbaa !196
  %i.dk = and i64 %.sroa.0.0.copyload.i.i61, -16
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !196
  %i.do = load i24, ptr %i.de, align 8
  %i.dp = and i24 %i.do, 65536
  %.not70.i = icmp eq i24 %i.dp, 0
  br i1 %.not70.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread
  %i.dq = and i64 %.sroa.065.2, 4
  %.not.i.i.i.i.i.i63 = icmp eq i64 %i.dq, 0      ; 2 uses
  %i.dr = and i64 %.sroa.065.2, -5                ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %.not71.i = icmp eq i64 %i.dr, 0
  %.not.i = or i1 %.not.i.i.i.i.i.i63, %.not71.i
  br i1 %.not.i, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.dt = and i64 %i.dn, -16
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !252 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dw, align 16            ; 2 uses
  br i1 %i.dg, label %.critedge45.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = icmp eq i8 %i.dx, 49
  br i1 %i.dy, label %.critedge2.i, label %.critedge.i

.critedge45.i:                                    ; preds = %bb.z
  %i.dz = icmp eq i8 %i.dx, 40
  br i1 %i.dz, label %bb.ab, label %.critedge2.i

bb.ab:                                            ; preds = %.critedge45.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %.sroa.0.0.copyload.i49.i = load i64, ptr %i.ea, align 16, !tbaa !196
  %i.eb = and i64 %.sroa.0.0.copyload.i49.i, -16
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !252
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 8, !tbaa !196
  %i.ef = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !252 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i8, ptr %i.ei, align 16
  %i.ek = icmp ne i8 %i.ej, 49
  %.not4272.i = icmp eq ptr %i.eh, null
  %.not42.i = or i1 %.not4272.i, %i.ek
  br i1 %.not42.i, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %bb.ab, %bb.aa, %bb.y, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread
  %i.el = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.em = select i1 %i.dg, i16 37, i16 26
  %i.en = call i64 @_ZN5clang4Sema25BuildPseudoDestructorExprEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERKNS_12CXXScopeSpecEPNS_14TypeSourceInfoES3_S3_NS_27PseudoDestructorTypeStorageE(ptr noundef nonnull align 8 dereferenceable(18640) %i.el, ptr noundef nonnull %i.de, i32 %.sroa.0.0.copyload.i58, i16 noundef zeroext %i.em, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %.042, i32 %.sroa.0.0.copyload.i59, i32 %.sroa.0.0.copyload.i60, ptr noundef nonnull byval(%"class.clang::PseudoDestructorTypeStorage") align 8 %8) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE30RebuildCXXPseudoDestructorExprEPNS_4ExprENS_14SourceLocationEbRNS_12CXXScopeSpecEPNS_14TypeSourceInfoES6_S6_NS_27PseudoDestructorTypeStorageE.exit

.critedge2.i:                                     ; preds = %bb.ab, %.critedge45.i, %bb.aa
  %.0.i.i.i.i.i51.i = select i1 %.not.i.i.i.i.i.i63, ptr %i.ds, ptr null
  %i.eo = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 232
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 17800
  %.sroa.0.0.copyload.i52.i = load i64, ptr %i.ds, align 8, !tbaa !196 ; 2 uses
  %i.es = and i64 %.sroa.0.0.copyload.i52.i, -16
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !196
  %i.ew = and i64 %.sroa.0.0.copyload.i52.i, 7
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = call i64 @_ZN5clang20DeclarationNameTable20getCXXDestructorNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824) %i.er, i64 %i.ex) #36 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i64 %i.ey, ptr %4, align 8, !tbaa !1042
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.7.2, ptr %i.ez, align 8, !tbaa !268
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i64 %i.ey) #36
  store ptr %.0.i.i.i.i.i51.i, ptr %i.fa, align 8, !tbaa !196
  %.not43.i = icmp eq ptr %.042, null
  br i1 %.not43.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.critedge2.i
  %.sroa.0.0.copyload.i54.i = load i64, ptr %.042, align 8, !tbaa !196 ; 2 uses
  %i.fb = and i64 %.sroa.0.0.copyload.i54.i, -16
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !196
  %i.ff = and i64 %i.fe, -16
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !252
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i8, ptr %i.fi, align 16
  %i.fk = add i8 %i.fj, -47
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fk, 3
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %.val47.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.fl = getelementptr inbounds nuw i8, ptr %.val47.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.fm = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.fn = inttoptr i64 %.sroa.0.0.copyload.i54.i to ptr
  store ptr %i.fn, ptr %6, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.fm, ptr %i.fo, align 8
  %i.fp = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i32 %i.fp, i32 noundef 3796) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %.sroa.0.0.copyload.i58.i = load i64, ptr %.042, align 8, !tbaa !196
  store i64 %.sroa.0.0.copyload.i58.i, ptr %7, align 8
  %i.fq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %.val46.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.fr = getelementptr inbounds nuw i8, ptr %.val46.i, i64 216
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = lshr i32 %i.fu, 12
  %i.fw = and i32 %i.fv, 1
  store i32 %i.fw, ptr %i.a, align 4, !tbaa !268
end_hunk_7
begin_hunk_8_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformConditionalOperatorEPNS_19ConditionalOperatorE:bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.m, align 4, !tbaa !2489
  %.not = icmp eq i32 %.val.val, 0
  %i.n = and i64 %i.c, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.g, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !1724
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.k, -2
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !1724
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.z = ptrtoint ptr %1 to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.aa, align 8, !tbaa !268
  %i.ab = and i64 %i.g, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.ad, align 4, !tbaa !268
  %i.ae = and i64 %i.k, -2
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.o, ptr noundef %i.ac, ptr noundef %i.af) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %._crit_edge, %bb.h, %bb.a
  %.sroa.021.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.z, %bb.h ], [ %i.ag, %._crit_edge ], [ 1, %bb.c ]
  ret i64 %.sroa.021.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE34TransformBinaryConditionalOperatorEPNS_25BinaryConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1724
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 2 uses
  %i.i = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.i, align 4, !tbaa !2489
  %.not = icmp eq i32 %.val.val, 0
  %i.j = and i64 %i.c, -2
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  br i1 %.not, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %i.g, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1724
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %1 to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 8, !tbaa !268
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.t, align 4, !tbaa !268
  %i.u = and i64 %i.g, -2
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i10, ptr noundef %i.k, ptr noundef null, ptr noundef %i.v) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.b, %bb.a
  %.sroa.016.1 = phi i64 [ 1, %bb.a ], [ %i.r, %bb.f ], [ %i.w, %._crit_edge ], [ 1, %bb.b ]
  ret i64 %.sroa.016.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !196
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.sroa.0.0.copyload.i11 = load i64, ptr %1, align 8, !tbaa !196 ; 3 uses
  %i.e = icmp ult i64 %.sroa.0.0.copyload.i11, 16
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !2484
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 32, ptr %i.g, align 8, !tbaa !2485
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.h, align 8, !tbaa !2486
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !2487
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.j, align 4, !tbaa !2488
  %i.k = inttoptr i64 %.sroa.0.0.copyload.i11 to ptr
  %i.l = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i11) #36
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !2485
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.c, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.m) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.b, %bb.c
  %i.p = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.k, ptr nonnull %i.a) ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, label %bb.d

_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !2484
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.u = load i64, ptr %i.g, align 8, !tbaa !2485
  %i.v = load i64, ptr %i.h, align 8, !tbaa !2486
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.t, i64 %i.p, i32 noundef %i.x) #36 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %3, align 8, !tbaa !2484  ; 2 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !2486
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ac, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, %bb.d
  %i.ad = phi ptr [ %i.aa, %bb.d ], [ %.pre, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.y, %bb.d ], [ null, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ]
  %.not.i = icmp eq ptr %i.ad, %i.f
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond.i = or i1 %.not.i, %i.ae
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 12 uses
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !252
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bl [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 59, label %bb.bk
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
    i8 27, label %bb.af
    i8 28, label %bb.ag
    i8 29, label %bb.ah
    i8 30, label %bb.ai
    i8 31, label %bb.aj
    i8 32, label %bb.ak
    i8 33, label %bb.al
    i8 34, label %bb.am
    i8 35, label %bb.an
    i8 36, label %bb.ao
    i8 37, label %bb.ap
    i8 38, label %bb.aq
    i8 39, label %bb.ar
    i8 40, label %bb.as
    i8 58, label %bb.bj
    i8 42, label %bb.at
    i8 43, label %bb.au
    i8 44, label %bb.av
    i8 45, label %bb.aw
    i8 46, label %bb.ax
    i8 47, label %bb.ay
    i8 48, label %bb.az
    i8 49, label %bb.ba
    i8 50, label %bb.bb
    i8 51, label %bb.bc
    i8 52, label %bb.bd
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 56, label %bb.bh
    i8 57, label %bb.bi
  ]

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread: ; preds = %bb.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = and i64 %i.a, -16
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !252
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -8
  %i.k = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.j) #36, !inline_history !7136
  %i.l = ptrtoint ptr %3 to i64
  %i.m = icmp ne ptr %3, null
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = udiv i64 %i.o, %i.p
  %i.r = add i64 %i.q, %i.n
  %i.s = mul i64 %i.r, %i.p
  %i.t = load ptr, ptr %i.g, align 16, !tbaa !252 ; 3 uses
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.w = and i64 %i.v, 15
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, label %bb.d

_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  switch i8 %i.z, label %bb.d [
    i8 51, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.aa = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #36, !inline_history !7136
  %i.ab = extractvalue { ptr, ptr } %i.aa, 1
  %.sroa.0.0.copyload.i.i.i.i486 = load i32, ptr %i.u, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i.i.i486, ptr %i.ab, align 4, !tbaa !268
  br label %bb.e

bb.c:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.ac = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #36, !inline_history !7136
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  %.sroa.0.0.copyload.i.i.i29.i = load i32, ptr %i.u, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i.i29.i, ptr %i.ad, align 4, !tbaa !268
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.ae = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.t, ptr %i.u), !inline_history !7136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.037.0.i = phi i64 [ %i.v, %bb.b ], [ %i.ae, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.037.0.i, 16
  br i1 %i.af, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20RebuildQualifiedTypeENS_8QualTypeENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.037.0.i, ptr %2, ptr %3), !inline_history !7136 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  %spec.select.i = select i1 %i.ah, i64 0, i64 %i.ag
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ai = getelementptr i8, ptr %2, i64 32
  %.val = load i64, ptr %i.ai, align 16, !tbaa !196
  %i.aj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ak = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.am = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformArrayParameterTypeERNS_14TypeLocBuilderENS_21ArrayParameterTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.an = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE32TransformDependentSizedArrayTypeERNS_14TypeLocBuilderENS_26DependentSizedArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ao = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformIncompleteArrayTypeERNS_14TypeLocBuilderENS_22IncompleteArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ap = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformVariableArrayTypeERNS_14TypeLocBuilderENS_20VariableArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19TransformAtomicTypeERNS_14TypeLocBuilderENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ar = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23TransformAttributedTypeERNS_14TypeLocBuilderENS_17AttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19TransformBitIntTypeERNS_14TypeLocBuilderENS_13BitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE25TransformBlockPointerTypeERNS_14TypeLocBuilderENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.au = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformCountAttributedTypeERNS_14TypeLocBuilderENS_22CountAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.av = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformBuiltinTypeERNS_14TypeLocBuilderENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aw = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #36
  %i.ax = extractvalue { ptr, ptr } %i.aw, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.ax, align 4, !tbaa !268
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ay = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21TransformDecltypeTypeERNS_14TypeLocBuilderENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.az = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE17TransformAutoTypeERNS_14TypeLocBuilderENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ba = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE42TransformDeducedTemplateSpecializationTypeERNS_14TypeLocBuilderENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bb = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE34TransformDependentAddressSpaceTypeERNS_14TypeLocBuilderENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDependentBitIntTypeERNS_14TypeLocBuilderENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bd = tail call fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull readonly %2, ptr readonly %3, i1 noundef zeroext false, i64 0, ptr noundef null), !inline_history !7137
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE36TransformDependentSizedExtVectorTypeERNS_14TypeLocBuilderENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bf = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDependentVectorTypeERNS_14TypeLocBuilderENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bg = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformFunctionNoProtoTypeERNS_14TypeLocBuilderENS_22FunctionNoProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bh = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformFunctionProtoTypeERNS_14TypeLocBuilderENS_20FunctionProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bi = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE35TransformHLSLAttributedResourceTypeERNS_14TypeLocBuilderENS_29HLSLAttributedResourceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformMacroQualifiedTypeERNS_14TypeLocBuilderENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bk = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformConstantMatrixTypeERNS_14TypeLocBuilderENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bl = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE33TransformDependentSizedMatrixTypeERNS_14TypeLocBuilderENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ai:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bm = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aj:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bn = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ak:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bo = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.al:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang14TypeLocBuilder12pushFullCopyENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.am:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformObjCTypeParamTypeERNS_14TypeLocBuilderENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.an:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE29TransformOverflowBehaviorTypeERNS_14TypeLocBuilderENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.br = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformPackExpansionTypeERNS_14TypeLocBuilderENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bs = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE25TransformPackIndexingTypeERNS_14TypeLocBuilderENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aq:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bt = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE18TransformParenTypeERNS_14TypeLocBuilderENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ar:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bu = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE17TransformPipeTypeERNS_14TypeLocBuilderENS_11PipeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.as:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bv = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformPointerTypeERNS_14TypeLocBuilderENS_14PointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.at:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bw = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformReferenceTypeERNS_14TypeLocBuilderENS_16ReferenceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !7138
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
end_hunk_8
begin_hunk_9_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE:bb.a
  %i.bv = and i64 %.sroa.061.0, -16
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !252 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.by, align 16
  %.not.i51 = icmp eq i8 %i.bz, 30
  br i1 %.not.i51, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i.i.i.i52 = load i64, ptr %i.ca, align 8, !tbaa !196
  %i.cb = and i64 %.sroa.0.0.copyload.i.i.i.i52, -16
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !252
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i8, ptr %i.ce, align 16
  %i.cg = icmp eq i8 %i.cf, 30
  br i1 %i.cg, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %.critedge2

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.n
  %i.ch = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bx) #36 ; 2 uses
  %.not39 = icmp eq ptr %i.ch, null
  br i1 %.not39, label %.critedge2, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88: ; preds = %bb.m, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.1.i91 = phi ptr [ %i.ch, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %i.bx, %bb.m ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.1.i91, i64 32
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.ci, align 16, !tbaa !196 ; 2 uses
  %.not98 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i53
  br i1 %.not98, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88
  %i.cj = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.0.0.copyload.i53, i64 noundef 0, i32 noundef 1) #36 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.n, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %bb.o, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.061.0, i64 noundef 16, i32 noundef 8) #36
  %i.cl = extractvalue { ptr, ptr } %i.ck, 1      ; 2 uses
  %.sroa.0.0.copyload.i57 = load i32, ptr %3, align 8, !tbaa !268
  store i32 %.sroa.0.0.copyload.i57, ptr %i.cl, align 8, !tbaa !268
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.u, ptr %i.cm, align 8, !tbaa !2891
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge2, %bb.a
  %.sroa.085.2 = phi i64 [ 0, %bb.a ], [ 0, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 0, %bb.b ], [ 0, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %.sroa.061.0, %.critedge2 ]
  ret i64 %.sroa.085.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !196 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #36
  %i.e = icmp ne i64 %i.c, 0
  %i.f = zext i1 %i.e to i64                      ; 2 uses
  %i.g = sub i64 %i.c, %i.f
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = udiv i64 %i.g, %i.h
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %i.h
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.n = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.m, ptr %i.l) ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.p, align 4, !tbaa !2489
  %.not = icmp eq i32 %.val.val, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %2 to i64
  %.sroa.0.0.copyload.i.i.i.i9 = load i64, ptr %i.a, align 16, !tbaa !196 ; 2 uses
  %i.r = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i9) #36 ; 0 uses
  %.not30 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i.i.i.i9
  br i1 %.not30, label %bb.d, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.val8.pre = load ptr, ptr %0, align 8, !tbaa !3339
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b
  %.val8 = phi ptr [ %.val8.pre, %..critedge_crit_edge ], [ %.val, %bb.b ]
  %i.s = getelementptr i8, ptr %.val8, i64 232
  %.val8.val = load ptr, ptr %i.s, align 8, !tbaa !1048
  %i.t = tail call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.val8.val, i64 %i.n) #36 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sroa.017.0 = phi i64 [ %i.t, %.critedge ], [ %i.q, %bb.c ] ; 2 uses
  %i.v = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.017.0, i64 noundef 4, i32 noundef 4) #36
  %i.w = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i.i14 = load i32, ptr %3, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i.i14, ptr %i.w, align 4, !tbaa !268
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge, %bb.a
  %.sroa.029.1 = phi i64 [ 0, %bb.a ], [ %.sroa.017.0, %bb.d ], [ 0, %.critedge ]
  ret i64 %.sroa.029.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.1327", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.3297", align 8 ; 5 uses
  %6 = alloca %"class.clang::ObjCObjectTypeLoc", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.3291", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallVector.3179", align 8 ; 10 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %10 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  %11 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !196 ; 2 uses
  %i.c = ptrtoint ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16             ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 1016
  %i.h = lshr i32 %i.e, 24
  %i.i = add nuw nsw i32 %i.h, 20
  %.lhs.trunc.i.i.i.i = add nuw nsw i32 %i.i, %i.g
  %.zext.i.i.i.i = and i32 %.lhs.trunc.i.i.i.i, 2040
  %i.j = add nuw nsw i32 %.zext.i.i.i.i, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.k, %i.c                       ; 2 uses
  %i.m = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #36
  %i.n = icmp ne i64 %i.l, 0
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %i.p = sub i64 %i.l, %i.o
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = udiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  %i.t = mul i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.w = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.v, ptr %i.u) ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  br i1 %i.x, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i81 = load i64, ptr %i.b, align 8, !tbaa !196 ; 2 uses
  %i.y = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i81) #36 ; 0 uses
  %i.z = icmp ne i64 %i.w, %.sroa.0.0.copyload.i.i.i.i81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.ac, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.d, align 16
  %i.ae = lshr i32 %i.ad, 19
  %i.af = and i32 %i.ae, 127                      ; 2 uses
  %.not196 = icmp eq i32 %i.af, 0
  br i1 %.not196, label %.thread191, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.au = zext nneg i32 %i.af to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.066199 = phi i1 [ %i.z, %.lr.ph ], [ %.369.jt4, %bb.y ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2436 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !tbaa !196 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.n

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !252 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 16
  %i.be = icmp eq i8 %i.bd, 36
  br i1 %i.be, label %._crit_edge216, label %bb.n

._crit_edge216:                                   ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !3339
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.al, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.am, align 8, !tbaa !154
  store i32 2, ptr %i.an, align 4, !tbaa !155
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.0.0.copyload.i90 = load i64, ptr %i.bf, align 16, !tbaa !196
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_8QualTypeERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, i64 %.sroa.0.0.copyload.i90, ptr noundef nonnull align 8 dereferenceable(16) %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.0.0.copyload.i.i.i.i91 = load i64, ptr %i.bg, align 16, !tbaa !196 ; 2 uses
  %i.bh = ptrtoint ptr %i.ay to i64
  %i.bi = add i64 %i.bh, 4                        ; 2 uses
  %i.bj = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i91) #36
  %i.bk = icmp ne i64 %i.bi, 0
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  %i.bm = sub i64 %i.bi, %i.bl
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = udiv i64 %i.bm, %i.bn
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i91 to ptr
  store ptr %i.bs, ptr %9, align 8
  store ptr %i.br, ptr %i.ao, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !196
  %i.bv = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #36 ; 0 uses
  %i.bw = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #36 ; 0 uses
  %.val79 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.bx = getelementptr inbounds nuw i8, ptr %.val79, i64 13800 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !268 ; 2 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.ap, ptr %10, align 8, !tbaa !2484
  store i64 32, ptr %i.aq, align 8, !tbaa !2485
  store i64 32, ptr %i.ar, align 8, !tbaa !2486
  store i32 0, ptr %i.as, align 8, !tbaa !2487
  store i8 0, ptr %i.at, align 4, !tbaa !2488
  %i.by = load ptr, ptr %9, align 8, !tbaa !2860
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %i.bz) #36
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = load i64, ptr %i.aq, align 8, !tbaa !2485
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.d, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.d:                                             ; preds = %._crit_edge216
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.cb) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %._crit_edge216, %bb.d
  %.sroa.041.0.copyload = load ptr, ptr %9, align 8, !tbaa !1814
  %.sroa.242.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !1814
  %i.ce = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %10, ptr %.sroa.041.0.copyload, ptr %.sroa.242.0.copyload) ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 16
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1, label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.cj = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %i.ce, i32 %i.bu, i1 noundef zeroext true) #36 ; 2 uses
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.cj, i64 noundef 4, i32 noundef 4) #36
  %i.cl = extractvalue { ptr, ptr } %i.ck, 1
  %.sroa.0.0.copyload.i96 = load i32, ptr %i.ay, align 8, !tbaa !268
  store i32 %.sroa.0.0.copyload.i96, ptr %i.cl, align 4, !tbaa !268
  %i.cm = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.cp = load i64, ptr %i.aq, align 8, !tbaa !2485
  %i.cq = load i64, ptr %i.ar, align 8, !tbaa !2486
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.co, i64 %i.cj, i32 noundef %i.cs) #36 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %10, align 8, !tbaa !2484
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !2486
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cx, i64 %i.cr, i1 false)
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.cz = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i97 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i97, label %bb.g, label %bb.f, !prof !271

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ct)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

bb.g:                                             ; preds = %bb.e
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %7, align 8, !tbaa !153
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  store ptr %i.ct, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4: ; preds = %bb.g, %bb.f
  %i.df = load ptr, ptr %10, align 8, !tbaa !2484 ; 3 uses
  %.not.i98.jt4 = icmp eq ptr %i.df, %i.ap
  %i.dg = icmp eq ptr %i.df, null
  %or.cond.i.jt4 = or i1 %.not.i98.jt4, %i.dg
  br i1 %or.cond.i.jt4, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4, label %bb.h

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.dh = load ptr, ptr %10, align 8, !tbaa !2484 ; 3 uses
  %.not.i98.jt1 = icmp eq ptr %i.dh, %i.ap
  %i.di = icmp eq ptr %i.dh, null
  %or.cond.i.jt1 = or i1 %.not.i98.jt1, %i.di
  br i1 %or.cond.i.jt1, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @_ZdaPv(ptr noundef nonnull %i.df) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #38
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1

_ZN5clang14TypeLocBuilderD2Ev.exit.jt4:           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.dj = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.al
  br i1 %i.dk, label %bb.l, label %bb.j

_ZN5clang14TypeLocBuilderD2Ev.exit.jt1:           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.dl = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.al
  br i1 %i.dm, label %bb.m, label %bb.k

bb.j:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @free(ptr noundef %i.dj) #36
  br label %bb.l

bb.k:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @free(ptr noundef %i.dl) #36
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.loopexit

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store ptr %i.ag, ptr %11, align 8, !tbaa !2484
  store i64 32, ptr %i.ah, align 8, !tbaa !2485
  store i64 32, ptr %i.ai, align 8, !tbaa !2486
  store i32 0, ptr %i.aj, align 8, !tbaa !2487
  store i8 0, ptr %i.ak, align 4, !tbaa !2488
  %i.dn = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #36
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = load i64, ptr %i.ah, align 8, !tbaa !2485
  %i.dq = icmp ult i64 %i.dp, %i.do
  br i1 %i.dq, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit107

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %11, i64 noundef %i.do) #36
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit107

_ZN5clang14TypeLocBuilder7reserveEm.exit107:      ; preds = %bb.n, %bb.o
  %i.dr = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %11, ptr %i.az, ptr nonnull %i.ay) ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  br i1 %i.ds, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit112.jt1, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit107
  %i.dt = icmp eq i64 %i.dr, %.sroa.0.0.copyload.i
  br i1 %i.dt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.du = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.dv = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i111 = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i111, label %bb.s, label %bb.r, !prof !271

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ax)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit112.jt4

bb.s:                                             ; preds = %bb.q
  %i.dw = zext i32 %i.du to i64
  %i.dx = load ptr, ptr %7, align 8, !tbaa !153
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %i.ax, ptr %i.dy, align 1
end_hunk_9
begin_hunk_10_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i92, %bb.s, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i102, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i113
  %.sroa.6.0.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i92 ], [ %.0.copyload.i14.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i102 ], [ %.0.copyload.i.i.i93, %bb.s ], [ %.0.copyload.i16.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i113 ]
  call void @_ZN5clang12CXXScopeSpec6ExtendERNS_10ASTContextEPNS_17NamespaceBaseDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %.0.i, i32 %.sroa.0.0.i.i68.ph, i32 %.sroa.6.0.i.i) #36
  br label %bb.bg

bb.v:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.ei = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #36
  call void @_ZN5clang12CXXScopeSpec10MakeGlobalERNS_10ASTContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.eh, i32 %i.ei) #36
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit: ; preds = %bb.h
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !2497, !noalias !7272 ; 3 uses
  %i.ek = load ptr, ptr %i.z, align 8, !tbaa !2498, !noalias !7272 ; 2 uses
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !1817, !noalias !7272 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i118, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.en, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !268, !noalias !7273
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i124, label %.loopexit.i.i.i118, !prof !269

.lr.ph.i.i.i.i.i124:                              ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.fg, %bb.x ], [ %i.et, %bb.w ]
  %.017.i.i.i.i.i125 = phi i32 [ %i.ff, %bb.x ], [ %i.es, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1665, !noalias !7273
  %i.fd = icmp eq ptr %i.fc, %i.ap
  br i1 %i.fd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126, label %bb.x, !prof !271

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i124
  %i.fe = add nuw i32 %.017.i.i.i.i.i125, 1
  %i.ff = and i32 %i.fe, %i.en                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !268, !noalias !7273
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i124, label %.loopexit.i.i.i118, !prof !272

.loopexit.i.i.i118:                               ; preds = %bb.x, %bb.w, %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.fn = zext i32 %i.el to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126: ; preds = %.lr.ph.i.i.i.i.i124
  %.pre.i127 = zext i32 %i.el to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126, %.loopexit.i.i.i118
  %.pre-phi.i120 = phi i64 [ %.pre.i127, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126 ], [ %i.fn, %.loopexit.i.i.i118 ]
  %.lcssa.sink.i.i.i121 = phi ptr [ %i.fb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126 ], [ %i.fo, %.loopexit.i.i.i118 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.pre-phi.i120
  %.not.i122 = icmp eq ptr %.lcssa.sink.i.i.i121, %i.fp
  br i1 %.not.i122, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i121, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119, %bb.y
  %.0.i123 = phi ptr [ %i.fr, %bb.y ], [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119 ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.fv = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #36
  %i.fw = load i64, ptr %12, align 8, !tbaa !2929 ; 5 uses
  %i.fx = icmp ugt i64 %i.fw, 7
  br i1 %i.fx, label %bb.z, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148
    i32 2, label %.lr.ph.i.i.i134.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129: ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128
  %i.gb = icmp samesign ult i64 %i.fw, 2
  br i1 %i.gb, label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i.i.i130 = load i32, ptr %i.gc, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148: ; preds = %bb.z
  %i.gd = and i64 %i.fw, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.3.0.copyload.i.i.i150 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i149, align 8, !tbaa !1042 ; 2 uses
  %.not8.i.i.i151 = icmp eq i64 %.sroa.3.0.copyload.i.i.i150, 0
  br i1 %.not8.i.i.i151, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140, label %.lr.ph.i.i.i134.preheader

.lr.ph.i.i.i134.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148, %bb.z
  %storemerge9.i.i.i136.ph = phi i64 [ 2, %bb.z ], [ %.sroa.3.0.copyload.i.i.i150, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148 ]
  br label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %.lr.ph.i.i.i134.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142
  %.010.i.i.i135 = phi i32 [ %i.gi, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142 ], [ 0, %.lr.ph.i.i.i134.preheader ]
  %storemerge9.i.i.i136 = phi i64 [ %.sroa.3.0.i.i.i.i143, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142 ], [ %storemerge9.i.i.i136.ph, %.lr.ph.i.i.i134.preheader ] ; 4 uses
  %i.gf = icmp ugt i64 %storemerge9.i.i.i136, 7   ; 2 uses
  %i.gg = and i64 %storemerge9.i.i.i136, 6
  %i.gh = icmp eq i64 %i.gg, 0
  %spec.select.i.i.i.i137 = select i1 %i.gh, i32 12, i32 8
  %.0.i.i.i.i138 = select i1 %i.gf, i32 %spec.select.i.i.i.i137, i32 4
  %i.gi = add i32 %.0.i.i.i.i138, %.010.i.i.i135  ; 2 uses
  br i1 %i.gf, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139

bb.ab:                                            ; preds = %.lr.ph.i.i.i134
  %i.gj = trunc i64 %storemerge9.i.i.i136 to i32
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gk, 3
  switch i32 %i.gl, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i64 %storemerge9.i.i.i136, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i145 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.3.0.copyload.i.i.i.i146 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i145, align 8, !tbaa !1042
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i143 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i146, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i144 = icmp eq i64 %.sroa.3.0.i.i.i.i143, 0
  br i1 %.not.i.i.i144, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139, label %.lr.ph.i.i.i134, !llvm.loop !67

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142, %bb.ab, %bb.ab, %.lr.ph.i.i.i134
  %i.go = add i32 %i.gi, 4
  %i.gp = zext i32 %i.go to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148, %bb.z
  %i.gq = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148 ], [ 4, %bb.z ], [ %i.gp, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139 ]
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.0.copyload.i14.i.i141 = load i32, ptr %i.gs, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152: ; preds = %bb.z
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i15.i.i153 = load ptr, ptr %i.gt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.gu = and i64 %i.fw, -8
  %i.gv = inttoptr i64 %i.gu to ptr
  store ptr %i.gv, ptr %7, align 8, !tbaa !2860
  store ptr %.0.copyload.i15.i.i153, ptr %i.ab, align 8, !tbaa !2859
  %i.gw = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #36 ; 0 uses
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i16.i.i154 = load i32, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152
  %.sroa.6.0.i.i131 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129 ], [ %.0.copyload.i14.i.i141, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140 ], [ %.0.copyload.i.i.i130, %bb.aa ], [ %.0.copyload.i16.i.i154, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152 ]
  call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.fu, ptr noundef %.0.i123, i32 %i.fv, i32 %.sroa.6.0.i.i131) #36
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.gz = and i64 %.sroa.0.0.copyload.i, -8       ; 3 uses
  %i.ha = inttoptr i64 %i.gz to ptr               ; 9 uses
  %.0.copyload.i.i = load ptr, ptr %.sroa.2.0.copyload.i, align 1 ; 7 uses
  store ptr %i.ha, ptr %13, align 8
  store ptr %.0.copyload.i.i, ptr %i.r, align 8
  %i.hb = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i157 = icmp eq i64 %i.hb, 0             ; 2 uses
  br i1 %.not.i.i157, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.am

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !252
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i8, ptr %i.hd, align 16
  %i.hf = icmp eq i8 %i.he, 20
  br i1 %i.hf, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hg, align 16, !tbaa !1042 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2932 ; 2 uses
  %.not285 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not285, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i.i, ptr %i.hi, i64 %3, ptr noundef %4) ; 2 uses
  %i.hk = extractvalue { i64, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { i64, ptr } %i.hj, 1
  %.not286 = icmp eq i64 %i.hk, 0
  br i1 %.not286, label %.critedge53, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0 = phi ptr [ %i.hi, %bb.ad ], [ %i.hl, %bb.ae ]
  %.sroa.0244.0 = phi i64 [ 0, %bb.ad ], [ %i.hk, %bb.ae ]
  %.1 = phi ptr [ %4, %bb.ad ], [ null, %bb.ae ]
  %.sroa.043.1 = phi i64 [ %3, %bb.ad ], [ 0, %bb.ae ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %11, i64 %.sroa.0244.0, ptr %.sroa.8.0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2934
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 16
  %.sroa.0.0.copyload.i162 = load i32, ptr %i.ho, align 8, !tbaa !268
  %i.hp = load i64, ptr %12, align 8, !tbaa !2929 ; 5 uses
  %i.hq = icmp ugt i64 %i.hp, 7
  br i1 %i.hq, label %bb.ag, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163

bb.ag:                                            ; preds = %bb.af
  %i.hr = trunc i64 %i.hp to i32
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = and i32 %i.hs, 3
  switch i32 %i.ht, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182
    i32 2, label %.lr.ph.i.i.i168.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163: ; preds = %bb.af
  %i.hu = icmp samesign ult i64 %i.hp, 2
  br i1 %i.hu, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i.i.i164 = load i32, ptr %i.hv, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182: ; preds = %bb.ag
  %i.hw = and i64 %i.hp, -8
  %i.hx = inttoptr i64 %i.hw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i183 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.3.0.copyload.i.i.i184 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i183, align 8, !tbaa !1042 ; 2 uses
  %.not8.i.i.i185 = icmp eq i64 %.sroa.3.0.copyload.i.i.i184, 0
  br i1 %.not8.i.i.i185, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174, label %.lr.ph.i.i.i168.preheader

.lr.ph.i.i.i168.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182, %bb.ag
  %storemerge9.i.i.i170.ph = phi i64 [ 2, %bb.ag ], [ %.sroa.3.0.copyload.i.i.i184, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182 ]
  br label %.lr.ph.i.i.i168

.lr.ph.i.i.i168:                                  ; preds = %.lr.ph.i.i.i168.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176
  %.010.i.i.i169 = phi i32 [ %i.ib, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176 ], [ 0, %.lr.ph.i.i.i168.preheader ]
  %storemerge9.i.i.i170 = phi i64 [ %.sroa.3.0.i.i.i.i177, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176 ], [ %storemerge9.i.i.i170.ph, %.lr.ph.i.i.i168.preheader ] ; 4 uses
  %i.hy = icmp ugt i64 %storemerge9.i.i.i170, 7   ; 2 uses
  %i.hz = and i64 %storemerge9.i.i.i170, 6
  %i.ia = icmp eq i64 %i.hz, 0
  %spec.select.i.i.i.i171 = select i1 %i.ia, i32 12, i32 8
  %.0.i.i.i.i172 = select i1 %i.hy, i32 %spec.select.i.i.i.i171, i32 4
  %i.ib = add i32 %.0.i.i.i.i172, %.010.i.i.i169  ; 2 uses
  br i1 %i.hy, label %bb.ai, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173

bb.ai:                                            ; preds = %.lr.ph.i.i.i168
  %i.ic = trunc i64 %storemerge9.i.i.i170 to i32
  %i.id = lshr i32 %i.ic, 1
  %i.ie = and i32 %i.id, 3
  switch i32 %i.ie, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173
    i32 3, label %bb.aj
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = and i64 %storemerge9.i.i.i170, -8
  %i.ig = inttoptr i64 %i.if to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i179 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i.i.i.i180 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i179, align 8, !tbaa !1042
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176: ; preds = %bb.aj, %bb.ai
  %.sroa.3.0.i.i.i.i177 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i180, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %.not.i.i.i178 = icmp eq i64 %.sroa.3.0.i.i.i.i177, 0
  br i1 %.not.i.i.i178, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173, label %.lr.ph.i.i.i168, !llvm.loop !67

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176, %bb.ai, %bb.ai, %.lr.ph.i.i.i168
  %i.ih = add i32 %i.ib, 4
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182, %bb.ag
  %i.ij = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182 ], [ 4, %bb.ag ], [ %i.ii, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173 ]
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %.0.copyload.i14.i.i175 = load i32, ptr %i.il, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186: ; preds = %bb.ag
  %i.im = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i15.i.i187 = load ptr, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.in = and i64 %i.hp, -8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %6, align 8, !tbaa !2860
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.copyload.i15.i.i187, ptr %i.ip, align 8, !tbaa !2859
  %i.iq = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #36 ; 0 uses
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !2930
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i16.i.i188 = load i32, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163, %bb.ah, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186
  %.sroa.6.0.i.i165 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163 ], [ %.0.copyload.i14.i.i175, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174 ], [ %.0.copyload.i.i.i164, %bb.ah ], [ %.0.copyload.i16.i.i188, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186 ]
  %i.it = inttoptr i64 %.sroa.043.1 to ptr
  store ptr %i.it, ptr %14, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hn, ptr %i.iu, align 8, !tbaa !2936
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.0.0.copyload.i162, ptr %i.iv, align 8, !tbaa !268
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %.sroa.6.0.i.i165, ptr %i.iw, align 4, !tbaa !268
  %i.ix = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.iy = call noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ix, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %.1, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #36
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189
  %i.iz = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.jc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.jb) #36 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189, %bb.ak
  %.sroa.13.1 = phi ptr [ %i.je, %bb.ak ], [ null, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189 ]
  %.sroa.0260.1 = phi i64 [ %i.jd, %bb.ak ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %.critedge53

bb.am:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  store i64 %i.gz, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  store ptr %i.s, ptr %16, align 8, !tbaa !2484
  store i64 32, ptr %i.t, align 8, !tbaa !2485
  store i64 32, ptr %i.u, align 8, !tbaa !2486
  store i32 0, ptr %i.v, align 8, !tbaa !2487
  store i8 0, ptr %i.w, align 4, !tbaa !2488
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jf, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not.i.i157, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.an
  %i.jg = load ptr, ptr %i.ha, align 8, !tbaa !252
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i8, ptr %i.jh, align 16
  switch i8 %i.ji, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.ao
    i8 20, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jj = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i64 %3, ptr noundef %4, i1 noundef zeroext true), !inline_history !7267
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jk = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i1 noundef zeroext false, i64 %3, ptr noundef %4), !inline_history !7267
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.an
  %i.jl = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr %i.ha, ptr %.0.copyload.i.i), !inline_history !7267
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.ao, %bb.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.jl, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.jj, %bb.ao ], [ %i.jk, %bb.ap ] ; 4 uses
  store i64 %.sroa.014.0.i, ptr %15, align 8, !tbaa !196
  %i.jm = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.jm, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.jn = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 232
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.jq = load i64, ptr %i.t, align 8, !tbaa !2485
  %i.jr = load i64, ptr %i.u, align 8, !tbaa !2486 ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2632 ; 3 uses
  %i.ju = add i64 %i.js, 7
  %i.jv = and i64 %i.ju, -8                       ; 2 uses
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !1580 ; 2 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = add i64 %i.jv, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 2640
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1581
  %i.kb = icmp ult i64 %i.jy, %i.ka
  br i1 %i.kb, label %bb.ar, label %bb.as, !prof !271

bb.ar:                                            ; preds = %bb.aq
  %i.kc = inttoptr i64 %i.jy to ptr
  store ptr %i.kc, ptr %i.jt, align 8, !tbaa !1580
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.kd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, i64 noundef %i.js, i64 noundef %i.jv, i8 3)
  %.pre.i190 = load i64, ptr %i.u, align 8, !tbaa !2486
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit: ; preds = %bb.ar, %bb.as
  %i.ke = phi i64 [ %i.jr, %bb.ar ], [ %.pre.i190, %bb.as ]
  %.0.i.i.i.i191 = phi ptr [ %i.jw, %bb.ar ], [ %i.kd, %bb.as ] ; 3 uses
  %i.kf = load ptr, ptr %16, align 8, !tbaa !2484
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i191, ptr align 1 %i.kg, i64 %i.js, i1 false)
  %i.kh = inttoptr i64 %.sroa.014.0.i to ptr      ; 2 uses
  store ptr %i.kh, ptr %13, align 8, !tbaa !1814
  store ptr %.0.i.i.i.i191, ptr %i.r, align 8, !tbaa !1814
  br label %bb.at

bb.at:                                            ; preds = %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit, %bb.am
  %.sroa.2.0.copyload372 = phi ptr [ %.0.i.i.i.i191, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %.0.copyload.i.i, %bb.am ] ; 2 uses
  %.sroa.07.0.copyload370 = phi ptr [ %i.kh, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.ha, %bb.am ] ; 2 uses
  %.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.014.0.i, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.gz, %bb.am ]
  %i.ki = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !252 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 17
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 4
  %.not282 = icmp eq i16 %i.kn, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ko, align 8, !tbaa !196 ; 2 uses
  br i1 %.not282, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kp = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !252
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i8, ptr %i.ks, align 16            ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 49
  %.pre368.pre376 = load ptr, ptr %0, align 8, !tbaa !3339 ; 3 uses
  br i1 %i.ku, label %.critedge55, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre368.pre376, i64 216
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = and i64 %i.kx, 8192
  %.not = icmp ne i64 %i.ky, 0
  %i.kz = icmp eq i8 %i.kt, 47
  %or.cond = and i1 %i.kz, %.not
  br i1 %or.cond, label %.thread, label %bb.bc

bb.aw:                                            ; preds = %bb.at
  %.pre368.pre = load ptr, ptr %0, align 8, !tbaa !3339 ; 2 uses
  %.pre378 = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %.pre379 = inttoptr i64 %.pre378 to ptr
  %.pre504 = load ptr, ptr %.pre379, align 16, !tbaa !252
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre504, i64 16
  %.pre505 = load i8, ptr %.phi.trans.insert, align 16
  %i.la = icmp eq i8 %.pre505, 47
  br i1 %i.la, label %.thread, label %.critedge55

.thread:                                          ; preds = %bb.av, %bb.aw
  %.pre368530 = phi ptr [ %.pre368.pre, %bb.aw ], [ %.pre368.pre376, %bb.av ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre368530, i64 8
  %i.lc = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 %i.lc, i32 noundef 6967) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #36
  %.pre367 = load ptr, ptr %0, align 8, !tbaa !3339
  %.sroa.07.0.copyload.pre = load ptr, ptr %13, align 8, !tbaa !1814
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !1814
  br label %.critedge55

.critedge55:                                      ; preds = %bb.au, %.thread, %bb.aw
  %.sroa.2.0.copyload = phi ptr [ %.sroa.2.0.copyload.pre, %.thread ], [ %.sroa.2.0.copyload372, %bb.aw ], [ %.sroa.2.0.copyload372, %bb.au ]
  %.sroa.07.0.copyload = phi ptr [ %.sroa.07.0.copyload.pre, %.thread ], [ %.sroa.07.0.copyload370, %bb.aw ], [ %.sroa.07.0.copyload370, %bb.au ]
  %i.ld = phi ptr [ %.pre367, %.thread ], [ %.pre368.pre, %bb.aw ], [ %.pre368.pre376, %bb.au ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 232
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.lg = load i64, ptr %12, align 8, !tbaa !2929 ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 7
  br i1 %i.lh, label %bb.ax, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i199

bb.ax:                                            ; preds = %.critedge55
  %i.li = trunc i64 %i.lg to i32
  %i.lj = lshr i32 %i.li, 1
  %i.lk = and i32 %i.lj, 3
  switch i32 %i.lk, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i210
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i222
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218
    i32 2, label %.lr.ph.i.i.i204.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i199: ; preds = %.critedge55
  %i.ll = icmp samesign ult i64 %i.lg, 2
  br i1 %i.ll, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit225, label %bb.ay

bb.ay:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i199
  %i.lm = load ptr, ptr %i.q, align 8, !tbaa !2930
  %.0.copyload.i.i.i200 = load i32, ptr %i.lm, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit225

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218: ; preds = %bb.ax
  %i.ln = and i64 %i.lg, -8
  %i.lo = inttoptr i64 %i.ln to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i219 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.3.0.copyload.i.i.i220 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i219, align 8, !tbaa !1042 ; 2 uses
  %.not8.i.i.i221 = icmp eq i64 %.sroa.3.0.copyload.i.i.i220, 0
  br i1 %.not8.i.i.i221, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i210, label %.lr.ph.i.i.i204.preheader

.lr.ph.i.i.i204.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218, %bb.ax
  %storemerge9.i.i.i206.ph = phi i64 [ 2, %bb.ax ], [ %.sroa.3.0.copyload.i.i.i220, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218 ]
  br label %.lr.ph.i.i.i204

.lr.ph.i.i.i204:                                  ; preds = %.lr.ph.i.i.i204.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212
  %.010.i.i.i205 = phi i32 [ %i.ls, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212 ], [ 0, %.lr.ph.i.i.i204.preheader ]
  %storemerge9.i.i.i206 = phi i64 [ %.sroa.3.0.i.i.i.i213, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212 ], [ %storemerge9.i.i.i206.ph, %.lr.ph.i.i.i204.preheader ] ; 4 uses
  %i.lp = icmp ugt i64 %storemerge9.i.i.i206, 7   ; 2 uses
  %i.lq = and i64 %storemerge9.i.i.i206, 6
  %i.lr = icmp eq i64 %i.lq, 0
  %spec.select.i.i.i.i207 = select i1 %i.lr, i32 12, i32 8
  %.0.i.i.i.i208 = select i1 %i.lp, i32 %spec.select.i.i.i.i207, i32 4
  %i.ls = add i32 %.0.i.i.i.i208, %.010.i.i.i205  ; 2 uses
  br i1 %i.lp, label %bb.az, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209

bb.az:                                            ; preds = %.lr.ph.i.i.i204
  %i.lt = trunc i64 %storemerge9.i.i.i206 to i32
  %i.lu = lshr i32 %i.lt, 1
  %i.lv = and i32 %i.lu, 3
  switch i32 %i.lv, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209
    i32 3, label %bb.ba
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212
  ]

bb.ba:                                            ; preds = %bb.az
  %i.lw = and i64 %storemerge9.i.i.i206, -8
  %i.lx = inttoptr i64 %i.lw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i215 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.3.0.copyload.i.i.i.i216 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i215, align 8, !tbaa !1042
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212: ; preds = %bb.ba, %bb.az
  %.sroa.3.0.i.i.i.i213 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i216, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %.not.i.i.i214 = icmp eq i64 %.sroa.3.0.i.i.i.i213, 0
  br i1 %.not.i.i.i214, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209, label %.lr.ph.i.i.i204, !llvm.loop !67

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212, %bb.az, %bb.az, %.lr.ph.i.i.i204
  %i.ly = add i32 %i.ls, 4
  %i.lz = zext i32 %i.ly to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i210
end_hunk_10
