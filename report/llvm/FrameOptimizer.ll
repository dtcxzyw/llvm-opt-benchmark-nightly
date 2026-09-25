Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FrameOptimizer?download=true
inline.NumInlined: 4640
inline.NumDeleted: 2680
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm2cl18GenericOptionValue6anchorEv
declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNK4llvm2cl19generic_parser_base22printGenericOptionDiffERKNS0_6OptionERKNS0_18GenericOptionValueES7_m(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !35
  %i.g = load i32, ptr %i.a, align 8, !tbaa !186
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !186
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !186
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::BitVector", align 8   ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::function.742", align 8 ; 7 uses
  %3 = alloca %"class.std::function.742", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::BitVector", align 8   ; 7 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 13 uses
  %6 = alloca %"class.std::queue", align 8        ; 20 uses
  %7 = alloca %"class.llvm::DenseSet.732", align 8 ; 14 uses
  %8 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 15 uses
  %10 = alloca %"class.std::function.742", align 8 ; 6 uses
  %11 = alloca %"class.std::function.742", align 8 ; 6 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %class.anon.747, align 8           ; 7 uses
  tail call void @_ZN4llvm4bolt25StackAvailableExpressions9preflightEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !379, !nonnull !42, !align !183 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1248
  %i.p = load i32, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.cy, label %.lr.ph225

.lr.ph225:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.b

._crit_edge226:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.ai, align 8, !tbaa !385
  %i.ak = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 2 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !386
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !385
  %i.am = add i64 %i.al, -1
  %i.an = lshr i64 %i.am, 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24 ; 6 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !387
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !388
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !389
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 512 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !390
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !388
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !389
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !390
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !391
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !379, !nonnull !42, !align !183
  store ptr %i.ay, ptr %i.d, align 8, !tbaa !279
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !186
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bb, align 4, !tbaa !262
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_4bolt14BinaryFunctionENS_11GraphTraitsIS3_EEE10InitializeERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.bc = load ptr, ptr %8, align 8, !tbaa !35, !noalias !980 ; 3 uses
  %i.bd = load i32, ptr %i.ba, align 8, !tbaa !186, !noalias !980 ; 2 uses
  %.not193227 = icmp eq i32 %i.bd, 0
  br i1 %.not193227, label %._crit_edge231, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %._crit_edge226
  %i.be = zext i32 %i.bd to i64
  %.idx261 = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx261
  br label %.lr.ph230

bb.b:                                             ; preds = %.lr.ph225, %._crit_edge
  %.sroa.0177.0224 = phi ptr [ %i.n, %.lr.ph225 ], [ %i.bq, %._crit_edge ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.0177.0224, align 8, !tbaa !189 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !189
  %i.bh = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4llvm4bolt25StackAvailableExpressions20getStartingStateAtBBERKNS0_16BinaryBasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.bg) #23
  %i.bi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.bh, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.bj = load i32, ptr %i.u, align 8, !tbaa !205
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !205
  %i.bl = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.v
  br i1 %i.bm, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.bl) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !191 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !191 ; 2 uses
  %.not200221 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not200221, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit64, %_ZN4llvm9BitVectorD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0177.0224, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.bq, %i.r
  br i1 %.not192, label %._crit_edge226, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit64
  %.sroa.0173.0222 = phi ptr [ %i.lu, %_ZN4llvm9BitVectorD2Ev.exit64 ], [ %i.bn, %_ZN4llvm9BitVectorD2Ev.exit ] ; 10 uses
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !393, !nonnull !42, !align !183
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1568
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !185 ; 6 uses
  %i.bu = load i8, ptr %i.y, align 4, !tbaa !277, !range !41, !noundef !42
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !261
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.bw = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bt, ptr nonnull @.str.48, i64 25) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bw to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.x, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.bw, %bb.d ] ; 5 uses
  %i.bx = load i16, ptr %i.z, align 8, !tbaa !394 ; 4 uses
  %i.by = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bt, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0173.0222, i32 noundef %.0.i.i) #23, !noalias !981
  br i1 %i.by, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0173.0222, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !186, !noalias !981 ; 5 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ca, -1         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0173.0222, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35, !noalias !981 ; 4 uses
  %13 = zext i32 %i.ca to i64                     ; 2 uses
  %i.cd = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !396, !noalias !981
  %i.cg = icmp eq i8 %i.cf, 6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !981
  %i.cj = icmp eq ptr %i.ci, null
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cd, %bb.e ] ; 2 uses
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %13, %bb.e ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.cl = icmp sgt i64 %indvars.iv.i.i.i, 0
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.a, -1 ; 2 uses
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !396, !noalias !981
  %i.co = icmp eq i8 %i.cn, 6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !981
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %indvars.iv.i.lcssa.i.i.i = phi i64 [ %13, %bb.e ], [ %indvars.iv.next.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.ct, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ca, %.01318.i.i.i.lcssa.i.i.i
  %i.cu = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1
  %.not1324.i.i.i.i = icmp ult i32 %i.cu, %i.ca
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.i.lcssa.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !266, !noalias !981 ; 2 uses
  %i.cy = lshr i64 %i.cx, 56
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.cz
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.a, %.critedge.i.i.i.i ], [ %indvars.iv.i.lcssa.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.a to i32
  %exitcond.not.i.i.i.i = icmp ne i32 %i.ca, %lftr.wideiv.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !266, !noalias !981 ; 2 uses
  %i.dd = lshr i64 %i.dc, 56
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %.not.i.i.i.i97 = icmp eq i32 %.0.i.i, %i.de
  br i1 %.not.i.i.i.i97, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.cx, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.dc, %.critedge.i.i.i.i ]
  %i.df = shl i64 %.lcssa.i.i.i, 8
  %i.dg = ashr exact i64 %i.df, 8
  %i.dh = add nuw nsw i64 %i.dg, 8
  %i.di = inttoptr i64 %i.dh to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false)
  store ptr %i.aa, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.ab, align 8, !tbaa !186
  store i32 6, ptr %i.ac, align 4, !tbaa !262
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !398
  %.not.not.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.dl, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !215, !nonnull !42, !noundef !42 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !399
  %i.do = icmp eq i16 %i.bx, %i.dn
  br i1 %i.do, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !9

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dq = zext i16 %i.bx to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !400 ; 2 uses
  %i.dt = urem i64 %i.dq, %i.ds                   ; 2 uses
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !401
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !218, !nonnull !42, !noundef !42
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !215 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !399
  %i.ea = icmp eq i16 %i.bx, %i.dz
  br i1 %i.ea, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i ], [ %i.dx, %bb.h ]
  %i.eb = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !215, !nonnull !42, !noundef !42 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !399 ; 2 uses
  %i.ee = zext i16 %i.ed to i64
  %i.ef = urem i64 %i.ee, %i.ds
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ef, %i.dt
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.eg = icmp eq i16 %i.bx, %i.ed
  br i1 %i.eg, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.dx, %bb.h ], [ %i.eb, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !402
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = add i64 %i.ej, 15
  %i.el = and i64 %i.ek, -16                      ; 2 uses
  %i.em = add i64 %i.el, 80                       ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !403
  %i.ep = icmp ult i64 %i.em, %i.eo
  br i1 %i.ep, label %bb.i, label %bb.j, !prof !351

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.eq = inttoptr i64 %i.em to ptr
  store ptr %i.eq, ptr %i.eh, align 8, !tbaa !402
  %i.er = inttoptr i64 %i.el to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.es = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !186
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.et = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.er, %bb.i ], [ %i.es, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !30
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !35
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.ew, align 8, !tbaa !186
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.ex, align 4, !tbaa !262
  %.not.i.i.i.i.i = icmp eq i32 %i.et, 0
  %i.ey = icmp eq ptr %i.eu, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.ey
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.ez = icmp ugt i32 %i.et, 6
  br i1 %i.ez, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fa = zext i32 %i.et to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.eu, ptr noundef nonnull %i.ev, i64 noundef %i.fa, i64 noundef 8) #23
  %.pre.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i109 = load ptr, ptr %i.eu, align 8, !tbaa !35
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.fb = phi ptr [ %.pre.i.i.i109, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.ev, %bb.k ]
  %i.fc = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.et, %bb.k ]
  %i.fd = zext i32 %i.fc to i64
  %i.fe = load ptr, ptr %1, align 8, !tbaa !35
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 8 %i.fe, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.et, ptr %i.ew, align 8, !tbaa !186
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fg = load i32, ptr %i.ad, align 8, !tbaa !205
  store i32 %i.fg, ptr %i.ff, align 8, !tbaa !205
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !405
  %.not.not.i = icmp eq i64 %i.fj, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.fk = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !406 ; 2 uses
  %i.fn = urem i64 %i.fk, %i.fm                   ; 5 uses
  %i.fo = load ptr, ptr %i.fh, align 8, !tbaa !407
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i115, label %.critedge.i117, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.fr, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !215 ; 3 uses
  %.not.i120 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i120, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !409
  %i.fu = icmp eq ptr %.0.i.i.i.i, %i.ft
  br i1 %i.fu, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !11

