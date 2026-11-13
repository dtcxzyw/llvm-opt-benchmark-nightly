Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WinogradConv2D?download=true
inline.NumInlined: 2330
inline.NumDeleted: 1136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4mlir6linalg12_GLOBAL__N_120winogradConv2DHelperERNS_12RewriterBaseENS0_16Conv2DNhwcFhwcOpENS0_17WinogradConv2DFmrE:bb.a
  %i.gl = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i245, i64 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i.i.i.i.i243
  %.1.i.i.i.i.i.i.i250 = phi ptr [ %i.gl, %bb.al ], [ %.029.lcssa.i.i.i.i.i.i.i245, %._crit_edge.i.i.i.i.i.i.i243 ] ; 3 uses
  %i.gm = load i64, ptr %.1.i.i.i.i.i.i.i250, align 8, !tbaa !53
  %.not5.i.i251 = icmp eq i64 %i.gm, -9223372036854775808
  br i1 %.not5.i.i251, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i250, i64 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i.i.i.i.i243
  %.2.i.i.i.i.i.i.i246 = phi ptr [ %i.gn, %bb.an ], [ %.029.lcssa.i.i.i.i.i.i.i245, %._crit_edge.i.i.i.i.i.i.i243 ] ; 2 uses
  %i.go = load i64, ptr %.2.i.i.i.i.i.i.i246, align 8, !tbaa !53
  %.not6.i.i247 = icmp eq i64 %i.go, -9223372036854775808
  br i1 %.not6.i.i247, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread335

_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit: ; preds = %bb.ai
  %i.gp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i235, i64 24
  br label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256

_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit383: ; preds = %bb.ah
  %i.gq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i235, i64 16
  br label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256

_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit385: ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i235, i64 8
  br label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256

_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256:  ; preds = %.lr.ph.i.i.i.i.i.i.i233, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit383, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit385, %bb.ak, %bb.am, %bb.ao
  %.028.i.i.i.i.i.i.i249 = phi ptr [ %.1.i.i.i.i.i.i.i250, %bb.am ], [ %.029.lcssa.i.i.i.i.i.i.i245, %bb.ak ], [ %.2.i.i.i.i.i.i.i246, %bb.ao ], [ %i.gr, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit385 ], [ %i.gq, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit383 ], [ %i.gp, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i.i235, %.lr.ph.i.i.i.i.i.i.i233 ]
  %i.gs = icmp eq ptr %i.fw, %.028.i.i.i.i.i.i.i249
  br i1 %i.gs, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread335, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread

_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread: ; preds = %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.thread333, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.gu, align 1, !tbaa !18
  store ptr @.str.2, ptr %8, align 8, !tbaa !19
  store i8 3, ptr %i.gt, align 8, !tbaa !20
  %i.gv = load ptr, ptr %13, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %8, ptr %7, align 8, !tbaa !22
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !30 ; 4 uses
  %.not.i.i.i.i257 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i257, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit260, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread
  %i.gy = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.gx) #16
  br i1 %i.gy, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i258, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit260

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i258: ; preds = %bb.ap
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %.sroa.0.0.copyload.i.i.i.i259 = load ptr, ptr %i.gz, align 8
  %i.ha = ptrtoint ptr %7 to i64
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(12) %i.gx, ptr %.sroa.0.0.copyload.i.i.i.i259, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg16Conv2DNhwcFhwcOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ha) #16, !inline_history !159
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit260

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit260: ; preds = %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread, %bb.ap, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.bh

