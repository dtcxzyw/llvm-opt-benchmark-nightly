Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NormalizeQuantTypes?download=true
inline.NumInlined: 1951
inline.NumDeleted: 1417
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir9TypeRangeENS0_12PointerUnionIJPKNS3_5ValueEPKNS3_4TypeEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS0_8RepeatedIS9_EEPKNSH_IS6_EEEEES9_S9_S9_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS3_13TypeConverter7isLegalES4_EUlS9_E_EEET_SX_SX_T0_St26random_access_iterator_tag:bb.a
bb.f:                                             ; preds = %._crit_edge
  %i.s = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef %.sroa.15.0.lcssa) #21
  %i.t = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %4, ptr %i.s) #21
  br i1 %i.t, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i64 %.sroa.15.0.lcssa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.15.1 = phi i64 [ %i.u, %bb.g ], [ %.sroa.15.0.lcssa, %._crit_edge ] ; 3 uses
  %i.v = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef %.sroa.15.1) #21
  %i.w = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %4, ptr %i.v) #21
  br i1 %i.w, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i64 %.sroa.15.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.15.2 = phi i64 [ %i.x, %bb.i ], [ %.sroa.15.0.lcssa, %._crit_edge ] ; 2 uses
  %i.y = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef %.sroa.15.2) #21
  %i.z = tail call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %4, ptr %i.y) #21
  br i1 %i.z, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.j, %bb.h, %bb.f, %bb.k
  %.sroa.014.0.in.sroa.speculated = phi i64 [ %0, %bb.h ], [ %2, %bb.k ], [ %0, %bb.j ], [ %0, %bb.f ], [ %0, %.lr.ph ], [ %0, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  %.sroa.9.0 = phi i64 [ %.sroa.15.1, %bb.h ], [ %3, %bb.k ], [ %.sroa.15.2, %bb.j ], [ %.sroa.15.0.lcssa, %bb.f ], [ %i.l, %bb.d ], [ %i.i, %bb.c ], [ %i.f, %bb.b ], [ %.sroa.15.089, %.lr.ph ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.014.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508), ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64, i64 noundef) local_unnamed_addr #6

declare void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare void @_ZN4mlir9TypeRangeC2ENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(16), i64, i64) unnamed_addr #6

declare void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange.342") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

declare void @_ZN4mlir48populateFunctionOpInterfaceTypeConversionPatternEN4llvm9StringRefERNS_17RewritePatternSetERKNS_13TypeConverterENS_14PatternBenefitE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(508), i16) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #21
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #21
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir5quant12_GLOBAL__N_134ConvertGenericOpwithSubChannelTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #21
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #21
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #20
  ret void
}

declare i8 @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK4mlir5quant12_GLOBAL__N_134ConvertGenericOpwithSubChannelType15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::SuccessorRange", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %8 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.397", align 8 ; 9 uses
  %10 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %11 = alloca %"class.mlir::ValueTypeRange.342", align 8 ; 4 uses
  %12 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %14 = alloca %"class.mlir::NamedAttrList", align 8 ; 6 uses
  %15 = alloca %"class.mlir::PropertyRef", align 8 ; 3 uses
  %16 = alloca %"class.mlir::BlockRange", align 8 ; 2 uses
  %17 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !385
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !124, !noalias !385 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds i8, ptr %1, i64 -16
  %i.j = zext i32 %i.g to i64
  %.sroa.0.0.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %.sroa.0.0.i.i, ptr %8, align 8, !noalias !385
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !385
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange.342") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.sroa.074.0.copyload = load ptr, ptr %11, align 8 ; 2 uses
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.475.0.copyload = load i64, ptr %.sroa.475.0..sroa_idx, align 8 ; 3 uses
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.577.0.copyload = load i64, ptr %.sroa.577.0..sroa_idx, align 8
  %i.l = icmp eq i64 %.sroa.475.0.copyload, 0
  br i1 %i.l, label %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.074.0.copyload, i64 noundef %.sroa.475.0.copyload) #21
  br label %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit

_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ %.sroa.074.0.copyload, %bb.a ]
  %i.o = sub nsw i64 %.sroa.577.0.copyload, %.sroa.475.0.copyload
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.n, i64 %i.o) #21
  %i.p = load i64, ptr %7, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load i64, ptr %i.q, align 8
  call void @_ZN4mlir9TypeRangeC2ENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 %i.p, i64 %i.r) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.s = load i64, ptr %10, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = call i8 @_ZNK4mlir13TypeConverter12convertTypesENS_9TypeRangeERN4llvm15SmallVectorImplINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(508) %i.e, i64 %i.s, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %.thread79

