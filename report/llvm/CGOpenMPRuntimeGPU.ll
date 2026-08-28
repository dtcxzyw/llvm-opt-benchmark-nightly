Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGOpenMPRuntimeGPU?download=true
inline.NumInlined: 5588
inline.NumDeleted: 3039
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5clang7CodeGen18CGOpenMPRuntimeGPU25getAddressOfLocalVariableERNS0_15CodeGenFunctionEPKNS_7VarDeclE:bb.a

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.loopexit.i65: ; preds = %.lr.ph.i.i.i.i.i63
  %.pre.i66 = zext i32 %i.in to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i58

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i58: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.loopexit.i65, %.loopexit.i.i.i57
  %.pre-phi.i59 = phi i64 [ %.pre.i66, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.loopexit.i65 ], [ %i.jq, %.loopexit.i.i.i57 ]
  %.lcssa.sink.i.i.i60 = phi ptr [ %i.je, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.loopexit.i65 ], [ %i.jr, %.loopexit.i.i.i57 ] ; 2 uses
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %.pre-phi.i59
  %i.jt = icmp eq ptr %.lcssa.sink.i.i.i60, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i60, i64 8
  %spec.select = select i1 %i.jt, ptr %i.gn, ptr %i.ju
  %.sink16.i62 = load i32, ptr %spec.select, align 8, !tbaa !227 ; 2 uses
  %i.jv = load i32, ptr %i.gn, align 8, !tbaa !210
  %.not41 = icmp eq i32 %.sink16.i62, %i.jv
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.068.1, i64 8
  br i1 %.not41, label %bb.x, label %bb.ae, !llvm.loop !1810

bb.ae:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i58
  %i.jx = zext i32 %.sink16.i62 to i64
  %i.jy = load ptr, ptr %i.gl, align 8, !tbaa !208
  %i.jz = getelementptr inbounds nuw [64 x i8], ptr %i.jy, i64 %i.jx
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ka, i64 48, i1 false), !tbaa.struct !1384
  br label %bb.af

.critedge43:                                      ; preds = %bb.z, %_ZN5clangneENS_22specific_attr_iteratorINS_20OMPReferencedVarAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, %bb.aa, %bb.y, %bb.v
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false), !alias.scope !1811
  %i.kc = load i8, ptr %i.kb, align 8, !alias.scope !1811
  %i.kd = and i8 %i.kc, -64
  store i8 %i.kd, ptr %i.kb, align 8, !alias.scope !1811
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ke, i8 0, i64 16, i1 false), !alias.scope !1811
  br label %bb.af

bb.af:                                            ; preds = %bb.q, %.critedge43, %bb.u, %bb.ae, %bb.f, %bb.g, %_ZNK5clang8QualType15getAddressSpaceEv.exit, %bb.m
  ret void
}

declare noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK5clang10ASTContext21getTargetAddressSpaceENS_6LangASE(ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #3

declare void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, i32 noundef, i64, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen18CGOpenMPRuntimeGPU16functionFinishedERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(5152) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.anon.2072, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noalias !1814
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1814
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1814
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3904
  %i.i = load i32, ptr %i.h, align 8, !noalias !1814
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.e, ptr %i.d
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.i, i32 4 ; 2 uses
  %i.k = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5eraseERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.m = add i32 %.sink.i.i.i.i.i, -1             ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !443  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.m, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !227
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5eraseERKS3_.exit, !prof !442

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.ab = phi i64 [ %i.ah, %bb.c ], [ %i.u, %bb.b ]
  %.017.i.i.i = phi i32 [ %i.ag, %bb.c ], [ %i.t, %bb.b ]
  %i.ac = getelementptr inbounds nuw [288 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !443
  %i.ae = icmp eq ptr %i.n, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6doFindIS3_EEPSC_RKT_.exit.i, label %bb.c, !prof !444

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = add nuw i32 %.017.i.i.i, 1
  %i.ag = and i32 %i.af, %i.m                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !227
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5eraseERKS3_.exit, !prof !445

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6doFindIS3_EEPSC_RKT_.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E21eraseFromFilledBucketIZNSE_21eraseFromFilledBucketEPSC_EUlRSC_E_EEvSG_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5eraseERKS3_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5eraseERKS3_.exit: ; preds = %bb.c, %bb.a, %bb.b, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8FunctionEN5clang7CodeGen18CGOpenMPRuntimeGPU12FunctionDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6doFindIS3_EEPSC_RKT_.exit.i
  call void @_ZN5clang7CodeGen15CGOpenMPRuntime16functionFinishedERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(3696) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1) #20
  ret void
}

declare void @_ZN5clang7CodeGen15CGOpenMPRuntime16functionFinishedERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(3696), ptr noundef nonnull align 8 dereferenceable(6288)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang7CodeGen18CGOpenMPRuntimeGPU30getDefaultDistScheduleAndChunkERNS0_15CodeGenFunctionERKNS_16OMPLoopDirectiveERNS_28OpenMPDistScheduleClauseKindERPN4llvm5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5152) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %3, align 4, !tbaa !1819
  %i.e = tail call noundef ptr @_ZN5clang7CodeGen18CGOpenMPRuntimeGPU16getGPUNumThreadsERNS0_15CodeGenFunctionE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(6288) %1)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !473, !nonnull !452, !align !477
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !481, !nonnull !452, !align !477
  %i.i = tail call i64 @_ZNK5clang10ASTContext21getIntTypeForBitwidthEjj(ptr noundef nonnull align 8 dereferenceable(23904) %i.h, i32 noundef 32, i32 noundef 0) #20
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1273
  %i.l = tail call { ptr, i64 } @_ZN5clang11OMPChildren11getChildrenEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1298
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !456
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.p, align 4, !tbaa !227
  %i.q = tail call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction20EmitScalarConversionEPN4llvm5ValueENS_8QualTypeES5_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %i.e, i64 %i.i, i64 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i16) #20
  store ptr %i.q, ptr %4, align 8, !tbaa !825
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZN5clang7CodeGen15CodeGenFunction20EmitScalarConversionEPN4llvm5ValueENS_8QualTypeES5_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef, i64, i64, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang7CodeGen18CGOpenMPRuntimeGPU26getDefaultScheduleAndChunkERNS0_15CodeGenFunctionERKNS_16OMPLoopDirectiveERNS_24OpenMPScheduleClauseKindERPKNS_4ExprE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6288) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !1821
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 32, ptr %i.a, align 8, !tbaa !1480
  store i64 1, ptr %5, align 8, !tbaa !456
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !473, !nonnull !452, !align !477
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !481, !nonnull !452, !align !477 ; 2 uses
  %i.f = tail call i64 @_ZNK5clang10ASTContext21getIntTypeForBitwidthEjj(ptr noundef nonnull align 8 dereferenceable(23904) %i.e, i32 noundef 32, i32 noundef 0) #20
  %i.g = call noundef ptr @_ZN5clang14IntegerLiteral6CreateERKNS_10ASTContextERKN4llvm5APIntENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 %i.f, i32 0) #20
  store ptr %i.g, ptr %4, align 8, !tbaa !824
  %i.h = load i32, ptr %i.a, align 8, !tbaa !1480
  %i.i = icmp ugt i32 %i.h, 64
  br i1 %i.i, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !456    ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN4llvm5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.j) #21
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

