Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DropRedundantRankExpansionPatterns?download=true
inline.NumInlined: 766
inline.NumDeleted: 493
begin_hunk_0_@_ZNK12_GLOBAL__N_153DropRedundantRankExpansionOnExtractSliceOfInsertSlice15matchAndRewriteEN4mlir6tensor14ExtractSliceOpERNS1_15PatternRewriterE:bb.a
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !20 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.gg) #14
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.ak, %bb.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 72) #16
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit

_ZN4llvm14SmallBitVectorD2Ev.exit:                ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, %bb.ai, %_ZN4llvm9BitVectorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.al

bb.al:                                            ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit, %bb.n
  %.sroa.014.1 = phi i8 [ %.sroa.014.0, %_ZN4llvm14SmallBitVectorD2Ev.exit ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %.pre = load i64, ptr %10, align 8, !tbaa !22
  br label %_ZNK4llvm14SmallBitVector4noneEv.exit.thread

_ZNK4llvm14SmallBitVector4noneEv.exit.thread:     ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i.i, %_ZNK4llvm14SmallBitVector4noneEv.exit, %.split, %bb.al
  %i.gj = phi i64 [ %.pre, %bb.al ], [ %i.a, %_ZNK4llvm14SmallBitVector4noneEv.exit ], [ %i.a, %.split ], [ %i.a, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.a, %bb.k ] ; 3 uses
  %.sroa.014.2 = phi i8 [ %.sroa.014.1, %bb.al ], [ 0, %_ZNK4llvm14SmallBitVector4noneEv.exit ], [ 0, %.split ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %bb.k ]
  %i.gk = trunc i64 %i.gj to i1
  br i1 %i.gk, label %_ZN4llvm14SmallBitVectorD2Ev.exit33, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm14SmallBitVector4noneEv.exit.thread
  %i.gl = inttoptr i64 %i.gj to ptr               ; 3 uses
  %i.gm = icmp eq i64 %i.gj, 0
  br i1 %i.gm, label %_ZN4llvm14SmallBitVectorD2Ev.exit33, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !20 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZN4llvm9BitVectorD2Ev.exit.i32, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef %i.gn) #14
  br label %_ZN4llvm9BitVectorD2Ev.exit.i32

_ZN4llvm9BitVectorD2Ev.exit.i32:                  ; preds = %bb.ao, %bb.an
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 72) #16
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit33

_ZN4llvm14SmallBitVectorD2Ev.exit33:              ; preds = %_ZNK4llvm14SmallBitVector4noneEv.exit.thread, %bb.am, %_ZN4llvm9BitVectorD2Ev.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  ret i8 %.sroa.014.2
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef") align 8) unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN4mlir6tensor14ExtractSliceOp14getDroppedDimsEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallBitVector") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN4mlir6tensor13InsertSliceOp14getDroppedDimsEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallBitVector") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4mlir6tensor23isCastLikeInsertSliceOpENS0_13InsertSliceOpE(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE15getMixedOffsetsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.106") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #14
  store ptr %i.c, ptr %2, align 8, !tbaa !60
  %i.d = tail call { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp16getStaticOffsetsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14 ; 2 uses
  %i.e = tail call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #14 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6tensor14ExtractSliceOp10getOffsetsEv.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %_ZN4mlir6tensor14ExtractSliceOp10getOffsetsEv.exit

_ZN4mlir6tensor14ExtractSliceOp10getOffsetsEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = extractvalue { ptr, i64 } %i.d, 1
  %i.m = extractvalue { ptr, i64 } %i.d, 0
  %i.n = and i64 %i.e, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.e, 32
  %i.o = add i64 %.sroa.5.0.extract.shift.i.i, %i.e
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.n
  %i.r = sub nsw i64 %i.p, %i.n
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.q, i64 %i.r) #14
  %i.s = load i64, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeERNS_7BuilderE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.106") align 8 %0, ptr %i.m, i64 %i.l, i64 %i.s, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE13getMixedSizesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.106") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #14
  store ptr %i.c, ptr %2, align 8, !tbaa !60
  %i.d = tail call { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp14getStaticSizesEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14 ; 2 uses
  %i.e = tail call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 2) #14 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit

_ZN4mlir6tensor14ExtractSliceOp8getSizesEv.exit:  ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = extractvalue { ptr, i64 } %i.d, 1
  %i.m = extractvalue { ptr, i64 } %i.d, 0
  %i.n = and i64 %i.e, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.e, 32
  %i.o = add i64 %.sroa.5.0.extract.shift.i.i, %i.e
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.n
  %i.r = sub nsw i64 %i.p, %i.n
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.q, i64 %i.r) #14
  %i.s = load i64, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeERNS_7BuilderE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.106") align 8 %0, ptr %i.m, i64 %i.l, i64 %i.s, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE15getMixedStridesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.106") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #14
  store ptr %i.c, ptr %2, align 8, !tbaa !60
  %i.d = tail call { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp16getStaticStridesEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14 ; 2 uses
  %i.e = tail call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 3) #14 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6tensor14ExtractSliceOp10getStridesEv.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %_ZN4mlir6tensor14ExtractSliceOp10getStridesEv.exit

_ZN4mlir6tensor14ExtractSliceOp10getStridesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = extractvalue { ptr, i64 } %i.d, 1
  %i.m = extractvalue { ptr, i64 } %i.d, 0
  %i.n = and i64 %i.e, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.e, 32
  %i.o = add i64 %.sroa.5.0.extract.shift.i.i, %i.e
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.n
  %i.r = sub nsw i64 %i.p, %i.n
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.q, i64 %i.r) #14
  %i.s = load i64, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeERNS_7BuilderE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.106") align 8 %0, ptr %i.m, i64 %i.l, i64 %i.s, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14SmallBitVector4testERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 12 uses
  %i.b = trunc i64 %i.a to i1                     ; 3 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !22     ; 10 uses
  %i.d = trunc i64 %i.c to i1                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = lshr i64 %i.a, 58
  %i.g = shl nsw i64 -1, %i.f
  %i.h = xor i64 %i.g, -1
  %i.i = and i64 %i.e, %i.h
  %i.j = lshr i64 %i.c, 1
  %i.k = lshr i64 %i.c, 58
  %i.l = shl nsw i64 -1, %i.k
  %.not34 = xor i64 %i.j, -1
  %i.m = or i64 %i.l, %.not34
  %i.n = and i64 %i.i, %i.m
  %i.o = icmp ne i64 %i.n, 0
  br label %_ZNK4llvm9BitVector4testERKS0_.exit

bb.d:                                             ; preds = %bb.a
  %i.p = inttoptr i64 %i.a to ptr                 ; 4 uses
  br i1 %i.d, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17   ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.s) ; 2 uses
  %.not20.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not20.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.x = zext i32 %.sroa.speculated.i to i64
  br label %bb.f

.preheader.i:                                     ; preds = %bb.g, %bb.e
  %.not1122.not.i = icmp ugt i32 %i.s, %i.u
  br i1 %.not1122.not.i, label %.lr.ph24.i, label %_ZNK4llvm9BitVector4testERKS0_.exit

.lr.ph24.i:                                       ; preds = %.preheader.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.z = zext i32 %i.s to i64
  %umin.i = zext i32 %i.u to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ae = xor i64 %i.ad, -1
  %i.af = and i64 %i.ab, %i.ae
  %.not13.i = icmp eq i64 %i.af, 0
  br i1 %.not13.i, label %bb.g, label %_ZNK4llvm9BitVector4testERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %.not.i, label %.preheader.i, label %bb.f, !llvm.loop !149

bb.h:                                             ; preds = %bb.h, %.lr.ph24.i
  %indvars.iv30.i = phi i64 [ %umin.i, %.lr.ph24.i ], [ %indvars.iv.next31.i, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv30.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16
  %.not12.not.i.not = icmp ne i64 %i.ah, 0        ; 2 uses
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %.not11.i = icmp eq i64 %indvars.iv.next31.i, %i.z
  %or.cond115 = select i1 %.not12.not.i.not, i1 true, i1 %.not11.i
  br i1 %or.cond115, label %_ZNK4llvm9BitVector4testERKS0_.exit, label %bb.h, !llvm.loop !150

bb.i:                                             ; preds = %bb.b
  %i.ai = lshr i64 %i.a, 58
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit

bb.j:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !68
  %i.al = zext i32 %i.ak to i64
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit

_ZNK4llvm14SmallBitVector4sizeEv.exit:            ; preds = %bb.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %i.al, %bb.j ]
  %i.an = trunc i64 %i.c to i1                    ; 3 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit
  %i.ao = lshr i64 %i.c, 58
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit19

