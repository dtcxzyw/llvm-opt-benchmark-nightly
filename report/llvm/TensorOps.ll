Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TensorOps?download=true
inline.NumInlined: 24452
inline.NumDeleted: 8751
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN4mlir6tensor5PadOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bNS9_INS_14NamedAttributeEEE:bb.a
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !60  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %.sroa.2.0.copyload, %i.ab  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !61
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull %i.ah, i64 noundef %i.ac, i64 noundef 16) #26
  %.pre8.pre.i.i.i.i = load i32, ptr %i.z, align 8, !tbaa !60
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.pre8.i.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %.pre8.pre.i.i.i.i, %bb.d ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.aj = zext i32 %.pre8.i.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 8 %.sroa.04.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.z, align 8, !tbaa !60
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.e
  %i.al = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.e ]
  %i.am = trunc i64 %.sroa.2.0.copyload to i32
  %i.an = add i32 %i.al, %i.am
  store i32 %i.an, ptr %i.z, align 8, !tbaa !60
  %i.ao = load ptr, ptr %9, align 8, !tbaa !59
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !60
  %i.aq = zext i32 %i.ap to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr %i.ao, i64 %i.aq) #26
  %i.ar = load ptr, ptr %10, align 8, !tbaa !59
  %i.as = load i32, ptr %i.f, align 8, !tbaa !60
  %i.at = zext i32 %i.as to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr %i.ar, i64 %i.at) #26
  %i.au = load ptr, ptr %11, align 8, !tbaa !59
  %i.av = load i32, ptr %i.i, align 8, !tbaa !60
  %i.aw = zext i32 %i.av to i64
  %i.ax = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.au, i64 %i.aw) #26
  %i.ay = load ptr, ptr %12, align 8, !tbaa !59
  %i.az = load i32, ptr %i.l, align 8, !tbaa !60
  %i.ba = zext i32 %i.az to i64
  %i.bb = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.ay, i64 %i.ba) #26
  br i1 %7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.bc = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.bd = ptrtoint ptr %i.bc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, %bb.f
  %.sroa.0.0 = phi i64 [ %i.bd, %bb.f ], [ 0, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ]
  %i.be = load i64, ptr %14, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.ax to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  call void @_ZN4mlir6tensor5PadOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeES8_NS_6detail18DenseArrayAttrImplIlEESB_NS_8UnitAttrE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %.sroa.030.0, ptr nonnull %3, i64 %i.be, i64 %i.bg, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %15, i64 %i.bh, i64 %i.bi, i64 %.sroa.0.0)
  %i.bj = load ptr, ptr %12, align 8, !tbaa !59   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.k
  br i1 %i.bk, label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.bj) #26
  br label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit

_ZN4llvm11SmallVectorIlLj4EED2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.bl = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.h
  br i1 %i.bm, label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit19, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit
  call void @free(ptr noundef %i.bl) #26
  br label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit19

_ZN4llvm11SmallVectorIlLj4EED2Ev.exit19:          ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bn = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.e
  br i1 %i.bo, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit19
  call void @free(ptr noundef %i.bn) #26
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit19, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bp = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.b
  br i1 %i.bq, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit20, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit
  call void @free(ptr noundef %i.bp) #26
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit20

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit20: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor5PadOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_S7_bNS9_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) initializes((192, 200)) %1, ptr %2, ptr %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.84") align 8 captures(none) %6, i64 %7, i1 noundef zeroext %8, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.385") align 8 captures(none) %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %11 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %12 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %13 = alloca %"struct.llvm::Repeated", align 16 ; 5 uses
  %14 = alloca %"class.llvm::SmallVector.1080", align 8 ; 10 uses
  %15 = alloca %"class.llvm::ArrayRef.766", align 8 ; 3 uses
  %i.a = inttoptr i64 %7 to ptr
  tail call void @_ZN4mlir6tensor5PadOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bNS9_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.84") align 8 %6, i1 noundef zeroext %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.385") align 8 %9)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %12, align 8
  %i.h = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #26
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.j = shl i64 %i.i, 32                         ; 2 uses
  %i.k = ashr exact i64 %i.j, 32                  ; 8 uses
  %i.l = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %13, align 16, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.k, ptr %i.n, align 8, !tbaa !1132
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.o, ptr %14, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 6, ptr %i.q, align 4, !tbaa !61
  %.sroa.0.0.copyload.i23 = load ptr, ptr %1, align 8 ; 2 uses
  %i.r = icmp ugt i64 %i.k, 6
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %i.o, i64 noundef %i.k, i64 noundef 8) #26
  %i.s = load ptr, ptr %14, align 8, !tbaa !59    ; 2 uses
  %i.t = ptrtoint ptr %.sroa.0.0.copyload.i23 to i64 ; 4 uses
  %i.u = and i64 %i.i, 3                          ; 4 uses
  %n.vec39 = sub nuw nsw i64 %i.k, %i.u           ; 2 uses
  %i.v = shl nsw i64 %n.vec39, 3
  %i.w = getelementptr i8, ptr %i.s, i64 %i.v     ; 3 uses
  %broadcast.splatinsert40 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat41 = shufflevector <2 x i64> %broadcast.splatinsert40, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %.lr.ph.preheader.i.i.i.i.i.i
  %index43 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.x = shl i64 %index43, 3
  %next.gep44 = getelementptr i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep44, i64 16
  store <2 x i64> %broadcast.splat41, ptr %next.gep44, align 8
  store <2 x i64> %broadcast.splat41, ptr %i.y, align 8
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.z, label %middle.block46, label %vector.body42, !llvm.loop !1128

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.u, 0
  br i1 %cmp.n47, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block46
  store i64 %i.t, ptr %i.w, align 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.t, ptr %i.aa, align 8
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.u, 2
  br i1 %.not.i.i.i.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.t, ptr %i.ab, align 8
  br label %.loopexit

