Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FlatLinearValueConstraints?download=true
inline.NumInlined: 2049
inline.NumDeleted: 881
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4mlir26FlatLinearValueConstraints16unionBoundingBoxERKS0_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 17, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i.i.i, label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = zext i32 %i.j to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8) #15
  %i.l = load i32, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !22
  %gepdiff.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 8 %i.n, i64 %gepdiff.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.c, %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i
  store i32 %i.j, ptr %i.g, align 8, !tbaa !21
  br label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i.i.i

_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.f, ptr noundef nonnull align 8 dereferenceable(288) %i.p, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 0, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 16, ptr %i.t, align 4, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !21
  %.not.i.i.i.i4.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.q, ptr noundef nonnull align 8 dereferenceable(272) %i.w) ; 0 uses
  br label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i.i.i

_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i.i.i: ; preds = %bb.d, %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.y, ptr noundef nonnull align 8 dereferenceable(288) %i.z, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 368
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 360
  store i32 0, ptr %i.ac, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 364
  store i32 16, ptr %i.ad, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21
  %.not.i.i.i.i5.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i5.i.i.i.i, label %_ZN4mlir26FlatLinearValueConstraintsC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ah = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.aa, ptr noundef nonnull align 8 dereferenceable(272) %i.ag) ; 0 uses
  br label %_ZN4mlir26FlatLinearValueConstraintsC2ERKS0_.exit

_ZN4mlir26FlatLinearValueConstraintsC2ERKS0_.exit: ; preds = %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i.i.i, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir26FlatLinearValueConstraintsE, i64 16), ptr %4, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  %i.am = add i32 %i.al, %i.aj
  call fastcc void @_ZL17mergeAndAlignVarsjPN4mlir26FlatLinearValueConstraintsES1_(i32 noundef %i.am, ptr noundef %0, ptr noundef nonnull %4)
  %i.an = call i8 @_ZN4mlir10presburger15IntegerRelation16unionBoundingBoxERKS1_(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 8 dereferenceable(624) %4) #15
  call void @_ZN4mlir10presburger15IntegerRelationD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ao = call i8 @_ZN4mlir10presburger15IntegerRelation16unionBoundingBoxERKS1_(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 8 dereferenceable(624) %1) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4mlir26FlatLinearValueConstraintsC2ERKS0_.exit
  %.sroa.0.0 = phi i8 [ %i.ao, %bb.f ], [ %i.an, %_ZN4mlir26FlatLinearValueConstraintsC2ERKS0_.exit ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ap) #15
  br label %_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit

_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.as = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit
  call void @free(ptr noundef %i.as) #15
  br label %_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit5

_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit5: ; preds = %_ZN4llvm11SmallVectorISt8optionalIN4mlir5ValueEELj3EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i8 %.sroa.0.0
}

declare i8 @_ZN4mlir10presburger15IntegerRelation16unionBoundingBoxERKS1_(ptr noundef nonnull align 8 dereferenceable(624), ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir9AffineMap10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder19getAffineSymbolExprEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare ptr @_ZNK4mlir9AffineMap21replaceDimsAndSymbolsEN4llvm8ArrayRefINS_10AffineExprEEES4_jj(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr, i64, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir29getMultiAffineFunctionFromMapENS_9AffineMapERNS_10presburger19MultiAffineFunctionE(ptr %0, ptr noundef nonnull align 8 dereferenceable(696) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::presburger::PresburgerSpace", align 16 ; 8 uses
  %3 = alloca %"class.mlir::AffineMap", align 8   ; 6 uses
  %4 = alloca %"class.mlir::FlatLinearConstraints", align 8 ; 14 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.mlir::presburger::DivisionRepr", align 8 ; 12 uses
  %7 = alloca %"class.mlir::presburger::Matrix", align 8 ; 11 uses
  %8 = alloca %"class.mlir::presburger::MultiAffineFunction", align 8 ; 14 uses
  %9 = alloca %"class.mlir::presburger::PresburgerSpace", align 8 ; 12 uses
  %10 = alloca %"class.mlir::presburger::IntMatrix", align 8 ; 13 uses
  %11 = alloca %"class.mlir::presburger::Matrix", align 8 ; 6 uses
  store ptr %0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %2, i8 0, i64 17, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22, !alias.scope !316
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.c, align 16, !tbaa !21, !alias.scope !316
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !26, !alias.scope !316
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir10presburger15IntegerRelationE, i64 16), ptr %4, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.i, align 4, !tbaa !26
  call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2Ejjjj(ptr noundef nonnull align 8 dereferenceable(288) %i.g, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.k = load <4 x i32>, ptr %2, align 16, !tbaa !43
  %i.l = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.k)
  %op.rdx = add i32 %i.l, 1
  call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2Ejjjj(ptr noundef nonnull align 8 dereferenceable(288) %i.j, i32 noundef 0, i32 noundef %op.rdx, i32 noundef 0, i32 noundef 1) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir10presburger17IntegerPolyhedronE, i64 16), ptr %4, align 8, !tbaa !42
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZN4mlir21FlatLinearConstraintsC2Ejjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.m) #15
  br label %_ZN4mlir21FlatLinearConstraintsC2Ejjj.exit