bb.l:                                             ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit
  %i.ap = inttoptr i64 %i.c to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68
  %i.as = zext i32 %i.ar to i64
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit19

_ZNK4llvm14SmallBitVector4sizeEv.exit19:          ; preds = %bb.k, %bb.l
  %i.at = phi i64 [ %i.ao, %bb.k ], [ %i.as, %bb.l ]
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am) ; 8 uses
  %i.au = trunc nuw i64 %.sroa.speculated to i32  ; 2 uses
  %.not40 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit19
  %i.av = lshr i64 %i.a, 1
  %i.aw = lshr i64 %i.a, 58
  %i.ax = shl nsw i64 -1, %i.aw
  %i.ay = xor i64 %i.ax, -1
  %i.az = and i64 %i.av, %i.ay                    ; 2 uses
  %i.ba = inttoptr i64 %i.c to ptr                ; 2 uses
  %i.bb = lshr i64 %i.c, 1
  %i.bc = lshr i64 %i.c, 58
  %i.bd = shl nsw i64 -1, %i.bc
  %i.be = xor i64 %i.bd, -1
  %i.bf = and i64 %i.bb, %i.be                    ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.an, label %.split.us.us, label %.split.us

.split.us.us:                                     ; preds = %.lr.ph.split.us, %bb.m
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.m ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bg = lshr i64 %i.az, %indvars.iv81
  %i.bh = trunc i64 %i.bg to i1
  %.not56 = xor i1 %i.bh, true
  %i.bi = lshr i64 %i.bf, %indvars.iv81
  %i.bj = trunc i64 %i.bi to i1
  %or.cond = select i1 %.not56, i1 true, i1 %i.bj
  br i1 %or.cond, label %bb.m, label %_ZNK4llvm9BitVector4testERKS0_.exit

bb.m:                                             ; preds = %.split.us.us
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %.not.us.us = icmp eq i64 %indvars.iv.next82, %.sroa.speculated
  br i1 %.not.us.us, label %._crit_edge.loopexit, label %.split.us.us, !llvm.loop !151

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.n
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.n ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.bk = lshr i64 %i.az, %indvars.iv78
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %_ZNK4llvm14SmallBitVector4testEj.exit21.us, label %bb.n

_ZNK4llvm14SmallBitVector4testEj.exit21.us:       ; preds = %.split.us
  %i.bm = lshr i64 %indvars.iv78, 6
  %i.bn = and i64 %i.bm, 67108863
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = and i64 %indvars.iv78, 63
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.bs = shl nuw i64 1, %i.bq
  %i.bt = and i64 %i.br, %i.bs
  %.not32.us = icmp eq i64 %i.bt, 0
  br i1 %.not32.us, label %_ZNK4llvm9BitVector4testERKS0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit21.us, %.split.us
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next79, %.sroa.speculated
  br i1 %.not.us, label %._crit_edge.loopexit66, label %.split.us, !llvm.loop !151

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bu = inttoptr i64 %i.a to ptr
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  br i1 %i.an, label %_ZNK4llvm14SmallBitVector4testEj.exit.us, label %_ZNK4llvm14SmallBitVector4testEj.exit

_ZNK4llvm14SmallBitVector4testEj.exit.us:         ; preds = %.lr.ph.split, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.bw = lshr i64 %indvars.iv, 6
  %i.bx = and i64 %i.bw, 67108863
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = and i64 %indvars.iv, 63
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !16
  %i.cb = shl nuw i64 1, %i.bz
  %i.cc = and i64 %i.ca, %i.cb
  %.not31.us = icmp eq i64 %i.cc, 0
  %i.cd = lshr i64 %i.bf, %indvars.iv
  %i.ce = trunc i64 %i.cd to i1
  %or.cond61 = select i1 %.not31.us, i1 true, i1 %i.ce
  br i1 %or.cond61, label %bb.o, label %_ZNK4llvm9BitVector4testERKS0_.exit

bb.o:                                             ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us44 = icmp eq i64 %indvars.iv.next, %.sroa.speculated
  br i1 %.not.us44, label %._crit_edge.loopexit68, label %_ZNK4llvm14SmallBitVector4testEj.exit.us, !llvm.loop !151

