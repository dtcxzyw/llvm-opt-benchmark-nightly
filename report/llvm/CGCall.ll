Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGCall?download=true
inline.NumInlined: 11709
inline.NumDeleted: 6226
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL20appendParameterTypesRKN5clang7CodeGen12CodeGenTypesERN4llvm15SmallVectorImplINS_7CanQualINS_4TypeEEEEERNS5_INS_12FunctionType16ExtParameterInfoEEENS6_INS_17FunctionProtoTypeEEE:bb.a

_ZN4llvm15SmallVectorImplIN5clang7CanQualINS1_4TypeEEEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.ax, %bb.d ], [ %.pre53, %bb.e ] ; 3 uses
  %i.be = phi i64 [ %i.e, %bb.d ], [ %.pre51, %bb.e ] ; 4 uses
  %i.bf = phi ptr [ %i.c, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.pre-phi
  %i.bi = lshr i64 %i.be, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.bi, 1
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.lobit.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = add i64 %i.bk, 7
  %i.bm = and i64 %i.bl, -8
  %i.bn = inttoptr i64 %i.bm to ptr               ; 4 uses
  %i.bo = and i64 %i.be, 1073741824
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang7CanQualINS1_4TypeEEEE7reserveEm.exit
  %i.bp = load i24, ptr %i.bn, align 8            ; 2 uses
  %i.bq = lshr i24 %i.bp, 10
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i24 %i.bq, 1
  %i.br = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.br
  %i.bu = lshr i24 %i.bp, 11
  %.lobit.i.i.i.i.i.i.i.i.i = and i24 %i.bu, 1
  %i.bv = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i: ; preds = %bb.f, %_ZN4llvm15SmallVectorImplIN5clang7CanQualINS1_4TypeEEEE7reserveEm.exit
  %i.bw = phi ptr [ %i.bt, %bb.f ], [ %i.bn, %_ZN4llvm15SmallVectorImplIN5clang7CanQualINS1_4TypeEEEE7reserveEm.exit ]
  %i.bx = phi i64 [ %i.bv, %bb.f ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang7CanQualINS1_4TypeEEEE7reserveEm.exit ]
  %i.by = and i64 %i.be, 503316480
  %i.bz = icmp eq i64 %i.by, 67108864
  br i1 %i.bz, label %bb.g, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

bb.g:                                             ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %i.ca = load i24, ptr %i.bn, align 8
  %i.cb = and i24 %i.ca, 1023
  %i.cc = zext nneg i24 %i.cb to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i: ; preds = %bb.g, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.g ], [ 0, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i ]
  %i.cd = trunc i64 %i.be to i32
  %i.ce = lshr i32 %i.cd, 25
  %i.cf = and i32 %i.ce, 15                       ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang7CodeGen12CodeGenTypes31arrangeBlockFunctionDeclarationEPKNS_17FunctionProtoTypeERKNS0_15FunctionArgListE, i64 %i.cg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %spec.select.i.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i.i = add nsw i32 %i.cf, -6
  %switch.i.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i.i, 3
  %i.cj = zext i1 %switch.i.i.i.i.i.i.i to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %switch.ext
  %.not48 = icmp eq i64 %.pre-phi, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit30
  %.pre52 = load ptr, ptr %i.b, align 16, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i
  %i.cn = phi ptr [ %.pre52, %._crit_edge.loopexit ], [ %i.bf, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i ]
  %i.co = load i32, ptr %i.au, align 8, !tbaa !75
  tail call fastcc void @_ZL27addExtParameterInfosForCallRN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEEEPKNS1_17FunctionProtoTypeEjj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.cn, i32 noundef %i.av, i32 noundef %i.co)
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit30 ] ; 3 uses
  %i.cp = load ptr, ptr %i.b, align 16, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 8, !tbaa !64 ; 2 uses
  %i.cs = load i32, ptr %i.au, align 8, !tbaa !75 ; 2 uses
  %i.ct = load i32, ptr %i.az, align 4, !tbaa !76
  %.not.i = icmp ult i32 %i.cs, %i.ct
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !110

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.sroa.0.0.copyload.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit

bb.j:                                             ; preds = %bb.h
  %i.cu = zext i32 %i.cs to i64
  %i.cv = load ptr, ptr %1, align 8, !tbaa !74
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.cw, align 1
  %i.cx = load i32, ptr %i.au, align 8, !tbaa !75
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.au, align 8, !tbaa !75
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit: ; preds = %bb.i, %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !102
  %i.db = and i8 %i.da, 32
  %.not47 = icmp eq i8 %i.db, 0
  br i1 %.not47, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit30, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !63, !nonnull !59, !align !60
  %i.dd = tail call i64 @_ZNK5clang10ASTContext20getCanonicalSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.dc) #27 ; 2 uses
  %i.de = load i32, ptr %i.au, align 8, !tbaa !75 ; 2 uses
  %i.df = load i32, ptr %i.az, align 4, !tbaa !76
  %.not.i29 = icmp ult i32 %i.de, %i.df
  br i1 %.not.i29, label %bb.m, label %bb.l, !prof !110

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.dd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit30

bb.m:                                             ; preds = %bb.k
  %i.dg = zext i32 %i.de to i64
  %i.dh = load ptr, ptr %1, align 8, !tbaa !74
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  store i64 %i.dd, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.au, align 8, !tbaa !75
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.au, align 8, !tbaa !75
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit30

_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit30: ; preds = %bb.m, %bb.l, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7CanQualINS1_4TypeEEELb1EE9push_backES4_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %.pre-phi
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !1548

bb.n:                                             ; preds = %._crit_edge, %_ZN4llvm15SmallVectorImplIN5clang7CanQualINS1_4TypeEEEE6appendINS1_15CanTypeIteratorIPKNS1_8QualTypeEEEvEEvT_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6insertEPS3_mS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sub i64 0, %2
  %i.b = load ptr, ptr %0, align 8, !tbaa !98     ; 4 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !99   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = add i64 %i.g, %2                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !100
  %.not.i.i.i = icmp ugt i64 %i.j, %i.l           ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit.i, !prof !122

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.m, i64 noundef %i.j, i64 noundef 1) #27
  %.pre4.pre.i = load i64, ptr %i.f, align 8, !tbaa !99
  %.pre50.pre = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit.i: ; preds = %bb.c, %bb.b
  %.pre50 = phi ptr [ %i.b, %bb.b ], [ %.pre50.pre, %bb.c ] ; 2 uses
  %.pre4.i = phi i64 [ %i.g, %bb.b ], [ %.pre4.pre.i, %bb.c ] ; 2 uses
  %.not7.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendEmS3_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pre50, i64 %.pre4.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 %3, i64 %2, i1 false), !tbaa !64
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !99
  %.pre49 = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendEmS3_.exit

_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendEmS3_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit.i, %.lr.ph.preheader.i.i.i.i
  %i.o = phi ptr [ %.pre50, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit.i ], [ %.pre49, %.lr.ph.preheader.i.i.i.i ]
  %i.p = phi i64 [ %.pre4.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit.i ], [ %.pre.i, %.lr.ph.preheader.i.i.i.i ]
  %i.q = add i64 %i.p, %2
  store i64 %i.q, ptr %i.f, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  br label %_ZSt6fill_nIPN5clang12FunctionType16ExtParameterInfoEmS2_ET_S4_T0_RKT1_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit, !prof !122

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.s, i64 noundef %i.j, i64 noundef 1) #27
  %.pre = load ptr, ptr %0, align 8, !tbaa !98
  %.pre48 = load i64, ptr %i.f, align 8, !tbaa !99
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %i.g, %bb.d ], [ %.pre48, %bb.e ] ; 9 uses
  %i.u = phi ptr [ %i.b, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.e ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t ; 5 uses
  %gepdiff = sub nsw i64 %i.t, %i.e               ; 5 uses
  %.not = icmp ult i64 %gepdiff, %2
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.a ; 6 uses
  %i.z = add i64 %i.t, %2                         ; 2 uses
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !100
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.g, label %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE7reserveEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ac, i64 noundef %i.z, i64 noundef 1) #27
  %.pre.i33 = load i64, ptr %i.f, align 8, !tbaa !99
  br label %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE7reserveEm.exit.i: ; preds = %bb.g, %bb.f
  %i.ad = phi i64 [ %i.t, %bb.f ], [ %.pre.i33, %bb.g ] ; 3 uses
  %.not7.i.i.i.i.i = icmp eq i64 %2, 0            ; 2 uses
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit, label %iter.check

