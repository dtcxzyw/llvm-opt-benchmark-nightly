Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeadCodeAnalysis?download=true
inline.NumInlined: 2316
inline.NumDeleted: 1387
begin_hunk_0_@_ZN4mlir8dataflow16DeadCodeAnalysis21initializeRecursivelyEPNS_9OperationE:bb.a
  br i1 %i.aj, label %bb.f, label %_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !132, !noalias !294 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !133, !noalias !294 ; 4 uses
  %i.an = zext i32 %i.am to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.aq, %.critedge.i.i.i.i ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !134, !noalias !294
  %.not15.i.i.i.i = icmp eq ptr %i.ap, %0
  br i1 %.not15.i.i.i.i, label %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ao
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !135, !noalias !294
  %i.at = icmp ult i32 %i.am, %i.as
  br i1 %i.at, label %_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.thread.i, label %_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.i

_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.thread.i: ; preds = %._crit_edge.i.i.i.i
  %i.au = add nuw i32 %i.am, 1
  store i32 %i.au, ptr %i.al, align 4, !tbaa !133, !noalias !294
  store ptr %0, ptr %i.ao, align 8, !tbaa !134, !noalias !294
  br label %bb.g

_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.e
  %i.av = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, ptr noundef nonnull %0) #18, !noalias !294
  %i.aw = extractvalue { ptr, i8 } %i.av, 1
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.g, label %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit

bb.g:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.i, %_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 128 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !58 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 132
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !136
  %.not.i.i.i = icmp ult i32 %i.ba, %i.bc
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !137

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir16DataFlowAnalysisELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull %0)
  br label %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = zext i32 %i.ba to i64
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  store ptr %0, ptr %i.bf, align 1
  %i.bg = load i32, ptr %i.az, align 8, !tbaa !58
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.az, align 8, !tbaa !58
  br label %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit

_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit: ; preds = %.lr.ph.i.i.i.i, %bb.i, %bb.h, %_ZN4llvm15SmallPtrSetImplIPN4mlir16DataFlowAnalysisEE6insertES3_.exit.i.i
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.bi = load ptr, ptr %i.y, align 8, !tbaa !149, !nonnull !50, !align !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %.pr, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 152 ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %.pr, ptr %i.b, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bk = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !74
  store ptr %i.bm, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8, !tbaa !116
  %i.bn = call noundef ptr @_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJPNS_5BlockERN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEDnEEEPT_NS5_12function_refIFvSE_EEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit

bb.k:                                             ; preds = %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit.thread, %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit
  %i.bo = phi ptr [ %i.aa, %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit.thread ], [ %i.bj, %_ZN4mlir8dataflow10Executable21blockContentSubscribeEPNS_16DataFlowAnalysisE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr null, ptr %i.d, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !75
  %i.bp = call noundef ptr @_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJDnN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEERPS7_EEEPT_NS3_12function_refIFvSD_EEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit

_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.bn, %bb.j ], [ %i.bp, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = load ptr, ptr %0, align 8, !tbaa !140
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %.0.i.i) #18
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit, %_ZL24isRegionOrCallableReturnPN4mlir9OperationE.exit.thread
  %i.bv = load i32, ptr %i.g, align 4
  %i.bw = and i32 %i.bv, 8388607
  %.not35 = icmp eq i32 %i.bw, 0
  br i1 %.not35, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !148, !range !49, !noundef !50 ; 2 uses
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, !prof !90

bb.o:                                             ; preds = %bb.n
  %i.cc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.61, i64 49), i64 33) #18
  store ptr %i.cd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !92
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !155 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !140
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr %.sroa.01.0.copyload.i.i.i.i.i) #18, !inline_history !0
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit
  store i8 1, ptr %i.bx, align 8, !tbaa !148
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, %bb.m
  %i.ck = load i32, ptr %i.g, align 4             ; 3 uses
  %i.cl = and i32 %i.ck, 8388607                  ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.sink.split, label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.co = lshr i32 %i.ck, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.co, 1
  %i.cp = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = lshr i32 %i.ck, 21
  %i.cs = and i32 %i.cr, 2040
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !151
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cx ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cl, 5
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN4mlir9Operation10getRegionsEv.exit, %._crit_edge
  %.03067 = phi ptr [ %i.cy, %_ZN4mlir9Operation10getRegionsEv.exit ], [ %i.dl, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %.03067, i1 noundef zeroext false) #18, !noalias !295
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(28) %.03067, i1 noundef zeroext true) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 24, i1 false)
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !75 ; 2 uses
  %.not6465 = icmp eq ptr %i.de, %.sroa.3.0.copyload
  br i1 %.not6465, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %i.df = phi ptr [ %i.dk, %bb.t ], [ %i.de, %bb.s ]
  %i.dg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.df) #18
  %i.dh = call i8 @_ZN4mlir8dataflow16DeadCodeAnalysis21initializeRecursivelyEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %i.dg)
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.t, label %"_ZN4llvm10scope_exitIZN4mlir8dataflow16DeadCodeAnalysis21initializeRecursivelyEPNS1_9OperationEE3$_0ED2Ev.exit"

bb.t:                                             ; preds = %.lr.ph
  %i.dj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #18 ; 0 uses
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !75 ; 2 uses
  %.not64 = icmp eq ptr %i.dk, %.sroa.3.0.copyload
  br i1 %.not64, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.dl = getelementptr inbounds nuw i8, ptr %.03067, i64 32 ; 2 uses
  %.not36 = icmp eq ptr %i.dl, %i.db
  br i1 %.not36, label %.sink.split, label %bb.s

