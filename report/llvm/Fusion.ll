Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Fusion?download=true
inline.NumInlined: 1080
inline.NumDeleted: 694
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir6linalg20fuseProducerOfTensorERNS_9OpBuilderENS_8OpResultERNS_9OpOperandE:bb.a
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.dk, align 8, !tbaa !12
  %i.dl = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.2 to i64
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %.sroa.2.09.i.i.i.i.i.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.do, align 8, !tbaa !12
  %i.dp = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.3 to i64
  store i64 %i.dp, ptr %i.dm, align 8, !tbaa !12
  %i.dq = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !86

_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.dr, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.2.09.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.dq, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.010.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.010.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.2.09.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %.sroa.2.09.i.i.i.i.i.i.i.i.i.i.epil
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.dt, align 8, !tbaa !12
  %i.du = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.epil to i64
  store i64 %i.du, ptr %.010.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !12
  %i.dv = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !87

_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i: ; preds = %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i.i.i
  %i.dx = phi ptr [ %i.cs, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i.i ], [ %i.ck, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i.i.i ], [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.cw, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa ]
  %i.dy = phi ptr [ %i.ct, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i.i ], [ %i.cl, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.ct, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.4.0.i.i8.i.i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.cq, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa ]
  %i.dz = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.thread.i.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.cx, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i.loopexit.unr-lcssa ]
  %i.ea = add i32 %i.dz, %.sroa.4.0.i.i8.i.i.i    ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !46, !alias.scope !140
  %i.eb = zext i32 %i.ea to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr %i.dx, i64 %i.eb) #12
  %i.ec = load ptr, ptr %16, align 8, !tbaa !45
  store ptr %i.ec, ptr %25, align 8, !tbaa !144
  %i.ed = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ee = load i32, ptr %i.bf, align 8, !tbaa !46
  %i.ef = zext i32 %i.ee to i64
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !145
  %i.eg = load ptr, ptr %17, align 8, !tbaa !45
  store ptr %i.eg, ptr %26, align 8, !tbaa !144
  %i.eh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ei = load i32, ptr %i.bi, align 8, !tbaa !46
  %i.ej = zext i32 %i.ei to i64
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !145
  %i.ek = load ptr, ptr %18, align 8, !tbaa !45
  store ptr %i.ek, ptr %27, align 8, !tbaa !144
  %i.el = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.em = load i32, ptr %i.bl, align 8, !tbaa !46
  %i.en = zext i32 %i.em to i64
  store i64 %i.en, ptr %i.el, align 8, !tbaa !145
  call void @_ZN4mlir6linalg15makeTiledShapesERNS_9OpBuilderENS_8LocationENS0_8LinalgOpENS_10ValueRangeEN4llvm8ArrayRefINS_12OpFoldResultEEES9_S9_b(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.213") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull %.sroa.010.0.copyload.i.i, ptr %.sroa.211.0.copyload.i.i, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %23, ptr noundef nonnull byval(%"class.llvm::ArrayRef.222") align 8 %25, ptr noundef nonnull byval(%"class.llvm::ArrayRef.222") align 8 %26, ptr noundef nonnull byval(%"class.llvm::ArrayRef.222") align 8 %27, i1 noundef zeroext false) #12
  %i.eo = load ptr, ptr %22, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !46 ; 3 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.er, 3
  %i.es = load i32, ptr %i.bx, align 8, !tbaa !46 ; 2 uses
  %i.et = zext i32 %i.es to i64
  %i.eu = add nuw nsw i64 %i.et, %i.er            ; 2 uses
  %i.ev = load i32, ptr %i.by, align 4, !tbaa !135
  %i.ew = zext i32 %i.ev to i64
  %i.ex = icmp samesign ugt i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.q, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

bb.q:                                             ; preds = %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %i.bw, i64 noundef %i.eu, i64 noundef 8) #12
  %.pre8.pre.i.i.i.i = load i32, ptr %i.bx, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %bb.q, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.es, %_ZL16getTiledOperandsN4mlir6linalg8LinalgOpE.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.q ] ; 2 uses
  %.not.i.i.i43.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i43.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i
  %i.ey = load ptr, ptr %21, align 8, !tbaa !45
  %i.ez = zext i32 %.pre8.i.i.i.i to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr align 8 %i.eo, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.bx, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i: ; preds = %bb.r, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i
  %i.fb = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.r ]
  %i.fc = add i32 %i.fb, %i.eq
  store i32 %i.fc, ptr %i.bx, align 8, !tbaa !46
  %i.fd = load ptr, ptr %22, align 8, !tbaa !45   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i
  call void @free(ptr noundef %i.fd) #12
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i: ; preds = %bb.s, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i
  %i.fg = load ptr, ptr %24, align 8, !tbaa !45   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.fg) #12
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44.i.i: ; preds = %bb.t, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #12
  call void @_ZN4mlir6linalg8LinalgOp18getDpsInitsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  %i.fj = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %i.fj, ptr %29, align 8, !tbaa !45
  %i.fk = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  store i32 0, ptr %i.fk, align 8, !tbaa !46
  %i.fl = getelementptr inbounds nuw i8, ptr %29, i64 12 ; 2 uses
  store i32 4, ptr %i.fl, align 4, !tbaa !135
  %i.fm = load ptr, ptr %15, align 16, !tbaa !24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !146 ; 2 uses
  %i.fp = icmp ugt i32 %i.fo, 4
  br i1 %i.fp, label %bb.u, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44.i.i
  %i.fq = zext i32 %i.fo to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull %i.fj, i64 noundef %i.fq, i64 noundef 8) #12
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.u, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit44.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #12
  %i.fr = call { ptr, i64 } @_ZNK4mlir19MutableOperandRange17getAsOperandRangeEv(ptr noundef nonnull align 8 dereferenceable(56) %28) #12 ; 2 uses
  %i.fs = extractvalue { ptr, i64 } %i.fr, 0
  store ptr %i.fs, ptr %30, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.fu = extractvalue { ptr, i64 } %i.fr, 1
  store i64 %i.fu, ptr %i.ft, align 8
  %i.fv = call noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %30) #12
  %i.fw = zext i32 %i.fv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #12
  %i.fx = load ptr, ptr %15, align 16, !tbaa !24  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !146 ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %.not91.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not91.i.i, label %._crit_edge89.i.i, label %.lr.ph88.i.i

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit.i.i, %.lr.ph.i.i
  %.08185.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kb, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.gb = load <2 x ptr>, ptr %15, align 16
  %.sroa.027.0.copyload.i.i = load ptr, ptr %15, align 16 ; 3 uses
  store <2 x ptr> %i.gb, ptr %12, align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload.i.i, i64 44
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = and i32 %i.gd, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i.i, label %_ZL25getShapeDefiningLoopRangeN4mlir6linalg8LinalgOpEjb.exit.i.i, label %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i.i, !prof !136