_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread335: ; preds = %bb.ao, %._crit_edge.i.i.i.i.i.i.i243, %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256
  %i.he = call ptr @_ZN4mlir6linalg16Conv2DNhwcFhwcOp12getDilationsEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  %i.hf = call fastcc noundef zeroext i1 @_ZN4mlir6linalg12_GLOBAL__N_115hasAllOneValuesENS_20DenseIntElementsAttrE(ptr %i.he)
  br i1 %i.hf, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread335
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.hh, align 1, !tbaa !18
  store ptr @.str.3, ptr %6, align 8, !tbaa !19
  store i8 3, ptr %i.hg, align 8, !tbaa !20
  %i.hi = load ptr, ptr %13, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %6, ptr %5, align 8, !tbaa !22
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !30 ; 4 uses
  %.not.i.i.i.i261 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i261, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit264, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.hk) #16
  br i1 %i.hl, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i262, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit264

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i262: ; preds = %bb.ar
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %.sroa.0.0.copyload.i.i.i.i263 = load ptr, ptr %i.hm, align 8
  %i.hn = ptrtoint ptr %5 to i64
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(12) %i.hk, ptr %.sroa.0.0.copyload.i.i.i.i263, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg16Conv2DNhwcFhwcOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.hn) #16, !inline_history !159
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit264

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit264: ; preds = %bb.aq, %bb.ar, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.bh

bb.as:                                            ; preds = %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit256.thread335
  %i.hr = call ptr @_ZN4mlir6linalg16Conv2DNhwcFhwcOp10getStridesEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  %i.hs = call fastcc noundef zeroext i1 @_ZN4mlir6linalg12_GLOBAL__N_115hasAllOneValuesENS_20DenseIntElementsAttrE(ptr %i.hr)
  br i1 %i.hs, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.hu, align 1, !tbaa !18
  store ptr @.str.4, ptr %4, align 8, !tbaa !19
  store i8 3, ptr %i.ht, align 8, !tbaa !20
  %i.hv = load ptr, ptr %13, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %4, ptr %3, align 8, !tbaa !22
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !30 ; 4 uses
  %.not.i.i.i.i265 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i265, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit268, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hy = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.hx) #16
  br i1 %i.hy, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i266, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit268

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i266: ; preds = %bb.au
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %.sroa.0.0.copyload.i.i.i.i267 = load ptr, ptr %i.hz, align 8
  %i.ia = ptrtoint ptr %3 to i64
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(12) %i.hx, ptr %.sroa.0.0.copyload.i.i.i.i267, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg16Conv2DNhwcFhwcOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ia) #16, !inline_history !159
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit268

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit268: ; preds = %bb.at, %bb.au, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bh

bb.av:                                            ; preds = %bb.as
  %i.ie = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #16
  %i.if = extractvalue { ptr, i64 } %i.ie, 0      ; 4 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !53
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !53 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !53 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !53
  %i.in = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #16
  %i.io = extractvalue { ptr, i64 } %i.in, 0      ; 4 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !53 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !53
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.it = load i64, ptr %i.is, align 8, !tbaa !53
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !53 ; 2 uses
  %i.iw = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #16
  %i.ix = extractvalue { ptr, i64 } %i.iw, 0      ; 4 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !53 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !53 ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !53 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !53 ; 2 uses
  %i.jf = call { i64, i64 } @_ZN4mlir6linalg27getFmrFromWinogradConv2DFmrENS0_17WinogradConv2DFmrE(i32 noundef %2) #16 ; 2 uses
  %i.jg = extractvalue { i64, i64 } %i.jf, 1      ; 4 uses
  %i.jh = icmp eq i64 %i.ii, %i.ik
  %i.ji = icmp eq i64 %i.ii, %i.jg
  %i.jj = icmp eq i64 %i.ik, 1                    ; 3 uses
  %i.jk = select i1 %i.jj, i1 true, i1 %i.jh
  %spec.select = select i1 %i.ji, i1 %i.jk, i1 false
  %i.jl = icmp eq i64 %i.ii, 1                    ; 3 uses
  %i.jm = icmp eq i64 %i.ik, %i.jg
  %or.cond160 = select i1 %i.jl, i1 %i.jm, i1 false
  %brmerge = select i1 %or.cond160, i1 true, i1 %spec.select
  br i1 %brmerge, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jn = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.5) ; 0 uses
  br label %bb.bh