_ZN4mlir21FlatLinearConstraintsC2Ejjj.exit:       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir21FlatLinearConstraintsE, i64 16), ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.o = call i8 @_ZN4mlir23getFlattenedAffineExprsENS_9AffineMapEPSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS4_EEPNS_21FlatLinearConstraintsEb(ptr %0, ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false)
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %_ZN4mlir21FlatLinearConstraintsC2Ejjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZNK4mlir10presburger15IntegerRelation13getLocalReprsEPSt6vectorINS0_14MaybeLocalReprESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::presburger::DivisionRepr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(624) %4, ptr noundef null) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.q = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.r = call noundef i32 @_ZNK4mlir9AffineMap12getNumInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.s = load i32, ptr %6, align 8, !tbaa !64
  %i.t = add i32 %i.r, 1
  %i.u = add i32 %i.t, %i.s
  call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC1Ejjjj(ptr noundef nonnull align 8 dereferenceable(288) %7, i32 noundef %i.q, i32 noundef %i.u, i32 noundef 0, i32 noundef 0) #15
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 80                ; 2 uses
  %i.ac = and i64 %i.ab, 4294967295
  %.not60 = icmp eq i64 %i.ac, 0
  br i1 %.not60, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %wide.trip.count66 = and i64 %i.ab, 4294967295
  br label %bb.ac

._crit_edge59:                                    ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.af = call noundef i32 @_ZNK4mlir9AffineMap10getNumDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.ag = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.ah = call noundef i32 @_ZNK4mlir9AffineMap13getNumSymbolsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.ai = load i32, ptr %6, align 8, !tbaa !64
  store i32 %i.af, ptr %9, align 8, !tbaa !36, !alias.scope !317
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !37, !alias.scope !317
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.ah, ptr %i.ak, align 8, !tbaa !38, !alias.scope !317
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !39, !alias.scope !317
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.am, align 8, !tbaa !40, !alias.scope !317
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !22, !alias.scope !317
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %i.ap, align 8, !tbaa !21, !alias.scope !317
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 0, ptr %i.aq, align 4, !tbaa !26, !alias.scope !317
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull align 8 dereferenceable(288) %7, i64 12, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store i32 0, ptr %i.at, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 16, ptr %i.au, align 4, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !21
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit.thread, label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit

_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit.thread: ; preds = %._crit_edge59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store i32 0, ptr %i.az, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 16, ptr %i.ba, align 4, !tbaa !26
  br label %_ZN4mlir10presburger9IntMatrixC2ENS0_6MatrixIN4llvm12DynamicAPIntEEE.exit

_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit: ; preds = %._crit_edge59
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.ar, ptr noundef nonnull align 8 dereferenceable(272) %i.bb) ; 0 uses
  %.pre.a = load i32, ptr %i.at, align 8, !tbaa !21
  %i.bd = icmp eq i32 %.pre.a, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef nonnull align 8 dereferenceable(288) %11, i64 12, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 16, ptr %i.bh, align 4, !tbaa !26
  br i1 %i.bd, label %_ZN4mlir10presburger9IntMatrixC2ENS0_6MatrixIN4llvm12DynamicAPIntEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit
  %i.bi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.be, ptr noundef nonnull align 8 dereferenceable(272) %i.ar) ; 0 uses
  br label %_ZN4mlir10presburger9IntMatrixC2ENS0_6MatrixIN4llvm12DynamicAPIntEEE.exit

