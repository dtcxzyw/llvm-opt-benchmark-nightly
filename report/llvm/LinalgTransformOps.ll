Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgTransformOps?download=true
inline.NumInlined: 40313
inline.NumDeleted: 11533
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg6CopyOpEE22hasPureBufferSemanticsEvEUlS7_E0_EEET_SK_SK_T0_St26random_access_iterator_tag:bb.a
  %i.bx = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i58, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.by = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i58, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i.i59 = or i1 %i.bx, %i.by
  br i1 %spec.select.i.i.i.i.i.i59, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.j, %bb.h, %bb.f, %bb.k
  %.sroa.014.0.in.sroa.speculated = phi ptr [ %0, %bb.h ], [ %2, %bb.k ], [ %0, %bb.j ], [ %0, %bb.f ], [ %0, %.lr.ph ], [ %0, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  %.sroa.9.0 = phi i64 [ %.sroa.15.1, %bb.h ], [ %3, %bb.k ], [ %.sroa.15.2, %bb.j ], [ %.sroa.15.0.lcssa, %bb.f ], [ %i.ai, %bb.d ], [ %i.y, %bb.c ], [ %i.o, %bb.b ], [ %.sroa.15.093, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.014.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare ptr @_ZN4mlir6memref6CopyOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_9transform7MatchOp5applyERNS7_17TransformRewriterERNS7_16TransformResultsERNS7_14TransformStateEE3$_0EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  %3 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::TypeAttr", align 8    ; 5 uses
  %6 = alloca %"class.mlir::TypeAttr", align 8    ; 5 uses
  %7 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %8 = alloca %"class.mlir::StringAttr", align 8  ; 6 uses
  %9 = alloca %"class.mlir::transform::MatchInterfaceEnumAttr", align 8 ; 5 uses
  %10 = alloca %"class.mlir::transform::MatchInterfaceEnumAttr", align 8 ; 5 uses
  %11 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %12 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %13 = alloca %"class.mlir::NamedAttribute", align 8 ; 9 uses
  %14 = alloca %"class.mlir::ValueTypeRange.3508", align 8 ; 6 uses
  %15 = alloca %"class.mlir::ArrayAttr", align 8  ; 6 uses
  %16 = alloca %"class.mlir::ValueTypeRange", align 8 ; 7 uses
  %17 = alloca %"class.mlir::TypeAttr", align 8   ; 5 uses
  %18 = alloca %"class.std::optional.1305", align 8 ; 5 uses
  %19 = alloca %"class.mlir::ValueTypeRange", align 8 ; 7 uses
  %20 = alloca %"class.llvm::detail::zippy.4389", align 8 ; 6 uses
  %21 = alloca %"class.mlir::TypeAttr", align 8   ; 4 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.e, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.f = lshr i32 %i.e, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88
  %.not.i.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3994, !nonnull !195, !align !512 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.m, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %11, align 8
  %i.o = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %i.r = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.p, i64 %i.q) #29
  %i.s = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr %i.p, i64 %i.q, i32 noundef %i.r) #29 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit", label %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i

_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i: ; preds = %bb.b
  %i.u = sext i32 %i.s to i64
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !363
  %.pre4.i.i.i = zext i32 %.pre.i.i.i to i64
  %.not224.i.a = icmp eq i64 %i.u, %.pre4.i.i.i
  br i1 %.not224.i.a, label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit", label %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit..critedge_crit_edge.i

_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit..critedge_crit_edge.i: ; preds = %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !85
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit..critedge_crit_edge.i, %bb.a
  %i.v = phi ptr [ %.pre.i, %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit..critedge_crit_edge.i ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %.not.i.i.i.i44.i = icmp ugt i32 %i.x, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i44.i)
  %i.y = lshr i32 %i.x, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i45.i = and i32 %i.y, 1
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i45.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  store ptr %i.ac, ptr %10, align 8
  %.not.i46.i = icmp eq ptr %i.ac, null
  br i1 %.not.i46.i, label %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit.thread.i, label %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit.i

_ZN4mlir9transform7MatchOp12getInterfaceEv.exit.thread.i: ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.f

