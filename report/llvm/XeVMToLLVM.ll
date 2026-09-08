Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeVMToLLVM?download=true
inline.NumInlined: 8587
inline.NumDeleted: 4268
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4mlir14RewritePattern6anchorEv
declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126HandleVectorExtractPattern15matchAndRewriteEN4mlir4LLVM15ShuffleVectorOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::LLVM::ShuffleVectorOp", align 8 ; 6 uses
  %4 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %5 = alloca %"class.mlir::LLVM::ShuffleVectorOp", align 8 ; 7 uses
  %6 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 4 uses
  %7 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.llvm::ArrayRef.187", align 8 ; 3 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.mlir::VectorType", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SmallVector.255", align 8 ; 9 uses
  %13 = alloca %"class.llvm::ArrayRef.187", align 8 ; 3 uses
  %14 = alloca %"class.mlir::LLVM::ShuffleVectorOp", align 8 ; 6 uses
  %15 = alloca %"class.llvm::SmallVector.255", align 8 ; 10 uses
  %16 = alloca %"class.mlir::LLVM::LLVMPointerType", align 8 ; 4 uses
  %17 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.llvm::ArrayRef.357", align 8 ; 3 uses
  %19 = alloca [1 x %"class.mlir::LLVM::GEPArg"], align 8 ; 4 uses
  %20 = alloca %"class.llvm::ArrayRef.358", align 8 ; 2 uses
  %21 = alloca %"class.llvm::StringRef", align 8  ; 2 uses
  %22 = alloca %"class.llvm::StringRef", align 8  ; 2 uses
  store ptr %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.0.0.copyload.i.i.i.i23.i = load ptr, ptr %i.g, align 8, !tbaa !120
  %.not30.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i23.i
  br i1 %.not30.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = call { ptr, i64 } @_ZN4mlir4LLVM15ShuffleVectorOp7getMaskEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = load ptr, ptr %3, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %4, align 8
  %i.r = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #23 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.s, i64 %i.t) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.v = icmp sgt i64 %i.j, %i.u
  br i1 %i.v, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.i, align 4, !tbaa !115
  %i.x = sext i32 %i.w to i64
  %.not21.not31.i = icmp sgt i64 %i.j, 1
  br i1 %.not21.not31.i, label %.lr.ph.i, label %.loopexit206

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = add nuw nsw i64 %.032.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.j
  br i1 %exitcond.not.i, label %.loopexit206, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.032.i = phi i64 [ %i.y, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.032.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !115
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add nsw i64 %.032.i, %i.x
  %.not.i = icmp eq i64 %i.ac, %i.ab
  %.not20.i = icmp sgt i64 %i.u, %i.ab
  %cond1.i = and i1 %.not.i, %.not20.i
  br i1 %cond1.i, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.af

.loopexit206:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ad = call { ptr, i64 } @_ZN4mlir4LLVM15ShuffleVectorOp7getMaskEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #23 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 6 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 7 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !121   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ah, align 8 ; 9 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i.i.i.i.i.i111 = load i64, ptr %i.ai, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i.i111, -8
  %i.ak = inttoptr i64 %i.aj to ptr               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !120
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %6, align 8
  %i.ao = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23 ; 9 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %.thread203, label %bb.e

bb.e:                                             ; preds = %.loopexit206
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99 ; 5 uses
  %i.as = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM7FPExtOpEvE2idE
  %i.at = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM9FPTruncOpEvE2idE
  %or.cond = or i1 %i.as, %i.at
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !118
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0.0.copyload.i.i113 = load ptr, ptr %i.aw, align 8, !tbaa !120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i113, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bc = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i = select i1 %i.bc, ptr %i.az, ptr null
  store ptr %spec.select.i.i, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.af, ptr %i.a, align 8, !tbaa !61
  %i.bd = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #23
  %i.be = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.a, i64 1, ptr %i.bd, ptr null, i64 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !125
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.af, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !61
  %i.bg = call ptr @_ZN4mlir4LLVM15ShuffleVectorOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_N4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr %.sroa.0.0.copyload.i.i, ptr %i.be, ptr %.sroa.0.0.copyload.i.i113, ptr %.sroa.0.0.copyload.i.i113, ptr noundef nonnull byval(%"class.llvm::ArrayRef.187") align 8 %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %.sroa.0.0.copyload.i.i.i.i.i.i.i114 = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i114, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !99
  %i.bj = icmp eq ptr %i.bi, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM7FPExtOpEvE2idE
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -16 ; 2 uses
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = call ptr @_ZN4mlir4LLVM7FPExtOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS0_13FastmathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr %.sroa.0.0.copyload.i.i, ptr %i.ak, ptr nonnull %i.bk, i32 noundef 0) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bm = call ptr @_ZN4mlir4LLVM9FPTruncOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS0_13FastmathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr %.sroa.0.0.copyload.i.i, ptr %i.ak, ptr nonnull %i.bk, i32 noundef 0) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi ptr [ %i.bm, %bb.h ], [ %i.bl, %bb.g ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -16
  store ptr %storemerge, ptr %9, align 8, !tbaa !120
  %i.bn = load ptr, ptr %5, align 8, !tbaa !121
  %i.bo = ptrtoint ptr %9 to i64
  %i.bp = load ptr, ptr %2, align 8, !tbaa !25
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.bn, i64 %i.bo, i64 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.thread203

bb.j:                                             ; preds = %bb.e
  %i.br = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM9BitcastOpEvE2idE
  br i1 %i.br, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !118
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.0.0.copyload.i.i116 = load ptr, ptr %i.bu, align 8, !tbaa !120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i116, i64 8
  %.0.copyload.i.i.i.i.i117 = load i64, ptr %i.bv, align 8
  %i.bw = and i64 %.0.copyload.i.i.i.i.i117, -8
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !124
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i119 = load ptr, ptr %i.bz, align 8, !tbaa !20
  %i.ca = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i119, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i120 = select i1 %i.ca, ptr %i.bx, ptr null
  store ptr %spec.select.i.i120, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.cb = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #23 ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1
  %i.ce = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.cc, i64 %i.cd) #23 ; 4 uses
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.cf = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %.0.copyload.i.i.i.i.i121 = load i64, ptr %i.cf, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i121, -8
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !124
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i123 = load ptr, ptr %i.cj, align 8, !tbaa !20
  %i.ck = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i123, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i124 = select i1 %i.ck, ptr %i.ch, ptr null
  store ptr %spec.select.i.i124, ptr %11, align 8
  %i.cl = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #23 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  %i.co = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.cm, i64 %i.cn) #23 ; 3 uses
  %i.cp = icmp sgt i64 %i.ce, %i.co
  br i1 %i.cp, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = srem i64 %i.co, %i.ce
  %i.cr = sdiv i64 %i.co, %i.ce                   ; 4 uses
  %.not108 = icmp eq i64 %i.cq, 0
  br i1 %.not108, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not109 = icmp eq i64 %i.cr, 1
  br i1 %.not109, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = load i32, ptr %i.ae, align 4, !tbaa !115
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = srem i64 %i.ct, %i.cr
  %i.cv = sdiv i64 %i.ct, %i.cr
  %.not110 = icmp eq i64 %i.cu, 0
  br i1 %.not110, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.cw, ptr %12, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i32 0, ptr %i.cx, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 12, ptr %i.cy, align 4, !tbaa !23
  %sext = shl i64 %i.af, 32
  %i.cz = ashr exact i64 %sext, 32
  %i.da = sdiv i64 %i.cz, %i.cr
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = trunc i64 %i.cv to i32
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph211, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

