Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUTargetTransformInfo?download=true
inline.NumInlined: 9125
inline.NumDeleted: 3144
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK4llvm9KnownBits13anyextOrTruncEj:bb.a
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %i.c = icmp ugt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #24, !noalias !980
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i32 noundef %2) #24, !noalias !980
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96, !noalias !980
  store i32 %i.g, ptr %i.e, align 8, !tbaa !96, !alias.scope !980
  %i.h = load i64, ptr %5, align 8, !noalias !980
  store i64 %i.h, ptr %0, align 8, !alias.scope !980
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !96, !noalias !980
  store i32 %i.l, ptr %i.j, align 8, !tbaa !96, !alias.scope !980
  %i.m = load i64, ptr %6, align 8, !noalias !980
  store i64 %i.m, ptr %i.i, align 8, !alias.scope !980
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN4llvm9KnownBitsC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %2, %i.b
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #24, !noalias !981
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i32 noundef %2) #24, !noalias !981
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !96, !noalias !981
  store i32 %i.r, ptr %i.p, align 8, !tbaa !96, !alias.scope !981
  %i.s = load i64, ptr %3, align 8, !noalias !981
  store i64 %i.s, ptr %0, align 8, !alias.scope !981
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !96, !noalias !981
  store i32 %i.w, ptr %i.u, align 8, !tbaa !96, !alias.scope !981
  %i.x = load i64, ptr %4, align 8, !noalias !981
  store i64 %i.x, ptr %i.t, align 8, !alias.scope !981
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN4llvm9KnownBitsC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.y, align 8, !tbaa !96
  %i.z = icmp ult i32 %i.b, 65
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %1, align 8, !tbaa !43
  store i64 %i.aa, ptr %0, align 8, !tbaa !43
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !96 ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !96
  %i.ag = icmp ult i32 %i.af, 65
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !43
  store i64 %i.ah, ptr %i.ab, align 8, !tbaa !43
  br label %_ZN4llvm9KnownBitsC2ERKS0_.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #24
  br label %_ZN4llvm9KnownBitsC2ERKS0_.exit

_ZN4llvm9KnownBitsC2ERKS0_.exit:                  ; preds = %bb.i, %bb.h, %bb.d, %bb.b
  ret void
}

declare void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm8Constant10isOneValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #9

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !89
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  %i.g = load i32, ptr %i.a, align 8, !tbaa !89
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !89
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !89
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !567, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !567, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !568, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !568, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !29
  %i.j = load i8, ptr %i.d, align 8, !range !29
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm31TargetTransformInfoImplCRTPBaseINS_13AMDGPUTTIImplEE10getGEPCostEPNS_4TypeEPKNS_5ValueENS_8ArrayRefIS7_EES4_NS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, ptr noundef %5, i32 noundef %6) unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"struct.llvm::TargetLoweringBase::AddrMode", align 8 ; 8 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %i.a = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !104
  %i.c = add i8 %i.b, -14
  %switch.selectcmp.i.i.i.i.i.i.i = icmp ult i8 %i.c, 4
  %spec.select.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i, ptr %i.a, ptr null ; 2 uses
  %i.d = icmp eq ptr %spec.select.i.i, null       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !376, !nonnull !30, !align !336
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = tail call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.f, ptr noundef %i.h) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !96
  %i.k = icmp ult i32 %i.i, 65
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %8, align 8, !tbaa !43
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef 0, i1 noundef zeroext false) #24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %bb.c
  %i.l = icmp eq i64 %4, 0
  br i1 %i.l, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.m = ptrtoint ptr %1 to i64
  %i.n = or i64 %i.m, 4
  %.idx = shl nuw nsw i64 %4, 3
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.r = select i1 %i.d, i64 0, i64 4
  br label %.thread113

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit
  %.044132 = phi i64 [ 0, %.lr.ph ], [ %.4.ph, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 3 uses
  %.047131 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 5 uses
  %.sroa.8.0127 = phi i64 [ %i.n, %.lr.ph ], [ %.sink.i, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 2 uses
  %i.s = and i64 %.sroa.8.0127, 6                 ; 5 uses
  %i.t = icmp ne i64 %i.s, 4
  %i.u = and i64 %.sroa.8.0127, -7                ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 10 uses
  %.not.not15.i = icmp eq i64 %i.u, 0             ; 5 uses
  %.not.not.i = or i1 %i.t, %.not.not15.i         ; 3 uses
  br i1 %.not.not.i, label %bb.f, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ne i64 %i.s, 2
  %.not10.not.i = or i1 %i.w, %.not.not15.i
  br i1 %.not10.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !415
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %.047131, align 8, !tbaa !374
  %i.aa = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.z) #24
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %.2.i = phi ptr [ %i.aa, %bb.h ], [ %i.y, %bb.g ], [ %i.v, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %.047131, align 8, !tbaa !374 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !104
  %.not120 = icmp eq i8 %i.ac, 5
  br i1 %.not120, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit
  %i.ad = call noundef ptr @_ZN4llvm13getSplatValueEPKNS_5ValueE(ptr noundef nonnull %i.ab) #24 ; 3 uses
  %.not59 = icmp eq ptr %i.ad, null
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !104
  %i.af = icmp eq i8 %i.ae, 5
  %spec.select.i.i67 = select i1 %i.af, ptr %i.ad, ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit
  %.146 = phi ptr [ %i.ab, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit ], [ %spec.select.i.i67, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.ag = icmp ne i64 %i.s, 0
  %.not60 = or i1 %i.ag, %.not.not15.i
  br i1 %.not60, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.146, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.146, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !96
  %i.ak = icmp ult i32 %i.aj, 65
  %i.al = load ptr, ptr %i.ah, align 8
  %spec.select.i.i69 = select i1 %i.ak, ptr %i.ah, ptr %i.al
  %.0.i.i = load i64, ptr %spec.select.i.i69, align 8, !tbaa !43
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !376, !nonnull !30, !align !336
  %i.an = call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.am, ptr noundef nonnull %i.v) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = and i64 %.0.i.i, 4294967295
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ar = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.ar, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.l
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef %.sroa.0.0.copyload.i) #24 ; 0 uses
  br label %bb.x

bb.n:                                             ; preds = %bb.k
  %i.at = call noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.i) #24
  br i1 %i.at, label %.thread113, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !376, !nonnull !30, !align !336 ; 2 uses
  br i1 %.not.not.i, label %bb.p, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102