_ZN4mlir9transform7MatchOp12getInterfaceEv.exit.i: ; preds = %.critedge.i
  %i.ad = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %.not.i.i.i.i47.i = icmp ugt i32 %i.ag, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i47.i)
  %i.ah = lshr i32 %i.ag, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i48.i = and i32 %i.ah, 1
  %i.ai = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i48.i to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88 ; 2 uses
  store ptr %i.al, ptr %9, align 8
  %.not.i49.i = icmp eq ptr %i.al, null
  br i1 %.not.i49.i, label %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.thread.i, label %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.i

_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.thread.i: ; preds = %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.i: ; preds = %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit.i
  %i.am = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #29 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !313
  %i.ap = icmp ult i32 %i.ao, 65
  %i.aq = load ptr, ptr %i.am, align 8
  %spec.select.i.i.i50.i = select i1 %i.ap, ptr %i.am, ptr %i.aq
  %.0.i.i.i51.i = load i64, ptr %spec.select.i.i.i50.i, align 8, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.sroa.0169.0.extract.trunc.i = trunc i64 %.0.i.i.i51.i to i32
  switch i32 %.sroa.0169.0.extract.trunc.i, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.i
  %i.ar = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not227.i.a = icmp eq ptr %i.ar, null
  br i1 %.not227.i.a, label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit", label %bb.f

bb.d:                                             ; preds = %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.i
  %i.as = call noundef ptr @_ZN4mlir11OpInterfaceINS_15TilingInterfaceENS_6detail30TilingInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not226.i.a = icmp eq ptr %i.as, null
  br i1 %.not226.i.a, label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit", label %bb.f

bb.e:                                             ; preds = %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.i
  %i.at = call noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not225.i = icmp eq ptr %i.at, null
  br i1 %.not225.i, label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit53.i, %_ZN4mlir9transform7MatchOp12getInterfaceEv.exit.thread.i
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !85  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not.i.i.i.i54.i = icmp ugt i32 %i.aw, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i54.i)
  %i.ax = lshr i32 %i.aw, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i55.i = and i32 %i.ax, 1
  %i.ay = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i55.i to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !88
  %.not.i56.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i56.not.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !88 ; 2 uses
  %.not.i62.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i62.not.i, label %bb.h, label %_ZNOSt8optionalIN4mlir14DictionaryAttrEE5valueEv.exit.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNOSt8optionalIN4mlir14DictionaryAttrEE5valueEv.exit.i: ; preds = %bb.g
  %i.bd = ptrtoint ptr %i.bc to i64
  store i64 %i.bd, ptr %12, align 8
  %i.be = call noundef ptr @_ZNK4mlir14DictionaryAttr5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29 ; 2 uses
  %i.bf = call noundef ptr @_ZNK4mlir14DictionaryAttr3endEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29 ; 2 uses
  %.not233.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not233.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNOSt8optionalIN4mlir14DictionaryAttrEE5valueEv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %.lr.ph.i
  %.041234.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.cp, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.041234.i, i64 16, i1 false), !tbaa.struct !326
  %i.bj = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #29
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.0.0.copyload.i.i.i66.i = load ptr, ptr %i.bl, align 8, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i66.i, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !322
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i2.i.i.i = load ptr, ptr %i.bn, align 8
  %i.bo = icmp eq ptr %i.bj, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.bo, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #29
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.sroa.0.0.copyload.i.i.i67.i = load ptr, ptr %i.br, align 8, !tbaa !221
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i67.i, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i68.i = load ptr, ptr %i.bs, align 8, !tbaa !322
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i68.i, i64 32
  %.sroa.0.0.copyload.i2.i.i69.i = load ptr, ptr %i.bt, align 8
  %i.bu = icmp eq ptr %i.bp, %.sroa.0.0.copyload.i2.i.i69.i
  br i1 %i.bu, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.bv, ptr %8, align 8
  %i.bw = load i32, ptr %i.bg, align 4
  %.not.i70.i = icmp ult i32 %i.bw, 16777216
  br i1 %.not.i70.i, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #29 ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  %i.ca = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.by, i64 %i.bz) #29 ; 2 uses
  %i.cb = extractvalue { ptr, i8 } %i.ca, 1
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN4mlir9Operation7hasAttrENS_10StringAttrE.exit.i, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.l
  %.sroa.0.0.copyload.pre.i.i = load ptr, ptr %8, align 8
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread_crit_edge.i.i, %bb.k
  %.sroa.0.0.copyload.i71.i = phi ptr [ %.sroa.0.0.copyload.pre.i.i, %..thread_crit_edge.i.i ], [ %i.bv, %bb.k ]
  %i.cd = call noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr %.sroa.0.0.copyload.i71.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.cd, label %bb.m, label %.thread203.i