declare noundef ptr @_ZN5clang14IntegerLiteral6CreateERKNS_10ASTContextERKN4llvm5APIntENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(12), i64, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang7CodeGen18CGOpenMPRuntimeGPU34adjustTargetSpecificDataForLambdasERNS0_15CodeGenFunctionERKNS_22OMPExecutableDirectiveE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %.sroa.4.i110 = alloca [52 x i8], align 4       ; 4 uses
  %4 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::CodeGen::LValue", align 8 ; 12 uses
  %6 = alloca %"class.clang::CodeGen::Address", align 8 ; 4 uses
  %.sroa.4226 = alloca [36 x i8], align 4         ; 4 uses
  %7 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 5 uses
  %.sroa.0212 = alloca { %"class.llvm::PointerIntPair.173", ptr, %"class.clang::CharUnits" }, align 8 ; 2 uses
  %.sroa.3 = alloca [23 x i8], align 1            ; 2 uses
  %8 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %.sroa.4.i.sroa.0 = alloca [28 x i8], align 4   ; 4 uses
  %9 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %10 = alloca %"class.clang::CodeGen::LValue", align 8 ; 14 uses
  %.sroa.0213 = alloca { %"class.llvm::PointerIntPair.173", ptr, %"class.clang::CharUnits" }, align 8 ; 2 uses
  %.sroa.6217 = alloca [23 x i8], align 1         ; 2 uses
  %11 = alloca %"class.llvm::SmallVector.1426", align 8 ; 8 uses
  %.sroa.6147 = alloca [28 x i8], align 4         ; 6 uses
  %.sroa.10155 = alloca [23 x i8], align 1        ; 6 uses
  %.sroa.17 = alloca [3 x i8], align 1            ; 5 uses
  %.sroa.22 = alloca [36 x i8], align 4           ; 7 uses
  %12 = alloca %"class.clang::CodeGen::LValue", align 8 ; 17 uses
  %.sroa.4137.sroa.0 = alloca [28 x i8], align 4  ; 4 uses
  %13 = alloca %"class.llvm::DenseMap.175", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %14 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %15 = alloca %"class.clang::CodeGen::LValue", align 8 ; 15 uses
  %16 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %17 = alloca %"class.clang::CodeGen::LValue", align 8 ; 15 uses
  %18 = alloca %"class.clang::CodeGen::Address", align 8 ; 8 uses
  %19 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.b, ptr %11, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !210
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !209
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1296
  call void @_ZN5clang23getOpenMPCaptureRegionsERN4llvm15SmallVectorImplINS0_3omp9DirectiveEEES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.f) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1273 ; 3 uses
  %i.i = load ptr, ptr %11, align 8, !tbaa !208   ; 5 uses
  %i.j = load i32, ptr %i.c, align 8, !tbaa !210
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.h, align 8, !tbaa !1278
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1297
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %.idx.i.i = shl nuw nsw i64 %i.k, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i
  %.01523.i.i = load ptr, ptr %i.s, align 8, !tbaa !1298 ; 2 uses
  %i.u = load i32, ptr %i.i, align 4, !tbaa !1365
  %.not1925.i.i = icmp eq i32 %i.u, 69
  br i1 %.not1925.i.i, label %_ZNK5clang11OMPChildren15getCapturedStmtEN4llvm3omp9DirectiveENS1_8ArrayRefIS3_EE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.01527.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.01523.i.i, %bb.a ] ; 2 uses
  %.01426.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.i, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01527.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.01527.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1300
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.01426.i.i, i64 4 ; 3 uses
  %.015.i.i = load ptr, ptr %i.z, align 8, !tbaa !1298 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aa, %i.t
  call void @llvm.assume(i1 %.not.i.i)
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1365
  %.not19.i.i = icmp eq i32 %i.ab, 69
  br i1 %.not19.i.i, label %_ZNK5clang11OMPChildren15getCapturedStmtEN4llvm3omp9DirectiveENS1_8ArrayRefIS3_EE.exit.i, label %.lr.ph.i.i