_ZN4mlir10presburger9IntMatrixC2ENS0_6MatrixIN4llvm12DynamicAPIntEEE.exit: ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit.thread, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit, %bb.d
  %i.bj = phi ptr [ %i.az, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit.thread ], [ %i.bg, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit ], [ %i.bg, %bb.d ]
  %i.bk = phi ptr [ %i.ay, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit.thread ], [ %i.bf, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit ], [ %i.bf, %bb.d ]
  %i.bl = phi ptr [ %i.ax, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit.thread ], [ %i.be, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2ERKS4_.exit ], [ %i.be, %bb.d ] ; 2 uses
  call void @_ZN4mlir10presburger19MultiAffineFunctionC2ERKNS0_15PresburgerSpaceERKNS0_9IntMatrixERKNS0_12DivisionReprE(ptr noundef nonnull align 8 dereferenceable(696) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef nonnull align 8 dereferenceable(368) %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 8 dereferenceable(696) %8, i64 17, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i.i13 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4mlir10presburger9IntMatrixC2ENS0_6MatrixIN4llvm12DynamicAPIntEEE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.bq, align 8, !tbaa !21
  br label %_ZN4mlir10presburger19MultiAffineFunctionaSEOS1_.exit

bb.f:                                             ; preds = %_ZN4mlir10presburger9IntMatrixC2ENS0_6MatrixIN4llvm12DynamicAPIntEEE.exit
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !22 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE12assignRemoteEOS4_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.br) #15
  %.pre.i.i.i = load i32, ptr %i.bo, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE12assignRemoteEOS4_.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE12assignRemoteEOS4_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.bu = phi i32 [ %i.bp, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !22
  store ptr %i.bw, ptr %i.bm, align 8, !tbaa !22
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.ca, ptr %i.bn, align 8, !tbaa !22
  store i32 0, ptr %i.bx, align 4, !tbaa !26
  store i32 0, ptr %i.bo, align 8, !tbaa !21
  br label %_ZN4mlir10presburger19MultiAffineFunctionaSEOS1_.exit

_ZN4mlir10presburger19MultiAffineFunctionaSEOS1_.exit: ; preds = %bb.e, %_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE12assignRemoteEOS4_.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.cb, ptr noundef nonnull align 8 dereferenceable(288) %i.cc, i64 12, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.cd, ptr noundef nonnull align 8 dereferenceable(272) %i.ce) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.cg, ptr noundef nonnull align 8 dereferenceable(368) %i.ch, i64 12, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.ci, ptr noundef nonnull align 8 dereferenceable(272) %i.cj) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 616
  %i.cn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(80) %i.cl, ptr noundef nonnull align 8 dereferenceable(80) %i.cm) ; 0 uses
  call void @_ZN4mlir10presburger19MultiAffineFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(696) dereferenceable(696) %8) #15
  %i.co = load ptr, ptr %i.bl, align 8, !tbaa !22 ; 3 uses
  %i.cp = load i32, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not5.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4mlir10presburger19MultiAffineFunctionaSEOS1_.exit
  %i.cq = zext i32 %i.cp to i64
  %.idx.i.i = shl nuw nsw i64 %i.cq, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.cs, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i ], [ %i.cr, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -16 ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.h, !prof !51

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.cv = icmp ugt i32 %i.cu, 64
  br i1 %i.cv, label %bb.i, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !50 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #16
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i:            ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph.i.i.i
  %.not.i.i.i14 = icmp eq ptr %i.co, %i.cs
  br i1 %.not.i.i.i14, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.bl, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %_ZN4mlir10presburger19MultiAffineFunctionaSEOS1_.exit
  %i.cy = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.co, %_ZN4mlir10presburger19MultiAffineFunctionaSEOS1_.exit ] ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bk
  br i1 %i.cz, label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.cy) #15
  br label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit

_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i, %bb.k
  %i.da = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 3 uses
  %i.db = load i32, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %.not5.i.i.i15 = icmp eq i32 %i.db, 0
  br i1 %.not5.i.i.i15, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i25, label %.lr.ph.i.preheader.i.i16

.lr.ph.i.preheader.i.i16:                         ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit
  %i.dc = zext i32 %i.db to i64
end_hunk_0
begin_hunk_1_@_ZN4mlir29getMultiAffineFunctionFromMapENS_9AffineMapERNS_10presburger19MultiAffineFunctionE:bb.a
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i21, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.di) #16
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i21

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i21:          ; preds = %bb.n, %bb.m, %bb.l, %.lr.ph.i.i.i18
  %.not.i.i.i22 = icmp eq ptr %i.da, %i.de
  br i1 %.not.i.i.i22, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i23, label %.lr.ph.i.i.i18, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i23: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i21
  %.pre.i.i24 = load ptr, ptr %i.ar, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i25

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i25: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i23, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit
  %i.dk = phi ptr [ %.pre.i.i24, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i23 ], [ %i.da, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit ] ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.as
  br i1 %i.dl, label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit26, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i25
  call void @free(ptr noundef %i.dk) #15
  br label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit26

_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit26: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.dm = load ptr, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ao
  br i1 %i.dn, label %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit26
  call void @free(ptr noundef %i.dm) #15
  br label %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit

_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit:   ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit26, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !22 ; 3 uses
  %i.dq = load i32, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %.not5.i.i.i27 = icmp eq i32 %i.dq, 0
  br i1 %.not5.i.i.i27, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i37, label %.lr.ph.i.preheader.i.i28

.lr.ph.i.preheader.i.i28:                         ; preds = %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit
  %i.dr = zext i32 %i.dq to i64
  %.idx.i.i29 = shl nuw nsw i64 %i.dr, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx.i.i29
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33, %.lr.ph.i.preheader.i.i28
  %.06.i.i.i31 = phi ptr [ %i.dt, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33 ], [ %i.ds, %.lr.ph.i.preheader.i.i28 ] ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.06.i.i.i31, i64 -16 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.06.i.i.i31, i64 -8
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i32 = icmp eq i32 %i.dv, 0
  br i1 %.not4.i.i.i32, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33, label %bb.q, !prof !51

bb.q:                                             ; preds = %.lr.ph.i.i.i30
  %i.dw = icmp ugt i32 %i.dv, 64
  br i1 %i.dw, label %bb.r, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33