"_ZN4llvm10scope_exitIZN4mlir8dataflow16DeadCodeAnalysis21initializeRecursivelyEPNS1_9OperationEE3$_0ED2Ev.exit": ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.r, %"_ZN4llvm10scope_exitIZN4mlir8dataflow16DeadCodeAnalysis21initializeRecursivelyEPNS1_9OperationEE3$_0ED2Ev.exit"
  %.sroa.026.5.ph = phi i8 [ 0, %"_ZN4llvm10scope_exitIZN4mlir8dataflow16DeadCodeAnalysis21initializeRecursivelyEPNS1_9OperationEE3$_0ED2Ev.exit" ], [ 1, %bb.r ], [ 1, %._crit_edge ]
  store i8 %i.by, ptr %i.bx, align 8, !tbaa !148
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.l, %_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit
  %.sroa.026.5 = phi i8 [ 1, %bb.l ], [ 0, %_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit ], [ %.sroa.026.5.ph, %.sink.split ]
  ret i8 %.sroa.026.5
}

declare void @_ZN4mlir11SymbolTable16walkSymbolTablesEPNS_9OperationEbN4llvm12function_refIFvS2_bEEE(ptr noundef, i1 noundef zeroext, ptr, i64) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8dataflow16DeadCodeAnalysis12markEdgeLiveEPNS_5BlockES3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::ilist_iterator", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !114
  store ptr %2, ptr %i.d, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149, !nonnull !50, !align !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  store ptr %i.i, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !116
  %i.j = call noundef ptr @_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJRPNS_5BlockEN4llvm14ilist_iteratorINS6_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEDnEEEPT_NS6_12function_refIFvSE_EEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !149, !nonnull !50, !align !150
  %i.l = call noundef ptr @_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow10ExecutableEPNS_12ProgramPointEEEPT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef %i.j) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !48, !range !49, !noundef !50
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN4mlir8dataflow10Executable9setToLiveEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.m, align 8, !tbaa !48
  br label %_ZN4mlir8dataflow10Executable9setToLiveEv.exit

_ZN4mlir8dataflow10Executable9setToLiveEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.l, i32 noundef %.0.i) #18
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !149, !nonnull !50, !align !150
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.r = call noundef ptr @_ZN4mlir14StorageUniquer3getINS_8dataflow7CFGEdgeEJRPNS_5BlockES6_EEEPT_N4llvm12function_refIFvS8_EEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !149, !nonnull !50, !align !150
  %i.t = call noundef ptr @_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow10ExecutableEPNS2_7CFGEdgeEEEPT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %i.s, ptr noundef %i.r) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !48, !range !49, !noundef !50
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4mlir8dataflow10Executable9setToLiveEv.exit6, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir8dataflow10Executable9setToLiveEv.exit
  store i8 1, ptr %i.u, align 8, !tbaa !48
  br label %_ZN4mlir8dataflow10Executable9setToLiveEv.exit6

_ZN4mlir8dataflow10Executable9setToLiveEv.exit6:  ; preds = %_ZN4mlir8dataflow10Executable9setToLiveEv.exit, %bb.c
  %.0.i5 = phi i32 [ 1, %bb.c ], [ 0, %_ZN4mlir8dataflow10Executable9setToLiveEv.exit ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.t, i32 noundef %.0.i5) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8dataflow16DeadCodeAnalysis19markEntryBlocksLiveEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::ilist_iterator", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = and i32 %i.d, 8388607                    ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %._crit_edge, label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.h, 1
  %i.i = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.i
  %i.k = lshr i32 %i.d, 21
  %i.l = and i32 %i.k, 2040
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !151
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = shl nuw nsw i32 %i.e, 5
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %_ZN4mlir9Operation10getRegionsEv.exit, %bb.e
  %.01519 = phi ptr [ %i.r, %_ZN4mlir9Operation10getRegionsEv.exit ], [ %i.al, %bb.e ] ; 4 uses
  %i.w = load ptr, ptr %.01519, align 8, !tbaa !152
  %i.x = icmp eq ptr %.01519, %i.w
  br i1 %i.x, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.01519, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !149, !nonnull !50, !align !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  store ptr %i.ae, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !116
  %i.af = call noundef ptr @_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJRPNS_5BlockEN4llvm14ilist_iteratorINS6_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEDnEEEPT_NS6_12function_refIFvSE_EEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !149, !nonnull !50, !align !150
  %i.ah = call noundef ptr @_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow10ExecutableEPNS_12ProgramPointEEEPT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef %i.af) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !48, !range !49, !noundef !50
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN4mlir8dataflow10Executable9setToLiveEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.ai, align 8, !tbaa !48
  br label %_ZN4mlir8dataflow10Executable9setToLiveEv.exit

_ZN4mlir8dataflow10Executable9setToLiveEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ah, i32 noundef %.0.i) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN4mlir8dataflow10Executable9setToLiveEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.01519, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.u
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir8dataflow16DeadCodeAnalysis5visitEPNS_12ProgramPointE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.mlir::SuccessorRange", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::ilist_iterator", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::ilist_iterator", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::ilist_iterator", align 8 ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::ilist_iterator", align 8 ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::ilist_iterator", align 8 ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit

_ZNK4mlir12ProgramPoint12isBlockStartEv.exit:     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161
  br label %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit

bb.c:                                             ; preds = %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !152
  %i.t = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.s) #18
  br label %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit

_ZNK4mlir12ProgramPoint9getPrevOpEv.exit:         ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.r, %bb.b ], [ %i.t, %bb.c ] ; 26 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89   ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.e, label %bb.d

end_hunk_0