_ZNK5clang11OMPChildren15getCapturedStmtEN4llvm3omp9DirectiveENS1_8ArrayRefIS3_EE.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.015.lcssa.i.i = phi ptr [ %.01523.i.i, %bb.a ], [ %.015.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.ac = icmp eq ptr %i.i, %i.b
  br i1 %i.ac, label %_ZNK5clang22OMPExecutableDirective15getCapturedStmtEN4llvm3omp9DirectiveE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang11OMPChildren15getCapturedStmtEN4llvm3omp9DirectiveENS1_8ArrayRefIS3_EE.exit.i
  call void @free(ptr noundef nonnull %i.i) #20
  br label %_ZNK5clang22OMPExecutableDirective15getCapturedStmtEN4llvm3omp9DirectiveE.exit

_ZNK5clang22OMPExecutableDirective15getCapturedStmtEN4llvm3omp9DirectiveE.exit: ; preds = %_ZNK5clang11OMPChildren15getCapturedStmtEN4llvm3omp9DirectiveENS1_8ArrayRefIS3_EE.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ad = call noundef ptr @_ZNK5clang12CapturedStmt17getStoredCapturesEv(ptr noundef nonnull align 8 dereferenceable(32) %.015.lcssa.i.i) #20 ; 2 uses
  %i.ae = call noundef ptr @_ZNK5clang12CapturedStmt17getStoredCapturesEv(ptr noundef nonnull align 8 dereferenceable(32) %.015.lcssa.i.i) #20
  %i.af = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1300
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ah ; 2 uses
  %.not241 = icmp eq ptr %i.ad, %i.ai
  br i1 %.not241, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %_ZNK5clang22OMPExecutableDirective15getCapturedStmtEN4llvm3omp9DirectiveE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3048 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3056 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3068 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.4137.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4137.sroa.0, i64 4
  %.sroa.4.i.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.0, i64 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 33
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 64
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 72
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 80
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sroa.106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 92
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 96
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 136
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.8150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.10155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 33
  %.sroa.11158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 56
  %.sroa.12163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 72
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 80
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 88
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 89
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 92
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 96
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 100
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1912
  %.sroa.6147.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %.sroa.8150.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.10155.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %15, i64 33
  %.sroa.11158.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %.sroa.12163.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %.sroa.14.0..sroa_idx168.a = getelementptr inbounds nuw i8, ptr %15, i64 72
  %.sroa.15.0..sroa_idx172.a = getelementptr inbounds nuw i8, ptr %15, i64 80
  %.sroa.16.0..sroa_idx176.a = getelementptr inbounds nuw i8, ptr %15, i64 88
  %.sroa.17.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %15, i64 89
  %.sroa.18.0..sroa_idx182.a = getelementptr inbounds nuw i8, ptr %15, i64 92
  %.sroa.20.0..sroa_idx186.a = getelementptr inbounds nuw i8, ptr %15, i64 96
  %.sroa.22.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %15, i64 100
  %.sroa.23.0..sroa_idx192.a = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4280
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %.sroa.6147.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %.sroa.8150.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %.sroa.10155.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %17, i64 33
  %.sroa.11158.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %.sroa.12163.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %17, i64 64
  %.sroa.14.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %17, i64 72
  %.sroa.15.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %17, i64 80
  %.sroa.16.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %17, i64 88
  %.sroa.17.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %17, i64 89
  %.sroa.18.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %17, i64 92
  %.sroa.20.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %17, i64 96
  %.sroa.22.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %17, i64 100
  %.sroa.23.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %17, i64 136
  %.sroa.4.8..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %.sroa.4.i110, i64 4
  %.sroa.4.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.55.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.6.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.7.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.8.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %.sroa.106.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %5, i64 92
  %.sroa.11.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %5, i64 96
  %.sroa.12.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.sroa.22.4..sroa_idx281 = getelementptr inbounds nuw i8, ptr %.sroa.22, i64 4
  br label %bb.c

._crit_edge244:                                   ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, %_ZNK5clang22OMPExecutableDirective15getCapturedStmtEN4llvm3omp9DirectiveE.exit
  ret void

bb.c:                                             ; preds = %.lr.ph243, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread
  %.051242 = phi ptr [ %i.ad, %.lr.ph243 ], [ %i.ne, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread ] ; 3 uses
  %i.at = call noundef i32 @_ZNK5clang12CapturedStmt7Capture14getCaptureKindEv(ptr noundef nonnull align 8 dereferenceable(12) %.051242) #20
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.d, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.av = call noundef ptr @_ZNK5clang12CapturedStmt7Capture14getCapturedVarEv(ptr noundef nonnull align 8 dereferenceable(12) %.051242) #20 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 8, !tbaa !456
  %i.ax = and i64 %.sroa.0.0.copyload.i, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !456 ; 3 uses
  %i.bb = and i64 %i.ba, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !1390 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i8, ptr %i.be, align 16
  %i.bg = and i8 %i.bf, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.bg, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !456
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !1390
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i8, ptr %i.bl, align 16
  %i.bn = and i8 %i.bm, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.bn, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.e
  %i.bo = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bd) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.d
  %.1.i8.i = phi ptr [ %i.bo, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.bd, %bb.d ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.bq = load i24, ptr %i.bp, align 16
  %i.br = and i24 %i.bq, 1048576
  %.not4.i.i = icmp eq i24 %i.br, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bs, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !1390 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i8, ptr %i.bw, align 16
  %i.by = and i8 %i.bx, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.by, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i58
  %i.bz = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bv) #20
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i58
  %.1.i.i.i = phi ptr [ %i.bz, %bb.f ], [ %i.bv, %.lr.ph.i.i58 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.cb = load i24, ptr %i.ca, align 16
  %i.cc = and i24 %i.cb, 1048576
  %.not.i.i59 = icmp eq i24 %i.cc, 0
  br i1 %.not.i.i59, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i58, !llvm.loop !1473

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.cd, align 8, !tbaa !456
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.e, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %i.ba, %bb.e ], [ %i.ba, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.ce = and i64 %.sroa.0.0.in.i.sroa.speculated, -16
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !1390
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !456
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load ptr, ptr %i.cj, align 16, !tbaa !1390 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 16            ; 3 uses
  %i.cn = add i8 %i.cm, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cn, 3
  %.not.i7.i = icmp ne ptr %i.ck, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.co = and i8 %i.cm, 62
  %spec.select.i.i.i = icmp eq i8 %i.co, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.g, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1414 ; 3 uses
  %i.cr = icmp eq i8 %i.cm, 49
  br i1 %i.cr, label %bb.h, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.h:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = and i32 %i.ct, 127
  %i.cv = add nsw i32 %i.cu, -60
  %i.cw = icmp ult i32 %i.cv, 3
  br i1 %i.cw, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.h, %bb.g
  %i.cx = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cq) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cx, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.cq, ptr %i.cx ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %spec.select, i64 128 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1823 ; 2 uses
  %.not.i60 = icmp eq ptr %i.cz, null
  br i1 %.not.i60, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit:        ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = and i32 %i.db, 8388608
  %.not232 = icmp eq i32 %i.dc, 0
  br i1 %.not232, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !457, !noalias !1854 ; 2 uses
  %i.de = load ptr, ptr %i.ak, align 8, !tbaa !469, !noalias !1854 ; 2 uses
  %i.df = load i32, ptr %i.al, align 4, !tbaa !470, !noalias !1854 ; 3 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.loopexit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = add i32 %i.df, -1                       ; 2 uses
  %i.di = ptrtoint ptr %i.av to i64
  %i.dj = mul i64 %i.di, -4658895280553007687     ; 2 uses
  %i.dk = lshr i64 %i.dj, 31
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = and i32 %i.dh, %i.dm                    ; 3 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 5
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !227, !noalias !1865
  %i.ds = and i32 %i.dn, 31
  %i.dt = lshr i32 %i.dr, %i.ds
  %i.du = trunc i32 %i.dt to i1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !442

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %bb.k
  %i.dv = phi i64 [ %i.eb, %bb.k ], [ %i.do, %bb.j ] ; 2 uses
  %.017.i.i.i.i.i = phi i32 [ %i.ea, %bb.k ], [ %i.dn, %bb.j ]
  %i.dw = getelementptr inbounds nuw [56 x i8], ptr %i.dd, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !472, !noalias !1865
  %i.dy = icmp eq ptr %i.av, %i.dx
  br i1 %i.dy, label %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit, label %bb.k, !prof !444

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dz = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ea = and i32 %i.dz, %i.dh                    ; 3 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = lshr i64 %i.eb, 5
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !227, !noalias !1865
  %i.ef = and i32 %i.ea, 31
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = trunc i32 %i.eg to i1
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !445

.loopexit.i.i.i:                                  ; preds = %bb.k, %bb.j, %bb.i
  %i.ei = zext i32 %i.df to i64
  br label %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit

_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i
  %i.ej = phi i64 [ %i.ei, %.loopexit.i.i.i ], [ %i.dv, %.lr.ph.i.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw [56 x i8], ptr %i.dd, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0213, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false)
  %.sroa.5214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %.sroa.5214.0.copyload216 = load i8, ptr %.sroa.5214.0..sroa_idx215, align 8, !tbaa !456 ; 2 uses
  %.sroa.6217.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.ek, i64 33 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6217, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6217.0..sroa_idx218, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6147)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10155)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.22.4..sroa_idx281, i8 0, i64 32, i1 false)
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.aw, align 8, !tbaa !456 ; 2 uses
  %i.em = and i64 %.sroa.0.0.copyload.i61, -16
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !456 ; 2 uses
  %i.eq = and i64 %i.ep, -16
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load ptr, ptr %i.er, align 16, !tbaa !1390 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.0.0.copyload.i.i.i.i64 = load i64, ptr %i.et, align 8, !tbaa !456
  %i.eu = and i64 %.sroa.0.0.copyload.i.i.i.i64, -16
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !1390
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i8, ptr %i.ex, align 16
  %i.ez = and i8 %i.ey, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ez, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.aw, align 8, !tbaa !456 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.0)
  %i.fa = load ptr, ptr %i.am, align 8, !tbaa !473, !noalias !1866, !nonnull !452, !align !477
  call void @_ZN5clang7CodeGen13CodeGenModule17getTBAAAccessInfoENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CodeGen::TBAAAccessInfo") align 8 %9, ptr noundef nonnull align 8 dereferenceable(4008) %i.fa, i64 %.sroa.0.0.copyload.i65) #20, !noalias !1866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !noalias !1866
  %i.fb = load ptr, ptr %i.am, align 8, !tbaa !473, !noalias !1869, !nonnull !452, !align !477
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !481, !noalias !1869, !nonnull !452, !align !477
  %i.fe = and i64 %.sroa.0.0.copyload.i65, -16
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fg, align 8, !noalias !1872 ; 3 uses
  %i.fh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -16
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.fk, align 8, !tbaa !814, !noalias !1872
  %i.fl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -49
  br label %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit

_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.fl, %bb.m ], [ 0, %bb.l ]
  %i.fm = or i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i65
  %i.fn = and i64 %i.fm, 7
  %i.fo = call noundef i32 @_ZNK5clang10ASTContext17getObjCGCAttrKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fd, i64 %.sroa.0.0.copyload.i65) #20, !noalias !1872
  %i.fp = or i64 %.sroa.0.0.i.i.i.i.i.i, %i.fn
  %i.fq = shl i32 %i.fo, 4
  %i.fr = sext i32 %i.fq to i64
  %i.fs = or i64 %i.fp, %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.i.sroa.0.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0213, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6217, i64 23, i1 false)
  store i32 0, ptr %10, align 8, !tbaa !815, !noalias !1866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.sroa.0, i64 28, i1 false), !tbaa.struct !817, !noalias !1866
  store i8 %.sroa.5214.0.copyload216, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !1866
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !tbaa !818, !noalias !1866
  store i64 %.sroa.0.0.copyload.i65, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !456, !noalias !1866
  store i64 %i.fs, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !814, !noalias !1866
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !456, !noalias !1866
  store i32 2, ptr %.sroa.106.0..sroa_idx.i, align 4, !tbaa !819, !noalias !1866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !noalias !1866
  store ptr null, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !824, !noalias !1866
  call void @_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_6LValueE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %12, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.sroa.0144.0.copyload = load i32, ptr %12, align 8, !tbaa !815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6147, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6147.0..sroa_idx, i64 28, i1 false), !tbaa.struct !817
  %.sroa.8150.0.copyload = load i8, ptr %.sroa.8150.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10155, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10155.0..sroa_idx, i64 23, i1 false), !tbaa.struct !1583
  %.sroa.11158.0.copyload = load ptr, ptr %.sroa.11158.0..sroa_idx, align 8, !tbaa !456
  %.sroa.12163.0.copyload = load i64, ptr %.sroa.12163.0..sroa_idx, align 8, !tbaa !818
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !456
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !814
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.17, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.17.0..sroa_idx, i64 3, i1 false), !tbaa.struct !1875
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !819
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.22, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.22.0..sroa_idx, i64 36, i1 false), !tbaa.struct !1876
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !824
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.q

bb.n:                                             ; preds = %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit
  %i.ft = and i64 %.sroa.0.0.copyload.i61, 7
  %i.fu = or i64 %i.ft, %i.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4137.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0212, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6217.0..sroa_idx218, i64 23, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 16
  %i.fx = and i8 %i.fw, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i69 = icmp eq i8 %i.fx, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i69, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i76, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit88

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i76: ; preds = %bb.n
  %i.fy = load i24, ptr %i.fv, align 16
  %i.fz = and i24 %i.fy, 1048576
  %.not4.i.i78 = icmp eq i24 %i.fz, 0
  br i1 %.not4.i.i78, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i86, label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i76, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i83
  %.05.i.i80 = phi ptr [ %.1.i.i.i84, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i83 ], [ %i.es, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i76 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i80, i64 32
  %.0.copyload.i.i.i.i.i.i.i81 = load i64, ptr %i.ga, align 8
  %i.gb = and i64 %.0.copyload.i.i.i.i.i.i.i81, -16
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = load ptr, ptr %i.gc, align 16, !tbaa !1390 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i8, ptr %i.ge, align 16
  %i.gg = and i8 %i.gf, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i82 = icmp eq i8 %i.gg, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i82, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i83, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i79
  %i.gh = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gd) #20
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i83

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i83: ; preds = %bb.o, %.lr.ph.i.i79
  %.1.i.i.i84 = phi ptr [ %i.gh, %bb.o ], [ %i.gd, %.lr.ph.i.i79 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.i.i.i84, i64 16
  %i.gj = load i24, ptr %i.gi, align 16
  %i.gk = and i24 %i.gj, 1048576
  %.not.i.i85 = icmp eq i24 %i.gk, 0
  br i1 %.not.i.i85, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i86, label %.lr.ph.i.i79, !llvm.loop !1473

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i86: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i83, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i76
  %.0.lcssa.i.i87 = phi ptr [ %i.es, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i76 ], [ %.1.i.i.i84, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i83 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i87, i64 32
  %.sroa.0.0.in.i72.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i86 = load i64, ptr %i.gl, align 8, !tbaa !456
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit88

_ZNK5clang8QualType19getNonReferenceTypeEv.exit88: ; preds = %bb.n, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i86
  %.sroa.0.0.in.i72.sroa.speculated = phi i64 [ %.sroa.0.0.in.i72.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i86, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i86 ], [ %i.fu, %bb.n ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.gm = load ptr, ptr %i.am, align 8, !tbaa !473, !noalias !1877, !nonnull !452, !align !477
  call void @_ZN5clang7CodeGen13CodeGenModule17getTBAAAccessInfoENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CodeGen::TBAAAccessInfo") align 8 %7, ptr noundef nonnull align 8 dereferenceable(4008) %i.gm, i64 %.sroa.0.0.in.i72.sroa.speculated) #20, !noalias !1877
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4226)
  %.sroa.0225.0.copyload = load i32, ptr %7, align 8, !noalias !1877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4226, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4226.0..sroa_idx, i64 36, i1 false), !noalias !1877
  %i.gn = load ptr, ptr %i.am, align 8, !tbaa !473, !noalias !1880, !nonnull !452, !align !477
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 144
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !481, !noalias !1880, !nonnull !452, !align !477
  %i.gq = and i64 %.sroa.0.0.in.i72.sroa.speculated, -16
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i89 = load i64, ptr %i.gs, align 8, !noalias !1883 ; 3 uses
  %i.gt = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i89, 8
  %.not.i.i.i.i.i.i90 = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i90, label %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit88
  %i.gu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i89, -16
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i91 = load i64, ptr %i.gw, align 8, !tbaa !814, !noalias !1883
  %i.gx = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i91, -49
  br label %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit

_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit: ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit88, %bb.p
  %.sroa.0.0.i.i.i.i.i.i92 = phi i64 [ %i.gx, %bb.p ], [ 0, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit88 ]
  %i.gy = or i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i89, %.sroa.0.0.in.i72.sroa.speculated
  %i.gz = and i64 %i.gy, 7
  %i.ha = call noundef i32 @_ZNK5clang10ASTContext17getObjCGCAttrKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.gp, i64 %.sroa.0.0.in.i72.sroa.speculated) #20, !noalias !1883
  %i.hb = or i64 %.sroa.0.0.i.i.i.i.i.i92, %i.gz
  %i.hc = shl i32 %i.ha, 4
  %i.hd = sext i32 %i.hc to i64
  %i.he = or i64 %i.hb, %i.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.22, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4226, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4137.sroa.0.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0212, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10155, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.3, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4226)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6147, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4137.sroa.0, i64 28, i1 false), !tbaa.struct !817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4137.sroa.0)
  br label %bb.q