.critedge:                                        ; preds = %bb.av
  %i.jo = extractvalue { i64, i64 } %i.jf, 0      ; 2 uses
  %i.jp = load ptr, ptr %13, align 8, !tbaa !35
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.jq, align 8 ; 10 uses
  %i.jr = select i1 %i.jl, i64 1, i64 %i.jo       ; 6 uses
  %i.js = select i1 %i.jj, i64 1, i64 %i.jo       ; 6 uses
  %20 = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #16 ; 2 uses
  %21 = add i64 %i.jg, -1
  %22 = select i1 %i.jl, i64 0, i64 %21           ; 2 uses
  %i.jt = add i64 %22, %i.jr                      ; 2 uses
  %i.ju = add i64 %i.jg, -1
  %23 = select i1 %i.jj, i64 0, i64 %i.ju         ; 2 uses
  %i.jv = add i64 %23, %i.js                      ; 2 uses
  %.not.i269 = icmp eq i64 %i.ja, 0
  br i1 %.not.i269, label %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.jw = xor i64 %i.jr, %i.ja
  %i.jx = icmp sgt i64 %i.jw, -1
  br i1 %i.jx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jy = icmp sgt i64 %i.jr, -1
  %.neg.i = select i1 %i.jy, i64 -1, i64 1
  %i.jz = add i64 %.neg.i, %i.ja
  %i.ka = sdiv i64 %i.jz, %i.jr
  %i.kb = add nsw i64 %i.ka, 1
  br label %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit

bb.az:                                            ; preds = %bb.ax
  %i.kc = sdiv i64 %i.ja, %i.jr
  br label %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit

_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit:    ; preds = %.critedge, %bb.ay, %bb.az
  %.0.i270 = phi i64 [ 0, %.critedge ], [ %i.kb, %bb.ay ], [ %i.kc, %bb.az ] ; 2 uses
  %.not.i271 = icmp eq i64 %i.jc, 0
  br i1 %.not.i271, label %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit274, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit
  %i.kd = xor i64 %i.js, %i.jc
  %i.ke = icmp sgt i64 %i.kd, -1
  br i1 %i.ke, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kf = icmp sgt i64 %i.js, -1
  %.neg.i273 = select i1 %i.kf, i64 -1, i64 1
  %i.kg = add i64 %.neg.i273, %i.jc
  %i.kh = sdiv i64 %i.kg, %i.js
  %i.ki = add nsw i64 %i.kh, 1
  br label %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit274

bb.bc:                                            ; preds = %bb.ba
  %i.kj = sdiv i64 %i.jc, %i.js
  br label %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit274

_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit274: ; preds = %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit, %bb.bb, %bb.bc
  %.0.i272 = phi i64 [ 0, %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit ], [ %i.ki, %bb.bb ], [ %i.kj, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.jt, ptr %i.a, align 8, !tbaa !53
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.jv, ptr %i.kk, align 8, !tbaa !53
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.im, ptr %i.kl, align 8, !tbaa !53
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ig, ptr %i.km, align 8, !tbaa !53
  %i.kn = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr nonnull %i.a, i64 4, ptr %20, ptr null) #16
  store ptr %i.kn, ptr %17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.kp = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #16 ; 2 uses
  %i.kq = extractvalue { ptr, i64 } %i.kp, 0
  %i.kr = extractvalue { ptr, i64 } %i.kp, 1
  %i.ks = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr %.sroa.0.0.copyload.i.i, ptr %i.kq, i64 %i.kr, ptr %20, ptr null) #16
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -16
  %.sroa.059.0.copyload = load ptr, ptr %17, align 8, !tbaa !55
  %i.ku = call ptr @_ZN4mlir6linalg25WinogradFilterTransformOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_17WinogradConv2DFmrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.059.0.copyload, ptr %.sroa.0.0.copyload.i.i.i171, ptr nonnull %i.kt, i32 noundef %2) #16
  %i.kv = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #16 ; 2 uses
  %i.kw = mul nsw i64 %.0.i270, %i.jr             ; 3 uses
  %i.kx = add nsw i64 %22, %i.kw                  ; 2 uses
  %i.ky = mul nsw i64 %.0.i272, %i.js             ; 3 uses
  %i.kz = add nsw i64 %23, %i.ky                  ; 2 uses
  %.not155 = icmp eq i64 %i.kx, %i.ir
  %.not156 = icmp eq i64 %i.kz, %i.it
  %or.cond161 = select i1 %.not155, i1 %.not156, i1 false
  br i1 %or.cond161, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.ip, ptr %i.b, align 8, !tbaa !53
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.kx, ptr %i.la, align 8, !tbaa !53
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.kz, ptr %i.lb, align 8, !tbaa !53
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.iv, ptr %i.lc, align 8, !tbaa !53
  %i.ld = call fastcc ptr @_ZN4mlir6linalg12_GLOBAL__N_118padToAlignedTensorERNS_12RewriterBaseENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull %i.b, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.be