_ZN4mlir9Operation7hasAttrENS_10StringAttrE.exit.i: ; preds = %bb.l
  %i.ce = extractvalue { ptr, i8 } %i.ca, 0
  %.not228.i.a = icmp eq ptr %i.ce, null
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not228.i.a, label %.thread203.i, label %bb.m

bb.m:                                             ; preds = %_ZN4mlir9Operation7hasAttrENS_10StringAttrE.exit.i, %.thread.i.i
  %i.cf = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.cf, ptr %7, align 8
  %i.cg = load i32, ptr %i.bg, align 4
  %.not.i72.i = icmp ult i32 %i.cg, 16777216
  br i1 %.not.i72.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  %i.ck = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.ci, i64 %i.cj) #29 ; 2 uses
  %i.cl = extractvalue { ptr, i8 } %i.ck, 0
  %i.cm = extractvalue { ptr, i8 } %i.ck, 1
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.n
  %.sroa.0.0.copyload.pre.i73.i = load ptr, ptr %7, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i, %bb.m
  %.sroa.0.0.copyload.i74.i = phi ptr [ %.sroa.0.0.copyload.pre.i73.i, %._crit_edge.i.i ], [ %i.cf, %bb.m ]
  %i.co = call ptr @_ZNK4mlir14DictionaryAttr3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr %.sroa.0.0.copyload.i74.i) #29
  br label %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i

_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i: ; preds = %bb.o, %bb.n
  %.sroa.02.1.i.i = phi ptr [ %i.co, %bb.o ], [ %i.cl, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.0.0.copyload.i75.i = load ptr, ptr %i.bi, align 8, !tbaa !218
  %.not229.i.a = icmp eq ptr %.sroa.02.1.i.i, %.sroa.0.0.copyload.i75.i
  br i1 %.not229.i.a, label %bb.p, label %.thread203.i

.thread203.i:                                     ; preds = %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i, %_ZN4mlir9Operation7hasAttrENS_10StringAttrE.exit.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit"

bb.p:                                             ; preds = %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.cp = getelementptr inbounds nuw i8, ptr %.041234.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, %i.bf
  br i1 %.not.i, label %select.unfold.i, label %bb.i

select.unfold.i:                                  ; preds = %bb.p, %_ZNOSt8optionalIN4mlir14DictionaryAttrEE5valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %.pre238.i = load ptr, ptr %i.b, align 8, !tbaa !85
  br label %bb.q

bb.q:                                             ; preds = %select.unfold.i, %bb.f
  %i.cq = phi ptr [ %.pre238.i, %select.unfold.i ], [ %i.au, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %.not.i.i.i.i76.i = icmp ugt i32 %i.cs, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i76.i)
  %i.ct = lshr i32 %i.cs, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i77.i = and i32 %i.ct, 1
  %i.cu = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i77.i to i64 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !88 ; 2 uses
  store ptr %i.cx, ptr %6, align 8
  %.not.i78.i = icmp eq ptr %i.cx, null
  br i1 %.not.i78.i, label %_ZN4mlir9transform7MatchOp19getFilterResultTypeEv.exit.i, label %bb.r

_ZN4mlir9transform7MatchOp19getFilterResultTypeEv.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cy = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %.not.i.i.i.i82.i = icmp ugt i32 %i.db, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i82.i)
  %i.dc = lshr i32 %i.db, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i83.i = and i32 %i.dc, 1
  %i.dd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i83.i to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !88 ; 2 uses
  store ptr %i.dg, ptr %5, align 8
  %.not.i84.i = icmp eq ptr %i.dg, null
  br i1 %.not.i84.i, label %bb.s, label %_ZNOSt8optionalIN4mlir4TypeEE5valueEv.exit.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNOSt8optionalIN4mlir4TypeEE5valueEv.exit.i:     ; preds = %bb.r
  %i.dh = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !184
  %.not42.i = icmp eq i32 %i.dj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  br i1 %.not42.i, label %bb.t, label %.thread216.i

