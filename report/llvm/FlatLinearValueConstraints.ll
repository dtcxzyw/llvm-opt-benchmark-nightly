Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FlatLinearValueConstraints?download=true
inline.NumInlined: 2049
inline.NumDeleted: 881
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl:bb.a

declare void @_ZN4mlir10presburger15IntegerRelation8addBoundENS0_9BoundTypeEN4llvm8ArrayRefINS3_12DynamicAPIntEEERKS5_(ptr noundef nonnull align 8 dereferenceable(624), i32 noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::AffineSymbolExpr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %4 = alloca %"class.mlir::AffineConstantExpr", align 8 ; 4 uses
  %5 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %6 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %7 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %9 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 4 uses
  %10 = alloca %"class.mlir::AffineExpr", align 8 ; 3 uses
  store ptr %1, ptr %10, align 8
  %i.a = call noundef i32 @_ZNK4mlir10AffineExpr7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15
  %.sroa.0.0.copyload.i = load ptr, ptr %10, align 8, !tbaa !16 ; 8 uses
  switch i32 %i.a, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.b = load ptr, ptr %9, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.c = call i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE21walkOperandsPostOrderENS_18AffineBinaryOpExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.b)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = call i8 @_ZN4mlir25SimpleAffineExprFlattener12visitAddExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.b) #15
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.f = load ptr, ptr %8, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.g = call i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE21walkOperandsPostOrderENS_18AffineBinaryOpExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.f)
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = call i8 @_ZN4mlir25SimpleAffineExprFlattener12visitMulExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.f) #15
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.j = load ptr, ptr %7, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = call i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE21walkOperandsPostOrderENS_18AffineBinaryOpExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.j)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir25SimpleAffineExprFlattener12visitModExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.j) #15
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.n = load ptr, ptr %6, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.o = call i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE21walkOperandsPostOrderENS_18AffineBinaryOpExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.n)
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.q = call i8 @_ZN4mlir25SimpleAffineExprFlattener17visitFloorDivExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.n) #15
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.r = load ptr, ptr %5, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.s = call i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE21walkOperandsPostOrderENS_18AffineBinaryOpExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.r)
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.u = call i8 @_ZN4mlir25SimpleAffineExprFlattener16visitCeilDivExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.r) #15
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4mlir18AffineConstantExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.v = load ptr, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.w = call i8 @_ZN4mlir25SimpleAffineExprFlattener17visitConstantExprENS_18AffineConstantExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.v) #15
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.x = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.y = call i8 @_ZN4mlir25SimpleAffineExprFlattener12visitDimExprENS_13AffineDimExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.x) #15
  br label %bb.p

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4mlir16AffineSymbolExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.sroa.0.0.copyload.i) #15
  %i.z = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = call i8 @_ZN4mlir25SimpleAffineExprFlattener15visitSymbolExprENS_16AffineSymbolExprE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.z) #15
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.n, %bb.m, %bb.l
  %.sroa.031.5 = phi i8 [ %i.aa, %bb.n ], [ %i.e, %bb.c ], [ %i.i, %bb.e ], [ %i.m, %bb.g ], [ %i.q, %bb.i ], [ %i.w, %bb.l ], [ %i.y, %bb.m ], [ %i.u, %bb.k ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ]
  ret i8 %.sroa.031.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE21walkOperandsPostOrderENS_18AffineBinaryOpExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::AffineBinaryOpExpr", align 8 ; 3 uses
  store ptr %1, ptr %2, align 8
  %i.a = call ptr @_ZNK4mlir18AffineBinaryOpExpr6getLHSEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.b = call i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.a)
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @_ZNK4mlir18AffineBinaryOpExpr6getRHSEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.e = call i8 @_ZN4mlir17AffineExprVisitorINS_25SimpleAffineExprFlattenerEN4llvm13LogicalResultEE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.04.0 = phi i8 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.04.0
}