_ZN4mlir9Operation13getOpOperandsEv.exit.i.i.i:   ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload.i.i, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !27 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload.i.i, i64 68
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !137 ; 2 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 5
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gk
  %.not69.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not69.i.i.i, label %_ZL25getShapeDefiningLoopRangeN4mlir6linalg8LinalgOpEjb.exit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i.i, %._crit_edge.i.i.i
  %.02470.i.i.i = phi ptr [ %i.gz, %._crit_edge.i.i.i ], [ %i.gg, %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.gm = call ptr @_ZN4mlir6linalg8LinalgOp22getMatchingIndexingMapEPNS_9OpOperandE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %.02470.i.i.i) #12
  store ptr %i.gm, ptr %13, align 8
  %i.gn = call { ptr, i64 } @_ZNK4mlir9AffineMap10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #12 ; 2 uses
  %i.go = extractvalue { ptr, i64 } %i.gn, 0      ; 2 uses
  %i.gp = extractvalue { ptr, i64 } %i.gn, 1      ; 2 uses
  %.idx.i45.i.i = shl nuw nsw i64 %i.gp, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx.i45.i.i
  %.not6366.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not6366.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %bb.aa
  %.sroa.032.068.i.i.i = phi ptr [ %50, %bb.aa ], [ %i.go, %.critedge.i.i.i ] ; 3 uses
  %.sroa.7.067.i.i.i = phi i32 [ %49, %bb.aa ], [ 0, %.critedge.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i46.i.i = load ptr, ptr %.sroa.032.068.i.i.i, align 8, !tbaa !148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %.sroa.0.0.copyload.i.i46.i.i, ptr %11, align 8
  %i.gr = call noundef i32 @_ZNK4mlir10AffineExpr7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %i.gs = icmp eq i32 %i.gr, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %i.gs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #12
  %i.gt = load ptr, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRKT0_.exit.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %.sroa.0.0.copyload.i.i46.i.i) #12
  %i.gu = load ptr, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRKT0_.exit.i.i.i