.thread216.i:                                     ; preds = %_ZNOSt8optionalIN4mlir4TypeEE5valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit"

bb.t:                                             ; preds = %_ZNOSt8optionalIN4mlir4TypeEE5valueEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !3995
  %i.dk = getelementptr inbounds i8, ptr %1, i64 -16
  store ptr %i.dk, ptr %4, align 8, !noalias !3995
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.dl, align 8, !noalias !3995
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange.3508") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !3995
  %.sroa.0.0.copyload.i.i.i90.i = load ptr, ptr %14, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.dm = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i90.i, i64 noundef %.sroa.2.0.copyload.i.i.i.i) #29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dn, align 8
  %i.do = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.dp = inttoptr i64 %i.do to ptr
  %.not230.i.a = icmp eq ptr %i.dh, %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.not230.i.a, label %._crit_edge240.i, label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit"

._crit_edge240.i:                                 ; preds = %bb.t
  %.pre241.i.a = load ptr, ptr %i.b, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre241.i.a, i64 44
  %.pre242.i.a = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre243.i.a = lshr i32 %.pre242.i.a, 23
  %.pre244.i.a = and i32 %.pre243.i.a, 1
  %.pre245.i = zext nneg i32 %.pre244.i.a to i64
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge240.i, %_ZN4mlir9transform7MatchOp19getFilterResultTypeEv.exit.i
  %.pre-phi246.i = phi i64 [ %.pre245.i, %._crit_edge240.i ], [ %i.cu, %_ZN4mlir9transform7MatchOp19getFilterResultTypeEv.exit.i ]
  %i.dq = phi ptr [ %.pre241.i.a, %._crit_edge240.i ], [ %i.cq, %_ZN4mlir9transform7MatchOp19getFilterResultTypeEv.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %.pre-phi246.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !88
  %.not.i93.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i93.not.i, label %bb.ap, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %.not.i.i.i.i97.i = icmp ugt i32 %i.dv, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i97.i)
  %i.dw = lshr i32 %i.dv, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i98.i = and i32 %i.dw, 1
  %i.dx = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i98.i to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !88 ; 2 uses
  %.not.i99.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i99.not.i, label %bb.w, label %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit.i: ; preds = %bb.v
  %i.ea = ptrtoint ptr %i.dz to i64
  store i64 %i.ea, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !3996
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !noalias !3996
  %i.ed = and i32 %i.ec, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir9Operation15getOperandTypesEv.exit.i, label %bb.x, !prof !235

bb.x:                                             ; preds = %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !114, !noalias !3996
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !353, !noalias !3996
  %i.ei = zext i32 %i.eh to i64
  br label %_ZN4mlir9Operation15getOperandTypesEv.exit.i

_ZN4mlir9Operation15getOperandTypesEv.exit.i:     ; preds = %bb.x, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ef, %bb.x ], [ null, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit.i ]
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.ei, %bb.x ], [ 0, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit.i ]
  store ptr %.sroa.0.0.i.i.i.i, ptr %3, align 8, !noalias !3996
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.ej, align 8, !noalias !3996
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !3996
  %i.ek = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #29
  %i.el = extractvalue { ptr, i64 } %i.ek, 1
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 44
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %.not.i.i.i.i103.i = icmp ugt i32 %i.ep, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i103.i)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.er = lshr i32 %i.ep, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i104.i = and i32 %i.er, 1
  %i.es = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i104.i to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !88 ; 2 uses
  %.not.i105.i = icmp ne ptr %i.eu, null          ; 2 uses
  %spec.select.i106.i = zext i1 %.not.i105.i to i8
  store ptr %i.eu, ptr %18, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 %spec.select.i106.i, ptr %i.ev, align 8
  br i1 %.not.i105.i, label %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit109.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit109.i: ; preds = %bb.y
  %i.ew = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #29
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0
  %.sroa.0.0.copyload.i110.i = load ptr, ptr %i.ex, align 8, !tbaa !218 ; 2 uses
  %i.ey = load ptr, ptr %.sroa.0.0.copyload.i110.i, align 8, !tbaa !311
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ez, align 8, !tbaa !200
  %i.fa = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_8TypeAttrEvE2idE
  %spec.select.i.i.i = select i1 %i.fa, ptr %.sroa.0.0.copyload.i110.i, ptr null
  store ptr %spec.select.i.i.i, ptr %17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.fb = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #29 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !3997
  %i.fc = load i32, ptr %i.eb, align 4, !noalias !3997
  %i.fd = and i32 %i.fc, 8388608
  %.not.i.i.i113.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i113.i, label %_ZN4mlir9Operation15getOperandTypesEv.exit116.i, label %bb.aa, !prof !235

