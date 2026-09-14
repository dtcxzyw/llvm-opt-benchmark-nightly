Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemRefUtils?download=true
inline.NumInlined: 1891
inline.NumDeleted: 1140
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0

$_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6insertINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEPS2_SE_T_SF_ = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_19ViewLikeOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_19ViewLikeOpInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6memref9SubViewOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6memref6CastOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_19ViewLikeOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_19ViewLikeOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [76 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ViewLikeOpInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6memref7AllocOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6memref8AllocaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.6 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6memref9DeallocOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir6memref34isStaticShapeAndContiguousRowMajorENS_10MemRefTypeE(ptr %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::MemRefType", align 8  ; 7 uses
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %1, align 8
  %i.b = call noundef zeroext i1 @_ZNK4mlir14BaseMemRefType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br i1 %i.b, label %bb.b, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = lshr i64 %i.e, 2                         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %bb.f
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.q, %bb.f ], [ %i.h, %bb.b ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.d, %bb.b ] ; 9 uses
  %i.i = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !11
  %.not.i.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %.not1.i.i = icmp eq i64 %i.k, -9223372036854775808
  br i1 %.not1.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit53, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %.not2.i.i = icmp eq i64 %i.m, -9223372036854775808
  br i1 %.not2.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit51, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %.not3.i.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not3.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.q = add nsw i64 %.047.i.i.i.i.i.i.i, -1
  %i.r = icmp sgt i64 %.047.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !87

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.f
  %.pre.i.i.i.i.i.i.i = ptrtoint ptr %i.p to i64
  %.pre52.i.i.i.i.i.i.i = sub i64 %i.g, %.pre.i.i.i.i.i.i.i
  %i.s = ashr exact i64 %.pre52.i.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.b
  %.pre-phi53.i.i.i.i.i.i.i = phi i64 [ %i.s, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.029.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.p, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread18 [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.t = load i64, ptr %.029.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !11
  %.not4.i.i = icmp eq i64 %i.t, -9223372036854775808
  br i1 %.not4.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = load i64, ptr %.1.i.i.i.i.i.i.i, align 8, !tbaa !11
  %.not5.i.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not5.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.x = load i64, ptr %.2.i.i.i.i.i.i.i, align 8, !tbaa !11
  %.not6.i.i = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not6.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread18

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  br label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit51: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  br label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit53: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  br label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit51, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit53, %bb.g, %bb.i, %bb.k
  %.028.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i.i, %bb.k ], [ %i.aa, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit53 ], [ %i.z, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit51 ], [ %i.y, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ab = icmp eq ptr %i.f, %.028.i.i.i.i.i.i.i
  br i1 %i.ab, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread18, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread18: ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit
  %i.ac = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1      ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ag, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.ah, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ai = call i8 @_ZNK4mlir10MemRefType19getStridesAndOffsetERN4llvm15SmallVectorImplIlEERl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %bb.l
  %i.ak = icmp sgt i64 %i.ad, 0
  br i1 %i.ak, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %.030.in = phi i64 [ %.030, %bb.m ], [ %i.ad, %.preheader ] ; 2 uses
  %.01429 = phi i64 [ %i.au, %bb.m ], [ 1, %.preheader ] ; 2 uses
  %.030 = add nsw i64 %.030.in, -1                ; 4 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.030
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = icmp eq i64 %i.an, %.01429
  br i1 %i.ao, label %bb.m, label %.lr.ph34

bb.m:                                             ; preds = %.lr.ph
  %i.ap = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = and i64 %.030, 4294967295
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = mul nsw i64 %i.at, %.01429
  %i.av = icmp sgt i64 %.030.in, 1
  br i1 %i.av, label %.lr.ph, label %.critedge2, !llvm.loop !88

.lr.ph34:                                         ; preds = %.lr.ph, %bb.n
  %.133 = phi i64 [ %i.bc, %bb.n ], [ %.030, %.lr.ph ] ; 4 uses
  %i.aw = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = and i64 %.133, 4294967295
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.n, label %.critedge2.loopexit

bb.n:                                             ; preds = %.lr.ph34
  %i.bc = add nsw i64 %.133, -1
  %i.bd = icmp sgt i64 %.133, 0
  br i1 %i.bd, label %.lr.ph34, label %.critedge2.loopexit, !llvm.loop !89

.critedge2.loopexit:                              ; preds = %bb.n, %.lr.ph34
  %.1.lcssa.ph = phi i64 [ %.133, %.lr.ph34 ], [ -1, %bb.n ]
  %i.be = icmp slt i64 %.1.lcssa.ph, 0
  br label %.critedge2

.critedge2:                                       ; preds = %bb.m, %.preheader, %.critedge2.loopexit, %bb.l
  %.015 = phi i1 [ false, %bb.l ], [ true, %.preheader ], [ %i.be, %.critedge2.loopexit ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bf = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.af
  br i1 %i.bg, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.critedge2
  call void @free(ptr noundef %i.bf) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %.critedge2, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread: ; preds = %bb.a, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread18, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit
  %.2 = phi i1 [ false, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit ], [ %.015, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ true, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread18 ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i8 @_ZNK4mlir10MemRefType19getStridesAndOffsetERN4llvm15SmallVectorImplIlEERl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref32getLinearizedMemRefOffsetAndSizeERNS_9OpBuilderENS_8LocationEiiNS_12OpFoldResultEN4llvm8ArrayRefIS4_EES7_S7_NS0_17LinearizedDivKindE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i32 noundef %3, i32 noundef %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %"class.llvm::SmallVector.11", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.18", align 8 ; 12 uses
  %12 = alloca %"class.mlir::AffineExpr", align 8 ; 7 uses
  %13 = alloca %"class.llvm::SmallVector.11", align 8 ; 13 uses
  %14 = alloca %"class.llvm::SmallVector.11", align 8 ; 12 uses
  %15 = alloca %"class.llvm::SmallVector.18", align 8 ; 10 uses
  %16 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %17 = alloca %"class.mlir::AffineExpr", align 8 ; 5 uses
  %18 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %19 = alloca [1 x %"class.mlir::OpFoldResult"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.d = load ptr, ptr %8, align 8, !tbaa !21, !noalias !96
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20, !noalias !96 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.g, ptr %10, align 8, !tbaa !15, !alias.scope !96
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store i32 0, ptr %i.h, align 8, !tbaa !16, !alias.scope !96
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 6, ptr %i.i, align 4, !tbaa !17, !alias.scope !96
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.j = icmp ugt i64 %i.f, 6
  br i1 %i.j, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.g, i64 noundef %i.f, i64 noundef 8) #13
  %.pre8.pre.i.i.i = load i32, ptr %i.h, align 8, !tbaa !16, !alias.scope !96
  %i.k = zext i32 %.pre8.pre.i.i.i to i64
  %.pre = load ptr, ptr %10, align 8, !tbaa !15, !alias.scope !96
  br label %_ZN4llvm9to_vectorIRNS_8ArrayRefIN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4llvm9to_vectorIRNS_8ArrayRefIN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit

_ZN4llvm9to_vectorIRNS_8ArrayRefIN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i
  %i.l = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i ], [ %i.g, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i ]
  %.pre8.i.i5.i = phi i64 [ %i.k, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.pre8.i.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 8 %i.d, i64 %.idx.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.h, align 8, !tbaa !16, !alias.scope !96
  %i.n = trunc i64 %i.f to i32
  %i.o = add i32 %.pre.i.i.i, %i.n
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit.sink.split

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i
  %i.p = and i64 %i.b, 4294967295                 ; 5 uses
  %i.q = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = load i32, ptr %i.h, align 8, !tbaa !16
  %i.t = zext i32 %i.s to i64                     ; 4 uses
  %i.u = icmp eq i64 %i.p, %i.t
  br i1 %i.u, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i64 %i.p, %i.t
  br i1 %i.v, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sub nuw nsw i64 %i.p, %i.t               ; 6 uses
  %i.x = load i32, ptr %i.i, align 4, !tbaa !17
  %i.y = zext i32 %i.x to i64
  %.not.i.i.i.i64 = icmp samesign ugt i64 %i.p, %i.y
  br i1 %.not.i.i.i.i64, label %bb.e, label %.lr.ph.i.i.i.preheader.i.i, !prof !22

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.g, i64 noundef %i.p, i64 noundef 8) #13
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !16
  %.pre5.i.i = zext i32 %.pre.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.e, %bb.d
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.d ], [ %.pre5.i.i, %bb.e ]
  %i.z = load ptr, ptr %10, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.pre-phi.i.i ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i
  %n.vec = and i64 %i.w, 4294967292               ; 3 uses
  %i.ab = shl nuw nsw i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = and i64 %i.w, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.af, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i.preheader.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.preheader.i.i ], [ %i.ac, %middle.block ]
  %.068.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.preheader.i.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 %i.r, ptr %.09.i.i.i.i.i, align 8
  %i.ah = add i64 %.068.i.i.i.i.i, -1             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !93

_ZSt20uninitialized_fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre4.i.i = load i32, ptr %i.h, align 8, !tbaa !16
  %i.aj = trunc nuw i64 %i.w to i32
  %i.ak = add i32 %.pre4.i.i, %i.aj
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit.sink.split

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit.sink.split: ; preds = %_ZSt20uninitialized_fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, %bb.c, %_ZN4llvm9to_vectorIRNS_8ArrayRefIN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit
  %.sink.i.sink = phi i32 [ %i.o, %_ZN4llvm9to_vectorIRNS_8ArrayRefIN4mlir12OpFoldResultEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit ], [ %i.ak, %_ZSt20uninitialized_fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i ], [ %i.c, %bb.c ]
  store i32 %.sink.i.sink, ptr %i.h, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit.sink.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.al = shl i64 %i.b, 1                         ; 3 uses
  %i.am = and i64 %i.al, 4294967294               ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.an, ptr %11, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.ap, align 4, !tbaa !17
  %i.aq = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.aq, label %_ZN4mlir15bindSymbolsListINS_10AffineExprEEEvPNS_11MLIRContextEN4llvm15MutableArrayRefIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6resizeEmS2_.exit
  %i.ar = icmp samesign ugt i64 %i.am, 6
  br i1 %i.ar, label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i: ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.an, i64 noundef %i.am, i64 noundef 8) #13
  %.pre.i.i.i65 = load i32, ptr %i.ao, align 8, !tbaa !16
  %.pre13.i.i.i = zext i32 %.pre.i.i.i65 to i64   ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.am, %.pre13.i.i.i
  %.pre108.pre = load ptr, ptr %11, align 8, !tbaa !15 ; 2 uses
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EEC2Em.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i, %bb.f
  %i.as = phi ptr [ %i.an, %bb.f ], [ %.pre108.pre, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.f ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.pre-phi.i.i3.i
  %i.au = sub nsw i64 %i.am, %.pre-phi.i.i3.i
  %i.av = shl nsw i64 %i.au, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.av, i1 false), !tbaa !98
  br label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EEC2Em.exit

_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EEC2Em.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.pre108 = phi ptr [ %i.as, %.lr.ph.preheader.i.i.i ], [ %.pre108.pre, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.aw = trunc i64 %i.al to i32                  ; 2 uses
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !16
  %i.ax = load ptr, ptr %1, align 8, !tbaa !28
  %i.ay = shl i64 %i.b, 4
end_hunk_0
