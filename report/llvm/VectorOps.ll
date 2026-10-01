Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorOps?download=true
inline.NumInlined: 52322
inline.NumDeleted: 18098
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 90
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir6vector12ToElementsOp4foldENS0_26ToElementsOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE:bb.a
bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i16 = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i16, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !111
  %i.ba = icmp eq ptr %i.az, @_ZN4mlir6detail14TypeIDResolverINS_6vector11BroadcastOpEvE2idE
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZL25foldToElementsOfBroadcastN4mlir6vector12ToElementsOpERN4llvm15SmallVectorImplINS_12OpFoldResultEEE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.0.0.copyload.i.i.i.i4.i = load ptr, ptr %i.bd, align 8, !tbaa !126 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i4.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.be, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !115
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !107
  %i.bj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.bj, label %_ZL25foldToElementsOfBroadcastN4mlir6vector12ToElementsOpERN4llvm15SmallVectorImplINS_12OpFoldResultEEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !123
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.0.0.copyload.i.i.i.i6.i = load ptr, ptr %i.bl, align 8, !tbaa !126
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8
  %i.bn = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %4, align 8
  %i.bp = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.bq, i64 %i.br) #27 ; 11 uses
  %i.bt = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i4.i to i64
  %i.bu = or i64 %i.bt, 4                         ; 13 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !135
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp ugt i64 %i.bs, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br i1 %i.by, label %.lr.ph.i.i.i.preheader.i.i.i, label %bb.r

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %bb.q
  store i32 0, ptr %i.bz, align 8, !tbaa !134
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ca, i64 noundef %i.bs, i64 noundef 8) #27
  %i.cb = load ptr, ptr %2, align 8, !tbaa !133   ; 3 uses
  %min.iters.check33 = icmp ult i64 %i.bs, 4
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %.lr.ph.i.i.i.preheader.i.i.i
  %n.vec35 = and i64 %i.bs, -4                    ; 3 uses
  %i.cc = shl i64 %n.vec35, 3
  %i.cd = getelementptr i8, ptr %i.cb, i64 %i.cc
  %i.ce = and i64 %i.bs, 3
  %broadcast.splatinsert36 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat37 = shufflevector <2 x i64> %broadcast.splatinsert36, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph34
  %index39 = phi i64 [ 0, %vector.ph34 ], [ %index.next41, %vector.body38 ] ; 2 uses
  %i.cf = shl i64 %index39, 3
  %next.gep40 = getelementptr i8, ptr %i.cb, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x i64> %broadcast.splat37, ptr %next.gep40, align 8
  store <2 x i64> %broadcast.splat37, ptr %i.cg, align 8
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next41, %n.vec35
  br i1 %i.ch, label %middle.block42, label %vector.body38, !llvm.loop !1207

middle.block42:                                   ; preds = %vector.body38
  %cmp.n43 = icmp eq i64 %i.bs, %n.vec35
  br i1 %cmp.n43, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %middle.block42
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.cd, %middle.block42 ]
  %.068.i.i.i.i.i.i.ph = phi i64 [ %i.bs, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.ce, %middle.block42 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i64 %i.bu, ptr %.09.i.i.i.i.i.i, align 8
  %i.ci = add i64 %.068.i.i.i.i.i.i, -1           ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i10.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i10.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1208

bb.r:                                             ; preds = %bb.q
  %i.ck = load i32, ptr %i.bz, align 8, !tbaa !134
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.cl) ; 2 uses
  %i.cm = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.cm, label %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.r
  %i.cn = load ptr, ptr %2, align 8, !tbaa !133   ; 3 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i.i.i
  %i.cp = add nsw i64 %.idx.i.i.i.i, -8           ; 2 uses
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1
  %xtraiter = and i64 %i.cr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i1.i.i.prol.loopexit, label %.lr.ph.i.i.i.i1.i.i.prol

.lr.ph.i.i.i.i1.i.i.prol:                         ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i1.i.i.prol
  %.06.i.i.i.i.i.i.prol = phi ptr [ %i.cs, %.lr.ph.i.i.i.i1.i.i.prol ], [ %i.cn, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i1.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ]
  store i64 %i.bu, ptr %.06.i.i.i.i.i.i.prol, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i1.i.i.prol.loopexit, label %.lr.ph.i.i.i.i1.i.i.prol, !llvm.loop !1209

.lr.ph.i.i.i.i1.i.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i1.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.unr = phi ptr [ %i.cn, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.cs, %.lr.ph.i.i.i.i1.i.i.prol ]
  %i.ct = icmp ult i64 %i.cp, 56
  br i1 %i.ct, label %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i1.i.i

.lr.ph.i.i.i.i1.i.i:                              ; preds = %.lr.ph.i.i.i.i1.i.i.prol.loopexit, %.lr.ph.i.i.i.i1.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i1.i.i ], [ %.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i1.i.i.prol.loopexit ] ; 9 uses
  store i64 %i.bu, ptr %.06.i.i.i.i.i.i, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  store i64 %i.bu, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  store i64 %i.bu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 24
  store i64 %i.bu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 32
  store i64 %i.bu, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 40
  store i64 %i.bu, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 48
  store i64 %i.bu, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 56
  store i64 %i.bu, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i2.i.i.7 = icmp eq ptr %i.db, %i.co
  br i1 %.not.i.i.i.i2.i.i.7, label %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i1.i.i, !llvm.loop !1210