bb.p:                                             ; preds = %bb.o
  %i.av = icmp ne i64 %i.s, 2                     ; 2 uses
  %.not10.not.i.i = or i1 %i.av, %.not.not15.i
  br i1 %.not10.not.i.i, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread: ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !415
  br label %bb.q

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i: ; preds = %bb.p
  %i.ay = load ptr, ptr %.047131, align 8, !tbaa !374
  %i.az = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.ay) #24 ; 2 uses
  br i1 %i.av, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i
  %.2.i.i101 = phi ptr [ %i.ax, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread ], [ %i.az, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i ]
  %i.ba = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.au, ptr noundef %.2.i.i101)
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.ba, 0
  %i.bb = add i64 %.fca.0.extract.i.i.i, 7
  %i.bc = lshr i64 %i.bb, 3
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102: ; preds = %bb.o, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i
  %.2.i.i104 = phi ptr [ %i.az, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i ], [ %i.v, %bb.o ]
  %i.bd = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.au, ptr noundef %.2.i.i104) #24
  %i.be = extractvalue { i64, i8 } %i.bd, 0
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit: ; preds = %bb.q, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102
  %.pn.i = phi i64 [ %i.bc, %bb.q ], [ %i.be, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102 ] ; 2 uses
  %.not61 = icmp eq ptr %.146, null
  br i1 %.not61, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %.146, i64 24
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i32 noundef %i.i) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.bg = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmLEm(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %.pn.i) #24, !noalias !985 ; 0 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !96, !noalias !985
  store i32 %i.bh, ptr %i.p, align 8, !tbaa !96, !alias.scope !985
  %i.bi = load i64, ptr %10, align 8, !noalias !985
  store i64 %i.bi, ptr %9, align 8, !alias.scope !985
  store i32 0, ptr %i.q, align 8, !tbaa !96, !noalias !985
  %i.bj = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #24 ; 0 uses
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !96
  %i.bl = icmp ugt i32 %i.bk, 64
  br i1 %i.bl, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4llvm5APIntD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.r, %bb.s, %bb.t
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !96
  %i.bp = icmp ugt i32 %i.bo, 64
  br i1 %i.bp, label %bb.u, label %_ZN4llvm5APIntD2Ev.exit72

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bq = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN4llvm5APIntD2Ev.exit72, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #27
  br label %_ZN4llvm5APIntD2Ev.exit72

