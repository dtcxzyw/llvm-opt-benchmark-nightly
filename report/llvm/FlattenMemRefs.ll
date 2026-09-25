Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FlattenMemRefs?download=true
inline.NumInlined: 2243
inline.NumDeleted: 1451
begin_hunk_0_@_ZNK12_GLOBAL__N_130VectorTransferOpFlattenPattern15matchAndRewriteEN4mlir25VectorTransferOpInterfaceERNS1_15PatternRewriterE:bb.a
  br i1 %.not.i.i, label %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %wide.trip.count.i.i = zext i32 %i.ap to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.aq = call ptr @_ZN4mlir25VectorTransferOpInterface11getInBoundsEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #17
  store ptr %i.aq, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.ar = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #17
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i.i.i27 = load ptr, ptr %i.at, align 8, !tbaa !120
  store ptr %.sroa.0.0.copyload.i.i.i.i27, ptr %20, align 8
  %i.au = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.not.i.i = select i1 %i.au, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not.i.i, label %.lr.ph.i.i, label %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.i, !llvm.loop !321

_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.i: ; preds = %.lr.ph.i.i
  br i1 %i.au, label %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.aw, align 1, !tbaa !84
  store ptr @.str.28, ptr %18, align 8, !tbaa !85
  store i8 3, ptr %i.av, align 8, !tbaa !86
  %i.ax = load ptr, ptr %24, align 16, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !94 ; 4 uses
  %.not.i.i.i.i7.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i7.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit10.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #17
  br i1 %i.ba, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i8.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit10.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i8.i: ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0.0.copyload.i.i.i.i9.i = load ptr, ptr %i.bb, align 8
  %i.bc = ptrtoint ptr %17 to i64
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(12) %i.az, ptr %.sroa.0.0.copyload.i.i.i.i9.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_25VectorTransferOpInterfaceEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bc) #17, !inline_history !320
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit10.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit10.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i8.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.r

_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread.i: ; preds = %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.bg = call ptr @_ZN4mlir25VectorTransferOpInterface17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #17
  store ptr %i.bg, ptr %16, align 8
  %i.bh = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.bi = icmp ugt i32 %i.bh, 1
  br i1 %i.bi, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.bk, align 1, !tbaa !84
  store ptr @.str.29, ptr %15, align 8, !tbaa !85
  store i8 3, ptr %i.bj, align 8, !tbaa !86
  %i.bl = load ptr, ptr %24, align 16, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store ptr %15, ptr %14, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !94 ; 4 uses
  %.not.i.i.i.i11.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i11.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit14.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bn) #17
  br i1 %i.bo, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i12.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit14.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i12.i: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.0.0.copyload.i.i.i.i13.i = load ptr, ptr %i.bp, align 8
  %i.bq = ptrtoint ptr %14 to i64
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bn, ptr %.sroa.0.0.copyload.i.i.i.i13.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_25VectorTransferOpInterfaceEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bq) #17, !inline_history !320
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit14.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit14.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i12.i, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.r

bb.m:                                             ; preds = %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.bu = call ptr @_ZN4mlir25VectorTransferOpInterface17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #17
  store ptr %i.bu, ptr %13, align 8
  %i.bv = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %24, align 16, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr %i.by, ptr %12, align 8
  %i.bz = call noundef zeroext i1 @_ZN4mlir10MemRefType25areTrailingDimsContiguousEl(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br i1 %i.bz, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.cb, align 1, !tbaa !84
  store ptr @.str.18, ptr %11, align 8, !tbaa !85
  store i8 3, ptr %i.ca, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %11, ptr %10, align 8, !tbaa !88
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !94 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cd) #17
  br i1 %i.ce, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i, label %bb.q

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8
  %i.cg = ptrtoint ptr %10 to i64
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(12) %i.cd, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRPNS1_9OperationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.cg) #17, !inline_history !322
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.r

bb.r:                                             ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit10.i, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit14.i, %bb.q, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %bb.am