_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRKT0_.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %i.gu, %bb.x ], [ %i.gt, %bb.w ]
  %i.gv = icmp eq ptr %.sroa.03.0.i.i.i.i.i, null
  br i1 %i.gv, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRKT0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %.sroa.0.0.copyload.i26.i.i.i.a = load ptr, ptr %.sroa.032.068.i.i.i, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %.sroa.0.0.copyload.i26.i.i.i.a) #12
  %i.gw = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr %i.gw, ptr %14, align 8
  %i.gx = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #12
  %i.gy = icmp eq i32 %.08185.i.i, %i.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br i1 %i.gy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %47 = getelementptr inbounds nuw i8, ptr %.02470.i.i.i, i64 24
  %.sroa.0.0.copyload.i26.i.i.i = load ptr, ptr %47, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %48 = zext i32 %.sroa.7.067.i.i.i to i64
  br label %_ZL25getShapeDefiningLoopRangeN4mlir6linalg8LinalgOpEjb.exit.i.i

bb.aa:                                            ; preds = %bb.y, %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRKT0_.exit.i.i.i
  %49 = add i32 %.sroa.7.067.i.i.i, 1
  %50 = getelementptr inbounds nuw i8, ptr %.sroa.032.068.i.i.i, i64 8 ; 2 uses
  %.not51.i.i.i = icmp eq ptr %50, %i.gq
  br i1 %.not51.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.aa, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.gz = getelementptr inbounds nuw i8, ptr %.02470.i.i.i, i64 32 ; 2 uses
  %.not.i47.i.i = icmp eq ptr %i.gz, %i.gl
  br i1 %.not.i47.i.i, label %_ZL25getShapeDefiningLoopRangeN4mlir6linalg8LinalgOpEjb.exit.i.i, label %.critedge.i.i.i

_ZL25getShapeDefiningLoopRangeN4mlir6linalg8LinalgOpEjb.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.z, %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i.i, %bb.v
  %.sroa.0.5.i.i.i = phi ptr [ %.sroa.0.0.copyload.i26.i.i.i, %bb.z ], [ undef, %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i.i ], [ undef, %bb.v ], [ undef, %._crit_edge.i.i.i ]
  %.sroa.2.5.i.i.i = phi i64 [ %48, %bb.z ], [ 0, %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i.i ], [ 0, %bb.v ], [ 0, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ha = call i64 @_ZN4mlir6linalg17createFoldedDimOpERNS_9OpBuilderENS_8LocationENS_5ValueEl(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.0.5.i.i.i, i64 noundef %.sroa.2.5.i.i.i) #12 ; 3 uses
  %i.hb = load i32, ptr %i.bl, align 8, !tbaa !46 ; 2 uses
  %i.hc = load i32, ptr %i.bm, align 4, !tbaa !135
  %.not.i48.i.i = icmp ult i32 %i.hb, %i.hc
  br i1 %.not.i48.i.i, label %bb.ac, label %bb.ab, !prof !48

bb.ab:                                            ; preds = %_ZL25getShapeDefiningLoopRangeN4mlir6linalg8LinalgOpEjb.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 %i.ha)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i