_ZN4llvm5APIntD2Ev.exit72:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit
  %.not62 = icmp eq i64 %.044132, 0
  br i1 %.not62, label %bb.x, label %.thread113

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.w, %_ZN4llvm5APIntD2Ev.exit72
  %.4.ph = phi i64 [ %.pn.i, %bb.w ], [ %.044132, %_ZN4llvm5APIntD2Ev.exit72 ], [ %.044132, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.047131, i64 8   ; 2 uses
  br i1 %.not.not.i, label %bb.y, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

bb.y:                                             ; preds = %bb.x
  %i.bt = icmp ne i64 %i.s, 2
  %.not10.not.i.i78 = or i1 %i.bt, %.not.not15.i
  br i1 %.not10.not.i.i78, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !415
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

bb.aa:                                            ; preds = %bb.y
  %i.bw = load ptr, ptr %.047131, align 8, !tbaa !374
  %i.bx = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.bw) #24
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76: ; preds = %bb.aa, %bb.z, %bb.x
  %.2.i.i77 = phi ptr [ %i.bx, %bb.aa ], [ %i.bv, %bb.z ], [ %i.v, %bb.x ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.2.i.i77, i64 8
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = and i32 %i.bz, 255                      ; 2 uses
  %i.cb = icmp ne i32 %i.ca, 17
  %.not12.i = icmp eq ptr %.2.i.i77, null         ; 2 uses
  %.not.i = or i1 %.not12.i, %i.cb
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76
end_hunk_0
begin_hunk_1_@_ZSt9__find_ifIPKPKN4llvm5ValueEN9__gnu_cxx5__ops10_Iter_predIZNKS0_27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS0_4TypeENS0_19TargetTransformInfo14TargetCostKindENSC_16OperandValueInfoESE_NS0_8ArrayRefIS3_EEPKNS0_11InstructionEEUlS3_E_EEET_SM_SM_T0_St26random_access_iterator_tag:bb.a
  %i.ao = icmp eq i8 %i.an, 14
  br i1 %i.ao, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i40, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit43

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i40: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 8192
  %.not.i.i.i.i41 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i41, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit43, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i42

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i42: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i40
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !319
  %i.au = icmp eq i32 %i.at, 179
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit104, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit43

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit43: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i42, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i40, %bb.g, %bb.f, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit36
  %i.av = getelementptr inbounds nuw i8, ptr %.02989, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !374 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !104
  %i.ay = icmp eq i8 %i.ax, 88
  br i1 %i.ay, label %bb.h, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit50

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit43
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i46, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit50, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !104
  %i.bc = icmp eq i8 %i.bb, 14
  br i1 %i.bc, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i47, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit50

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i47: ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 8192
  %.not.i.i.i.i48 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i48, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit50, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i49

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i49: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !319
  %i.bi = icmp eq i32 %i.bh, 179
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit106, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit50

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit50: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i49, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i47, %bb.i, %bb.h, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit43
  %i.bj = getelementptr inbounds nuw i8, ptr %.02989, i64 32
  %i.bk = add nsw i64 %.090, -1
  %i.bl = icmp sgt i64 %.090, 1
  br i1 %i.bl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !990

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit50
  %.pre = ptrtoint ptr %scevgep to i64
  %.pre95 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi96 = phi i64 [ %.pre95, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.bm = ashr exact i64 %.pre-phi96, 3
  switch i64 %i.bm, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71 [
    i64 3, label %bb.j
    i64 2, label %bb.m
    i64 1, label %bb.p
  ]

bb.j:                                             ; preds = %._crit_edge
  %i.bn = load ptr, ptr %.029.lcssa, align 8, !tbaa !374 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !104
  %i.bp = icmp eq i8 %i.bo, 88
  br i1 %i.bp, label %bb.k, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i53, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !104
  %i.bt = icmp eq i8 %i.bs, 14
  br i1 %i.bt, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i54, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i54: ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = and i32 %i.bv, 8192
  %.not.i.i.i.i55 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i55, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i56

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i56: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !319
  %i.bz = icmp eq i32 %i.by, 179
  br i1 %i.bz, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i56, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i54, %bb.l, %bb.k, %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57, %._crit_edge
  %.1 = phi ptr [ %i.ca, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit57 ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %i.cb = load ptr, ptr %.1, align 8, !tbaa !374  ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !104
  %i.cd = icmp eq i8 %i.cc, 88
  br i1 %i.cd, label %bb.n, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !108 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i60, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !104
  %i.ch = icmp eq i8 %i.cg, 14
  br i1 %i.ch, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i61, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i61: ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = and i32 %i.cj, 8192
  %.not.i.i.i.i62 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i62, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i63

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i63: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i61
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !319
  %i.cn = icmp eq i32 %i.cm, 179
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i63, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i61, %bb.o, %bb.n, %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64, %._crit_edge
  %.2 = phi ptr [ %i.co, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit64 ], [ %.029.lcssa, %._crit_edge ] ; 2 uses
  %i.cp = load ptr, ptr %.2, align 8, !tbaa !374  ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !104
  %i.cr = icmp eq i8 %i.cq, 88
  br i1 %i.cr, label %bb.q, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !108 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i67 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i67, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !104
  %i.cv = icmp eq i8 %i.cu, 14
  br i1 %i.cv, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68: ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = and i32 %i.cx, 8192
  %.not.i.i.i.i69 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i69, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !319
  %i.db = icmp eq i32 %i.da, 179
  %spec.select = select i1 %i.db, ptr %.2, ptr %1
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i35
  %i.dc = getelementptr inbounds nuw i8, ptr %.02989, i64 8
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit104: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i42
  %i.dd = getelementptr inbounds nuw i8, ptr %.02989, i64 16
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit106: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i49
  %i.de = getelementptr inbounds nuw i8, ptr %.02989, i64 24
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit104, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit106, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i63, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i56, %._crit_edge, %bb.p, %bb.q, %bb.r, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68
  %.028 = phi ptr [ %.029.lcssa, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i56 ], [ %1, %._crit_edge ], [ %1, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68 ], [ %1, %bb.r ], [ %.1, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i63 ], [ %1, %bb.q ], [ %1, %bb.p ], [ %spec.select, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70 ], [ %i.de, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit106 ], [ %i.dc, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit ], [ %i.dd, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit104 ], [ %.02989, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i ]
  ret ptr %.028
}

; Function Attrs: nounwind
declare void @_ZN4llvm27TargetTransformInfoImplBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm31TargetTransformInfoImplCRTPBaseINS_10GCNTTIImplEE10getGEPCostEPNS_4TypeEPKNS_5ValueENS_8ArrayRefIS7_EES4_NS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, ptr noundef %5, i32 noundef %6) unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"struct.llvm::TargetLoweringBase::AddrMode", align 8 ; 8 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %i.a = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !104
  %i.c = add i8 %i.b, -14
  %switch.selectcmp.i.i.i.i.i.i.i = icmp ult i8 %i.c, 4
  %spec.select.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i, ptr %i.a, ptr null ; 2 uses
  %i.d = icmp eq ptr %spec.select.i.i, null       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !376, !nonnull !30, !align !336
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = tail call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.f, ptr noundef %i.h) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !96
  %i.k = icmp ult i32 %i.i, 65
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %8, align 8, !tbaa !43
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef 0, i1 noundef zeroext false) #24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %bb.c
  %i.l = icmp eq i64 %4, 0
  br i1 %i.l, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.m = ptrtoint ptr %1 to i64
  %i.n = or i64 %i.m, 4
  %.idx = shl nuw nsw i64 %4, 3
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.r = select i1 %i.d, i64 0, i64 4
  br label %.thread113

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit
  %.044132 = phi i64 [ 0, %.lr.ph ], [ %.4.ph, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 3 uses
  %.047131 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 5 uses
  %.sroa.8.0127 = phi i64 [ %i.n, %.lr.ph ], [ %.sink.i, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 2 uses
  %i.s = and i64 %.sroa.8.0127, 6                 ; 5 uses
  %i.t = icmp ne i64 %i.s, 4
  %i.u = and i64 %.sroa.8.0127, -7                ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 10 uses
  %.not.not15.i = icmp eq i64 %i.u, 0             ; 5 uses
  %.not.not.i = or i1 %i.t, %.not.not15.i         ; 3 uses
  br i1 %.not.not.i, label %bb.f, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ne i64 %i.s, 2
  %.not10.not.i = or i1 %i.w, %.not.not15.i
  br i1 %.not10.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !415
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %.047131, align 8, !tbaa !374
  %i.aa = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.z) #24
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %.2.i = phi ptr [ %i.aa, %bb.h ], [ %i.y, %bb.g ], [ %i.v, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %.047131, align 8, !tbaa !374 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !104
  %.not120 = icmp eq i8 %i.ac, 5
  br i1 %.not120, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit
  %i.ad = call noundef ptr @_ZN4llvm13getSplatValueEPKNS_5ValueE(ptr noundef nonnull %i.ab) #24 ; 3 uses
  %.not59 = icmp eq ptr %i.ad, null
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !104
  %i.af = icmp eq i8 %i.ae, 5
  %spec.select.i.i67 = select i1 %i.af, ptr %i.ad, ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit
  %.146 = phi ptr [ %i.ab, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit ], [ %spec.select.i.i67, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.ag = icmp ne i64 %i.s, 0
  %.not60 = or i1 %i.ag, %.not.not15.i
  br i1 %.not60, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.146, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.146, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !96
  %i.ak = icmp ult i32 %i.aj, 65
  %i.al = load ptr, ptr %i.ah, align 8
  %spec.select.i.i69 = select i1 %i.ak, ptr %i.ah, ptr %i.al
  %.0.i.i = load i64, ptr %spec.select.i.i69, align 8, !tbaa !43
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !376, !nonnull !30, !align !336
  %i.an = call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.am, ptr noundef nonnull %i.v) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = and i64 %.0.i.i, 4294967295
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ar = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.ar, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.l
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef %.sroa.0.0.copyload.i) #24 ; 0 uses
  br label %bb.x

bb.n:                                             ; preds = %bb.k
  %i.at = call noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.i) #24
  br i1 %i.at, label %.thread113, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !376, !nonnull !30, !align !336 ; 2 uses
  br i1 %.not.not.i, label %bb.p, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102