bb.r:                                             ; preds = %bb.q
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !50 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #16
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33:          ; preds = %bb.s, %bb.r, %bb.q, %.lr.ph.i.i.i30
  %.not.i.i.i34 = icmp eq ptr %i.dp, %i.dt
  br i1 %.not.i.i.i34, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i35, label %.lr.ph.i.i.i30, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i35: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i33
  %.pre.i.i36 = load ptr, ptr %i.do, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i37

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i37: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i35, %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit
  %i.dz = phi ptr [ %.pre.i.i36, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i35 ], [ %i.dp, %_ZN4mlir10presburger15PresburgerSpaceD2Ev.exit ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit38, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i37
  call void @free(ptr noundef %i.dz) #15
  br label %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit38

_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit38: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i37, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !22 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !21 ; 2 uses
  %.not5.i.i.i39 = icmp eq i32 %i.ef, 0
  br i1 %.not5.i.i.i39, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i49, label %.lr.ph.i.preheader.i.i40

.lr.ph.i.preheader.i.i40:                         ; preds = %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit38
  %i.eg = zext i32 %i.ef to i64
  %.idx.i.i41 = shl nuw nsw i64 %i.eg, 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx.i.i41
  br label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45, %.lr.ph.i.preheader.i.i40
  %.06.i.i.i43 = phi ptr [ %i.ei, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45 ], [ %i.eh, %.lr.ph.i.preheader.i.i40 ] ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.06.i.i.i43, i64 -16 ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.06.i.i.i43, i64 -8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i44 = icmp eq i32 %i.ek, 0
  br i1 %.not4.i.i.i44, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45, label %bb.u, !prof !51

bb.u:                                             ; preds = %.lr.ph.i.i.i42
  %i.el = icmp ugt i32 %i.ek, 64
  br i1 %i.el, label %bb.v, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45

bb.v:                                             ; preds = %bb.u
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !50 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.em) #16
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45:          ; preds = %bb.w, %bb.v, %bb.u, %.lr.ph.i.i.i42
  %.not.i.i.i46 = icmp eq ptr %i.ed, %i.ei
  br i1 %.not.i.i.i46, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i47, label %.lr.ph.i.i.i42, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i47: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i45
  %.pre.i.i48 = load ptr, ptr %i.ec, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i49

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i49: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i47, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit38
  %i.eo = phi ptr [ %.pre.i.i48, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i47 ], [ %i.ed, %_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEED2Ev.exit38 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZN4llvm11SmallVectorINS_12DynamicAPIntELj4EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i49
  call void @free(ptr noundef %i.eo) #15
  br label %_ZN4llvm11SmallVectorINS_12DynamicAPIntELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12DynamicAPIntELj4EED2Ev.exit.i: ; preds = %bb.x, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i49
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !22 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !21 ; 2 uses
  %.not5.i.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not5.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN4llvm11SmallVectorINS_12DynamicAPIntELj4EED2Ev.exit.i
  %i.ev = zext i32 %i.eu to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ev, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ex, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i ], [ %i.ew, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.06.i.i.i.i, i64 -16 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.06.i.i.i.i, i64 -8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i, label %bb.y, !prof !51

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fa = icmp ugt i32 %i.ez, 64
  br i1 %i.fa, label %bb.z, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !50 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.fb) #16
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i:          ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph.i.i.i.i
  %.not.i.i.i.i50 = icmp eq ptr %i.es, %i.ex
  br i1 %.not.i.i.i.i50, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i.i
  %.pre.i.i.i51 = load ptr, ptr %i.er, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, %_ZN4llvm11SmallVectorINS_12DynamicAPIntELj4EED2Ev.exit.i
  %i.fd = phi ptr [ %.pre.i.i.i51, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i ], [ %i.es, %_ZN4llvm11SmallVectorINS_12DynamicAPIntELj4EED2Ev.exit.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZN4mlir10presburger12DivisionReprD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  call void @free(ptr noundef %i.fd) #15
  br label %_ZN4mlir10presburger12DivisionReprD2Ev.exit

_ZN4mlir10presburger12DivisionReprD2Ev.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ag

bb.ac:                                            ; preds = %.lr.ph58, %._crit_edge
  %12 = phi ptr [ %i.x, %.lr.ph58 ], [ %13, %._crit_edge ] ; 2 uses
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next64, %._crit_edge ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [80 x i8], ptr %12, i64 %indvars.iv63
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !21 ; 2 uses
  %.not61 = icmp eq i32 %i.fi, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ac
  %wide.trip.count = zext i32 %i.fi to i64
  %i.fj = trunc nuw i64 %indvars.iv63 to i32
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm12DynamicAPInt9initSmallEl.exit
  %.pre = load ptr, ptr %5, align 8, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ac
  %13 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %12, %bb.ac ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge59, label %bb.ac, !llvm.loop !314

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm12DynamicAPInt9initSmallEl.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4llvm12DynamicAPInt9initSmallEl.exit ] ; 3 uses
  %i.fk = load ptr, ptr %5, align 8, !tbaa !19
  %i.fl = getelementptr inbounds nuw [80 x i8], ptr %i.fk, i64 %indvars.iv63
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !25
  %i.fp = load i32, ptr %i.ae, align 8, !tbaa !69
  %i.fq = mul i32 %i.fp, %i.fj
  %i.fr = trunc nuw i64 %indvars.iv to i32
  %i.fs = add i32 %i.fq, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.ft ; 3 uses
  %i.fw = shl i64 %i.fo, 32
  %i.fx = ashr exact i64 %i.fw, 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq i32 %i.fz, 0
  br i1 %.not, label %_ZN4llvm12DynamicAPInt9initSmallEl.exit, label %bb.ad, !prof !51

