Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgTransformOps?download=true
inline.NumInlined: 40313
inline.NumDeleted: 11533
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bb:bb.a
  %.pre.i = load i32, ptr %i.bf, align 8, !tbaa !110
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i: ; preds = %bb.e, %bb.d
  %i.bp = phi i32 [ %i.bk, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %.not7.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %15, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq ; 3 uses
  %i.bt = ptrtoint ptr %i.bj to i64               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.bh, 4294967292              ; 3 uses
  %i.bu = shl nuw nsw i64 %n.vec, 3
  %i.bv = getelementptr i8, ptr %i.bs, i64 %i.bu
  %i.bw = and i64 %i.bh, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !237
  store <2 x i64> %broadcast.splat, ptr %i.by, align 8, !tbaa !237
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.bs, %.lr.ph.preheader.i.i.i.i ], [ %i.bv, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.bh, %.lr.ph.preheader.i.i.i.i ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  store i64 %i.bt, ptr %.09.i.i.i.i, align 8, !tbaa !237
  %i.ca = add nsw i64 %.068.i.i.i.i, -1           ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !785

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.cc = trunc nuw i64 %i.bh to i32
  %i.cd = add i32 %i.bp, %i.cc                    ; 2 uses
  store i32 %i.cd, ptr %i.bf, align 8, !tbaa !110
  br label %bb.g

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit
  %i.ce = load ptr, ptr %15, align 8, !tbaa !109
  %i.cf = load i32, ptr %i.bf, align 8, !tbaa !110
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = call noundef ptr @_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6insertINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEPS2_ST_T_SU_(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef %i.ch, i64 %2, i64 0, i64 %2, i64 %3) ; 0 uses
  %.pre = load i32, ptr %i.bf, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit
  %i.cj = phi i32 [ %.pre, %bb.f ], [ %i.cd, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ck, align 8
  %i.cl = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load ptr, ptr %15, align 8, !tbaa !109
  %i.co = zext i32 %i.cj to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %i.cn, i64 %i.co) #29
  %i.cp = load ptr, ptr %10, align 8, !tbaa !109
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !110
  %i.cr = zext i32 %i.cq to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %i.cp, i64 %i.cr) #29
  %i.cs = load ptr, ptr %12, align 8, !tbaa !109
  %i.ct = load i32, ptr %i.k, align 8, !tbaa !110
  %i.cu = zext i32 %i.ct to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr %i.cs, i64 %i.cu) #29
  %i.cv = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #29 ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0
  store ptr %i.cw, ptr %19, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cy = extractvalue { ptr, i64 } %i.cv, 1
  store i64 %i.cy, ptr %i.cx, align 8
  %i.cz = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #29 ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0
  store ptr %i.da, ptr %20, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dc = extractvalue { ptr, i64 } %i.cz, 1
  store i64 %i.dc, ptr %i.db, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.dd = load i64, ptr %16, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.df = load i64, ptr %i.de, align 8
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_9TypeRangeENS_5ValueENS_10ValueRangeES9_S8_N4llvm8ArrayRefIlEESC_SC_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %i.cm, i64 %i.dd, i64 %i.df, ptr %4, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %17, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %18, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %20, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %21, i1 noundef zeroext %7, i1 noundef zeroext %8)
  %i.dg = load ptr, ptr %15, align 8, !tbaa !109  ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bg
  br i1 %i.dh, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.dg) #29
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.di = load ptr, ptr %12, align 8, !tbaa !109  ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.j
  br i1 %i.dj, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit
  call void @free(ptr noundef %i.di) #29
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.dk = load ptr, ptr %11, align 8, !tbaa !109  ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.g
  br i1 %i.dl, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  call void @free(ptr noundef %i.dk) #29
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.dm = load ptr, ptr %10, align 8, !tbaa !109  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.d
  br i1 %i.dn, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.dm) #29
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit14

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit14: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.do = load ptr, ptr %9, align 8, !tbaa !109   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.a
  br i1 %i.dp, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit15, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit14
  call void @free(ptr noundef %i.do) #29
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit15

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit15:          ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit14, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret void
}

declare void @_ZN4mlir17getAsOpFoldResultENS_9ArrayAttrE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.522") align 8, ptr) local_unnamed_addr #1