bb.c:                                             ; preds = %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i41 = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.z = load ptr, ptr %9, align 8, !tbaa !16
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !32
  %i.ab = zext i32 %i.aa to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.z, i64 %i.ab) #21
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %2, i64 %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ac = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #21
  store ptr %i.ac, ptr %6, align 8
  %i.ad = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  call void @_ZN4mlir13NamedAttrListC1EN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr %i.ae, i64 %i.af) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 47
  %18 = load i8, ptr %i.ag, align 1
  %.not.i = icmp eq i8 %18, 0
  br i1 %.not.i, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !386
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %20 = load i32, ptr %19, align 4
  %i.ak = lshr i32 %20, 23
  %.lobit.i.i.i.i.i.i.i = and i32 %i.ak, 1
  %i.al = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.al
  br label %_ZN4mlir9Operation20getPropertiesStorageEv.exit

_ZN4mlir9Operation20getPropertiesStorageEv.exit:  ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ @_ZN4mlir6detail14TypeIDResolverIvvE2idE, %bb.c ]
  %.sroa.4.0.i = phi ptr [ %i.am, %bb.d ], [ null, %bb.c ]
  store ptr %.sroa.0.0.i, ptr %15, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.4.0.i, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN4mlir14SuccessorRangeC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(64) %1) #21
  %.fca.0.load.i = load ptr, ptr %5, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN4mlir10BlockRangeC1ENS_14SuccessorRangeE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %.fca.0.load.i, i64 %.fca.1.load.i) #21
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ao = load i32, ptr %21, align 4
  %i.ap = and i32 %i.ao, 8388607
  %i.aq = load i64, ptr %12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %13, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = call noundef ptr @_ZN4mlir9Operation6createENS_8LocationENS_13OperationNameENS_9TypeRangeENS_10ValueRangeEONS_13NamedAttrListENS_11PropertyRefENS_10BlockRangeEj(ptr %.sroa.0.0.copyload.i, ptr %.sroa.0.0.copyload.i41, i64 %i.aq, i64 %i.as, i64 %i.at, i64 %i.av, ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef nonnull byval(%"class.mlir::PropertyRef") align 8 %15, ptr noundef nonnull byval(%"class.mlir::BlockRange") align 8 %16, i32 noundef %i.ap) #21 ; 6 uses
  %i.ax = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN4mlir13NamedAttrListD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit
  call void @free(ptr noundef %i.ax) #21
  br label %_ZN4mlir13NamedAttrListD2Ev.exit

_ZN4mlir13NamedAttrListD2Ev.exit:                 ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ba = load i32, ptr %21, align 4              ; 3 uses
  %i.bb = and i32 %i.ba, 8388607                  ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = lshr i32 %i.ba, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.be, 1
  %i.bf = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = lshr i32 %i.ba, 21
  %i.bi = and i32 %i.bh, 2040
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !123
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = shl nuw nsw i32 %i.bb, 5
  %i.bq = zext nneg i32 %i.bp to i64
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit, %bb.f
  %.sroa.0.0.i44 = phi ptr [ %i.bo, %bb.f ], [ null, %_ZN4mlir13NamedAttrListD2Ev.exit ] ; 2 uses
  %.sroa.4.0.i45 = phi i64 [ %i.bq, %bb.f ], [ 0, %_ZN4mlir13NamedAttrListD2Ev.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.bs = load i32, ptr %i.br, align 4            ; 3 uses
  %i.bt = and i32 %i.bs, 8388607                  ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %._crit_edge, label %_ZN4mlir9Operation10getRegionsEv.exit53

_ZN4mlir9Operation10getRegionsEv.exit53:          ; preds = %_ZN4mlir9Operation10getRegionsEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bw = lshr i32 %i.bs, 23
  %.lobit.i.i.i.i.i.i.i.i.i48 = and i32 %i.bw, 1
  %i.bx = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i48 to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = lshr i32 %i.bs, 21
  %i.ca = and i32 %i.bz, 2040
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !123
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.cf ; 2 uses
  %i.ch = shl nuw nsw i32 %i.bt, 5
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i44, i64 %.sroa.4.0.i45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  %.not = icmp samesign eq i64 %.sroa.4.0.i45, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation10getRegionsEv.exit53, %bb.g
  %.sroa.060.083 = phi ptr [ %i.cq, %bb.g ], [ %i.cg, %_ZN4mlir9Operation10getRegionsEv.exit53 ] ; 4 uses
  %.sroa.7.082 = phi ptr [ %i.cp, %bb.g ], [ %.sroa.0.0.i44, %_ZN4mlir9Operation10getRegionsEv.exit53 ] ; 2 uses
  call void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.7.082, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.060.083, ptr nonnull %.sroa.060.083) #21
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.cm = call { ptr, i8 } @_ZN4mlir25ConversionPatternRewriter18convertRegionTypesEPNS_6RegionERKNS_13TypeConverterEPNS3_19SignatureConversionE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %.sroa.060.083, ptr noundef nonnull align 8 dereferenceable(508) %i.cl, ptr noundef null) #21
  %i.cn = extractvalue { ptr, i8 } %i.cm, 1
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.g, label %.thread79