_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i1.i.i, %.lr.ph.i.i.i.i1.i.i.prol.loopexit
  %.pre.i.i = load i32, ptr %i.bz, align 8, !tbaa !134
  %.pre14.i.i = zext i32 %.pre.i.i to i64
  br label %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i

_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, %bb.r
  %.pre-phi.i.i = phi i64 [ %.pre14.i.i, %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i ], [ %i.cl, %bb.r ] ; 3 uses
  %i.dc = icmp samesign ugt i64 %i.bs, %.pre-phi.i.i
  br i1 %i.dc, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.dd = load ptr, ptr %2, align 8, !tbaa !133
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.pre-phi.i.i ; 3 uses
  %i.df = sub nuw i64 %i.bs, %.pre-phi.i.i        ; 5 uses
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec = and i64 %i.df, -4                      ; 3 uses
  %i.dg = shl i64 %n.vec, 3
  %i.dh = getelementptr i8, ptr %i.de, i64 %i.dg
  %i.di = and i64 %i.df, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.dk, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !1211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.de, %.lr.ph.preheader.i.i.i.i.i ], [ %i.dh, %middle.block ]
  %.068.i.i.i.i.i.ph = phi i64 [ %i.df, %.lr.ph.preheader.i.i.i.i.i ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 %i.bu, ptr %.09.i.i.i.i.i, align 8
  %i.dm = add nsw i64 %.068.i.i.i.i.i, -1         ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i17 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i17, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1212

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %middle.block, %middle.block42, %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.do = trunc i64 %i.bs to i32
  store i32 %i.do, ptr %i.bz, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZL25foldToElementsOfBroadcastN4mlir6vector12ToElementsOpERN4llvm15SmallVectorImplINS_12OpFoldResultEEE.exit

_ZL25foldToElementsOfBroadcastN4mlir6vector12ToElementsOpERN4llvm15SmallVectorImplINS_12OpFoldResultEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i, %bb.p, %bb.o, %bb.l, %bb.e
  %.sroa.07.1 = phi i8 [ 1, %bb.e ], [ 1, %bb.l ], [ 0, %bb.o ], [ 1, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignEmS2_.exit.i ], [ 0, %bb.p ]
  ret i8 %.sroa.07.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir6vector12ToElementsOp16inferReturnTypesEPNS_11MLIRContextESt8optionalINS_8LocationEENS0_19ToElementsOpAdaptorERN4llvm15SmallVectorImplINS_4TypeEEE(ptr nofree noundef readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 %2, ptr nofree noundef readonly byval(%"class.mlir::vector::ToElementsOpAdaptor") align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %6 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  store ptr %i.f, ptr %6, align 8
  %i.g = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.h = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.i, i64 %i.j) #27 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !134  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %i.k, %i.n                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !135
  %i.r = zext i32 %i.q to i64
  %.not.i.i.i = icmp ugt i64 %i.o, %i.r
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef %i.o, i64 noundef 8) #27
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !134
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i: ; preds = %bb.b, %bb.a
  %i.t = phi i32 [ %i.m, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %.not7.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %4, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u ; 3 uses
  %i.x = ptrtoint ptr %i.g to i64                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.y = shl i64 %n.vec, 3
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y
  %i.aa = and i64 %i.k, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !179
  store <2 x i64> %broadcast.splat, ptr %i.ac, align 8, !tbaa !179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.preheader.i.i.i.i ], [ %i.z, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.k, %.lr.ph.preheader.i.i.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  store i64 %i.x, ptr %.09.i.i.i.i, align 8, !tbaa !179
  %i.ae = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1214

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendEmS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.ag = trunc i64 %i.k to i32
  %i.ah = add i32 %i.t, %i.ag
  store i32 %i.ah, ptr %i.l, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6vector12ToElementsOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !275
  call void @_ZN4mlir17RewritePatternSet7addImplI21ToElementsOfBroadcastJRPNS_11MLIRContextEEEENSt9enable_ifIXsr3std10is_base_ofINS_14RewritePatternET_EE5valueEvE4typeEN4llvm8ArrayRefINSB_9StringRefEEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 8, 1) i64 @_ZN4mlir6vector14FromElementsOp4foldENS0_28FromElementsOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly byval(%"class.mlir::vector::FromElementsOpGenericAdaptor") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %3 = alloca %"class.mlir::Type", align 8        ; 7 uses
  %4 = alloca %"class.llvm::SmallVector.550", align 8 ; 10 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %12 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZL26foldFromElementsToElementsN4mlir6vector14FromElementsOpE.exit.thread, label %_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i, !prof !124

_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !278  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 9 uses
  %i.h = zext i32 %i.e to i64                     ; 4 uses
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %_ZL26foldFromElementsToElementsN4mlir6vector14FromElementsOpE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !126
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %12, align 8
  %i.k = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #27 ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.o = icmp eq ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_6vector12ToElementsOpEvE2idE
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %_ZL26foldFromElementsToElementsN4mlir6vector14FromElementsOpE.exit.thread

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.p = lshr i64 %i.h, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %bb.i
  %.089.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.i ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.15.088.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.i ], [ 0, %bb.e ] ; 6 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.15.088.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %11, align 8
  %i.s = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #27
  %.not83.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %.not83.i.i.i.i.i.i.i, label %bb.f, label %_ZL18haveSameDefiningOpN4mlir12OperandRangeEPNS_9OperationE.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.t = or disjoint i64 %.sroa.15.088.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i.i.i42.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.sroa.0.0.copyload.i.i.i.i42.i.i.i.i.i.i.i, ptr %10, align 8
end_hunk_0