bb.q:                                             ; preds = %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit
  %.sroa.12163.0 = phi i64 [ %.sroa.12163.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ 0, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.14.0 = phi i64 [ %.sroa.14.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ %.sroa.0.0.in.i72.sroa.speculated, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.15.0 = phi i64 [ %.sroa.15.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ %i.he, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.23.0 = phi ptr [ %.sroa.23.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ null, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ %.sroa.0225.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.18.0 = phi i32 [ %.sroa.18.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ 2, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.16.0 = phi i8 [ %.sroa.16.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ 0, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.11158.0 = phi ptr [ %.sroa.11158.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ undef, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.8150.0 = phi i8 [ %.sroa.8150.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ %.sroa.5214.0.copyload216, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.0144.0 = phi i32 [ %.sroa.0144.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ], [ 0, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !1474
  call void @_ZNK5clang13CXXRecordDecl16getCaptureFieldsERN4llvm8DenseMapIPKNS_9ValueDeclEPNS_9FieldDeclENS1_12DenseMapInfoIS5_vEENS1_6detail12DenseMapPairIS5_S7_EEEERS7_(ptr noundef nonnull align 8 dereferenceable(144) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.hf = load ptr, ptr %i.a, align 8, !tbaa !1474
  %.not55 = icmp eq ptr %i.hf, null
  br i1 %.not55, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hg = load ptr, ptr %i.an, align 8, !tbaa !1706 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !198
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = call noundef ptr %i.hj(ptr noundef nonnull align 8 dereferenceable(112) %i.hg) #20, !inline_history !1886
  %.not233 = icmp eq ptr %i.hk, null
  br i1 %.not233, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store i32 %.sroa.0144.0, ptr %15, align 8, !tbaa !815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6147.0..sroa_idx148, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6147, i64 28, i1 false), !tbaa.struct !817
  store i8 %.sroa.8150.0, ptr %.sroa.8150.0..sroa_idx151, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10155.0..sroa_idx156, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10155, i64 23, i1 false), !tbaa.struct !1583
  store ptr %.sroa.11158.0, ptr %.sroa.11158.0..sroa_idx159, align 8, !tbaa !456
  store i64 %.sroa.12163.0, ptr %.sroa.12163.0..sroa_idx164, align 8, !tbaa !818
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx168.a, align 8, !tbaa !456
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx172.a, align 8, !tbaa !814
  store i8 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx176.a, align 8, !tbaa !456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.17.0..sroa_idx180, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.17, i64 3, i1 false), !tbaa.struct !1875
  store i32 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx182.a, align 4, !tbaa !819
  store i32 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx186.a, align 8, !tbaa !821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.22.0..sroa_idx190, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.22, i64 36, i1 false), !tbaa.struct !1876
  store ptr %.sroa.23.0, ptr %.sroa.23.0..sroa_idx192.a, align 8, !tbaa !824
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !1474
  call void @_ZN5clang7CodeGen15CodeGenFunction32EmitLValueForFieldInitializationENS0_6LValueEPKNS_9FieldDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %14, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %15, ptr noundef %i.hl) #20
  %i.hm = load ptr, ptr %i.ao, align 8, !tbaa !1887
  call void @_ZN5clang7CodeGen15CodeGenFunction17EmitStoreOfScalarEPN4llvm5ValueENS0_6LValueEb(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %i.hm, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %14, i1 noundef zeroext false) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.hn = load ptr, ptr %i.cy, align 8, !tbaa !1823 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i, label %._crit_edge, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i:    ; preds = %bb.t
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i32, ptr %i.ho, align 8
  %i.hq = and i32 %i.hp, 8388608
  %.not.i.i93 = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i93, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 128
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.hr, align 8 ; 4 uses
  %i.hs = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.split.i.i.i, label %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i

_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i: ; preds = %bb.u
  %i.hu = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.hv = inttoptr i64 %i.hu to ptr               ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !210
  %.not.i.i.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang13CXXRecordDecl8capturesEv.exit, label %bb.v

.split.i.i.i:                                     ; preds = %bb.u
  %i.hy = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i.i, 8
  %i.hz = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  %spec.select.i.i97 = select i1 %i.hy, ptr null, ptr %i.hz
  br label %_ZNK5clang13CXXRecordDecl8capturesEv.exit

bb.v:                                             ; preds = %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i
  %i.ia = load ptr, ptr %i.hv, align 8, !tbaa !208
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !1888
  br label %_ZNK5clang13CXXRecordDecl8capturesEv.exit

_ZNK5clang13CXXRecordDecl8capturesEv.exit:        ; preds = %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i, %.split.i.i.i, %bb.v
  %.0.i.i.i = phi ptr [ %i.ib, %bb.v ], [ %spec.select.i.i97, %.split.i.i.i ], [ null, %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 104
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = lshr i64 %i.id, 1
  %.idx = and i64 %i.ie, 524272                   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %.idx
  %.not56239 = icmp samesign eq i64 %.idx, 0
  br i1 %.not56239, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ai, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i, %bb.t, %_ZNK5clang13CXXRecordDecl8capturesEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ig = load i32, ptr %i.aq, align 4, !tbaa !1890 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.ii = load ptr, ptr %13, align 8, !tbaa !1891
  %i.ij = zext i32 %i.ig to i64                   ; 2 uses
  %i.ik = shl nuw nsw i64 %i.ij, 4
  %i.il = add nuw nsw i64 %i.ij, 31
  %i.im = lshr i64 %i.il, 3
  %i.in = and i64 %i.im, 1073741820
  %i.io = add nuw nsw i64 %i.in, %i.ik
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ii, i64 noundef %i.io, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %._crit_edge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6147)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10155)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

.lr.ph:                                           ; preds = %_ZNK5clang13CXXRecordDecl8capturesEv.exit, %bb.ai
  %.0240 = phi ptr [ %i.nd, %bb.ai ], [ %.0.i.i.i, %_ZNK5clang13CXXRecordDecl8capturesEv.exit ] ; 3 uses
  %i.ip = call noundef i32 @_ZNK5clang13LambdaCapture14getCaptureKindEv(ptr noundef nonnull align 8 dereferenceable(16) %.0240) #20
  %.not57 = icmp eq i32 %i.ip, 3
  br i1 %.not57, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %.lr.ph
  %.0.copyload.i.i.i.i98 = load i64, ptr %.0240, align 8
  %i.iq = and i64 %.0.copyload.i.i.i.i98, -8      ; 3 uses
  %i.ir = inttoptr i64 %i.iq to ptr               ; 4 uses
  %i.is = call noundef zeroext i1 @_ZNK5clang12CapturedStmt16capturesVariableEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(32) %.015.lcssa.i.i, ptr noundef %i.ir) #20
  br i1 %i.is, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.it = load ptr, ptr %13, align 8, !tbaa !1891, !noalias !1892 ; 2 uses
  %i.iu = load ptr, ptr %i.ap, align 8, !tbaa !1901, !noalias !1892 ; 2 uses
  %i.iv = load i32, ptr %i.aq, align 4, !tbaa !1890, !noalias !1892 ; 3 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.loopexit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ix = add i32 %i.iv, -1                       ; 2 uses
  %i.iy = mul i64 %i.iq, -4658895280553007687     ; 2 uses
  %i.iz = lshr i64 %i.iy, 31
  %i.ja = xor i64 %i.iz, %i.iy
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = and i32 %i.ix, %i.jb                    ; 3 uses
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = lshr i64 %i.jd, 5
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !227, !noalias !1902
  %i.jh = and i32 %i.jc, 31
  %i.ji = lshr i32 %i.jg, %i.jh
  %i.jj = trunc i32 %i.ji to i1
  br i1 %i.jj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !442

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %bb.aa
  %i.jk = phi i64 [ %i.jq, %bb.aa ], [ %i.jd, %bb.z ] ; 2 uses
  %.017.i.i.i.i = phi i32 [ %i.jp, %bb.aa ], [ %i.jc, %bb.z ]
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !1233, !noalias !1902
  %i.jn = icmp eq ptr %i.jm, %i.ir
  br i1 %i.jn, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEPNS2_9FieldDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit, label %bb.aa, !prof !444

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jo = add nuw i32 %.017.i.i.i.i, 1
  %i.jp = and i32 %i.jo, %i.ix                    ; 3 uses
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = lshr i64 %i.jq, 5
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !227, !noalias !1902
  %i.ju = and i32 %i.jp, 31
  %i.jv = lshr i32 %i.jt, %i.ju
  %i.jw = trunc i32 %i.jv to i1
  br i1 %i.jw, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !445

.loopexit.i.i:                                    ; preds = %bb.aa, %bb.z, %bb.y
  %i.jx = zext i32 %i.iv to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEPNS2_9FieldDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEPNS2_9FieldDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i
  %i.jy = phi i64 [ %i.jx, %.loopexit.i.i ], [ %i.jk, %.lr.ph.i.i.i.i ]
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store i32 %.sroa.0144.0, ptr %17, align 8, !tbaa !815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6147.0..sroa_idx149, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6147, i64 28, i1 false), !tbaa.struct !817
  store i8 %.sroa.8150.0, ptr %.sroa.8150.0..sroa_idx153, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10155.0..sroa_idx157, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10155, i64 23, i1 false), !tbaa.struct !1583
  store ptr %.sroa.11158.0, ptr %.sroa.11158.0..sroa_idx161, align 8, !tbaa !456
  store i64 %.sroa.12163.0, ptr %.sroa.12163.0..sroa_idx166, align 8, !tbaa !818
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx170, align 8, !tbaa !456
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx174, align 8, !tbaa !814
  store i8 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx178, align 8, !tbaa !456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.17.0..sroa_idx181, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.17, i64 3, i1 false), !tbaa.struct !1875
  store i32 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx184, align 4, !tbaa !819
  store i32 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx188, align 8, !tbaa !821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.22.0..sroa_idx191, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.22, i64 36, i1 false), !tbaa.struct !1876
  store ptr %.sroa.23.0, ptr %.sroa.23.0..sroa_idx194, align 8, !tbaa !824
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !1903
  call void @_ZN5clang7CodeGen15CodeGenFunction32EmitLValueForFieldInitializationENS0_6LValueEPKNS_9FieldDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %16, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %17, ptr noundef %i.kb) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.kc = load ptr, ptr %i.aj, align 8, !tbaa !457, !noalias !1905 ; 2 uses
  %i.kd = load ptr, ptr %i.ak, align 8, !tbaa !469, !noalias !1905 ; 2 uses
  %i.ke = load i32, ptr %i.al, align 4, !tbaa !470, !noalias !1905 ; 3 uses
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %.loopexit.i.i.i99, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEPNS2_9FieldDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit
  %i.kg = add i32 %i.ke, -1                       ; 2 uses
  %i.kh = mul i64 %i.iq, -4658895280553007687     ; 2 uses
  %i.ki = lshr i64 %i.kh, 31
  %i.kj = xor i64 %i.ki, %i.kh
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = and i32 %i.kg, %i.kk                    ; 3 uses
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  %i.kn = lshr i64 %i.km, 5
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !227, !noalias !1916
  %i.kq = and i32 %i.kl, 31
  %i.kr = lshr i32 %i.kp, %i.kq
  %i.ks = trunc i32 %i.kr to i1
  br i1 %i.ks, label %.lr.ph.i.i.i.i.i100, label %.loopexit.i.i.i99, !prof !442