._crit_edge212:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.pre214 = load ptr, ptr %12, align 8, !tbaa !22 ; 4 uses
  %.pre215 = load i32, ptr %i.cx, align 8, !tbaa !31 ; 2 uses
  %i.de = icmp eq ptr %.pre214, %i.cw
  br i1 %i.de, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge212
  call void @free(ptr noundef %.pre214) #23
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %bb.o, %._crit_edge212, %bb.p
  %i.df = phi ptr [ %.pre214, %bb.p ], [ %.pre214, %._crit_edge212 ], [ %i.cw, %bb.o ]
  %.shrunk = phi i32 [ %.pre215, %bb.p ], [ %.pre215, %._crit_edge212 ], [ 0, %bb.o ]
  %i.dg = zext i32 %.shrunk to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.s

.lr.ph211:                                        ; preds = %bb.o, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.098209 = phi i32 [ %i.dp, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ 0, %bb.o ] ; 2 uses
  %i.dh = add nsw i32 %.098209, %i.dc             ; 2 uses
  %i.di = load i32, ptr %i.cx, align 8, !tbaa !31 ; 2 uses
  %i.dj = load i32, ptr %i.cy, align 4, !tbaa !23
  %.not.i125 = icmp ult i32 %i.di, %i.dj
  br i1 %.not.i125, label %bb.r, label %bb.q, !prof !126

bb.q:                                             ; preds = %.lr.ph211
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %i.dh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.r:                                             ; preds = %.lr.ph211
  %i.dk = zext i32 %i.di to i64
  %i.dl = load ptr, ptr %12, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  store i32 %i.dh, ptr %i.dm, align 1
  %i.dn = load i32, ptr %i.cx, align 8, !tbaa !31
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.cx, align 8, !tbaa !31
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.q, %bb.r
  %i.dp = add nuw nsw i32 %.098209, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, %i.db
  br i1 %exitcond.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !832

.thread:                                          ; preds = %bb.k, %bb.l, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.thread203