bb.ac:                                            ; preds = %_ZL25getShapeDefiningLoopRangeN4mlir6linalg8LinalgOpEjb.exit.i.i
  %i.hd = zext i32 %i.hb to i64
  %i.he = load ptr, ptr %18, align 8, !tbaa !45
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  store i64 %i.ha, ptr %i.hf, align 1
  %i.hg = load i32, ptr %i.bl, align 8, !tbaa !46
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.bl, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i: ; preds = %bb.ac, %bb.ab
  %i.hi = load ptr, ptr %35, align 8, !tbaa !52, !noalias !149 ; 3 uses
  %i.hj = load ptr, ptr %i.bs, align 8, !tbaa !53, !noalias !149 ; 2 uses
  %i.hk = load i32, ptr %i.bt, align 4, !tbaa !54, !noalias !149 ; 4 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %.loopexit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i
  %i.hm = add i32 %i.hk, -1                       ; 2 uses
  %i.hn = mul i32 %.08185.i.i, 37
  %.017.i.i.i.i.i = and i32 %i.hm, %i.hn          ; 3 uses
  %i.ho = zext i32 %.017.i.i.i.i.i to i64         ; 2 uses
  %i.hp = lshr i64 %i.ho, 5
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !55, !noalias !150
  %i.hs = and i32 %.017.i.i.i.i.i, 31
  %i.ht = lshr i32 %i.hr, %i.hs
  %i.hu = trunc i32 %i.ht to i1
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !56

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hv = add nuw i32 %.018.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.hv, %i.hm            ; 3 uses
  %i.hw = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.hx = lshr i64 %i.hw, 5
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !55, !noalias !150
  %i.ia = and i32 %.0.i.i.i.i.i, 31
  %i.ib = lshr i32 %i.hz, %i.ia
  %i.ic = trunc i32 %i.ib to i1
  br i1 %i.ic, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !57

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad, %bb.ae
  %i.id = phi i64 [ %i.hw, %bb.ae ], [ %i.ho, %bb.ad ]
  %.018.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.ae ], [ %.017.i.i.i.i.i, %bb.ad ]
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.hi, i64 %i.id ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !55, !noalias !150
  %i.ig = icmp eq i32 %.08185.i.i, %i.if
  br i1 %i.ig, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i, label %bb.ae, !prof !48

.loopexit.i.i.i.i:                                ; preds = %bb.ae, %bb.ad, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit.i.i
  %i.ih = zext i32 %i.hk to i64                   ; 2 uses
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.hi, i64 %i.ih
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre99.i.i = zext i32 %i.hk to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre99.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i ], [ %i.ih, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.ie, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i ], [ %i.ii, %.loopexit.i.i.i.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [32 x i8], ptr %i.hi, i64 %.pre-phi.i.i
  %.not.i.i36 = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.ij
  br i1 %.not.i.i36, label %bb.am, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8 ; 3 uses
  %.sroa.020.0.copyload.i.i = load i64, ptr %i.ik, align 8 ; 2 uses
  %i.il = load i32, ptr %i.bf, align 8, !tbaa !46 ; 2 uses
  %i.im = load i32, ptr %i.bg, align 4, !tbaa !135
  %.not.i49.i.i = icmp ult i32 %i.il, %i.im
  br i1 %.not.i49.i.i, label %bb.ah, label %bb.ag, !prof !48

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 %.sroa.020.0.copyload.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit50.i.i

bb.ah:                                            ; preds = %bb.af
  %i.in = zext i32 %i.il to i64
  %i.io = load ptr, ptr %16, align 8, !tbaa !45
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.in
  store i64 %.sroa.020.0.copyload.i.i, ptr %i.ip, align 1
  %i.iq = load i32, ptr %i.bf, align 8, !tbaa !46
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.bf, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit50.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit50.i.i: ; preds = %bb.ah, %bb.ag
  %i.is = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 16
  %.sroa.019.0.copyload.i.i = load i64, ptr %i.is, align 8 ; 2 uses
  %i.it = load i32, ptr %i.bi, align 8, !tbaa !46 ; 2 uses
  %i.iu = load i32, ptr %i.bj, align 4, !tbaa !135
  %.not.i51.i.i = icmp ult i32 %i.it, %i.iu
  br i1 %.not.i51.i.i, label %bb.aj, label %bb.ai, !prof !48

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit50.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %17, i64 %.sroa.019.0.copyload.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit52.i.i

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit50.i.i
  %i.iv = zext i32 %i.it to i64
  %i.iw = load ptr, ptr %17, align 8, !tbaa !45
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iv
  store i64 %.sroa.019.0.copyload.i.i, ptr %i.ix, align 1
  %i.iy = load i32, ptr %i.bi, align 8, !tbaa !46
  %i.iz = add i32 %i.iy, 1
  store i32 %i.iz, ptr %i.bi, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit52.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit52.i.i: ; preds = %bb.aj, %bb.ai
  %i.ja = load i32, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %i.jb = load i32, ptr %i.bp, align 4, !tbaa !135
  %.not.i53.i.i = icmp ult i32 %i.ja, %i.jb
  br i1 %.not.i53.i.i, label %bb.al, label %bb.ak, !prof !48

bb.ak:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit52.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.ik)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit.i.i