.lr.ph.i.i.i.i.i100:                              ; preds = %bb.ab, %bb.ac
  %i.kt = phi i64 [ %i.kz, %bb.ac ], [ %i.km, %bb.ab ] ; 2 uses
  %.017.i.i.i.i.i101 = phi i32 [ %i.ky, %bb.ac ], [ %i.kl, %bb.ab ]
  %i.ku = getelementptr inbounds nuw [56 x i8], ptr %i.kc, i64 %i.kt
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !472, !noalias !1916
  %i.kw = icmp eq ptr %i.kv, %i.ir
  br i1 %i.kw, label %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit102, label %bb.ac, !prof !444

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i100
  %i.kx = add nuw i32 %.017.i.i.i.i.i101, 1
  %i.ky = and i32 %i.kx, %i.kg                    ; 3 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = lshr i64 %i.kz, 5
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !227, !noalias !1916
  %i.ld = and i32 %i.ky, 31
  %i.le = lshr i32 %i.lc, %i.ld
  %i.lf = trunc i32 %i.le to i1
  br i1 %i.lf, label %.lr.ph.i.i.i.i.i100, label %.loopexit.i.i.i99, !prof !445

.loopexit.i.i.i99:                                ; preds = %bb.ac, %bb.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEPNS2_9FieldDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4findES5_.exit
  %i.lg = zext i32 %i.ke to i64
  br label %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit102