bb.s:                                             ; preds = %bb.m, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit
  %.sroa.0187.0 = phi ptr [ %i.ae, %bb.m ], [ %i.df, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ]
  %.sroa.11.0 = phi i64 [ %i.af, %bb.m ], [ %i.dg, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ]
  %i.dq = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #23
  %i.dr = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.b, i64 1, ptr %i.dq, ptr null, i64 0) #23
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.sroa.0187.0, ptr %13, align 8, !tbaa !125
  %.sroa.11.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx193, align 8, !tbaa !61
  %i.dt = call ptr @_ZN4mlir4LLVM15ShuffleVectorOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_N4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr %.sroa.0.0.copyload.i.i, ptr %i.dr, ptr %.sroa.0.0.copyload.i.i116, ptr %.sroa.0.0.copyload.i.i116, ptr noundef nonnull byval(%"class.llvm::ArrayRef.187") align 8 %13) #23
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -16
  %i.dv = call ptr @_ZN4mlir4LLVM9BitcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr %.sroa.0.0.copyload.i.i, ptr %i.ak, ptr nonnull %i.du) #23
  %i.dw = load ptr, ptr %5, align 8, !tbaa !121
  %i.dx = load ptr, ptr %2, align 8, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.dw, ptr noundef %i.dv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.thread203

bb.t:                                             ; preds = %bb.j
  %i.ea = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM15ShuffleVectorOpEvE2idE
  br i1 %i.ea, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.ao, ptr %14, align 8
  %i.eb = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127isExtractingContiguousSliceEN4mlir4LLVM15ShuffleVectorOpE(ptr nonnull %i.ao)
  br i1 %i.eb, label %bb.v, label %.thread200

.thread200:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.thread203

bb.v:                                             ; preds = %bb.u
  %i.ec = call { ptr, i64 } @_ZN4mlir4LLVM15ShuffleVectorOp7getMaskEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #23
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.ee, ptr %15, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 0, ptr %i.ef, align 8, !tbaa !31
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 12, ptr %i.eg, align 4, !tbaa !23
  %.idx = shl nuw nsw i64 %i.af, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %.not107207 = icmp eq i64 %i.af, 0
  br i1 %.not107207, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit133
  %.pre = load ptr, ptr %15, align 8, !tbaa !22
  %.pre213 = load i32, ptr %i.ef, align 8, !tbaa !31
  %i.ei = zext i32 %.pre213 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.ej = phi i64 [ %i.ei, %._crit_edge.loopexit ], [ 0, %bb.v ]
  %i.ek = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ee, %bb.v ]
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.em = load ptr, ptr %14, align 8, !tbaa !121
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !118
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %.sroa.0.0.copyload.i.i.i.i128 = load ptr, ptr %i.ep, align 8, !tbaa !120 ; 2 uses
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !128
  %i.er = call ptr @_ZN4mlir6detail18DenseArrayAttrImplIiE3getEPNS_11MLIRContextEN4llvm8ArrayRefIiEE(ptr noundef %i.eq, ptr %i.ek, i64 %i.ej) #23
  %i.es = call ptr @_ZN4mlir4LLVM15ShuffleVectorOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS_6detail18DenseArrayAttrImplIiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr %.sroa.0.0.copyload.i.i, ptr %i.ak, ptr %.sroa.0.0.copyload.i.i.i.i128, ptr %.sroa.0.0.copyload.i.i.i.i128, ptr %i.er) #23
  %i.et = load ptr, ptr %5, align 8, !tbaa !121
  %i.eu = load ptr, ptr %2, align 8, !tbaa !25
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.et, ptr noundef %i.es) #23
  %i.ex = load ptr, ptr %15, align 8, !tbaa !22   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ee
  br i1 %i.ey, label %bb.z, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ex) #23
  br label %bb.z

.lr.ph:                                           ; preds = %bb.v, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit133
  %.099208 = phi ptr [ %i.fk, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit133 ], [ %i.ae, %bb.v ] ; 2 uses
  %i.ez = load i32, ptr %.099208, align 4, !tbaa !115
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !115 ; 2 uses
  %i.fd = load i32, ptr %i.ef, align 8, !tbaa !31 ; 2 uses
  %i.fe = load i32, ptr %i.eg, align 4, !tbaa !23
  %.not.i132 = icmp ult i32 %i.fd, %i.fe
  br i1 %.not.i132, label %bb.y, label %bb.x, !prof !126

bb.x:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.fc)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit133

bb.y:                                             ; preds = %.lr.ph
  %i.ff = zext i32 %i.fd to i64
  %i.fg = load ptr, ptr %15, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ff
  store i32 %i.fc, ptr %i.fh, align 1
  %i.fi = load i32, ptr %i.ef, align 8, !tbaa !31
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.ef, align 8, !tbaa !31
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit133

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit133: ; preds = %bb.x, %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %.099208, i64 4 ; 2 uses
  %.not107 = icmp eq ptr %i.fk, %i.eh
  br i1 %.not107, label %._crit_edge.loopexit, label %.lr.ph

bb.z:                                             ; preds = %bb.w, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.thread203

bb.aa:                                            ; preds = %bb.t
  %i.fl = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6LoadOpEvE2idE
  br i1 %i.fl, label %bb.ab, label %.thread203

bb.ab:                                            ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !118
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %.sroa.0.0.copyload.i.i.i.i136 = load ptr, ptr %i.fo, align 8, !tbaa !120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i136, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fp, align 8
  %i.fq = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.fr = inttoptr i64 %i.fq to ptr
end_hunk_0