bb.p:                                             ; preds = %bb.o
  %i.av = icmp ne i64 %i.s, 2                     ; 2 uses
  %.not10.not.i.i = or i1 %i.av, %.not.not15.i
  br i1 %.not10.not.i.i, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread: ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !415
  br label %bb.q

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i: ; preds = %bb.p
  %i.ay = load ptr, ptr %.047131, align 8, !tbaa !374
  %i.az = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.ay) #24 ; 2 uses
  br i1 %i.av, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i
  %.2.i.i101 = phi ptr [ %i.ax, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread ], [ %i.az, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i ]
  %i.ba = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.au, ptr noundef %.2.i.i101)
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.ba, 0
  %i.bb = add i64 %.fca.0.extract.i.i.i, 7
  %i.bc = lshr i64 %i.bb, 3
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102: ; preds = %bb.o, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i
  %.2.i.i104 = phi ptr [ %i.az, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i ], [ %i.v, %bb.o ]
  %i.bd = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.au, ptr noundef %.2.i.i104) #24
  %i.be = extractvalue { i64, i8 } %i.bd, 0
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit: ; preds = %bb.q, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102
  %.pn.i = phi i64 [ %i.bc, %bb.q ], [ %i.be, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102 ] ; 2 uses
  %.not61 = icmp eq ptr %.146, null
  br i1 %.not61, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %.146, i64 24
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i32 noundef %i.i) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.bg = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmLEm(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %.pn.i) #24, !noalias !994 ; 0 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !96, !noalias !994
  store i32 %i.bh, ptr %i.p, align 8, !tbaa !96, !alias.scope !994
  %i.bi = load i64, ptr %10, align 8, !noalias !994
  store i64 %i.bi, ptr %9, align 8, !alias.scope !994
  store i32 0, ptr %i.q, align 8, !tbaa !96, !noalias !994
  %i.bj = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #24 ; 0 uses
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !96
  %i.bl = icmp ugt i32 %i.bk, 64
  br i1 %i.bl, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4llvm5APIntD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.r, %bb.s, %bb.t
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !96
  %i.bp = icmp ugt i32 %i.bo, 64
  br i1 %i.bp, label %bb.u, label %_ZN4llvm5APIntD2Ev.exit72

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bq = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN4llvm5APIntD2Ev.exit72, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #27
  br label %_ZN4llvm5APIntD2Ev.exit72

