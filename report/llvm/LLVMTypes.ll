Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMTypes?download=true
inline.NumInlined: 4809
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4mlir4LLVM20isScalableVectorTypeENS_4TypeE:bb.a
  %i.k = load i8, ptr %i.j, align 1, !tbaa !140, !range !62, !noundef !63
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %bb.d, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !140, !range !62, !noundef !63
  %.not5.i = icmp eq i8 %i.m, 0
  br i1 %.not5.i, label %bb.e, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit13

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !140, !range !62, !noundef !63
  %.not6.i = icmp eq i8 %i.o, 0
  br i1 %.not6.i, label %bb.f, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit15

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.q = add nsw i64 %.047.i.i.i.i.i, -1
  %i.r = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.r, label %bb.b, label %._crit_edge.i.i.i.i.i, !llvm.loop !5

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %bb.a
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %scevgep.i.i.i.i.i, %bb.f ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i to i64
  %i.s = sub i64 %i.e, %.pre-phi.i.i.i.i.i
  switch i64 %i.s, label %bb.j [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.t = load i8, ptr %.029.lcssa.i.i.i.i.i, align 1, !tbaa !140, !range !62, !noundef !63
  %.not7.i = icmp eq i8 %i.t, 0
  br i1 %.not7.i, label %bb.h, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.u, %bb.h ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.v = load i8, ptr %.1.i.i.i.i.i, align 1, !tbaa !140, !range !62, !noundef !63
  %.not8.i = icmp eq i8 %i.v, 0
  br i1 %.not8.i, label %bb.i, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.w, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.x = load i8, ptr %.2.i.i.i.i.i, align 1, !tbaa !140, !range !62, !noundef !63
  %.not9.i = icmp eq i8 %i.x, 0
  br i1 %.not9.i, label %bb.j, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.j:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit13: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit15: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit:         ; preds = %bb.b, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit13, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit15, %bb.g, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i, %bb.j
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %i.d, %bb.j ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.g ], [ %i.aa, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit15 ], [ %i.z, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit13 ], [ %i.y, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.b ]
  %i.ab = icmp ne ptr %.028.i.i.i.i.i, %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i1 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4LLVM13getVectorTypeENS_4TypeEjb(ptr %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = zext i32 %1 to i64
  store i64 %i.d, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 %i.c, ptr %i.b, align 1, !tbaa !140
  %i.e = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.a, i64 1, ptr %0, ptr nonnull %i.b, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.e
}