declare i8 @_ZN4mlir25SimpleAffineExprFlattener12visitAddExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare i8 @_ZN4mlir25SimpleAffineExprFlattener12visitMulExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare i8 @_ZN4mlir25SimpleAffineExprFlattener12visitModExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare i8 @_ZN4mlir25SimpleAffineExprFlattener17visitFloorDivExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare i8 @_ZN4mlir25SimpleAffineExprFlattener16visitCeilDivExprENS_18AffineBinaryOpExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare i8 @_ZN4mlir25SimpleAffineExprFlattener17visitConstantExprENS_18AffineConstantExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare i8 @_ZN4mlir25SimpleAffineExprFlattener12visitDimExprENS_13AffineDimExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare i8 @_ZN4mlir25SimpleAffineExprFlattener15visitSymbolExprENS_16AffineSymbolExprE(ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #2

declare void @_ZN4mlir18AffineBinaryOpExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare ptr @_ZNK4mlir18AffineBinaryOpExpr6getLHSEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZNK4mlir18AffineBinaryOpExpr6getRHSEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir18AffineConstantExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN4mlir16AffineSymbolExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvT_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv exact i64 %i.c, 80
  %i.l = icmp ugt i64 %i.k, 115292150460684697
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #17
  unreachable

_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #18 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEES8_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj8EEEJRS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj8EEEJRS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE11_M_allocateEm.exit.i ] ; 8 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj8EEEJRS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.n, ptr %.09.i.i.i.i.i, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  store i32 8, ptr %i.p, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21   ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  %i.s = icmp eq ptr %.09.i.i.i.i.i, %.sroa.04.08.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = or i1 %i.s, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj8EEEJRS2_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = icmp ugt i32 %i.r, 8
  br i1 %i.t, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = zext i32 %i.r to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %.09.i.i.i.i.i, ptr noundef nonnull %i.n, i64 noundef %i.u, i64 noundef 8) #15
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.q, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !22
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i, %bb.d
  %i.v = phi ptr [ %.pre.i.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.n, %bb.d ]
  %i.w = phi i32 [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.r, %bb.d ]
  %i.x = zext i32 %i.w to i64
  %i.y = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !22
  %gepdiff.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 8 %i.y, i64 %gepdiff.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i
  store i32 %i.r, ptr %i.o, align 8, !tbaa !21
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj8EEEJRS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIlLj8EEEJRS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 80
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEES8_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !321

_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEES8_mT_SA_.exit: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIlLj8EEEJRS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE11_M_allocateEm.exit.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEES8_mT_SA_.exit, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i ], [ %i.ab, %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEES8_mT_SA_.exit ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i, align 8, !tbaa !22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.ae) #15
  br label %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ah, %i.ad
  br i1 %.not.i.i18, label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit

_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEES8_mT_SA_.exit
  %i.ai = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exitthread-pre-split ], [ %i.ab, %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEES8_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #16
  br label %_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm11SmallVectorIlLj8EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit, %bb.f
  store ptr %i.m, ptr %0, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !27
  store ptr %i.an, ptr %i.d, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.g:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27 ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.ar, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = icmp sgt i64 %i.c, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.h
  %i.at = udiv exact i64 %i.c, 80
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.bu, %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.bt, %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bs, %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %i.au = icmp eq ptr %.0812.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %i.au, label %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !21 ; 6 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !21 ; 4 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.az, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not29.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not29.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.bc = load ptr, ptr %.0812.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not31.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 1
  br i1 %.not31.i.i.i.i.i.i.i, label %bb.m, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bc, ptr align 8 %i.bb, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !25
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !25
  br label %.sink.split.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26
  %i.bg = icmp ult i32 %i.bf, %i.aw
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ay, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %.0812.i.i.i.i.i, ptr noundef nonnull %i.bh, i64 noundef %i.ax, i64 noundef 8) #15
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %.not28.i.i.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not28.i.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.bj = load ptr, ptr %.0812.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp eq i32 %i.az, 1
  br i1 %.not33.i.i.i.i.i.i.i, label %bb.s, label %bb.r, !prof !23

bb.r:                                             ; preds = %bb.q
  %.idx32.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bj, ptr align 8 %i.bi, i64 %.idx32.i.i.i.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !25
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !25
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p, %bb.o
  %.022.i.i.i.i.i.i.i = phi i64 [ 0, %bb.o ], [ 0, %bb.p ], [ %i.ba, %bb.r ], [ 1, %bb.s ] ; 4 uses
  %i.bl = load i32, ptr %i.av, align 8, !tbaa !21
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i20 = icmp samesign eq i64 %.022.i.i.i.i.i.i.i, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i20, label %.sink.split.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i
  %i.bn = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !22
  %.idx35.i.i.i.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i.i.i.i, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx35.i.i.i.i.i.i.i
  %i.bp = load ptr, ptr %.0812.i.i.i.i.i, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.022.i.i.i.i.i.i.i
  %i.br = sub nsw i64 %i.bm, %.022.i.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i.i.i = shl nsw i64 %i.br, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 8 %i.bo, i64 %gepdiff.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.t, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i.i, %bb.m, %bb.l, %bb.j
  store i32 %i.aw, ptr %i.ay, align 8, !tbaa !21
  br label %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i19
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 80 ; 2 uses
  %i.bu = add nsw i64 %.014.i.i.i.i.i, -1
  %i.bv = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i19, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.loopexit, !llvm.loop !322

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.loopexit: ; preds = %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !27
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.loopexit, %bb.h
  %i.bw = phi ptr [ %i.ap, %bb.h ], [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.f, %bb.h ], [ %i.bt, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.loopexit ] ; 3 uses
  %.not.i21 = icmp eq ptr %i.bw, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i21, label %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ca, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ] ; 3 uses
  %i.bx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.bx) #15
  br label %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.bw
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !27
  br label %_ZNSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ar ; 2 uses
  %i.cb = icmp sgt i64 %i.ar, 0
  br i1 %i.cb, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit42

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm11SmallVectorIlLj8EEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cc = udiv exact i64 %i.ar, 80
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZN4llvm11SmallVectorIlLj8EEaSERKS1_.exit.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i23
end_hunk_0