_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit102: ; preds = %.lr.ph.i.i.i.i.i100, %.loopexit.i.i.i99
  %i.lh = phi i64 [ %i.lg, %.loopexit.i.i.i99 ], [ %i.kt, %.lr.ph.i.i.i.i.i100 ]
  %i.li = getelementptr inbounds nuw [56 x i8], ptr %i.kc, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %i.lj, i64 48, i1 false), !tbaa.struct !1384
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ir, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i103 = load i64, ptr %i.lk, align 8, !tbaa !456
  %i.ll = and i64 %.sroa.0.0.copyload.i103, -16
  %i.lm = inttoptr i64 %i.ll to ptr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !456
  %i.lp = and i64 %i.lo, -16
  %i.lq = inttoptr i64 %i.lp to ptr
  %i.lr = load ptr, ptr %i.lq, align 16, !tbaa !1390
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.sroa.0.0.copyload.i.i.i.i106 = load i64, ptr %i.ls, align 8, !tbaa !456
  %i.lt = and i64 %.sroa.0.0.copyload.i.i.i.i106, -16
  %i.lu = inttoptr i64 %i.lt to ptr
  %i.lv = load ptr, ptr %i.lu, align 16, !tbaa !1390
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load i8, ptr %i.lw, align 16
  %i.ly = and i8 %i.lx, -2
  %spec.select.i.i.i.i.i.i.i.i.i107 = icmp eq i8 %i.ly, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i107, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %18, i64 48, i1 false)
  %.sroa.0.0.copyload.i108 = load i64, ptr %i.lk, align 8, !tbaa !456 ; 2 uses
  %i.lz = and i64 %.sroa.0.0.copyload.i108, -16
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !456 ; 2 uses
  %i.md = and i64 %.sroa.0.0.copyload.i108, 7
  %i.me = or i64 %i.md, %i.mc                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i110)
  %i.mf = load ptr, ptr %i.am, align 8, !tbaa !473, !noalias !1917, !nonnull !452, !align !477
  call void @_ZN5clang7CodeGen13CodeGenModule17getTBAAAccessInfoENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CodeGen::TBAAAccessInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(4008) %i.mf, i64 %i.me) #20, !noalias !1917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !noalias !1917
  %i.mg = load ptr, ptr %i.am, align 8, !tbaa !473, !noalias !1920, !nonnull !452, !align !477
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 144
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !481, !noalias !1920, !nonnull !452, !align !477
  %i.mj = and i64 %i.mc, -16
  %i.mk = inttoptr i64 %i.mj to ptr
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i111 = load i64, ptr %i.ml, align 8, !noalias !1923 ; 3 uses
  %i.mm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i111, 8
  %.not.i.i.i.i.i.i112 = icmp eq i64 %i.mm, 0
  br i1 %.not.i.i.i.i.i.i112, label %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit124, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i111, -16
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i113 = load i64, ptr %i.mp, align 8, !tbaa !814, !noalias !1923
  %i.mq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i113, -49
  br label %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit124

_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit124: ; preds = %bb.ad, %bb.ae
  %.sroa.0.0.i.i.i.i.i.i114 = phi i64 [ %i.mq, %bb.ae ], [ 0, %bb.ad ]
  %i.mr = or i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i111, %i.me
  %i.ms = and i64 %i.mr, 7
  %i.mt = call noundef i32 @_ZNK5clang10ASTContext17getObjCGCAttrKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.mi, i64 %i.me) #20, !noalias !1923
  %i.mu = or i64 %.sroa.0.0.i.i.i.i.i.i114, %i.ms
  %i.mv = shl i32 %i.mt, 4
  %i.mw = sext i32 %i.mv to i64
  %i.mx = or i64 %i.mu, %i.mw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.4.8..sroa_idx.i115, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !noalias !1917
  store i32 0, ptr %5, align 8, !tbaa !815, !noalias !1917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.4.0..sroa_idx.i116, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.4.i110, i64 52, i1 false), !tbaa.struct !817, !noalias !1917
  store i64 0, ptr %.sroa.55.0..sroa_idx.i117, align 8, !tbaa !818, !noalias !1917
  store i64 %i.me, ptr %.sroa.6.0..sroa_idx.i118, align 8, !tbaa !456, !noalias !1917
  store i64 %i.mx, ptr %.sroa.7.0..sroa_idx.i119, align 8, !tbaa !814, !noalias !1917
  store i8 0, ptr %.sroa.8.0..sroa_idx.i120, align 8, !tbaa !456, !noalias !1917
  store i32 2, ptr %.sroa.106.0..sroa_idx.i121, align 4, !tbaa !819, !noalias !1917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx.i122, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !noalias !1917
  store ptr null, ptr %.sroa.12.0..sroa_idx.i123, align 8, !tbaa !824, !noalias !1917
  call void @_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_6LValueE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %19, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i110)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.af