bb.be:                                            ; preds = %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit274, %bb.bd
  %.sroa.0325.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZN4llvm16divideCeilSignedIlllEET1_T_T0_.exit274 ], [ %i.ld, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 %i.jt, ptr %i.c, align 8, !tbaa !53
  %i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.jv, ptr %i.le, align 8, !tbaa !53
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.0.i270, ptr %i.lf, align 8, !tbaa !53
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.0.i272, ptr %i.lg, align 8, !tbaa !53
  %i.lh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.ip, ptr %i.lh, align 8, !tbaa !53
  %i.li = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.iv, ptr %i.li, align 8, !tbaa !53
  %i.lj = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr nonnull %i.c, i64 6, ptr %i.kv, ptr null) #16
  store ptr %i.lj, ptr %17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.lk = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #16 ; 2 uses
  %i.ll = extractvalue { ptr, i64 } %i.lk, 0
  %i.lm = extractvalue { ptr, i64 } %i.lk, 1
  %i.ln = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr %.sroa.0.0.copyload.i.i, ptr %i.ll, i64 %i.lm, ptr %i.kv, ptr null) #16
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 -16
  %.sroa.036.0.copyload = load ptr, ptr %17, align 8, !tbaa !55
  %i.lp = call ptr @_ZN4mlir6linalg24WinogradInputTransformOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_17WinogradConv2DFmrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.036.0.copyload, ptr %.sroa.0325.0, ptr nonnull %i.lo, i32 noundef %2) #16
  %i.lq = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #16 ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.ku, i64 -16
  %i.ls = getelementptr inbounds i8, ptr %i.lp, i64 -16
  %i.lt = call fastcc ptr @_ZN4mlir6linalg12_GLOBAL__N_114matrixMultiplyERNS_12RewriterBaseENS_8LocationENS_5ValueES5_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.lr, ptr nonnull %i.ls, ptr %i.lq) ; 2 uses
  %i.lu = icmp ne i64 %i.kw, %i.ja
  %i.lv = icmp ne i64 %i.ky, %i.jc
  %i.lw = select i1 %i.lu, i1 true, i1 %i.lv
  br i1 %i.lw, label %bb.bf, label %.critedge163

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %i.iy, ptr %i.d, align 8, !tbaa !53
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.kw, ptr %i.lx, align 8, !tbaa !53
  %i.ly = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ky, ptr %i.ly, align 8, !tbaa !53
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.je, ptr %i.lz, align 8, !tbaa !53
  %i.ma = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr nonnull %i.d, i64 4, ptr %i.lq, ptr null) #16
  store ptr %i.ma, ptr %18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.mb = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #16 ; 2 uses
  %i.mc = extractvalue { ptr, i64 } %i.mb, 0
  %i.md = extractvalue { ptr, i64 } %i.mb, 1
  %i.me = call fastcc ptr @_ZN4mlir6linalg12_GLOBAL__N_118padToAlignedTensorERNS_12RewriterBaseENS_8LocationENS_5ValueEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i177, ptr %i.mc, i64 %i.md)
  %i.mf = call { ptr, ptr } @_ZNK4mlir10TensorTypecvNS_10ShapedTypeEEv(ptr noundef nonnull align 8 dereferenceable(8) %18) ; 2 uses
  %i.mg = extractvalue { ptr, ptr } %i.mf, 0      ; 2 uses
  %i.mh = extractvalue { ptr, ptr } %i.mf, 1
  store ptr %i.mg, ptr %16, align 8
  store ptr %i.mh, ptr %i.ef, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.mi = call ptr @_ZN4mlir6linalg25WinogradOutputTransformOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_17WinogradConv2DFmrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr %.sroa.0.0.copyload.i.i, ptr %i.mg, ptr nonnull %i.lt, ptr %i.me, i32 noundef %2) #16
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.iy, ptr %i.e, align 8, !tbaa !53
  %i.mk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ja, ptr %i.mk, align 8, !tbaa !53
  %i.ml = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.jc, ptr %i.ml, align 8, !tbaa !53
  %i.mm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.je, ptr %i.mm, align 8, !tbaa !53
  %i.mn = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr nonnull %i.e, i64 4, ptr %i.lq, ptr null) #16
  %i.mo = call fastcc ptr @_ZN4mlir6linalg12_GLOBAL__N_124extractFromAlignedTensorERNS_12RewriterBaseENS_8LocationENS_5ValueENS_16RankedTensorTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.mj, ptr %i.mn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.bg