bb.aa:                                            ; preds = %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit109.i
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !114, !noalias !3997
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !353, !noalias !3997
  %i.fi = zext i32 %i.fh to i64
  br label %_ZN4mlir9Operation15getOperandTypesEv.exit116.i

_ZN4mlir9Operation15getOperandTypesEv.exit116.i:  ; preds = %bb.aa, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit109.i
  %.sroa.0.0.i.i.i114.i = phi ptr [ %i.ff, %bb.aa ], [ null, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit109.i ]
  %.sroa.4.0.i.i.i115.i = phi i64 [ %i.fi, %bb.aa ], [ 0, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit109.i ]
  store ptr %.sroa.0.0.i.i.i114.i, ptr %2, align 8, !noalias !3997
end_hunk_0
begin_hunk_1_@"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_9transform7MatchOp5applyERNS7_17TransformRewriterERNS7_16TransformResultsERNS7_14TransformStateEE3$_0EEvlS3_":bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i46.i.i.i.i.i.i = load ptr, ptr %i.gi, align 8, !tbaa !116
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i46.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i47.i.i.i.i.i.i = load i64, ptr %i.gj, align 8
  %i.gk = and i64 %.0.copyload.i.i.i.i.i.i.i.i47.i.i.i.i.i.i, -8
  %i.gl = inttoptr i64 %i.gk to ptr
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.gl
  br i1 %.not92.i.i.i.i.i.i, label %bb.af, label %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.i"

bb.af:                                            ; preds = %bb.ae
  %i.gm = add nsw i64 %.sroa.15.094.i.i.i.i.i.i, 4
  %i.gn = add nsw i64 %.095.i.i.i.i.i.i, -1
  %i.go = icmp sgt i64 %.095.i.i.i.i.i.i, 1
  br i1 %i.go, label %bb.ab, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !3979

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.af, %_ZN4mlir9Operation15getOperandTypesEv.exit116.i
  %.sroa.15.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i.i.i, %_ZN4mlir9Operation15getOperandTypesEv.exit116.i ], [ %i.fo, %bb.af ] ; 6 uses
  %i.gp = sub nsw i64 %.sroa.2.0.copyload.i.i.i8.i.i, %.sroa.15.0.lcssa.i.i.i.i.i.i
  switch i64 %i.gp, label %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.thread.i" [
    i64 3, label %bb.ag
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge97.i.i.i.i.i.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gq = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.15.0.lcssa.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i48.i.i.i.i.i.i = load ptr, ptr %i.gr, align 8, !tbaa !116
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i48.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i49.i.i.i.i.i.i = load i64, ptr %i.gs, align 8
  %i.gt = and i64 %.0.copyload.i.i.i.i.i.i.i.i49.i.i.i.i.i.i, -8
  %i.gu = inttoptr i64 %i.gt to ptr
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.gu
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.i"