_ZNK4llvm14SmallBitVector4testEj.exit:            ; preds = %.lr.ph.split, %bb.p
  %.041 = phi i32 [ %i.cr, %bb.p ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.cf = lshr i32 %.041, 6
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = and i32 %.041, 63
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  %i.cm = and i64 %i.cj, %i.cl
  %.not31 = icmp eq i64 %i.cm, 0
  br i1 %.not31, label %bb.p, label %_ZNK4llvm14SmallBitVector4testEj.exit21

_ZNK4llvm14SmallBitVector4testEj.exit21:          ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit
  %i.cn = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cg
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !16
  %i.cq = and i64 %i.cp, %i.cl
  %.not32 = icmp eq i64 %i.cq, 0
  br i1 %.not32, label %_ZNK4llvm9BitVector4testERKS0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit, %_ZNK4llvm14SmallBitVector4testEj.exit21
  %i.cr = add nuw i32 %.041, 1                    ; 2 uses
  %.not = icmp eq i32 %i.cr, %i.au
  br i1 %.not, label %._crit_edge, label %_ZNK4llvm14SmallBitVector4testEj.exit, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.cs = trunc nuw i64 %.sroa.speculated to i32
  br label %._crit_edge

._crit_edge.loopexit66:                           ; preds = %bb.n
  %i.ct = trunc nuw i64 %.sroa.speculated to i32
  br label %._crit_edge

._crit_edge.loopexit68:                           ; preds = %bb.o
  %i.cu = trunc nuw i64 %.sroa.speculated to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %._crit_edge.loopexit68, %._crit_edge.loopexit66, %._crit_edge.loopexit, %_ZNK4llvm14SmallBitVector4sizeEv.exit19
  %.0.lcssa = phi i32 [ 0, %_ZNK4llvm14SmallBitVector4sizeEv.exit19 ], [ %i.cs, %._crit_edge.loopexit ], [ %i.cu, %._crit_edge.loopexit68 ], [ %i.ct, %._crit_edge.loopexit66 ], [ %i.au, %bb.p ] ; 4 uses
  br i1 %i.b, label %_ZNK4llvm14SmallBitVector4sizeEv.exit22, label %_ZNK4llvm14SmallBitVector4sizeEv.exit22.thread

_ZNK4llvm14SmallBitVector4sizeEv.exit22:          ; preds = %._crit_edge
  %i.cv = lshr i64 %i.a, 58
  %i.cw = trunc nuw nsw i64 %i.cv to i32          ; 2 uses
  %.not1848 = icmp eq i32 %.0.lcssa, %i.cw
  br i1 %.not1848, label %_ZNK4llvm9BitVector4testERKS0_.exit, label %.split30.us.preheader

_ZNK4llvm14SmallBitVector4sizeEv.exit22.thread:   ; preds = %._crit_edge
  %i.cx = inttoptr i64 %i.a to ptr                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !68 ; 2 uses
  %.not184891 = icmp eq i32 %.0.lcssa, %i.cz
  br i1 %.not184891, label %_ZNK4llvm9BitVector4testERKS0_.exit, label %.lr.ph50.split

.split30.us.preheader:                            ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit22
  %2 = lshr i64 %i.a, 1
  %3 = lshr i64 %i.a, 58
  %4 = shl nsw i64 -1, %3
  %5 = xor i64 %4, -1
  %6 = and i64 %2, %5
  br label %.split30.us

.split30.us:                                      ; preds = %.split30.us, %.split30.us.preheader
  %.149.us = phi i32 [ %i.dd, %.split30.us ], [ %.0.lcssa, %.split30.us.preheader ] ; 2 uses
  %i.da = zext nneg i32 %.149.us to i64
  %i.db = lshr i64 %6, %i.da
  %i.dc = trunc i64 %i.db to i1                   ; 2 uses
  %i.dd = add i32 %.149.us, 1                     ; 2 uses
  %.not18.us = icmp eq i32 %i.dd, %i.cw
  %or.cond116 = or i1 %.not18.us, %i.dc
  br i1 %or.cond116, label %_ZNK4llvm9BitVector4testERKS0_.exit, label %.split30.us, !llvm.loop !152

.lr.ph50.split:                                   ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit22.thread
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !20
  br label %_ZNK4llvm14SmallBitVector4testEj.exit24

_ZNK4llvm14SmallBitVector4testEj.exit24:          ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit24, %.lr.ph50.split
  %.149 = phi i32 [ %.0.lcssa, %.lr.ph50.split ], [ %i.dn, %_ZNK4llvm14SmallBitVector4testEj.exit24 ] ; 3 uses
  %i.df = lshr i32 %.149, 6
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  %i.di = and i32 %.149, 63
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !16
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dj, %i.dl
  %.not33.not = icmp ne i64 %i.dm, 0              ; 2 uses
  %i.dn = add i32 %.149, 1                        ; 2 uses
  %.not18 = icmp eq i32 %i.dn, %i.cz
  %or.cond117 = or i1 %.not33.not, %.not18
  br i1 %or.cond117, label %_ZNK4llvm9BitVector4testERKS0_.exit, label %_ZNK4llvm14SmallBitVector4testEj.exit24, !llvm.loop !152

_ZNK4llvm9BitVector4testERKS0_.exit:              ; preds = %bb.f, %bb.h, %_ZNK4llvm14SmallBitVector4testEj.exit21, %_ZNK4llvm14SmallBitVector4testEj.exit.us, %_ZNK4llvm14SmallBitVector4testEj.exit21.us, %.split.us.us, %_ZNK4llvm14SmallBitVector4testEj.exit24, %.split30.us, %_ZNK4llvm14SmallBitVector4sizeEv.exit22.thread, %_ZNK4llvm14SmallBitVector4sizeEv.exit22, %.preheader.i, %bb.c
  %.117 = phi i1 [ %i.o, %bb.c ], [ true, %_ZNK4llvm14SmallBitVector4testEj.exit21.us ], [ true, %_ZNK4llvm14SmallBitVector4testEj.exit.us ], [ true, %_ZNK4llvm14SmallBitVector4testEj.exit21 ], [ false, %.preheader.i ], [ %.not33.not, %_ZNK4llvm14SmallBitVector4testEj.exit24 ], [ false, %_ZNK4llvm14SmallBitVector4sizeEv.exit22.thread ], [ false, %_ZNK4llvm14SmallBitVector4sizeEv.exit22 ], [ %.not12.not.i.not, %bb.h ], [ true, %.split.us.us ], [ %i.dc, %.split30.us ], [ true, %bb.f ]
  ret i1 %.117
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef) local_unnamed_addr #5