_ZN4llvm5APIntD2Ev.exit72:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit
  %.not62 = icmp eq i64 %.044132, 0
  br i1 %.not62, label %bb.x, label %.thread113

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.w, %_ZN4llvm5APIntD2Ev.exit72
  %.4.ph = phi i64 [ %.pn.i, %bb.w ], [ %.044132, %_ZN4llvm5APIntD2Ev.exit72 ], [ %.044132, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.047131, i64 8   ; 2 uses
  br i1 %.not.not.i, label %bb.y, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

bb.y:                                             ; preds = %bb.x
  %i.bt = icmp ne i64 %i.s, 2
  %.not10.not.i.i78 = or i1 %i.bt, %.not.not15.i
  br i1 %.not10.not.i.i78, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !415
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

bb.aa:                                            ; preds = %bb.y
  %i.bw = load ptr, ptr %.047131, align 8, !tbaa !374
  %i.bx = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.bw) #24
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76: ; preds = %bb.aa, %bb.z, %bb.x
  %.2.i.i77 = phi ptr [ %i.bx, %bb.aa ], [ %i.bv, %bb.z ], [ %i.v, %bb.x ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.2.i.i77, i64 8
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = and i32 %i.bz, 255                      ; 2 uses
  %i.cb = icmp ne i32 %i.ca, 17
  %.not12.i = icmp eq ptr %.2.i.i77, null         ; 2 uses
  %.not.i = or i1 %.not12.i, %i.cb
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76
end_hunk_1