bb.o:                                             ; preds = %bb.m
  %i.fv = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !406
  %i.fy = urem i64 %i.fv, %i.fx
  br label %.critedge.i117

bb.p:                                             ; preds = %.thread30.i
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !215 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !409
  %i.gc = icmp eq ptr %.0.i.i.i.i, %i.gb
  br i1 %i.gc, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i116

bb.q:                                             ; preds = %bb.r
  %i.gd = icmp eq ptr %.0.i.i.i.i, %i.gg
  br i1 %i.gd, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i116, !llvm.loop !12

.lr.ph.i.i.i116:                                  ; preds = %bb.p, %bb.q
  %.020.i.i.i = phi ptr [ %i.ge, %bb.q ], [ %i.fz, %bb.p ]
  %i.ge = load ptr, ptr %.020.i.i.i, align 8, !tbaa !215 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not18.i.i.i, label %.critedge.i117, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i116
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !409 ; 2 uses
  %i.gh = ptrtoint ptr %i.gg to i64
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !215 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !441
  store ptr %i.p, ptr %.02530, align 8, !tbaa !215
  store ptr %.02530, ptr %i.g, align 8, !tbaa !441
  store ptr %i.g, ptr %i.n, align 8, !tbaa !218
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !215
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !218
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !215
  store ptr %i.s, ptr %.02530, align 8, !tbaa !215
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !218
  store ptr %.02530, ptr %i.t, align 8, !tbaa !215
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !994

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !217    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !216
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #25
  br label %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_NS0_9BitVectorEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !216
  store ptr %.0.i, ptr %0, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !35     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #23
  %.pre = load ptr, ptr %1, align 8, !tbaa !35
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !261
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !261
  store ptr %i.c, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.k, align 4, !tbaa !262
  store i32 0, ptr %i.j, align 8, !tbaa !186
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !186  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !186  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !263

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !206
  store i64 %i.t, ptr %i.s, align 8, !tbaa !206
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !186
  store i32 0, ptr %i.m, align 8, !tbaa !186
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !262
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #23
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !268

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !206
  store i64 %i.z, ptr %i.y, align 8, !tbaa !206
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !186
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !35
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !186
  store i32 0, ptr %i.m, align 8, !tbaa !186
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::BitVector", align 8   ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #23, !noalias !998
  br i1 %i.a, label %bb.b, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186, !noalias !998 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35, !noalias !998 ; 4 uses
  %5 = zext i32 %i.c to i64                       ; 2 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !396, !noalias !998
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !998
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %5, %bb.b ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !396, !noalias !998
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !998
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %indvars.iv.i.lcssa.i.i = phi i64 [ %5, %bb.b ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.lcssa.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !266, !noalias !998 ; 2 uses
  %i.aa = lshr i64 %i.z, 56
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ab
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.c, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !266, !noalias !998 ; 2 uses
  %i.af = lshr i64 %i.ae, 56
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ag
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.z, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ae, %.critedge.i.i.i ]
  %i.ah = shl i64 %.lcssa.i.i, 8
  %i.ai = ashr exact i64 %i.ah, 8
  %i.aj = add nuw nsw i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %bb.d

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit:   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, i8 0, i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.ao, align 4, !tbaa !262
  %i.ap = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(68) %4, i16 noundef zeroext %3)
  %i.aq = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.am
  br i1 %i.ar, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit
  call void @free(ptr noundef %i.aq) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZN4llvm9BitVectorD2Ev.exit
  %.sroa.0.sroa.010.0.in = phi ptr [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.ap, %_ZN4llvm9BitVectorD2Ev.exit ]
  ret ptr %.sroa.0.sroa.010.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(68) %3, i16 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !398
  %.not.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !215, !nonnull !42, !noundef !42 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !399
  %i.g = icmp eq i16 %4, %i.f
  br i1 %i.g, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %bb.c, !llvm.loop !9

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext i16 %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !400  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !401
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218, !nonnull !42, !noundef !42
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !215  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !399
  %i.s = icmp eq i16 %4, %i.r
  br i1 %i.s, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !215, !nonnull !42, !noundef !42 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !399  ; 2 uses
  %i.w = zext i16 %i.v to i64
  %i.x = urem i64 %i.w, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.x, %i.l
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.y = icmp eq i16 %4, %i.v
  br i1 %i.y, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !402
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, 15
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 80                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !403
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !351