bb.af:                                            ; preds = %_ZN5clang7CodeGen15CodeGenFunction25EmitLoadOfReferenceLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit124, %_ZN5clang7CodeGen15CodeGenFunction17GetAddrOfLocalVarEPKNS_7VarDeclE.exit102
  %i.my = load i8, ptr %i.as, align 8
  %i.mz = and i8 %i.my, 3
  %.not.i125 = icmp eq i8 %i.mz, 0
  br i1 %.not.i125, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.0.copyload.i.i.i.i.i126 = load i64, ptr %18, align 8
  %i.na = and i64 %.0.copyload.i.i.i.i.i126, -8
  %i.nb = inttoptr i64 %i.na to ptr
  br label %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit

bb.ah:                                            ; preds = %bb.af
  %i.nc = call noundef ptr @_ZNK5clang7CodeGen7Address18emitRawPointerSlowERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(6288) %1) #20
  br label %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit

_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit: ; preds = %bb.ag, %bb.ah
  %.0.i = phi ptr [ %i.nc, %bb.ah ], [ %i.nb, %bb.ag ]
  call void @_ZN5clang7CodeGen15CodeGenFunction17EmitStoreOfScalarEPN4llvm5ValueENS0_6LValueEb(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %.0.i, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %16, i1 noundef zeroext false) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit, %bb.x, %.lr.ph
  %i.nd = getelementptr inbounds nuw i8, ptr %.0240, i64 16 ; 2 uses
  %.not56 = icmp eq ptr %i.nd, %i.if
  br i1 %.not56, label %._crit_edge, label %.lr.ph

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread: ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.h, %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit, %bb.c
  %i.ne = getelementptr inbounds nuw i8, ptr %.051242, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ne, %i.ai
  br i1 %.not, label %._crit_edge244, label %bb.c
}

declare void @_ZNK5clang13CXXRecordDecl16getCaptureFieldsERN4llvm8DenseMapIPKNS_9ValueDeclEPNS_9FieldDeclENS1_12DenseMapInfoIS5_vEENS1_6detail12DenseMapPairIS5_S7_EEEERS7_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN5clang7CodeGen15CodeGenFunction32EmitLValueForFieldInitializationENS0_6LValueEPKNS_9FieldDeclE(ptr dead_on_unwind writable sret(%"class.clang::CodeGen::LValue") align 8, ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef byval(%"class.clang::CodeGen::LValue") align 8, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK5clang13LambdaCapture14getCaptureKindEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang12CapturedStmt16capturesVariableEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang7CodeGen18CGOpenMPRuntimeGPU32hasAllocateAttributeForGlobalVarEPKNS_7VarDeclERNS_6LangASE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 256
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #20 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !210  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !1475
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i16, ptr %i.k, align 4
  %i.m = icmp eq i16 %i.l, 311
  br i1 %i.m, label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15, label %.lr.ph.i.i.i.i.i, !llvm.loop !1755

_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not17 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.i
  br i1 %.not17, label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !208  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1475 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i16, ptr %i.r, align 4
  %i.t = icmp eq i16 %i.s, 311
  br i1 %i.t, label %_ZNK5clang4Decl7getAttrINS_19OMPAllocateDeclAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.u = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1475 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i16, ptr %i.x, align 4
  %i.z = icmp eq i16 %i.y, 311
  br i1 %i.z, label %_ZNK5clang4Decl7getAttrINS_19OMPAllocateDeclAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1756

_ZNK5clang4Decl7getAttrINS_19OMPAllocateDeclAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.aa = phi ptr [ %i.q, %bb.e ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1757 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 9
  br i1 %i.ad, label %switch.lookup, label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15

switch.lookup:                                    ; preds = %_ZNK5clang4Decl7getAttrINS_19OMPAllocateDeclAttrEEEPT_v.exit
  %i.ae = zext nneg i32 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang7CodeGen18CGOpenMPRuntimeGPU32hasAllocateAttributeForGlobalVarEPKNS_7VarDeclERNS_6LangASE, i64 %i.ae
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %2, align 4, !tbaa !1926
  br label %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15

_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit.thread15: ; preds = %bb.d, %_ZNK5clang4Decl7getAttrINS_19OMPAllocateDeclAttrEEEPT_v.exit, %switch.lookup, %bb.c, %bb.b, %bb.a, %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK5clang4Decl7hasAttrINS_19OMPAllocateDeclAttrEEEbv.exit ], [ false, %bb.c ], [ false, %bb.b ], [ true, %switch.lookup ], [ false, %_ZNK5clang4Decl7getAttrINS_19OMPAllocateDeclAttrEEEPT_v.exit ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen18CGOpenMPRuntimeGPU24processRequiresDirectiveEPKNS_15OMPRequiresDeclE(ptr noundef nonnull align 8 dereferenceable(5152) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1928 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !1278 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not33 = icmp eq i32 %i.d, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.034 = phi ptr [ %i.c, %.lr.ph ], [ %i.bp, %bb.l ] ; 2 uses
  %i.h = load ptr, ptr %.034, align 8, !tbaa !1280 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1285
  %i.k = icmp eq i32 %i.j, 125
  br i1 %i.k, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !826, !nonnull !452, !align !477
  %i.m = getelementptr i8, ptr %i.l, i64 216
  %.val = load ptr, ptr %i.m, align 8, !tbaa !1432
  %i.n = getelementptr i8, ptr %.val, i64 208
  %.val.val = load ptr, ptr %i.n, align 8, !tbaa !1930 ; 2 uses
  %i.o = getelementptr i8, ptr %.val.val, i64 64
  %.val.val.val = load ptr, ptr %i.o, align 8, !tbaa !1338
  %i.p = getelementptr i8, ptr %.val.val, i64 72
  %.val.val.val20 = load i64, ptr %i.p, align 8, !tbaa !1340
  %i.q = tail call noundef i32 @_ZN5clang19StringToOffloadArchEN4llvm9StringRefE(ptr %.val.val.val, i64 %.val.val.val20) #20 ; 2 uses
  %.off = add i32 %i.q, -2
  %switch = icmp ult i32 %.off, 9
  br i1 %switch, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !1595
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !1596
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 256, ptr %i.t, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.u, align 8, !tbaa !1931
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.v, align 8, !tbaa !1935
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.w, align 4, !tbaa !1936
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !198
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %2, ptr %i.y, align 8, !tbaa !1937
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1939
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1940 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 20
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.ah = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.19, i64 noundef 20) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ac, ptr noundef nonnull align 1 dereferenceable(20) @.str.19, i64 20, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !1940
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !1940
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.ah, %bb.d ], [ %3, %bb.e ] ; 6 uses
  %i.ak = call noundef ptr @_ZN5clang19OffloadArchToStringENS_11OffloadArchE(i32 noundef %i.q) #20 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit23, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #20 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1939
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1940 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ugt i64 %i.al, %i.as
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.au = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull %i.ak, i64 noundef %i.al) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

bb.g:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i21 = icmp eq i64 %i.al, 0
end_hunk_0