.critedge163:                                     ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %.sroa.09.0.copyload.c = load ptr, ptr %16, align 8, !tbaa !55
  %i.mp = call ptr @_ZN4mlir6linalg25WinogradOutputTransformOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_17WinogradConv2DFmrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.09.0.copyload.c, ptr nonnull %i.lt, ptr %.sroa.0.0.copyload.i.i.i177, i32 noundef %2) #16
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 -16
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge163, %bb.bf
  %.sink = phi ptr [ %i.mo, %bb.bf ], [ %i.mq, %.critedge163 ]
  store ptr %.sink, ptr %19, align 8, !tbaa !37
  %i.mr = load ptr, ptr %13, align 8, !tbaa !35
  %i.ms = ptrtoint ptr %19 to i64
  %i.mt = load ptr, ptr %0, align 8, !tbaa !32
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.mr, i64 %i.ms, i64 1) #16
  %i.mv = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.aw, %bb.bg, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit268, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit264, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit260, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit231
  %.sroa.0326.1 = phi ptr [ undef, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit231 ], [ undef, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit268 ], [ undef, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit264 ], [ undef, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit260 ], [ %i.mv, %bb.bg ], [ undef, %bb.aw ]
  %.sroa.2327.1 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit231 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit268 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit264 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit260 ], [ 1, %bb.bg ], [ 0, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.0326.2 = phi ptr [ %.sroa.0326.1, %bb.bh ], [ undef, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit ]
  %.sroa.2327.2 = phi i8 [ %.sroa.2327.1, %bb.bh ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg16Conv2DNhwcFhwcOpEEEN4llvm13LogicalResultEOT_PKc.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0326.2, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2327.2, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir6linalg34decomposeWinogradFilterTransformOpERNS_12RewriterBaseENS0_25WinogradFilterTransformOpE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { ptr, i8 } @_ZN4mlir6linalg12_GLOBAL__N_138decomposeWinogradFilterTransformHelperERNS_12RewriterBaseENS0_25WinogradFilterTransformOpE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1)
  ret { ptr, i8 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZN4mlir6linalg12_GLOBAL__N_138decomposeWinogradFilterTransformHelperERNS_12RewriterBaseENS0_25WinogradFilterTransformOpE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca [3 x %"struct.llvm::detail::DenseMapPair"], align 8 ; 21 uses
  %4 = alloca [3 x %"struct.llvm::detail::DenseMapPair"], align 8 ; 21 uses
  %5 = alloca %"class.mlir::ShapedType", align 8  ; 7 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %8 = alloca %class.anon.493, align 8            ; 14 uses
  %9 = alloca %"struct.mlir::scf::LoopNest", align 8 ; 7 uses
  %10 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %11 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %12 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %13 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %15 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %16 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %17 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %18 = alloca %"class.llvm::function_ref.504", align 8 ; 6 uses
  %19 = alloca %"class.mlir::linalg::WinogradFilterTransformOp", align 8 ; 4 uses
  %20 = alloca %"class.mlir::ShapedType", align 8 ; 5 uses
  %21 = alloca %"class.mlir::Value", align 8      ; 5 uses
  store ptr %1, ptr %19, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %.not.i.i.i.i.i11 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i11, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #16
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 16) #16
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !43 ; 2 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.y ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.aa = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = xor i64 %i.y, -1
  %i.ad = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.ac
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.aa, ptr %i.ab, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
end_hunk_0