bb.al:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit52.i.i
  %i.jc = zext i32 %i.ja to i64
  %i.jd = load ptr, ptr %19, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %i.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 24, i1 false)
  %i.jf = load i32, ptr %i.bo, align 8, !tbaa !46
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.bo, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit.i.i

bb.am:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5RangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i
  %i.jh = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0) #12
  %i.ji = ptrtoint ptr %i.jh to i64               ; 2 uses
  %i.jj = load i32, ptr %i.bi, align 8, !tbaa !46 ; 2 uses
  %i.jk = load i32, ptr %i.bj, align 4, !tbaa !135
  %.not.i54.i.i = icmp ult i32 %i.jj, %i.jk
  br i1 %.not.i54.i.i, label %bb.ao, label %bb.an, !prof !48

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %17, i64 %i.ji)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit55.i.i

bb.ao:                                            ; preds = %bb.am
  %i.jl = zext i32 %i.jj to i64
  %i.jm = load ptr, ptr %17, align 8, !tbaa !45
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jl
  store i64 %i.ji, ptr %i.jn, align 1
  %i.jo = load i32, ptr %i.bi, align 8, !tbaa !46
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.bi, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit55.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit55.i.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  %i.jq = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0) #12
  %i.jr = ptrtoint ptr %i.jq to i64
  store i64 %i.jr, ptr %20, align 8
  store i64 %i.ha, ptr %i.bu, align 8
  %i.js = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1) #12
  %i.jt = ptrtoint ptr %i.js to i64
  store i64 %i.jt, ptr %i.bv, align 8
  %i.ju = load i32, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %i.jv = load i32, ptr %i.bp, align 4, !tbaa !135
  %.not.i56.i.i = icmp ult i32 %i.ju, %i.jv
  br i1 %.not.i56.i.i, label %bb.aq, label %bb.ap, !prof !48

bb.ap:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit55.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(24) %20)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit57.i.i

bb.aq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit55.i.i
  %i.jw = zext i32 %i.ju to i64
  %i.jx = load ptr, ptr %19, align 8, !tbaa !45
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false)
  %i.jz = load i32, ptr %i.bo, align 8, !tbaa !46
  %i.ka = add i32 %i.jz, 1
  store i32 %i.ka, ptr %i.bo, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit57.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit57.i.i: ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5RangeELb1EE9push_backERKS2_.exit57.i.i, %bb.al, %bb.ak
  %i.kb = add nuw i32 %.08185.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.kb, %i.br
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.v, !llvm.loop !96

end_hunk_0