bb.ah:                                            ; preds = %bb.ag
  %i.gv = add nsw i64 %.sroa.15.0.lcssa.i.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.ah, %._crit_edge.i.i.i.i.i.i
  %.sroa.15.1.i.i.i.i.i.i = phi i64 [ %i.gv, %bb.ah ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.gw = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.15.1.i.i.i.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !116
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i51.i.i.i.i.i.i = load i64, ptr %i.gy, align 8
  %i.gz = and i64 %.0.copyload.i.i.i.i.i.i.i.i51.i.i.i.i.i.i, -8
  %i.ha = inttoptr i64 %i.gz to ptr
  %.not87.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.ha
  br i1 %.not87.i.i.i.i.i.i, label %bb.ai, label %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.i"

bb.ai:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.hb = add nsw i64 %.sroa.15.1.i.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge97.i.i.i.i.i.i

._crit_edge._crit_edge97.i.i.i.i.i.i:             ; preds = %bb.ai, %._crit_edge.i.i.i.i.i.i
  %.sroa.15.2.i.i.i.i.i.i = phi i64 [ %i.hb, %bb.ai ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.hc = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.15.2.i.i.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i52.i.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !tbaa !116
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i52.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i53.i.i.i.i.i.i = load i64, ptr %i.he, align 8
  %i.hf = and i64 %.0.copyload.i.i.i.i.i.i.i.i53.i.i.i.i.i.i, -8
  %i.hg = inttoptr i64 %i.hf to ptr
  %.not88.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.hg
  br i1 %.not88.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.thread.i", label %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.i"

"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.thread.i": ; preds = %._crit_edge._crit_edge97.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.ao

"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.i": ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %._crit_edge._crit_edge97.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.ag
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i, %bb.ag ], [ %.sroa.15.2.i.i.i.i.i.i, %._crit_edge._crit_edge97.i.i.i.i.i.i ], [ %.sroa.15.094.i.i.i.i.i.i, %bb.ab ], [ %i.gg, %bb.ae ], [ %i.ga, %bb.ad ], [ %i.fu, %bb.ac ]
  %i.hh = icmp eq i64 %.sroa.2.0.copyload.i.i.i8.i.i, %.sroa.9.0.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %i.hh, label %bb.ao, label %.thread222.i

bb.aj:                                            ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit.i
  %i.hi = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #29
  %i.hj = extractvalue { ptr, i64 } %i.hi, 1
  %.sroa.2.0..sroa_idx.i.i.i117.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i.i.i118.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i117.i, align 8
  %.sroa.2.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.sroa.2.0.copyload.i6.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i5.i.i.i, align 8
  %i.hk = sub nsw i64 %.sroa.2.0.copyload.i6.i.i.i, %.sroa.2.0.copyload.i.i.i118.i
  %.not43.i = icmp eq i64 %i.hj, %i.hk
  br i1 %.not43.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !3998, !nonnull !195
  store i8 1, ptr %i.hm, align 1, !tbaa !152
  br label %.thread222.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.hn = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 44
  %i.hp = load i32, ptr %i.ho, align 4            ; 2 uses
  %.not.i.i.i.i119.i = icmp ugt i32 %i.hp, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i119.i)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.hr = lshr i32 %i.hp, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i120.i = and i32 %i.hr, 1
  %i.hs = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i120.i to i64
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !88 ; 2 uses
  %.not.i121.not.i = icmp eq ptr %i.hu, null
  br i1 %.not.i121.not.i, label %bb.am, label %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit125.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit125.i: ; preds = %bb.al
  store ptr %16, ptr %20, align 8, !tbaa !4000, !alias.scope !4001
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  store i64 %i.hw, ptr %i.hv, align 8, !alias.scope !4001
  %i.hx = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #29, !noalias !4002
  %i.hy = extractvalue { ptr, i64 } %i.hx, 0      ; 2 uses
  %i.hz = load ptr, ptr %20, align 8, !tbaa !4004, !noalias !4002, !nonnull !195, !align !512 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i126.i = load ptr, ptr %i.hz, align 8, !noalias !4002
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4002
  %i.ia = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #29, !noalias !4005 ; 2 uses
  %i.ib = extractvalue { ptr, i64 } %i.ia, 0
  %i.ic = extractvalue { ptr, i64 } %i.ia, 1
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %.not231235.i = icmp eq ptr %i.hy, %i.id
  br i1 %.not231235.i, label %._crit_edge.i, label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit125.i, %bb.an
  %.sroa.4141.0237.i = phi i64 [ %i.il, %bb.an ], [ %.sroa.2.0.copyload.i.i.i.i.i.i, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit125.i ] ; 2 uses
  %.sroa.8.0236.i = phi ptr [ %i.ik, %bb.an ], [ %i.hy, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit125.i ] ; 2 uses
  %i.ie = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i126.i, i64 %.sroa.4141.0237.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i131.i = load ptr, ptr %i.if, align 8, !tbaa !116, !noalias !4006
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i131.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i132.i = load i64, ptr %i.ig, align 8, !noalias !4006
  %i.ih = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i132.i, -8
  %i.ii = inttoptr i64 %i.ih to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %.sroa.0.0.copyload.i133.i = load ptr, ptr %.sroa.8.0236.i, align 8, !tbaa !218
  store ptr %.sroa.0.0.copyload.i133.i, ptr %21, align 8
  %i.ij = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #29
  %.not232.i = icmp eq ptr %i.ij, %i.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %.not232.i, label %bb.an, label %.thread219.i