bb.g:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.082, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.060.083, i64 32 ; 2 uses
  %i.cr = icmp ne ptr %i.cp, %i.cj
  %i.cs = icmp ne ptr %i.cq, %i.ck
  %.not3.i = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %_ZN4mlir9Operation10getRegionsEv.exit, %_ZN4mlir9Operation10getRegionsEv.exit53
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = call noundef ptr @_ZN4mlir9OpBuilder6insertEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull %i.aw) #21 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !124 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %i.cz = zext i32 %i.cw to i64
  %.sroa.0.0.i54 = select i1 %i.cx, ptr null, ptr %i.cy
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.sroa.0.0.i54, i64 %i.cz) #21
  %i.da = load i64, ptr %17, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dc = load i64, ptr %i.db, align 8
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %1, i64 %i.da, i64 %i.dc) #21
  br label %.thread79

.thread79:                                        ; preds = %.lr.ph, %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit, %._crit_edge
  %.sroa.040.4 = phi i8 [ 0, %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit ], [ 1, %._crit_edge ], [ 0, %.lr.ph ]
  %i.dd = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.a
  br i1 %i.de, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.thread79
  call void @free(ptr noundef %i.dd) #21
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %.thread79, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret i8 %.sroa.040.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir17ConversionPattern15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1IS0_PNS_9OperationEEEN4llvm13LogicalResultERKT_T0_NS4_8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  ret i8 %i.a
}

declare void @_ZN4mlir7PatternC2ENS0_17MatchAnyOpTypeTagENS_14PatternBenefitEPNS_11MLIRContextEN4llvm8ArrayRefINS5_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(88), i16, ptr noundef, ptr, i64) unnamed_addr #6

declare i8 @_ZNK4mlir13TypeConverter12convertTypesENS_9TypeRangeERN4llvm15SmallVectorImplINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(508), i64, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir9Operation6createENS_8LocationENS_13OperationNameENS_9TypeRangeENS_10ValueRangeEONS_13NamedAttrListENS_11PropertyRefENS_10BlockRangeEj(ptr, ptr, i64, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef byval(%"class.mlir::PropertyRef") align 8, ptr noundef byval(%"class.mlir::BlockRange") align 8, i32 noundef) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare void @_ZN4mlir13NamedAttrListC1EN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) unnamed_addr #6

declare void @_ZN4mlir10BlockRangeC1ENS_14SuccessorRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(28), ptr) local_unnamed_addr #6

declare { ptr, i8 } @_ZN4mlir25ConversionPatternRewriter18convertRegionTypesEPNS_6RegionERKNS_13TypeConverterEPNS3_19SignatureConversionE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(508), ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir9OpBuilder6insertEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

declare void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64, i64) unnamed_addr #6

declare void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4mlir14SuccessorRangeC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1IS0_PNS_9OperationEEEN4llvm13LogicalResultERKT_T0_NS4_8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.469, align 8            ; 4 uses
  %6 = alloca %"class.llvm::FailureOr.453", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr.453") align 8 %6, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %2, i64 %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !395, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !73
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 3, ptr %i.e, align 8, !tbaa !398, !alias.scope !399
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.f, align 1, !tbaa !400, !alias.scope !399
  store ptr @.str.11, ptr %8, align 8, !tbaa !97, !alias.scope !399
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.g, align 8, !tbaa !97, !alias.scope !399
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %.sroa.2.0.copyload.i, ptr %i.h, align 8, !tbaa !97, !alias.scope !399
  store ptr %8, ptr %7, align 8, !alias.scope !401
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.12, ptr %i.i, align 8, !alias.scope !401
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.j, align 8, !tbaa !398, !alias.scope !401
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 3, ptr %i.k, align 1, !tbaa !400, !alias.scope !401
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %7, ptr %5, align 8, !tbaa !402
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !408  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.n = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21
  br i1 %i.n, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8
  %i.p = ptrtoint ptr %5 to i64
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRPNS1_9OperationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.p) #21, !inline_history !393
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.d

end_hunk_0