declare ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr, i64, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4LLVM13getVectorTypeENS_4TypeERKN4llvm12ElementCountE(ptr %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(5) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !508, !range !62, !noundef !63
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load i32, ptr %1, align 4, !tbaa !509
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 %i.i, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i8 1, ptr %i.d, align 1, !tbaa !140
  %i.j = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.c, i64 1, ptr %0, ptr nonnull %i.d, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.i, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !tbaa !140
  %i.k = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.a, i64 1, ptr %0, ptr nonnull %i.b, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0 = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM26getPrimitiveTypeSizeInBitsENS_4TypeE(ptr %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %2 = alloca %"class.mlir::IntegerType", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !27 ; 10 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_12BFloat16TypeEvE2idE
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11Float16TypeEvE2idE
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.e, label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float16TypeERZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_0EERS4_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float16TypeERZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_0EERS4_OT0_.exit": ; preds = %bb.a
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11Float32TypeEvE2idE
  br i1 %i.e, label %bb.e, label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float32TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_1EERS4_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float32TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_1EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float16TypeERZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_0EERS4_OT0_.exit"
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11Float64TypeEvE2idE
  br i1 %i.f, label %bb.e, label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float64TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_2EERS4_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float64TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_2EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float32TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_1EERS4_OT0_.exit"
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11Float80TypeEvE2idE
  br i1 %i.g, label %bb.e, label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float80TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_3EERS4_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float80TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_3EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float64TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_2EERS4_OT0_.exit"
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_12Float128TypeEvE2idE
  br i1 %i.h, label %bb.e, label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_12Float128TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_4EERS4_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_12Float128TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_4EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float80TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_3EERS4_OT0_.exit"
  %i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  br i1 %i.i, label %bb.b, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_5EERS6_OT_.exit"

bb.b:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_12Float128TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_4EERS4_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %i.j = call noundef i32 @_ZNK4mlir11IntegerType8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %i.k = zext i32 %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.e

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_5EERS6_OT_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_12Float128TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_4EERS4_OT0_.exit"
  %i.l = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM12LLVMByteTypeEvE2idE
  br i1 %i.l, label %bb.c, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_6EERS6_OT_.exit"

bb.c:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_5EERS6_OT_.exit"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !102
  %i.o = zext i32 %i.n to i64
  br label %bb.e

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_6EERS6_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_5EERS6_OT_.exit"
  %i.p = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16LLVMPPCFP128TypeEvE2idE
  br i1 %i.p, label %bb.e, label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_4LLVM16LLVMPPCFP128TypeEZNS6_26getPrimitiveTypeSizeInBitsES2_E3$_7EERS4_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_4LLVM16LLVMPPCFP128TypeEZNS6_26getPrimitiveTypeSizeInBitsES2_E3$_7EERS4_OT0_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_6EERS6_OT_.exit"
  %i.q = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.q, label %bb.d, label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_10VectorTypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_8EERS4_OT0_.exit"

bb.d:                                             ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_4LLVM16LLVMPPCFP128TypeEZNS6_26getPrimitiveTypeSizeInBitsES2_E3$_7EERS4_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %0, ptr %1, align 8
  %i.r = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16, !inline_history !510
  %i.s = call { i64, i8 } @_ZN4mlir4LLVM26getPrimitiveTypeSizeInBitsENS_4TypeE(ptr %i.r), !inline_history !510 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.s, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.s, 1
  %i.t = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.u, i64 %i.v) #16
  %i.x = mul i64 %i.w, %.fca.0.extract.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float80TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_3EERS4_OT0_.exit", %bb.c, %bb.b, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float64TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_2EERS4_OT0_.exit", %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float32TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_1EERS4_OT0_.exit", %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float16TypeERZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_0EERS4_OT0_.exit", %bb.a, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_6EERS6_OT_.exit"
  %.sroa.13.10.ph = phi i64 [ 128, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_6EERS6_OT_.exit" ], [ 16, %bb.a ], [ %i.x, %bb.d ], [ 32, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float16TypeERZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_0EERS4_OT0_.exit" ], [ 64, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float32TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_1EERS4_OT0_.exit" ], [ 80, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float64TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_2EERS4_OT0_.exit" ], [ %i.k, %bb.b ], [ %i.o, %bb.c ], [ 128, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float80TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_3EERS4_OT0_.exit" ]
  %.sroa.24.10.ph = phi i8 [ 0, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir4TypeENS_8TypeSizeEEES4_E4CaseIZNS3_4LLVM26getPrimitiveTypeSizeInBitsES4_E3$_6EERS6_OT_.exit" ], [ 0, %bb.a ], [ %.fca.1.extract.i.i, %bb.d ], [ 0, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float16TypeERZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_0EERS4_OT0_.exit" ], [ 0, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float32TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_1EERS4_OT0_.exit" ], [ 0, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float64TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_2EERS4_OT0_.exit" ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_11Float80TypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_3EERS4_OT0_.exit" ]
  %i.y = insertvalue { i64, i8 } poison, i64 %.sroa.13.10.ph, 0
  %i.z = insertvalue { i64, i8 } %i.y, i8 %.sroa.24.10.ph, 1
  br label %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_10VectorTypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_8EERS4_OT0_.exit"

"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_10VectorTypeEZNS1_4LLVM26getPrimitiveTypeSizeInBitsES2_E3$_8EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_4LLVM16LLVMPPCFP128TypeEZNS6_26getPrimitiveTypeSizeInBitsES2_E3$_7EERS4_OT0_.exit", %bb.e
  %i.aa = phi { i64, i8 } [ %i.z, %bb.e ], [ zeroinitializer, %"_ZN4llvm10TypeSwitchIN4mlir4TypeENS_8TypeSizeEE4CaseINS1_4LLVM16LLVMPPCFP128TypeEZNS6_26getPrimitiveTypeSizeInBitsES2_E3$_7EERS4_OT0_.exit" ]
  ret { i64, i8 } %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM11LLVMDialect13registerTypesEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM13LLVMArrayTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM12LLVMByteTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM16LLVMFunctionTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM14LLVMStructTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM15LLVMPointerTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM17LLVMTargetExtTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM14LLVMX86AMXTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN4mlir7Dialect7addTypeINS_4LLVM16LLVMPPCFP128TypeEEEvv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4mlir4LLVM11LLVMDialect9parseTypeERNS_16DialectAsmParserE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4mlir4LLVM6detail9parseTypeERNS_16DialectAsmParserE(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret ptr %i.a
}

declare ptr @_ZN4mlir4LLVM6detail9parseTypeERNS_16DialectAsmParserE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir4LLVM11LLVMDialect9printTypeENS_4TypeERNS_17DialectAsmPrinterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir4LLVM6detail9printTypeENS_4TypeERNS_10AsmPrinterE(ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  ret void
}

declare void @_ZN4mlir4LLVM6detail9printTypeENS_4TypeERNS_10AsmPrinterE(ptr, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !516  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !517  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !519 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #16, !inline_history !511
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #23, !inline_history !511
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !519
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !512

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !516
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !520
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !523  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !524  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #23
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !513

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !523
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !525
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #23
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #16
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM13LLVMArrayTypeEJPNS1_11MLIRContextENS1_4TypeEmEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(ptr dead_on_unwind noalias writable sret(%"class.mlir::InFlightDiagnostic") align 8 %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77, !noalias !529 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !530, !noalias !529, !nonnull !63, !align !197
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !529
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !529
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !70, !noalias !529
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !68, !noalias !529
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !65, !noalias !529
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !529
  call void %i.i(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(34) %2) #16, !inline_history !528
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !529
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM12LLVMByteTypeEJPNS1_11MLIRContextEjEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(ptr dead_on_unwind noalias writable sret(%"class.mlir::InFlightDiagnostic") align 8 %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100, !noalias !534 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !535, !noalias !534, !nonnull !63, !align !197
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !534
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !70, !noalias !534
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !68, !noalias !534
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !65, !noalias !534
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
end_hunk_0