bb.e:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ai = inttoptr i64 %i.ae to ptr
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !402
  %i.aj = inttoptr i64 %i.ad to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.f:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ak = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 noundef 80, i64 noundef 80, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.ak, %bb.f ] ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 6, ptr %i.ao, align 4, !tbaa !262
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !186 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  %i.ar = icmp eq ptr %i.al, %3
  %or.cond.i.i.i = or i1 %i.ar, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  %i.as = icmp ugt i32 %i.aq, 6
  br i1 %i.as, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.g
  %i.at = zext i32 %i.aq to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.al, ptr noundef nonnull %i.am, i64 noundef %i.at, i64 noundef 8) #23
  %.pre.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !35
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.g
  %i.au = phi ptr [ %.pre.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.am, %bb.g ]
  %i.av = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.aq, %bb.g ]
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %3, align 8, !tbaa !35
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.ax, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !186
  br label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEC2ERKS3_.exit

_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEC2ERKS3_.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit, %.sink.split.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !205
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !205
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.bb, ptr %5, align 8, !tbaa !1000
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bd = ptrtoint ptr %.0.i.i.i to i64
  call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.bd)
  ret ptr %i.al
}

declare noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 36028797018963968
  %.not.i = icmp ult i64 %i.a, 72057594037927936
  br i1 %.not.i, label %_ZN4llvm4bolt13MCPlusBuilder19encodeAnnotationImmEhl.exit, label %bb.b, !prof !351

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.61, i1 noundef zeroext true) #26
  unreachable