.thread219.i:                                     ; preds = %.lr.ph238.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %.thread222.i

bb.an:                                            ; preds = %.lr.ph238.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.8.0236.i, i64 8 ; 2 uses
  %i.il = add nsw i64 %.sroa.4141.0237.i, 1
  %.not231.i = icmp eq ptr %i.ik, %i.id
  br i1 %.not231.i, label %._crit_edge.i, label %.lr.ph238.i

._crit_edge.i:                                    ; preds = %bb.an, %_ZNOSt8optionalIN4mlir9ArrayAttrEE5valueEv.exit125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.ao

.thread222.i:                                     ; preds = %.thread219.i, %bb.ak, %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit"

bb.ao:                                            ; preds = %._crit_edge.i, %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.i", %"_ZN4llvm6all_ofIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZZNS1_9transform7MatchOp5applyERNS5_17TransformRewriterERNS5_16TransformResultsERNS5_14TransformStateEENK3$_0clEPNS1_9OperationEEUlNS1_4TypeEE_EEbOT_T0_.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.u
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !4007, !nonnull !195, !align !512 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !110 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !111
  %.not.i135.i = icmp ult i32 %i.ip, %i.ir
  br i1 %.not.i135.i, label %bb.ar, label %bb.aq, !prof !151

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef %1)
  br label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit"

bb.ar:                                            ; preds = %bb.ap
  %i.is = zext i32 %i.ip to i64
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !109
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.is
  store ptr %1, ptr %i.iu, align 1
  %i.iv = load i32, ptr %i.io, align 8, !tbaa !110
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.io, align 8, !tbaa !110
  br label %"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit"

"_ZZN4mlir9transform7MatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateEENK3$_0clEPNS_9OperationE.exit": ; preds = %bb.b, %_ZNK4llvm9StringSetINS_15MallocAllocatorEE8containsENS_9StringRefE.exit.i, %bb.c, %bb.d, %bb.e, %.thread203.i, %.thread216.i, %bb.t, %.thread222.i, %bb.aq, %bb.ar
  ret void
}

declare noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #1

declare { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #1

declare void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24), ptr) unnamed_addr #1

declare ptr @_ZNK4mlir9transform9ParamType7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !109    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #29
  %.pre = load ptr, ptr %1, align 8, !tbaa !109
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !160
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !160
  store ptr %i.c, ptr %1, align 8, !tbaa !109
  store i32 0, ptr %i.k, align 4, !tbaa !111
  store i32 0, ptr %i.j, align 8, !tbaa !110
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !110  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !110  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit
    i32 1, label %bb.h
  ], !prof !574

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8
  store i64 %i.t, ptr %i.s, align 8
  br label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit

_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !110
  store i32 0, ptr %i.m, align 8, !tbaa !110
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !111
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #29
  br label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !235

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8
  store i64 %i.z, ptr %i.y, align 8
  br label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34

_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !110
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !109
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !110
  store i32 0, ptr %i.m, align 8, !tbaa !110
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE12assignRemoteEOS3_.exit
  ret ptr %0
}

declare { ptr, i64 } @_ZN4mlir6linalg6PackOp15getInnerDimsPosEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4mlir6linalg6PackOp13getSourceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.mlir::detail::TypedValue.1612", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = tail call i64 @_ZN4mlir6linalg6PackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #29
  %i.b = load ptr, ptr %0, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %1, align 8
  %i.h = call { ptr, ptr } @_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i1, label %_ZN4llvm4castIN4mlir10ShapedTypeES2_EEDcRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !206

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #29
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.529, i64 49), i64 16) #29
  store ptr %i.o, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #29
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !200 ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !109  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !200
  %i.v = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = xor i64 %i.t, -1
  %i.y = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.x
end_hunk_1