declare void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeERNS_7BuilderE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.106") align 8, ptr, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp16getStaticOffsetsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #5

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp14getStaticSizesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp16getStaticStridesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  %i.g = load i32, ptr %i.a, align 8, !tbaa !17
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !17
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @_ZN4mlir6tensor14ExtractSliceOp6createERNS_9OpBuilderENS_8LocationENS_16RankedTensorTypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_SA_NS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.150") align 8, ptr noundef byval(%"class.llvm::ArrayRef.150") align 8, ptr noundef byval(%"class.llvm::ArrayRef.151") align 8) local_unnamed_addr #5

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

declare i64 @_ZN4mlir6tensor13InsertSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #14
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #14
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_153DropRedundantRankExpansionOnInsertSliceOfExtractSliceD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #14
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #14
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor13InsertSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK12_GLOBAL__N_153DropRedundantRankExpansionOnInsertSliceOfExtractSlice15matchAndRewriteEN4mlir6tensor13InsertSliceOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %class.anon.164, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %class.anon.164, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %class.anon.164, align 8            ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %12 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %13 = alloca %"class.llvm::iterator_range", align 8 ; 7 uses
  %14 = alloca %class.anon.164, align 8           ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.mlir::tensor::InsertSliceOp", align 8 ; 12 uses
  %17 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 11 uses
  %18 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %19 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  %20 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  %21 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %22 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 4 uses
  %23 = alloca %"class.llvm::SmallVector.106", align 8 ; 6 uses
  %24 = alloca %"class.llvm::SmallVector.106", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.106", align 8 ; 6 uses
  store ptr %1, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.a = call i64 @_ZN4mlir6tensor13InsertSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #14
  %i.b = load ptr, ptr %16, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !28
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %18, align 8
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #14 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6tensor14ExtractSliceOpEvE2idE
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