_ZN4llvm4bolt13MCPlusBuilder19encodeAnnotationImmEhl.exit: ; preds = %bb.a
  %i.b = and i64 %3, 72057594037927935
  %i.c = and i32 %2, 255
  %i.d = zext nneg i32 %i.c to i64
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_25StackAvailableExpressionsENS0_9BitVectorELb0ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation:bb.a
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !324
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !453
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !434
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE_clES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, ptr %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::ErrorOr.762", align 8 ; 4 uses
  %4 = alloca %"class.llvm::ErrorOr.762", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1034   ; 9 uses
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !393, !nonnull !42, !align !183
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !185  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1035, !nonnull !42, !align !183 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.762") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !201
  call void @_ZN4llvm4bolt25StackAvailableExpressions12doConfluenceERNS_9BitVectorERKS2_(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1035, !nonnull !42, !align !183 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !214, !noalias !1037
  %.not.not.i.i.i.i5 = icmp eq i64 %i.q, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.r, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !215, !noalias !1037 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !189, !noalias !1037
  %i.u = icmp eq ptr %2, %i.t
  br i1 %i.u, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !2

bb.g:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = ptrtoint ptr %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !216, !noalias !1037 ; 2 uses
  %i.z = urem i64 %i.w, %i.y                      ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !217, !noalias !1037
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !218, !noalias !1037 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !215, !noalias !1037 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !189, !noalias !1037
  %i.ag = icmp eq ptr %2, %i.af
  br i1 %i.ag, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ah = icmp eq ptr %2, %i.ak
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !3

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.ai, %bb.i ], [ %i.ad, %bb.h ]
  %i.ai = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !215, !noalias !1037 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !189, !noalias !1037 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = urem i64 %i.al, %i.y
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.am, %i.z
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !3

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !alias.scope !1037
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 8, !alias.scope !1037
  store i32 34, ptr %4, align 8, !tbaa !261, !alias.scope !1037
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.an, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !455, !alias.scope !1037
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ad, %bb.h ], [ %i.ai, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !alias.scope !1037
  %i.au = and i8 %i.at, -2
  store i8 %i.au, ptr %i.as, align 8, !alias.scope !1037
  store ptr %i.ar, ptr %4, align 8, !tbaa !201, !alias.scope !1037
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.762") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.av = phi ptr [ %i.o, %.loopexit.i.i12 ], [ %i.o, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.aw = load ptr, ptr %4, align 8, !tbaa !201
  call void @_ZN4llvm4bolt25StackAvailableExpressions12doConfluenceERNS_9BitVectorERKS2_(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %i.av, ptr noundef nonnull align 8 dereferenceable(68) %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

declare void @_ZN4llvm4bolt25StackAvailableExpressions12doConfluenceERNS_9BitVectorERKS2_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.762") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !393, !nonnull !42, !align !183
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !277, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !261
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.48, i64 25) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #23, !noalias !1041
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1041
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1041
  store i32 34, ptr %0, align 8, !tbaa !261, !alias.scope !1041
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !455, !alias.scope !1041
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !186, !noalias !1041 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35, !noalias !1041 ; 4 uses
  %3 = zext i32 %i.p to i64                       ; 2 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !396, !noalias !1041
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1041
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %3, %bb.d ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !396, !noalias !1041
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1041
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %indvars.iv.i.lcssa.i.i = phi i64 [ %3, %bb.d ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.i.lcssa.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !266, !noalias !1041 ; 2 uses
  %i.an = lshr i64 %i.am, 56
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ao
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.p, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !266, !noalias !1041 ; 2 uses
  %i.as = lshr i64 %i.ar, 56
  %i.at = trunc nuw nsw i64 %i.as to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.at
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.am, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ar, %.critedge.i.i.i ]
  %i.au = shl i64 %.lcssa.i.i, 8
  %i.av = ashr exact i64 %i.au, 8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !alias.scope !1041
  %i.ba = and i8 %i.az, -2
  store i8 %i.ba, ptr %i.ay, align 8, !alias.scope !1041
  store ptr %i.ax, ptr %0, align 8, !tbaa !201, !alias.scope !1041
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_25StackAvailableExpressionsENS0_9BitVectorELb0ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #3 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_25StackAvailableExpressionsENS0_9BitVectorELb0ENS1_12StatePrinterIS4_EEE3runEvEUlNS1_12ProgramPointEE0_JS8_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_25StackAvailableExpressionsENS0_9BitVectorELb0ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !324
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !453
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !434
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_25StackAvailableExpressionsENS1_9BitVectorELb0ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN4llvm4bolt16DataflowAnalysisINS1_25StackAvailableExpressionsENS0_9BitVectorELb0ENS1_12StatePrinterIS4_EEE3runEvEUlNS1_12ProgramPointEE0_JS8_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr.762", align 8 ; 9 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8, !tbaa !427
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !266 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1047   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1048, !nonnull !42, !align !183
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.d = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !214, !noalias !1051
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !215, !noalias !1051 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189, !noalias !1051
  %i.j = icmp eq ptr %.sroa.21.0.copyload, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %bb.d, !llvm.loop !2

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = ptrtoint ptr %.sroa.21.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !216, !noalias !1051 ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !217, !noalias !1051
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !218, !noalias !1051 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !215, !noalias !1051 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189, !noalias !1051
  %i.v = icmp eq ptr %.sroa.21.0.copyload, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %.sroa.21.0.copyload, %i.z
  br i1 %i.w, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !215, !noalias !1051 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !189, !noalias !1051 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !3

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !1051
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !1051
  store i32 34, ptr %2, align 8, !tbaa !261, !alias.scope !1051
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !455, !alias.scope !1051
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !1051
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !1051
  store ptr %i.ag, ptr %2, align 8, !tbaa !201, !alias.scope !1051
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.762") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload)
  br label %_ZZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit

_ZZN4llvm4bolt16DataflowAnalysisINS0_25StackAvailableExpressionsENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE0_clES7_.exit: ; preds = %.loopexit.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !201
  call void @_ZN4llvm4bolt25StackAvailableExpressions12doConfluenceERNS_9BitVectorERKS2_(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %i.ak) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare void @_ZN4llvm4bolt25StackAvailableExpressions11computeNextERKNS_6MCInstERKNS_9BitVectorE(ptr dead_on_unwind writable sret(%"class.llvm::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #15

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

declare void @_ZN4llvm4bolt16BinaryBasicBlock16adjustNumPseudosERKNS_6MCInstEi(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt22InstrsDataflowAnalysisINS0_25StackAvailableExpressionsELb0ENS0_12StatePrinterINS_9BitVectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm4bolt22InstrsDataflowAnalysisINS0_25StackAvailableExpressionsELb0ENS0_12StatePrinterINS_9BitVectorEEEEE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !256  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEv:bb.a
  %7 = alloca %"class.llvm::DenseSet.732", align 8 ; 14 uses
  %8 = alloca %"class.llvm::PostOrderTraversal", align 8 ; 15 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 15 uses
  %10 = alloca %"class.std::function.742", align 8 ; 6 uses
  %11 = alloca %"class.std::function.742", align 8 ; 6 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %class.anon.879, align 8           ; 7 uses
  tail call void @_ZN4llvm4bolt17StackReachingUses9preflightEv(ptr noundef nonnull align 8 dereferenceable(216) %0) #23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !456, !nonnull !42, !align !183 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1248
  %i.o = load i32, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.r = icmp eq i32 %i.o, 0
  %.sroa.0.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  br i1 %i.r, label %bb.cx, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.b

._crit_edge243:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 8, ptr %i.ak, align 8, !tbaa !385
  %i.am = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 2 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !386
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !385
  %i.ao = add i64 %i.an, -1
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap ; 3 uses
  %i.ar = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24 ; 6 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !387
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !388
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !389
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 512 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !390
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !388
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !389
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 7 uses
  store ptr %i.au, ptr %i.az, align 8, !tbaa !390
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !391
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !456, !nonnull !42, !align !183
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !35, !alias.scope !1128
  store i32 0, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !186, !alias.scope !1128
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.bc, align 4, !tbaa !262, !alias.scope !1128
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 232 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !443, !alias.scope !1128
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 216
  store i64 0, ptr %i.bf, align 8, !tbaa !444, !alias.scope !1128
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i64 40, ptr %i.bg, align 8, !tbaa !445, !alias.scope !1128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1288
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !189
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE4initES8_(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef %i.bj)
  %i.bk = load i32, ptr %.sroa.0.0.i.sroa.gep, align 8, !tbaa !186 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %._crit_edge247, label %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit

_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_4bolt14BinaryFunctionENS_9po_detail9NumberSetIPNS2_16BinaryBasicBlockEEEEENS_11GraphTraitsIS4_EEE5beginEv.exit: ; preds = %._crit_edge243
  %i.bl = load ptr, ptr %8, align 8, !tbaa !35
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !447 ; 2 uses
  %.not210244 = icmp eq ptr %i.bp, null
  br i1 %.not210244, label %._crit_edge247, label %.lr.ph246

bb.b:                                             ; preds = %.lr.ph242, %._crit_edge
  %.sroa.0194.0241 = phi ptr [ %i.m, %.lr.ph242 ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0194.0241, align 8, !tbaa !189 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !189
  %i.br = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_NS1_9BitVectorEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !1135, !noalias !1129
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = add i32 %i.bt, 63                       ; 2 uses
  %i.bv = lshr i32 %i.bu, 6                       ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !35, !alias.scope !1129
  store i32 6, ptr %i.w, align 4, !tbaa !262, !alias.scope !1129
  %i.bx = icmp ugt i32 %i.bu, 447
  br i1 %i.bx, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.b
  store i32 0, ptr %i.v, align 8, !tbaa !186, !alias.scope !1129
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.u, i64 noundef %i.bw, i64 noundef 8) #23
  %i.by = load ptr, ptr %4, align 8, !tbaa !35, !alias.scope !1129
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.by, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !206
  br label %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit

_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i
  store i32 %i.bv, ptr %i.v, align 8, !tbaa !186, !alias.scope !1129
  store i32 %i.bt, ptr %i.x, align 8, !tbaa !205, !alias.scope !1129
  %i.bz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.br, ptr noundef nonnull align 8 dereferenceable(68) %4) ; 0 uses
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !205
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !205
  %i.cc = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.u
  br i1 %i.cd, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit
  call void @free(ptr noundef %i.cc) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm4bolt17StackReachingUses20getStartingStateAtBBERKNS0_16BinaryBasicBlockE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !191 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !191 ; 2 uses
  %.not217238 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not217238, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVectorD2Ev.exit70, %_ZN4llvm9BitVectorD2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0194.0241, i64 8 ; 2 uses
  %.not209 = icmp eq ptr %i.ch, %i.q
  br i1 %.not209, label %._crit_edge243, label %bb.b

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit70
  %.sroa.0190.0239 = phi ptr [ %i.mt, %_ZN4llvm9BitVectorD2Ev.exit70 ], [ %i.ce, %_ZN4llvm9BitVectorD2Ev.exit ] ; 9 uses
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !457, !nonnull !42, !align !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1568
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !185 ; 6 uses
  %i.cl = load i8, ptr %i.aa, align 4, !tbaa !277, !range !41, !noundef !42
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.z, align 8, !tbaa !261
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cn = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr nonnull @.str.43, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cn to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.z, align 8
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit

_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit: ; preds = %._crit_edge.i.i, %bb.d
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.cn, %bb.d ] ; 5 uses
  %i.co = load i16, ptr %i.ab, align 8, !tbaa !287 ; 4 uses
  %i.cp = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0190.0239, i32 noundef %.0.i.i) #23, !noalias !1136
  br i1 %i.cp, label %bb.e, label %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i

bb.e:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !186, !noalias !1136 ; 5 uses
  %.01317.i.i.i.i.i.i = add i32 %i.cr, -1         ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0190.0239, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !35, !noalias !1136 ; 4 uses
  %13 = zext i32 %i.cr to i64                     ; 2 uses
  %i.cu = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !396, !noalias !1136
  %i.cx = icmp eq i8 %i.cw, 6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !1136
  %i.da = icmp eq ptr %i.cz, null
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.e, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.cu, %bb.e ] ; 2 uses
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %13, %bb.e ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dc = icmp sgt i64 %indvars.iv.i.i.i, 0
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.a, -1 ; 2 uses
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !396, !noalias !1136
  %i.df = icmp eq i8 %i.de, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !1136
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = select i1 %i.df, i1 %i.di, i1 false
  br i1 %i.dj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.e
  %indvars.iv.i.lcssa.i.i.i = phi i64 [ %13, %bb.e ], [ %indvars.iv.next.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.e ], [ %i.dk, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.cr, %.01318.i.i.i.lcssa.i.i.i
  %i.dl = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1
  %.not1324.i.i.i.i = icmp ult i32 %i.dl, %i.cr
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.i.lcssa.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !266, !noalias !1136 ; 2 uses
  %i.dp = lshr i64 %i.do, 56
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.dq
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.a, %.critedge.i.i.i.i ], [ %indvars.iv.i.lcssa.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.a to i32
  %exitcond.not.i.i.i.i = icmp ne i32 %i.cr, %lftr.wideiv.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i.i.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !266, !noalias !1136 ; 2 uses
  %i.du = lshr i64 %i.dt, 56
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %.not.i.i.i.i112 = icmp eq i32 %.0.i.i, %i.dv
  br i1 %.not.i.i.i.i112, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.do, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.dt, %.critedge.i.i.i.i ]
  %i.dw = shl i64 %.lcssa.i.i.i, 8
  %i.dx = ashr exact i64 %i.dw, 8
  %i.dy = add nuw nsw i64 %i.dx, 8
  %i.dz = inttoptr i64 %i.dy to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_9BitVectorEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getOrCreateStateAtERNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  store ptr %i.ac, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.ad, align 8, !tbaa !186
  store i32 6, ptr %i.ae, align 4, !tbaa !262
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !398
  %.not.not.i.i.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.ec, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !215, !nonnull !42, !noundef !42 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !399
  %i.ef = icmp eq i16 %i.co, %i.ee
  br i1 %i.ef, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.g, !llvm.loop !9