bb.s:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cl = inttoptr i64 %i.ck to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.cl, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.cm, ptr %8, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.cn, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.co, align 4, !tbaa !14
  %i.cp = call i8 @_ZNK4mlir10MemRefType19getStridesAndOffsetERN4llvm15SmallVectorImplIlEERl(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17
  %i.cq = trunc nuw i8 %i.cp to i1                ; 2 uses
  br i1 %i.cq, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cr = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i
  %.not.not68.i = icmp eq i64 %i.ct, 0
  br i1 %.not.not68.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.cv = load ptr, ptr %8, align 8, !tbaa !13, !noalias !330
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i, %.lr.ph.preheader.i
  %.sroa.863.071.i = phi i64 [ %.sroa.speculated.i.i, %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.6.070.i = phi ptr [ %i.dc, %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i ], [ %i.cs, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.049.069.i = phi ptr [ %i.dd, %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i ], [ %i.cv, %.lr.ph.preheader.i ] ; 2 uses
  %i.cw = load i64, ptr %.sroa.6.070.i, align 8, !tbaa !48 ; 2 uses
  %32 = icmp eq i64 %i.cw, -9223372036854775808   ; 3 uses
  %.2.i.i = select i1 %32, i64 0, i64 %i.cw       ; 2 uses
  %i.cx = load i64, ptr %.sroa.049.069.i, align 8, !tbaa !48 ; 2 uses
  %33 = icmp eq i64 %i.cx, -9223372036854775808   ; 3 uses
  %.2.i27.i = select i1 %33, i64 0, i64 %i.cx     ; 2 uses
  %i.cy = icmp ne i64 %.2.i27.i, 0
  %or.cond.not.i.i28 = or i1 %33, %i.cy
  %i.cz = icmp ne i64 %.2.i.i, 0
  %or.cond.not14.i.i = or i1 %32, %i.cz
  %or.cond.i = select i1 %or.cond.not.i.i28, i1 %or.cond.not14.i.i, i1 false
  br i1 %or.cond.i, label %_ZN4mlir16SaturatedIntegermlES0_.exit.i, label %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i

_ZN4mlir16SaturatedIntegermlES0_.exit.i:          ; preds = %.lr.ph.i
  %i.da = or i1 %32, %33
  %i.db = mul nsw i64 %.2.i27.i, %.2.i.i
  br i1 %i.da, label %._crit_edge.i, label %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i

_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i:   ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit.i, %.lr.ph.i
  %.sroa.5.0.i78.i = phi i64 [ %i.db, %_ZN4mlir16SaturatedIntegermlES0_.exit.i ], [ 0, %.lr.ph.i ]
  %.sroa.speculated.i.i = call i64 @llvm.smax.i64(i64 %.sroa.5.0.i78.i, i64 %.sroa.863.071.i) ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.6.070.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.049.069.i, i64 8
  %.not.not.i = icmp eq ptr %i.dc, %i.cu
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i, %_ZN4mlir16SaturatedIntegermlES0_.exit.i, %bb.t
  %i.de = phi i64 [ 0, %bb.t ], [ -9223372036854775808, %_ZN4mlir16SaturatedIntegermlES0_.exit.i ], [ %.sroa.speculated.i.i, %_ZN4mlir16SaturatedIntegermlES0_.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.df = call { ptr, ptr } @_ZNK4mlir10MemRefType9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17 ; 2 uses
  %i.dg = extractvalue { ptr, ptr } %i.df, 0
  store ptr %i.dg, ptr %9, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.di = extractvalue { ptr, ptr } %i.df, 1
  store ptr %i.di, ptr %i.dh, align 8
  %i.dj = call noundef zeroext i1 @_ZNK4mlir25MemRefLayoutAttrInterface10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.de, ptr %i.b, align 8, !tbaa !48
  %i.dk = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %i.dl = call ptr @_ZNK4mlir10MemRefType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %i.dm = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr nonnull %i.b, i64 1, ptr %i.dk, ptr null, ptr null, ptr %i.dl) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.ab

bb.v:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.de, ptr %i.c, align 8, !tbaa !48
  %i.dn = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %i.do = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 1, ptr %i.d, align 8, !tbaa !48
  %i.dq = call ptr @_ZN4mlir17StridedLayoutAttr3getEPNS_11MLIRContextElN4llvm8ArrayRefIlEE(ptr noundef %i.do, i64 noundef %i.dp, ptr nonnull %i.d, i64 1) #17 ; 3 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i29, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !114 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.x, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !46

bb.x:                                             ; preds = %bb.w
  %i.dv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 49), i64 31) #17
  store ptr %i.dw, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !11 ; 2 uses
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !13 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ea, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dx, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.eb = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.eb ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !11
  %i.ed = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = xor i64 %i.eb, -1
  %i.eg = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.ef
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ed, ptr %i.ee, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ed, i64 %i.eg, i64 %i.eb ; 2 uses
  %i.eh = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eh, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.ea, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dx, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.ei
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.ej = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !67
  %i.ek = icmp eq ptr %i.ej, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ek, label %bb.aa, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i

_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i: ; preds = %bb.aa, %bb.z, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, %bb.v
  %i.en = phi ptr [ null, %bb.v ], [ %i.em, %bb.aa ], [ null, %bb.z ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i ]
  %i.eo = call ptr @_ZNK4mlir10MemRefType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %i.ep = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr nonnull %i.c, i64 1, ptr %i.dn, ptr %i.dq, ptr %i.en, ptr %i.eo) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, %bb.u, %bb.s
  %.sroa.066.1.i = phi ptr [ undef, %bb.s ], [ %i.dm, %bb.u ], [ %i.ep, %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i ] ; 3 uses
  %i.eq = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.cm
  br i1 %i.er, label %_ZN12_GLOBAL__N_122getFlattenedMemRefTypeEN4mlir10MemRefTypeE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.eq) #17
  br label %_ZN12_GLOBAL__N_122getFlattenedMemRefTypeEN4mlir10MemRefTypeE.exit

_ZN12_GLOBAL__N_122getFlattenedMemRefTypeEN4mlir10MemRefTypeE.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.cq, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_122getFlattenedMemRefTypeEN4mlir10MemRefTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.es = call ptr @_ZN4mlir25VectorTransferOpInterface17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #17
  store ptr %i.es, ptr %6, align 8
  %i.et = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.eu = load ptr, ptr %28, align 16, !tbaa !81
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ev) #17
  %i.ex = call ptr @_ZN4mlir9AffineMap19getMinorIdentityMapEjjPNS_11MLIRContextE(i32 noundef 1, i32 noundef %i.et, ptr noundef %i.ew) #17 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %.sroa.066.1.i, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %.sroa.066.1.i, align 8, !tbaa !329 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.af, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, !prof !46

bb.af:                                            ; preds = %bb.ae
  %i.fc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 16) #17
  store ptr %i.fd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !11 ; 2 uses
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !13 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fh, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fe, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fi = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fi ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fj, align 8, !tbaa !11
  %i.fk = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = xor i64 %i.fi, -1
  %i.fn = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fm
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fk, ptr %i.fl, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fk, i64 %i.fn, i64 %i.fi ; 2 uses
  %i.fo = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fo, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.fh, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fe, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i31 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i31, label %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.fq = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !67
  %i.fr = icmp eq ptr %i.fq, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