bb.ad:                                            ; preds = %.lr.ph
  %i.ga = icmp ugt i32 %i.fz, 64
  br i1 %i.ga, label %bb.ae, label %_ZN4llvm12DynamicAPInt9initSmallEl.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !50 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_ZN4llvm12DynamicAPInt9initSmallEl.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.gb) #16
  br label %_ZN4llvm12DynamicAPInt9initSmallEl.exit

_ZN4llvm12DynamicAPInt9initSmallEl.exit:          ; preds = %bb.af, %bb.ae, %bb.ad, %.lr.ph
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !50
  store i32 0, ptr %i.fy, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !315

bb.ag:                                            ; preds = %_ZN4mlir21FlatLinearConstraintsC2Ejjj.exit, %_ZN4mlir10presburger12DivisionReprD2Ev.exit
  %.sroa.011.0 = phi i8 [ 1, %_ZN4mlir10presburger12DivisionReprD2Ev.exit ], [ 0, %_ZN4mlir21FlatLinearConstraintsC2Ejjj.exit ]
  %i.gd = load ptr, ptr %5, align 8, !tbaa !19    ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i.i52 = icmp eq ptr %i.gd, %i.gf
  br i1 %.not4.i.i.i52, label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %bb.ag, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i ], [ %i.gd, %bb.ag ] ; 3 uses
  %i.gg = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i53
  call void @free(ptr noundef %i.gg) #15
  br label %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i53
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gj, %i.gf
  br i1 %.not.i.i.i54, label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i53, !llvm.loop !0

_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split.i, %bb.ag
  %i.gk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split.i ], [ %i.gd, %bb.ag ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !29
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #16
  br label %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN4mlir10presburger15IntegerRelationD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i8 %.sroa.011.0
}

declare void @_ZNK4mlir10presburger15IntegerRelation13getLocalReprsEPSt6vectorINS0_14MaybeLocalReprESaIS3_EE(ptr dead_on_unwind writable sret(%"class.mlir::presburger::DivisionRepr") align 8, ptr noundef nonnull align 8 dereferenceable(624), ptr noundef) local_unnamed_addr #2

declare void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC1Ejjjj(ptr noundef nonnull align 8 dereferenceable(288), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10presburger19MultiAffineFunctionC2ERKNS0_15PresburgerSpaceERKNS0_9IntMatrixERKNS0_12DivisionReprE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(368) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 17, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.e, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  %i.h = icmp eq ptr %0, %1
  %or.cond.i.i = or i1 %i.h, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit, label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i

_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %bb.a
  %i.i = zext i32 %i.g to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.c, i64 noundef %i.i, i64 noundef 8) #15
  %i.j = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !22
  %gepdiff.i.i.i = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 8 %i.l, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b, %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !21
  br label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit

_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit: ; preds = %bb.a, %.sink.split.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.c, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.o, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 16, ptr %i.q, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21
  %.not.i.i.i.i4 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i4, label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.n, ptr noundef nonnull align 8 dereferenceable(272) %i.t) ; 0 uses
  br label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit

_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit:      ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.v, ptr noundef nonnull align 8 dereferenceable(368) %3, i64 12, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.x, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 16, ptr %i.z, align 4, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.w, ptr noundef nonnull align 8 dereferenceable(272) %i.ac) ; 0 uses
  br label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i

_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i:    ; preds = %bb.d, %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 0, ptr %i.ag, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i32 4, ptr %i.ah, align 4, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !21
  %.not.i.i.i5 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i5, label %_ZN4mlir10presburger12DivisionReprC2ERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.al = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %i.ak) ; 0 uses
  br label %_ZN4mlir10presburger12DivisionReprC2ERKS1_.exit

_ZN4mlir10presburger12DivisionReprC2ERKS1_.exit:  ; preds = %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i, %bb.e
  tail call void @_ZNK4mlir10presburger19MultiAffineFunction18assertIsConsistentEv(ptr noundef nonnull align 8 dereferenceable(696) %0) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10presburger19MultiAffineFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(696) dereferenceable(696) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.g, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i ], [ %i.f, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -16 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.b, !prof !51

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = icmp ugt i32 %i.i, 64
  br i1 %i.j, label %bb.c, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #16
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i:            ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %bb.a
end_hunk_1