iter.check:                                       ; preds = %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE7reserveEm.exit.i
  %i.ae = load ptr, ptr %0, align 8, !tbaa !98    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad ; 6 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = ptrtoaddr ptr %i.ae to i64
  %i.ah = add i64 %i.ad, %2
  %i.ai = add i64 %i.ah, %i.ag
  %i.aj = add i64 %i.t, %i.v
  %i.ak = sub i64 %i.aj, %i.ai
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check56 = icmp ult i64 %2, 32
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.am = getelementptr i8, ptr %i.af, i64 %n.vec
  %i.an = getelementptr i8, ptr %i.y, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.y, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep57, align 1, !tbaa !64
  %wide.load58 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !64
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !64
  store <16 x i8> %wide.load58, ptr %i.ap, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE18uninitialized_copyISt13move_iteratorIPS3_ES7_EEvT_S9_T0_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1553

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %2, -8                       ; 4 uses
  %i.ar = getelementptr i8, ptr %i.af, i64 %n.vec60
  %i.as = getelementptr i8, ptr %i.y, i64 %n.vec60
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %next.gep62 = getelementptr i8, ptr %i.af, i64 %index61
  %next.gep63 = getelementptr i8, ptr %i.y, i64 %index61
  %wide.load64 = load <8 x i8>, ptr %next.gep63, align 1, !tbaa !64
  store <8 x i8> %wide.load64, ptr %next.gep62, align 1, !tbaa !64
  %index.next65 = add nuw i64 %index61, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1550

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %2, %n.vec60
  br i1 %cmp.n66, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE18uninitialized_copyISt13move_iteratorIPS3_ES7_EEvT_S9_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.am, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.an, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 3 uses
  %i.au = add i64 %i.t, %i.v                      ; 2 uses
  %.sroa.04.08.i.i.i.i.i.ph69 = ptrtoaddr ptr %.sroa.04.08.i.i.i.i.i.ph to i64 ; 2 uses
  %i.av = sub i64 %i.au, %.sroa.04.08.i.i.i.i.i.ph69
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.aw = load i8, ptr %.sroa.04.08.i.i.i.i.i.prol, align 1, !tbaa !64
  store i8 %i.aw, ptr %.09.i.i.i.i.i.prol, align 1, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1551

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.unr = phi ptr [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.prol ]
  %i.az = sub i64 %.sroa.04.08.i.i.i.i.i.ph69, %i.au
  %i.ba = icmp ugt i64 %i.az, -8
  br i1 %i.ba, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE18uninitialized_copyISt13move_iteratorIPS3_ES7_EEvT_S9_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.bb = load i8, ptr %.sroa.04.08.i.i.i.i.i, align 1, !tbaa !64
  store i8 %i.bb, ptr %.09.i.i.i.i.i, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 1
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !64
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !64
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 3
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !64
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !64
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 5
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 5
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !64
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 6
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 6
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !64
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 7
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 7
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !64
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.7 = icmp eq ptr %i.bx, %i.x
  br i1 %.not.i.i.i.i.i.7, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE18uninitialized_copyISt13move_iteratorIPS3_ES7_EEvT_S9_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1552

_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE18uninitialized_copyISt13move_iteratorIPS3_ES7_EEvT_S9_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre11.i = load i64, ptr %i.f, align 8, !tbaa !99
  br label %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit

_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE18uninitialized_copyISt13move_iteratorIPS3_ES7_EEvT_S9_T0_.exit.loopexit.i
  %i.bz = phi i64 [ %.pre11.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE18uninitialized_copyISt13move_iteratorIPS3_ES7_EEvT_S9_T0_.exit.loopexit.i ], [ %i.ad, %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE7reserveEm.exit.i ]
  %i.ca = add i64 %i.bz, %2
  store i64 %i.ca, ptr %i.f, align 8, !tbaa !99
  %i.cb = add i64 %i.e, %2
  %gepdiff46 = sub i64 %i.t, %i.cb                ; 4 uses
  %i.cc = icmp sgt i64 %gepdiff46, 1
  br i1 %i.cc, label %bb.h, label %bb.i, !prof !110

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit
  %i.cd = sub nsw i64 0, %gepdiff46
  %i.ce = getelementptr inbounds i8, ptr %i.x, i64 %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.w, i64 %gepdiff46, i1 false)
  br label %_ZSt13move_backwardIPN5clang12FunctionType16ExtParameterInfoES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit
  %i.cf = icmp eq i64 %gepdiff46, 1
  br i1 %i.cf, label %bb.j, label %_ZSt13move_backwardIPN5clang12FunctionType16ExtParameterInfoES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.ch = load i8, ptr %i.w, align 1, !tbaa !64
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !64
  br label %_ZSt13move_backwardIPN5clang12FunctionType16ExtParameterInfoES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPN5clang12FunctionType16ExtParameterInfoES3_ET0_T_S5_S4_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %.not7.i.i.i.i.i, label %_ZSt6fill_nIPN5clang12FunctionType16ExtParameterInfoEmS2_ET_S4_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i34

.lr.ph.preheader.i.i.i.i34:                       ; preds = %_ZSt13move_backwardIPN5clang12FunctionType16ExtParameterInfoES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %3, i64 %2, i1 false), !tbaa !64
  br label %_ZSt6fill_nIPN5clang12FunctionType16ExtParameterInfoEmS2_ET_S4_T0_RKT1_.exit

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12FunctionType16ExtParameterInfoELb1EE28reserveForParamAndGetAddressERS3_m.exit
  %i.ci = add i64 %i.t, %2                        ; 2 uses
  store i64 %i.ci, ptr %i.f, align 8, !tbaa !99
  %.not.i.i35 = icmp samesign eq i64 %i.e, %i.t
  br i1 %.not.i.i35, label %.lr.ph.preheader.i.i.i, label %.lr.ph.preheader.i.i.i.i36

.lr.ph.preheader.i.i.i.i36:                       ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ci
  %i.ck = sub i64 0, %gepdiff
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %i.w, i64 %gepdiff, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %3, i64 %gepdiff, i1 false), !tbaa !64
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.i36, %bb.k
  %i.cm = sub nuw i64 %2, %gepdiff
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 %3, i64 %i.cm, i1 false), !tbaa !64
  br label %_ZSt6fill_nIPN5clang12FunctionType16ExtParameterInfoEmS2_ET_S4_T0_RKT1_.exit

_ZSt6fill_nIPN5clang12FunctionType16ExtParameterInfoEmS2_ET_S4_T0_RKT1_.exit: ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.preheader.i.i.i.i34, %_ZSt13move_backwardIPN5clang12FunctionType16ExtParameterInfoES3_ET0_T_S5_S4_.exit, %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendEmS3_.exit
  %.1 = phi ptr [ %i.r, %_ZN4llvm15SmallVectorImplIN5clang12FunctionType16ExtParameterInfoEE6appendEmS3_.exit ], [ %i.w, %.lr.ph.preheader.i.i.i.i34 ], [ %i.w, %_ZSt13move_backwardIPN5clang12FunctionType16ExtParameterInfoES3_ET0_T_S5_S4_.exit ], [ %i.w, %.lr.ph.preheader.i.i.i ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZNK5clang12FunctionDecl10isVariadicEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN5clang7CodeGen12CodeGenTypes25arrangeCXXConstructorCallERKNS0_11CallArgListEPKNS_18CXXConstructorDeclENS_11CXXCtorTypeEjjb(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1560) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.760", align 8 ; 11 uses
  %8 = alloca %"class.llvm::SmallVector.810", align 8 ; 9 uses
  %9 = alloca %"class.llvm::ArrayRef.756", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !76
end_hunk_0