declare ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEES9_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SmallVector.528", align 8 ; 7 uses
  %9 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %10 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %11 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SmallVector.522", align 8 ; 7 uses
  %13 = alloca %"class.llvm::SmallVector.522", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.a = tail call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3, i64 %4) #29
  call void @_ZN4mlir17getAsOpFoldResultENS_9ArrayAttrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.522") align 8 %12, ptr %i.a) #29
  %i.b = load ptr, ptr %12, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110
  %i.e = zext i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  %i.f = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  call void @_ZN4mlir17getAsOpFoldResultENS_9ArrayAttrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.522") align 8 %13, ptr %i.f) #29
  %i.g = load ptr, ptr %13, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !110
  %i.j = zext i32 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.g, ptr %11, align 8
  %.sroa.2.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.j, ptr %.sroa.2.0..sroa_idx15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.k = load ptr, ptr %0, align 8, !tbaa !240
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #29
  %i.m = call noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9AnyOpTypeEvE2idE) #29
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.o, align 4, !tbaa !111
  %i.p = ptrtoint ptr %i.m to i64
  store i64 %i.p, ptr %i.n, align 8, !tbaa !237
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %14, align 8, !tbaa !110
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.n, i64 1) #29
  store ptr %i.b, ptr %10, align 8, !tbaa !233
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !150
  %i.q = load i64, ptr %9, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = load i64, ptr %i.r, align 8
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.q, i64 %i.s, ptr %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %11, i1 noundef zeroext %6, i1 noundef zeroext %7)
  %i.t = load ptr, ptr %8, align 8, !tbaa !109    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.n
  br i1 %i.u, label %_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.t) #29
  br label %_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit

_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.v = load ptr, ptr %13, align 8, !tbaa !109   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit
  call void @free(ptr noundef %i.v) #29
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.y = load ptr, ptr %12, align 8, !tbaa !109   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.y) #29
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.497") align 8 captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i.i.i:
  %8 = alloca %"class.llvm::SmallVector.528", align 8 ; 7 uses
  %9 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !240
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  %i.c = tail call noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9AnyOpTypeEvE2idE) #29
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.e, align 4, !tbaa !111
  %i.f = ptrtoint ptr %i.c to i64
  store i64 %i.f, ptr %i.d, align 8, !tbaa !237
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %11, align 8, !tbaa !110
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.d, i64 1) #29
  store ptr %3, ptr %10, align 8, !tbaa !233
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  %i.g = load i64, ptr %9, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.g, i64 %i.i, ptr %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %5, i1 noundef zeroext %6, i1 noundef zeroext %7)
  %i.j = load ptr, ptr %8, align 8, !tbaa !109    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @free(ptr noundef %i.j) #29
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret void
}

declare void @_ZN4mlir26dispatchIndexOpFoldResultsEN4llvm8ArrayRefINS_12OpFoldResultEEERNS0_15SmallVectorImplINS_5ValueEEERNS4_IlEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_9TypeRangeENS_5ValueENS_10ValueRangeES9_S8_N4llvm8ArrayRefIlEESC_SC_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, i64 %3, i64 %4, ptr %5, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %7, i64 %8, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %11, i1 noundef zeroext %12, i1 noundef zeroext %13) local_unnamed_addr #0 align 2 {
bb.a:
  %14 = alloca %class.anon.5268, align 1          ; 3 uses
  %15 = alloca %class.anon.5270, align 1          ; 3 uses
  %16 = alloca %class.anon.5268, align 1          ; 3 uses
  %17 = alloca %class.anon.5270, align 1          ; 3 uses
  %18 = alloca %class.anon.5268, align 1          ; 3 uses
  %19 = alloca %class.anon.5270, align 1          ; 3 uses
  %20 = alloca %class.anon.5268, align 1          ; 3 uses
  %21 = alloca %class.anon.5270, align 1          ; 3 uses
  %22 = alloca %class.anon.5268, align 1          ; 3 uses
  %23 = alloca %class.anon.5270, align 1          ; 3 uses
  %24 = alloca %class.anon.5268, align 1          ; 3 uses
  %25 = alloca %class.anon.5270, align 1          ; 3 uses
  %26 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %27 = alloca %"class.mlir::Value", align 8      ; 3 uses
  store ptr %5, ptr %26, align 8
  %i.a = inttoptr i64 %8 to ptr
  store ptr %i.a, ptr %27, align 8
  %i.b = ptrtoint ptr %26 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.b, i64 1) #29
  %.sroa.012.0.copyload = load i64, ptr %6, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.213.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8 ; 2 uses
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.012.0.copyload, i64 %.sroa.213.0.copyload) #29
  %.sroa.010.0.copyload = load i64, ptr %7, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8 ; 2 uses
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.010.0.copyload, i64 %.sroa.211.0.copyload) #29
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %27 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.c, i64 1) #29
  %.pre = load ptr, ptr %27, align 8, !tbaa !242
  %i.d = icmp ne ptr %.pre, null
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = trunc i64 %.sroa.213.0.copyload to i32
  %i.h = trunc i64 %.sroa.211.0.copyload to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 12 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.l = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.k, align 8, !tbaa !200
  store ptr %i.l, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.m = ptrtoint ptr %24 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.n, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.m, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  %i.o = ptrtoint ptr %25 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.p, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit

_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit: ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 1, ptr %i.r, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  store i32 %i.f, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.05.0.copyload = load ptr, ptr %9, align 8, !tbaa !228
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !150
  %i.s = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #29
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !244  ; 2 uses
  %.not.i34 = icmp eq ptr %i.t, null
  br i1 %.not.i34, label %bb.e, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit37

bb.e:                                             ; preds = %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.v = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.u, align 8, !tbaa !200
  store ptr %i.v, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.w = ptrtoint ptr %22 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.x, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.w, ptr %.sroa.43.0..sroa_idx.i35, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.y = ptrtoint ptr %23 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.z, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i36, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit37

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit37: ; preds = %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit, %bb.e
  %i.aa = phi ptr [ %i.v, %bb.e ], [ %i.t, %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.s, ptr %i.ab, align 8
  %.sroa.02.0.copyload = load ptr, ptr %10, align 8, !tbaa !228
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !150
  %i.ac = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload) #29
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !244 ; 2 uses
  %.not.i38 = icmp eq ptr %i.ad, null
  br i1 %.not.i38, label %bb.f, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit41

bb.f:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit37
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.af = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 56, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ae, align 8, !tbaa !200
  store ptr %i.af, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.ag = ptrtoint ptr %20 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.ah, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ag, ptr %.sroa.43.0..sroa_idx.i39, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.ai = ptrtoint ptr %21 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.aj, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit41

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit41: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit37, %bb.f
  %i.ak = phi ptr [ %i.af, %bb.f ], [ %i.ad, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit37 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.ac, ptr %i.al, align 8
  %.sroa.0.0.copyload = load ptr, ptr %11, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  %i.am = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !244 ; 2 uses
  %.not.i42 = icmp eq ptr %i.an, null
  br i1 %.not.i42, label %bb.g, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit45

bb.g:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit41
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ap = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i8 0, i64 56, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ao, align 8, !tbaa !200
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.aq = ptrtoint ptr %18 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.ar, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.aq, ptr %.sroa.43.0..sroa_idx.i43, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.as = ptrtoint ptr %19 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 288
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS9_IlEESt8optionalINS9_IbEEE:bb.a
.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.preheader.i.i.i.i ], [ %i.be, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.ap, %.lr.ph.preheader.i.i.i.i ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  store i64 %i.bc, ptr %.09.i.i.i.i, align 8, !tbaa !237
  %i.bj = add nsw i64 %.068.i.i.i.i, -1           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2754

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.bl = trunc i64 %i.al to i32
  %i.bm = add i32 %i.ay, %i.bl
  store i32 %i.bm, ptr %i.an, align 8, !tbaa !110
  br label %bb.f

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit
  %i.bn = load ptr, ptr %11, align 8, !tbaa !109
  %i.bo = load i32, ptr %i.an, align 8, !tbaa !110
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = call noundef ptr @_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6insertINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEPS2_ST_T_SU_(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef %i.bq, i64 %2, i64 0, i64 %2, i64 %3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 5 uses
  store ptr %i.bs, ptr %12, align 8, !tbaa !318
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 40, ptr %i.bu, align 8, !tbaa !319
  %i.bv = icmp ugt i64 %.sroa.26.0.copyload, 40
  br i1 %i.bv, label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i: ; preds = %bb.f
  store i64 0, ptr %i.bt, align 8, !tbaa !320
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.bs, i64 noundef %.sroa.26.0.copyload, i64 noundef 1) #29
  %i.bw = load ptr, ptr %12, align 8, !tbaa !318
  br label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.f
  %.not.i = icmp eq i64 %.sroa.26.0.copyload, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit, label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i: ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i
  %.sink.i = phi ptr [ %i.bw, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ], [ %i.bs, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i, i8 0, i64 %.sroa.26.0.copyload, i1 false), !tbaa !152
  br label %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit

_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit:        ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i
  store i64 %.sroa.26.0.copyload, ptr %i.bt, align 8, !tbaa !320
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !432, !range !194, !noundef !195
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit
  %i.ca = load ptr, ptr %7, align 8, !tbaa !434
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !2755 ; 5 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !320
  %i.cd = load i64, ptr %i.bu, align 8, !tbaa !319
  %i.ce = icmp ult i64 %i.cd, %i.cc
  br i1 %i.ce, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.thread: ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.bs, i64 noundef %i.cc, i64 noundef 1) #29
  %.pre8.pre.i.i = load i64, ptr %i.bt, align 8, !tbaa !320
  br label %bb.h

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i:  ; preds = %bb.g
  %.not.i.i.i11 = icmp samesign eq i64 %i.cc, 0
  br i1 %.not.i.i.i11, label %_ZN4llvm15SmallVectorImplIbE6assignIPKbvEEvT_S5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i
  %.pre8.i.i27 = phi i64 [ %.pre8.pre.i.i, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i ]
  %i.cf = load ptr, ptr %12, align 8, !tbaa !318
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre8.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ca, i64 %i.cc, i1 false)
  %.pre.i.i = load i64, ptr %i.bt, align 8, !tbaa !320
  br label %_ZN4llvm15SmallVectorImplIbE6assignIPKbvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIbE6assignIPKbvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i, %bb.h
  %i.ch = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.h ]
  %i.ci = add i64 %i.ch, %i.cc
  store i64 %i.ci, ptr %i.bt, align 8, !tbaa !320
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIbE6assignIPKbvEEvT_S5_.exit, %_ZN4llvm11SmallVectorIbLj40EEC2EmRKb.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.cj, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load ptr, ptr %11, align 8, !tbaa !109
  %i.cn = load i32, ptr %i.an, align 8, !tbaa !110
  %i.co = zext i32 %i.cn to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %i.cm, i64 %i.co) #29
  %i.cp = load ptr, ptr %9, align 8, !tbaa !109
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !110
  %i.cr = zext i32 %i.cq to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr %i.cp, i64 %i.cr) #29
  %i.cs = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #29 ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0
  store ptr %i.ct, ptr %15, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cv = extractvalue { ptr, i64 } %i.cs, 1
  store i64 %i.cv, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  %i.cw = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  store ptr %i.cw, ptr %17, align 8
  %i.cx = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #29 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0
  store ptr %i.cy, ptr %16, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.da = extractvalue { ptr, i64 } %i.cx, 1
  store i64 %i.da, ptr %i.cz, align 8
  %i.db = load ptr, ptr %12, align 8, !tbaa !318
  store ptr %i.db, ptr %18, align 8, !tbaa !434
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dd = load i64, ptr %i.bt, align 8, !tbaa !320
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !2755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.de = load i64, ptr %13, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_9TypeRangeENS_5ValueENS_10ValueRangeEN4llvm8ArrayRefIlEESC_NSB_IbEESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %i.cl, i64 %i.de, i64 %i.dg, ptr %4, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %14, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %16, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1977") align 8 %18, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.dh = load ptr, ptr %12, align 8, !tbaa !318  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bs
  br i1 %i.di, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.dh) #29
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.dj = load ptr, ptr %11, align 8, !tbaa !109  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.am
  br i1 %i.dk, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit
  call void @free(ptr noundef %i.dj) #29
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.dl = load ptr, ptr %9, align 8, !tbaa !109   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.d
  br i1 %i.dm, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit
  call void @free(ptr noundef %i.dl) #29
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.dn = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.a
  br i1 %i.do, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  call void @free(ptr noundef %i.dn) #29
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEES9_St8optionalINS8_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.528", align 8 ; 7 uses
  %8 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.522", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = tail call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3, i64 %4) #29
  call void @_ZN4mlir17getAsOpFoldResultENS_9ArrayAttrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.522") align 8 %10, ptr %i.a) #29
  %i.b = load ptr, ptr %10, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110
  %i.e = zext i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !240
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  %i.h = call noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9AnyOpTypeEvE2idE) #29
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.j, align 4, !tbaa !111
  %i.k = ptrtoint ptr %i.h to i64
  store i64 %i.k, ptr %i.i, align 8, !tbaa !237
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %11, align 8, !tbaa !110
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.i, i64 1) #29
  store ptr %i.b, ptr %9, align 8, !tbaa !233
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !150
  %i.l = load i64, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load i64, ptr %i.m, align 8
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS9_IlEESt8optionalINS9_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.l, i64 %i.n, ptr %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %5, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %6)
  %i.o = load ptr, ptr %7, align 8, !tbaa !109    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.o) #29
  br label %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit

_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.q = load ptr, ptr %10, align 8, !tbaa !109   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit
  call void @free(ptr noundef %i.q) #29
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i.i.i:
  %7 = alloca %"class.llvm::SmallVector.528", align 8 ; 7 uses
  %8 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %9 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !240
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  %i.c = tail call noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9AnyOpTypeEvE2idE) #29
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.e, align 4, !tbaa !111
  %i.f = ptrtoint ptr %i.c to i64
  store i64 %i.f, ptr %i.d, align 8, !tbaa !237
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %10, align 8, !tbaa !110
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.d, i64 1) #29
  store ptr %3, ptr %9, align 8, !tbaa !233
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  %i.g = load i64, ptr %8, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS9_IlEESt8optionalINS9_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.g, i64 %i.i, ptr %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %5, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %6)
  %i.j = load ptr, ptr %7, align 8, !tbaa !109    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @free(ptr noundef %i.j) #29
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_9TypeRangeENS_5ValueENS_10ValueRangeEN4llvm8ArrayRefIlEESC_NSB_IbEESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, i64 %3, i64 %4, ptr %5, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.1977") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %10) local_unnamed_addr #0 align 2 {
bb.a:
  %11 = alloca %class.anon.5528, align 1          ; 3 uses
  %12 = alloca %class.anon.5530, align 1          ; 3 uses
  %13 = alloca %class.anon.5528, align 1          ; 3 uses
  %14 = alloca %class.anon.5530, align 1          ; 3 uses
  %15 = alloca %class.anon.5528, align 1          ; 3 uses
  %16 = alloca %class.anon.5530, align 1          ; 3 uses
  %17 = alloca %class.anon.5528, align 1          ; 3 uses
  %18 = alloca %class.anon.5530, align 1          ; 3 uses
  %19 = alloca %"class.mlir::Value", align 8      ; 2 uses
  store ptr %5, ptr %19, align 8
  %i.a = ptrtoint ptr %19 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #29
  %.sroa.011.0.copyload = load i64, ptr %6, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.011.0.copyload, i64 %.sroa.212.0.copyload) #29
  %.sroa.08.0.copyload = load ptr, ptr %7, align 8, !tbaa !228
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !150
  %i.b = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload) #29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.e, align 8, !tbaa !200
  store ptr %i.f, ptr %i.c, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.g = ptrtoint ptr %17 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.h, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.g, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.i = ptrtoint ptr %18 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.j, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.b, ptr %i.l, align 8
  %.sroa.05.0.copyload = load ptr, ptr %8, align 8, !tbaa !228
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !150
  %i.m = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #29
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !244  ; 2 uses
  %.not.i24 = icmp eq ptr %i.n, null
  br i1 %.not.i24, label %bb.c, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit27

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.o, align 8, !tbaa !200
  store ptr %i.p, ptr %i.c, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.q = ptrtoint ptr %15 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.r, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.q, ptr %.sroa.43.0..sroa_idx.i25, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.s = ptrtoint ptr %16 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.t, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx.i26, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit27

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit27: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.c
  %i.u = phi ptr [ %i.p, %bb.c ], [ %i.n, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.m, ptr %i.v, align 8
  %.sroa.02.0.copyload = load ptr, ptr %9, align 8, !tbaa !360
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !150
  %i.w = call ptr @_ZN4mlir7Builder21getDenseBoolArrayAttrEN4llvm8ArrayRefIbEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload) #29
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !244  ; 2 uses
  %.not.i28 = icmp eq ptr %i.x, null
  br i1 %.not.i28, label %bb.d, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit31