bb.h:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_9BitVectorEEaSEOS4_.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.eh = zext i16 %i.co to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !400 ; 2 uses
  %i.ek = urem i64 %i.eh, %i.ej                   ; 2 uses
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !401
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ek
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !218, !nonnull !42, !noundef !42
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !215 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !399
  %i.er = icmp eq i16 %i.co, %i.eq
  br i1 %i.er, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i ], [ %i.eo, %bb.h ]
  %i.es = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !215, !nonnull !42, !noundef !42 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !399 ; 2 uses
  %i.ev = zext i16 %i.eu to i64
  %i.ew = urem i64 %i.ev, %i.ej
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ew, %i.ek
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.ex = icmp eq i16 %i.co, %i.eu
  br i1 %i.ex, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.eo, %bb.h ], [ %i.es, %.lr.ph.i.i.i.i.i.i ] ; 14 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !402
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = add i64 %i.fa, 15
  %i.fc = and i64 %i.fb, -16                      ; 2 uses
  %i.fd = add i64 %i.fc, 80                       ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !403
  %i.fg = icmp ult i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.i, label %bb.j, !prof !351

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fh = inttoptr i64 %i.fd to ptr
  store ptr %i.fh, ptr %i.ey, align 8, !tbaa !402
  %i.fi = inttoptr i64 %i.fc to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.fj = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ey, i64 noundef 80, i64 noundef 80, i8 4)
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !186
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.j, %bb.i
  %i.fk = phi i32 [ 0, %bb.i ], [ %.pre, %bb.j ]  ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.fi, %bb.i ], [ %i.fj, %bb.j ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_9BitVectorEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.fn, align 8, !tbaa !186
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 6, ptr %i.fo, align 4, !tbaa !262
  %.not.i.i.i.i.i = icmp eq i32 %i.fk, 0
  %i.fp = icmp eq ptr %i.fl, %1
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.fp
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.fq = icmp ugt i32 %i.fk, 6
  br i1 %i.fq, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.k
  %i.fr = zext i32 %i.fk to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.fl, ptr noundef nonnull %i.fm, i64 noundef %i.fr, i64 noundef 8) #23
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i124 = load ptr, ptr %i.fl, align 8, !tbaa !35
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.k
  %i.fs = phi ptr [ %.pre.i.i.i124, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fm, %bb.k ]
  %i.ft = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fk, %bb.k ]
  %i.fu = zext i32 %i.ft to i64
  %i.fv = load ptr, ptr %1, align 8, !tbaa !35
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 8 %i.fv, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.fk, ptr %i.fn, align 8, !tbaa !186
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.fx = load i32, ptr %i.af, align 8, !tbaa !205
  store i32 %i.fx, ptr %i.fw, align 8, !tbaa !205
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !405
  %.not.not.i = icmp eq i64 %i.ga, 0
  br i1 %.not.not.i, label %bb.l, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gb = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !406 ; 2 uses
  %i.ge = urem i64 %i.gb, %i.gd                   ; 5 uses
  %i.gf = load ptr, ptr %i.fy, align 8, !tbaa !407
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i130, label %.critedge.i132, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_9BitVectorEEERKT_RNS_6MCInstEjS6_t.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %i.gi, %bb.l ], [ %.sroa.025.0.i, %bb.n ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !215 ; 3 uses
  %.not.i135 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !409
  %i.gl = icmp eq ptr %.0.i.i.i.i, %i.gk
  br i1 %i.gl, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.m, !llvm.loop !11

bb.o:                                             ; preds = %bb.m
  %i.gm = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !406
  %i.gp = urem i64 %i.gm, %i.go
  br label %.critedge.i132

bb.p:                                             ; preds = %.thread30.i
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !215 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !409
  %i.gt = icmp eq ptr %.0.i.i.i.i, %i.gs
  br i1 %i.gt, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i131

bb.q:                                             ; preds = %bb.r
  %i.gu = icmp eq ptr %.0.i.i.i.i, %i.gx
  br i1 %i.gu, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i131, !llvm.loop !12

.lr.ph.i.i.i131:                                  ; preds = %bb.p, %bb.q
  %.020.i.i.i = phi ptr [ %i.gv, %bb.q ], [ %i.gq, %bb.p ]
  %i.gv = load ptr, ptr %.020.i.i.i, align 8, !tbaa !215 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not18.i.i.i, label %.critedge.i132, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i131
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !409 ; 2 uses
  %i.gy = ptrtoint ptr %i.gx to i64
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_17StackReachingUsesENS0_9BitVectorELb1ENS1_12StatePrinterIS6_EEE3runEvEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation:bb.a
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !324
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !453
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !460
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_17StackReachingUsesENS1_9BitVectorELb1ENS2_12StatePrinterIS5_EEE3runEvEUlNS2_12ProgramPointEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE3runEvENKUlNS0_12ProgramPointEE_clES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, ptr %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::ErrorOr.762", align 8 ; 4 uses
  %4 = alloca %"class.llvm::ErrorOr.762", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1161   ; 7 uses
  %i.b = trunc nuw i8 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !457, !nonnull !42, !align !183
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !185  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1162, !nonnull !42, !align !183 ; 2 uses
  br i1 %i.j, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.k

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.762") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.m = load ptr, ptr %3, align 8, !tbaa !201
  %i.n = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1162, !nonnull !42, !align !183 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !214, !noalias !1164
  %.not.not.i.i.i.i5 = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i16 = phi ptr [ %i.s, %bb.d ], [ %.sroa.06.0.i.i.i.i17, %bb.f ]
  %.sroa.06.0.i.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i.i16, align 8, !tbaa !215, !noalias !1164 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %.sroa.06.0.i.i.i.i17, null
  br i1 %.not.i.i.i.i18, label %.loopexit.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i17, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189, !noalias !1164
  %i.v = icmp eq ptr %2, %i.u
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %bb.e, !llvm.loop !2

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = ptrtoint ptr %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !216, !noalias !1164 ; 2 uses
  %i.aa = urem i64 %i.x, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !217, !noalias !1164
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !218, !noalias !1164 ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i6, label %.loopexit.i.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !215, !noalias !1164 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !189, !noalias !1164
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq ptr %2, %i.al
  br i1 %i.ai, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, label %.lr.ph.i.i.i.i.i.i7, !llvm.loop !3

.lr.ph.i.i.i.i.i.i7:                              ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i8 = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i.i8, align 8, !tbaa !215, !noalias !1164 ; 4 uses
  %.not18.i.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i.i9, label %.loopexit.i.i12, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !189, !noalias !1164 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i.i10 = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i.i10, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i11, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i11:             ; preds = %bb.j
  br label %.loopexit.i.i12, !llvm.loop !3

.loopexit.i.i12:                                  ; preds = %.lr.ph.i.i.i.i.i.i7, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i11, %bb.g
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !1164
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8, !alias.scope !1164
  store i32 34, ptr %4, align 8, !tbaa !261, !alias.scope !1164
  %.sroa.21.0..sroa_idx.i.i.i13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ao, ptr %.sroa.21.0..sroa_idx.i.i.i13, align 8, !tbaa !455, !alias.scope !1164
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i.i17, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !alias.scope !1164
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8, !alias.scope !1164
  store ptr %i.as, ptr %4, align 8, !tbaa !201, !alias.scope !1164
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.762") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19: ; preds = %.loopexit.i.i12, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14, %bb.k
  %i.aw = phi ptr [ %i.p, %.loopexit.i.i12 ], [ %i.p, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i14 ], [ %i.l, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !201
  %i.ay = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit19, %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtENS0_12ProgramPointE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.762") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !457, !nonnull !42, !align !183
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !277, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !261
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.43, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #23, !noalias !1168
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1168
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1168
  store i32 34, ptr %0, align 8, !tbaa !261, !alias.scope !1168
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !455, !alias.scope !1168
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !186, !noalias !1168 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35, !noalias !1168 ; 4 uses
  %3 = zext i32 %i.p to i64                       ; 2 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !396, !noalias !1168
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1168
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %3, %bb.d ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !396, !noalias !1168
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1168
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %indvars.iv.i.lcssa.i.i = phi i64 [ %3, %bb.d ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.i.lcssa.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !266, !noalias !1168 ; 2 uses
  %i.an = lshr i64 %i.am, 56
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ao
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.p, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !266, !noalias !1168 ; 2 uses
  %i.as = lshr i64 %i.ar, 56
  %i.at = trunc nuw nsw i64 %i.as to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.at
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.am, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ar, %.critedge.i.i.i ]
  %i.au = shl i64 %.lcssa.i.i, 8
  %i.av = ashr exact i64 %i.au, 8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !alias.scope !1168
  %i.ba = and i8 %i.az, -2
  store i8 %i.ba, ptr %i.ay, align 8, !alias.scope !1168
  store ptr %i.ax, ptr %0, align 8, !tbaa !201, !alias.scope !1168
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205  ; 6 uses
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm9BitVector6resizeEjb.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 63                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i, label %bb.c

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !186 ; 2 uses
  %.pre6.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = load ptr, ptr %0, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !186  ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !206
  %i.q = and i64 %i.p, %i.i
  store i64 %i.q, ptr %i.o, align 8, !tbaa !206
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:     ; preds = %bb.c, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre6.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %.pre.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !205
  %i.s = add i32 %i.d, 63
  %i.t = lshr i32 %i.s, 6                         ; 5 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq i32 %i.t, %i.r
  br i1 %i.w, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.x = icmp ult i32 %i.t, %i.r
  br i1 %i.x, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sub nuw nsw i64 %i.u, %.pre-phi.i        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !262
  %.not.i.i.i.i.i = icmp ugt i32 %i.t, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !268

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %i.ab, i64 noundef %i.u, i64 noundef 8) #23
  %.pre.i.i.i = load i32, ptr %i.v, align 8, !tbaa !186 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre4.pre.i.pre = load i32, ptr %i.a, align 8, !tbaa !205
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pre4.pre.i = phi i32 [ %i.d, %bb.e ], [ %.pre4.pre.i.pre, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %.pre-phi.i, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.ac = phi i32 [ %i.r, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !206
  %i.af = trunc nuw nsw i64 %i.y to i32
  %i.ag = add i32 %i.ac, %i.af
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %bb.d
  %.pre4.i = phi i32 [ %.pre4.pre.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.d, %bb.d ]
  %.sink.i.i = phi i32 [ %i.ag, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.v, align 8, !tbaa !186
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %.sink.split.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.ah = phi i32 [ %i.r, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.ai = phi i32 [ %i.d, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.i, %.sink.split.i.i ]
  %i.aj = and i32 %i.ai, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nsw i64 -1, %i.ak
  %i.am = xor i64 %i.al, -1
  %i.an = load ptr, ptr %0, align 8, !tbaa !35
  %i.ao = zext i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !206
  %i.as = and i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !206
  br label %_ZN4llvm9BitVector6resizeEjb.exit

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %bb.g, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !186 ; 3 uses
  %.not9 = icmp eq i32 %i.au, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9BitVector6resizeEjb.exit
  %i.av = load ptr, ptr %1, align 8, !tbaa !35    ; 8 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !35    ; 8 uses
  %i.ax = zext i32 %i.au to i64                   ; 6 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ay = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ay
  %scevgep19 = getelementptr i8, ptr %i.av, i64 %i.ay
  %bound0 = icmp ult ptr %i.aw, %scevgep19
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !206, !alias.scope !1175
  %wide.load20 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !206, !alias.scope !1175
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load21 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !206, !alias.scope !1176, !noalias !1175
  %wide.load22 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !206, !alias.scope !1176, !noalias !1175
  %i.bd = or <2 x i64> %wide.load21, %wide.load
  %i.be = or <2 x i64> %wide.load22, %wide.load20
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !206, !alias.scope !1176, !noalias !1175
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !206, !alias.scope !1176, !noalias !1175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.prol
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !206
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.prol ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !206
  %i.bk = or i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !206
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1173

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
end_hunk_4