_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %bb.a
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.ac = ptrtoint ptr %.sroa.0.0.copyload.i23 to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ad = and i64 %i.i, 1                         ; 3 uses
  %n.vec = sub nuw nsw i64 %i.k, %i.ad            ; 2 uses
  %i.ae = shl nuw nsw i64 %n.vec, 3
  %i.af = getelementptr i8, ptr %i.o, i64 %i.ae
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3
  %i.ah = getelementptr i8, ptr %i.o, i64 %i.ag
  store <2 x i64> %broadcast.splat, ptr %i.ah, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, 0
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.preheader.i.i.i.i.i ], [ %i.af, %middle.block ]
  %.068.i.i.i.i.i.ph = phi i64 [ %i.k, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 %i.ac, ptr %.09.i.i.i.i.i, align 8
  %i.aj = add nsw i64 %.068.i.i.i.i.i, -1         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1130

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %middle.block, %middle.block46, %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.al = trunc i64 %i.i to i32
  store i32 %i.al, ptr %i.p, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !86
  %i.ap = ptrtoint ptr %13 to i64
  %i.aq = or disjoint i64 %i.ap, 4
  %i.ar = load ptr, ptr %14, align 8, !tbaa !59
  store ptr %i.ar, ptr %15, align 8, !tbaa !242
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.at = and i64 %i.i, 4294967295
  store i64 %i.at, ptr %i.as, align 8, !tbaa !243
  %i.au = call noundef ptr @_ZN4mlir9OpBuilder11createBlockEPNS_6RegionEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEENS_9TypeRangeENS3_8ArrayRefINS_8LocationEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.d, ptr %i.d, i64 %i.aq, i64 %i.k, ptr noundef nonnull byval(%"class.llvm::ArrayRef.766") align 8 %15) #26 ; 0 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %11, ptr %.sroa.02.0.copyload, ptr nonnull @.str.231, i64 12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.a, ptr %10, align 8
  %i.av = ptrtoint ptr %10 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %11, i64 %i.av, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.aw = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %11) #26 ; 0 uses
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  store <2 x ptr> %i.an, ptr %i.am, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.c:                                             ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.b, %bb.c
  %i.ax = load ptr, ptr %14, align 8, !tbaa !59   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.o
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit
  call void @free(ptr noundef %i.ax) #26
  br label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit: ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6tensor7YieldOp6createERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %4 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %4, ptr %1, ptr nonnull @.str.231, i64 12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %3, align 8
  %i.a = ptrtoint ptr %3 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %4, i64 %i.a, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %4) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7YieldOpEvE2idE
  %spec.select.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor5PadOp13getPaddedDimsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::SmallBitVector") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %6 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %8 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %6, align 8
  %i.h = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = icmp ult i32 %i.j, 58
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = shl i64 %i.i, 58
  %i.m = or disjoint i64 %i.l, 1
  br label %_ZN4llvm14SmallBitVectorC2Ejb.exit

bb.c:                                             ; preds = %bb.a
  %i.n = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27 ; 8 uses
  %i.o = add i32 %i.j, 63                         ; 2 uses
  %i.p = lshr i32 %i.o, 6                         ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 6, ptr %i.t, align 4, !tbaa !61
  %i.u = icmp ugt i32 %i.o, 447
  br i1 %i.u, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit: ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !60
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.n, ptr noundef nonnull %i.r, i64 noundef %i.q, i64 noundef 8) #26
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit
  %.sink = phi ptr [ %i.v, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit ], [ %i.r, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !56
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i:     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  store i32 %i.p, ptr %i.s, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i32 %i.j, ptr %i.w, align 8, !tbaa !278
  %i.x = ptrtoint ptr %i.n to i64
  br label %_ZN4llvm14SmallBitVectorC2Ejb.exit

_ZN4llvm14SmallBitVectorC2Ejb.exit:               ; preds = %bb.b, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i
  %.promoted = phi i64 [ %i.x, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i ], [ %i.m, %bb.b ] ; 3 uses
  store i64 %.promoted, ptr %0, align 8, !tbaa !266
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1137
  %i.y = load ptr, ptr %1, align 8, !tbaa !130, !noalias !1137 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !noalias !1137 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.aa, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ab = lshr i32 %i.aa, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ab, 1
  %i.ac = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !172, !noalias !1137
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %4, align 8, !noalias !1137
  %i.af = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26, !noalias !1137 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1137
  %i.ag = load ptr, ptr %1, align 8, !tbaa !130, !noalias !1137 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !1137 ; 3 uses
  %.not.i.i.i.i.i.i3 = icmp ugt i32 %i.ai, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i3)
  %i.aj = lshr i32 %i.ai, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.aj, 1
  %i.ak = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191, !noalias !1137 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 92
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191, !noalias !1137
  %i.aq = and i32 %i.ai, 8388608
  %.not.i.i.i13.i.i.i4 = icmp eq i32 %i.aq, 0
end_hunk_0