bb.d:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit27
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.z = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.y, align 8, !tbaa !200
  store ptr %i.z, ptr %i.c, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.aa = ptrtoint ptr %13 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.ab, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.aa, ptr %.sroa.43.0..sroa_idx.i29, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.ac = ptrtoint ptr %14 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.ad, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx.i30, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit31

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit31: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit27, %bb.d
  %i.ae = phi ptr [ %i.z, %bb.d ], [ %i.x, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit27 ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.w, ptr %i.af, align 8
  %.sroa.0.0.copyload = load ptr, ptr %10, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  %i.ag = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !244 ; 2 uses
  %.not.i32 = icmp eq ptr %i.ah, null
  br i1 %.not.i32, label %bb.e, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit35

bb.e:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit31
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.aj = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ai, align 8, !tbaa !200
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ak = ptrtoint ptr %11 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.al, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ak, ptr %.sroa.43.0..sroa_idx.i33, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.am = ptrtoint ptr %12 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.an, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx.i34, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit35

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit35: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit31, %bb.e
  %i.ao = phi ptr [ %i.aj, %bb.e ], [ %i.ah, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit31 ]
  store ptr %i.ag, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !110 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !111
  %.not = icmp ult i32 %i.ar, %i.at
  br i1 %.not, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit35
  %i.au = zext i32 %i.ar to i64
  %i.av = add nuw nsw i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull %i.aw, i64 noundef %i.av, i64 noundef 8) #29
  %.pre8.pre.i.i = load i32, ptr %i.aq, align 8, !tbaa !110
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit35, %bb.f
  %.pre8.i.i = phi i32 [ %i.ar, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit35 ], [ %.pre8.pre.i.i, %bb.f ]
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !109
  %i.ay = zext i32 %.pre8.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  store ptr %2, ptr %i.az, align 1
  %.pre.i.i = load i32, ptr %i.aq, align 8, !tbaa !110
end_hunk_1
begin_hunk_2_@_ZN4mlir9transform6FuseOp15setApplyCleanupEb:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6FuseOp12setUseForallEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #29
  store ptr %i.i, ptr %2, align 8, !tbaa !240
  %i.j = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  %i.k = ptrtoint ptr %i.j to i64
  store i64 %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEES9_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %9, ptr %1, ptr nonnull @.str.583, i64 25) #29
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEESA_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9, i64 %2, i64 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform6FuseOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEES8_bb(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %10 = alloca %"class.llvm::ArrayRef.203", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %4, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %9, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.583, i64 25) #29
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEESA_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9, i64 %1, i64 %2, ptr %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9) #29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform6FuseOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.497") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.497") align 8 captures(none) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %9, ptr %1, ptr nonnull @.str.583, i64 25) #29
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9, i64 %2, i64 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform6FuseOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES9_bb(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.497") align 8 captures(none) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %10 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %4, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %9, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.583, i64 25) #29
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9, i64 %1, i64 %2, ptr %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %9) #29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform6FuseOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEES8_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.583, i64 25) #29
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEES9_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %5, i1 noundef zeroext %6, i1 noundef zeroext %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform6FuseOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_20ImplicitLocOpBuilderENS_5ValueEN4llvm8ArrayRefIlEES7_bb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %9 = alloca %"class.llvm::ArrayRef.203", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %4, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.583, i64 25) #29
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEES9_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr %2, i64 %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %9, i1 noundef zeroext %6, i1 noundef zeroext %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform6FuseOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES9_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.497") align 8 captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SmallVector.528", align 8 ; 7 uses
  %9 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %10 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %11 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %11, ptr %1, ptr nonnull @.str.583, i64 25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !240
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  %i.c = call noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9AnyOpTypeEvE2idE) #29
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.e, align 4, !tbaa !111
  %i.f = ptrtoint ptr %i.c to i64
  store i64 %i.f, ptr %i.d, align 8, !tbaa !237
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %12, align 8, !tbaa !110
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.d, i64 1) #29
  store ptr %3, ptr %10, align 8, !tbaa !233
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !150
  %i.g = load i64, ptr %9, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESB_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %11, i64 %i.g, i64 %i.i, ptr %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %5, i1 noundef zeroext %6, i1 noundef zeroext %7)
  %i.j = load ptr, ptr %8, align 8, !tbaa !109    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.j) #29
  br label %_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit

_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_bb.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.l = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %11) #29 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !221
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208
  %i.p = icmp eq ptr %i.o, @_ZN4mlir6detail14TypeIDResolverINS_9transform6FuseOpEvE2idE
  %spec.select.i.i = select i1 %i.p, ptr %i.l, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform6FuseOp6createERNS_20ImplicitLocOpBuilderENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES8_bb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %4, ptr %8, align 8, !tbaa !233
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !150
  %i.b = tail call ptr @_ZN4mlir9transform6FuseOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES9_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.0.0.copyload.i, ptr %1, ptr %2, i64 %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %8, i1 noundef zeroext %6, i1 noundef zeroext %7)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6FuseOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_9TypeRangeENS_5ValueENS_10ValueRangeES9_S8_NS_6detail18DenseArrayAttrImplIlEESC_SC_NS_8UnitAttrESD_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, i64 %3, i64 %4, ptr %5, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13) local_unnamed_addr #0 align 2 {
bb.a:
  %14 = alloca %class.anon.5268, align 1          ; 3 uses
  %15 = alloca %class.anon.5270, align 1          ; 3 uses
  %16 = alloca %class.anon.5268, align 1          ; 3 uses
  %17 = alloca %class.anon.5270, align 1          ; 3 uses
  %18 = alloca %class.anon.5268, align 1          ; 3 uses
  %19 = alloca %class.anon.5270, align 1          ; 3 uses
  %20 = alloca %class.anon.5268, align 1          ; 3 uses
  %21 = alloca %class.anon.5270, align 1          ; 3 uses
  %22 = alloca %class.anon.5268, align 1          ; 3 uses
  %23 = alloca %class.anon.5270, align 1          ; 3 uses
  %24 = alloca %class.anon.5268, align 1          ; 3 uses
  %25 = alloca %class.anon.5270, align 1          ; 3 uses
  %26 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %27 = alloca %"class.mlir::Value", align 8      ; 3 uses
  store ptr %5, ptr %26, align 8
  %i.a = inttoptr i64 %8 to ptr
  store ptr %i.a, ptr %27, align 8
  %i.b = ptrtoint ptr %26 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.b, i64 1) #29
  %.sroa.03.0.copyload = load i64, ptr %6, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8 ; 2 uses
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload) #29
  %.sroa.01.0.copyload = load i64, ptr %7, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload) #29
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %27 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.c, i64 1) #29
  %.pre = load ptr, ptr %27, align 8, !tbaa !242
  %i.d = icmp ne ptr %.pre, null
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = trunc i64 %.sroa.24.0.copyload to i32
  %i.h = trunc i64 %.sroa.22.0.copyload to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 12 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.l = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.k, align 8, !tbaa !200
  store ptr %i.l, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.m = ptrtoint ptr %24 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.n, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.m, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  %i.o = ptrtoint ptr %25 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.p, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit

_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit: ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 1, ptr %i.r, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  store i32 %i.f, ptr %.sroa.6.0..sroa_idx, align 4
  %.not49 = icmp eq i64 %9, 0
  br i1 %.not49, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !244  ; 2 uses
  %.not.i16 = icmp eq ptr %i.s, null
  br i1 %.not.i16, label %bb.f, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit19

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.u = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i8 0, i64 56, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.t, align 8, !tbaa !200
  store ptr %i.u, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.v = ptrtoint ptr %22 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.w, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.v, ptr %.sroa.43.0..sroa_idx.i17, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.x = ptrtoint ptr %23 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.y, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i18, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit19

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit19: ; preds = %bb.e, %bb.f
  %i.z = phi ptr [ %i.u, %bb.f ], [ %i.s, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %9, ptr %i.aa, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit19, %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit
  %.not50 = icmp eq i64 %10, 0
  br i1 %.not50, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !244 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ab, null
  br i1 %.not.i20, label %bb.i, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit23

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ad = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ac, align 8, !tbaa !200
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.ae = ptrtoint ptr %20 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.af, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ae, ptr %.sroa.43.0..sroa_idx.i21, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.ag = ptrtoint ptr %21 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.ah, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i22, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit23

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail24FuseOpGenericAdaptorBase10PropertiesEEERT_v.exit23: ; preds = %bb.h, %bb.i
  %i.ai = phi ptr [ %i.ad, %bb.i ], [ %i.ab, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %10, ptr %i.aj, align 8
  br label %bb.j
end_hunk_2
begin_hunk_3_@_ZN4mlir9transform14TileUsingForOp22setInnerTileAlignmentsESt8optionalIN4llvm8ArrayRefIlEEE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !505, !range !194, !noundef !195
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #29
  store ptr %i.l, ptr %2, align 8, !tbaa !240
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  %i.m = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  store ptr %i.m, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEES9_St8optionalINS8_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.522", align 8 ; 7 uses
  %10 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %10, ptr %1, ptr nonnull @.str.654, i64 35) #29
  %.sroa.013.0.copyload = load ptr, ptr %5, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.a = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.013.0.copyload, i64 %.sroa.2.0.copyload) #29
  call void @_ZN4mlir17getAsOpFoldResultENS_9ArrayAttrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.522") align 8 %9, ptr %i.a) #29
  %i.b = load ptr, ptr %9, align 8, !tbaa !109
  store ptr %i.b, ptr %8, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110
  %i.f = zext i32 %i.e to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !232
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS9_IlEESt8optionalINS9_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %10, i64 %2, i64 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %6, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %7)
  %i.g = load ptr, ptr %9, align 8, !tbaa !109    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEESA_St8optionalINS9_IbEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.g) #29
  br label %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEESA_St8optionalINS9_IbEEE.exit

_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEESA_St8optionalINS9_IbEEE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.j = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %10) #29 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !221
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !208
  %i.n = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_9transform14TileUsingForOpEvE2idE
  %spec.select.i.i = select i1 %i.n, ptr %i.j, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEES8_St8optionalINS7_IbEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::ArrayRef.203", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %4, ptr %8, align 8, !tbaa !228
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !150
  %i.b = tail call ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefIlEES9_St8optionalINS8_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.0.0.copyload.i, i64 %1, i64 %2, ptr %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %6, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %7)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.497") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.654, i64 35) #29
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS9_IlEESt8optionalINS9_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %6, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform14TileUsingForOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS7_IlEESt8optionalINS7_IbEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %9 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %4, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.654, i64 35) #29
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS9_IlEESt8optionalINS9_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %1, i64 %2, ptr %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %6, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform14TileUsingForOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEES8_St8optionalINS7_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.654, i64 35) #29
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEES9_St8optionalINS8_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %5, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %6)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform14TileUsingForOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_20ImplicitLocOpBuilderENS_5ValueEN4llvm8ArrayRefIlEES7_St8optionalINS6_IbEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %8 = alloca %"class.llvm::ArrayRef.203", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %4, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.654, i64 35) #29
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEES9_St8optionalINS8_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr %2, i64 %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %8, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform14TileUsingForOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS7_IlEESt8optionalINS7_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.528", align 8 ; 7 uses
  %8 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %10 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %10, ptr %1, ptr nonnull @.str.654, i64 35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !240
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  %i.c = call noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9AnyOpTypeEvE2idE) #29
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.e, align 4, !tbaa !111
  %i.f = ptrtoint ptr %i.c to i64
  store i64 %i.f, ptr %i.d, align 8, !tbaa !237
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %11, align 8, !tbaa !110
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.d, i64 1) #29
  store ptr %3, ptr %9, align 8, !tbaa !233
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !150
  %i.g = load i64, ptr %8, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS9_IlEESt8optionalINS9_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %10, i64 %i.g, i64 %i.i, ptr %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %5, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %6)
  %i.j = load ptr, ptr %7, align 8, !tbaa !109    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.j) #29
  br label %_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit

_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS8_IlEESt8optionalINS8_IbEEE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.l = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %10) #29 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !221
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208
  %i.p = icmp eq ptr %i.o, @_ZN4mlir6detail14TypeIDResolverINS_9transform14TileUsingForOpEvE2idE
  %spec.select.i.i = select i1 %i.p, ptr %i.l, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_20ImplicitLocOpBuilderENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS6_IlEESt8optionalINS6_IbEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.std::optional.2590") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::ArrayRef.203", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %4, ptr %7, align 8, !tbaa !228
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !150
  %i.b = tail call ptr @_ZN4mlir9transform14TileUsingForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS7_IlEESt8optionalINS7_IbEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.0.0.copyload.i, ptr %1, ptr %2, i64 %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.203") align 8 %7, ptr noundef nonnull byval(%"class.std::optional.2590") align 8 %6)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform14TileUsingForOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_9TypeRangeENS_5ValueENS_10ValueRangeENS_6detail18DenseArrayAttrImplIlEESC_NSB_IbEESC_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, i64 %3, i64 %4, ptr %5, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %6, i64 %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #0 align 2 {
bb.a:
  %11 = alloca %class.anon.5528, align 1          ; 3 uses
  %12 = alloca %class.anon.5530, align 1          ; 3 uses
  %13 = alloca %class.anon.5528, align 1          ; 3 uses
  %14 = alloca %class.anon.5530, align 1          ; 3 uses
  %15 = alloca %class.anon.5528, align 1          ; 3 uses
  %16 = alloca %class.anon.5530, align 1          ; 3 uses
  %17 = alloca %class.anon.5528, align 1          ; 3 uses
  %18 = alloca %class.anon.5530, align 1          ; 3 uses
  %19 = alloca %"class.mlir::Value", align 8      ; 2 uses
  store ptr %5, ptr %19, align 8
  %i.a = ptrtoint ptr %19 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #29
  %.sroa.0.0.copyload = load i64, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.d, align 8, !tbaa !200
  store ptr %i.e, ptr %i.b, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.f = ptrtoint ptr %17 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.g, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.f, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.h = ptrtoint ptr %18 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.i, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %7, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.a
  %.not30 = icmp eq i64 %8, 0
  br i1 %.not30, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !244  ; 2 uses
  %.not.i8 = icmp eq ptr %i.m, null
  br i1 %.not.i8, label %bb.f, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit11

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.o = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.n, align 8, !tbaa !200
  store ptr %i.o, ptr %i.l, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.p = ptrtoint ptr %15 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.q, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.p, ptr %.sroa.43.0..sroa_idx.i9, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.r = ptrtoint ptr %16 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.s, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit11

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit11: ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.o, %bb.f ], [ %i.m, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %8, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit11, %bb.d
  %.not31 = icmp eq i64 %9, 0
  br i1 %.not31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !244  ; 2 uses
  %.not.i12 = icmp eq ptr %i.w, null
  br i1 %.not.i12, label %bb.i, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit15

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.y = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.x, align 8, !tbaa !200
  store ptr %i.y, ptr %i.v, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.z = ptrtoint ptr %13 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.aa, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.z, ptr %.sroa.43.0..sroa_idx.i13, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.ab = ptrtoint ptr %14 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.ac, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx.i14, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit15

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit15: ; preds = %bb.h, %bb.i
  %i.ad = phi ptr [ %i.y, %bb.i ], [ %i.w, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %9, ptr %i.ae, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit15, %bb.g
  %.not32 = icmp eq i64 %10, 0
  br i1 %.not32, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !244 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ag, null
  br i1 %.not.i16, label %bb.l, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_v.exit19

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ai = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ah, align 8, !tbaa !200
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.aj = ptrtoint ptr %11 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail32TileUsingForOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.ak, align 8, !tbaa !217
  %.sroa.43.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.aj, ptr %.sroa.43.0..sroa_idx.i17, align 8, !tbaa !150
end_hunk_3
