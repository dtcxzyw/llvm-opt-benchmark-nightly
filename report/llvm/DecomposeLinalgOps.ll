Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DecomposeLinalgOps?download=true
inline.NumInlined: 1895
inline.NumDeleted: 1263
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.iv = add nsw i64 %.sroa.15.1.i.i.i.i.i.i, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i.i.i.i.i.i91
  %.sroa.15.2.i.i.i.i.i.i = phi i64 [ %i.iv, %bb.ai ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i91 ] ; 2 uses
  %i.iw = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i90, i64 noundef %.sroa.15.2.i.i.i.i.i.i) #18
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i41.i.i.i.i.i.i = load i64, ptr %i.ix, align 8
  %i.iy = and i64 %.0.copyload.i.i.i.i.i.i.i.i41.i.i.i.i.i.i, -8
  %i.iz = inttoptr i64 %i.iy to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  store ptr %i.iz, ptr %53, align 8
  %i.ja = call noundef zeroext i1 @_ZNK4mlir4Type19isIntOrIndexOrFloatEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  br i1 %i.ja, label %"_ZN4llvm6any_ofIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_2EEbOT_T0_.exit.thread", label %"_ZN4llvm6any_ofIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6any_ofIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_2EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i.i91, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #18
  br label %bb.am

"_ZN4llvm6any_ofIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_2EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i92, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ah, %bb.aj
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i, %bb.ah ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i, %bb.af ], [ %.sroa.15.2.i.i.i.i.i.i, %bb.aj ], [ %i.hu, %bb.ac ], [ %i.ho, %bb.ab ], [ %.sroa.15.075.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i92 ], [ %i.ia, %bb.ad ]
  %.not275 = icmp eq i64 %.sroa.2.0.copyload.i.i.i6.i, %.sroa.9.0.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #18
  br i1 %.not275, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %"_ZN4llvm6any_ofIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_2EEbOT_T0_.exit"
  %i.jb = load ptr, ptr %i.gj, align 8, !tbaa !229
  %i.jc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.jb) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  %i.jd = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.je, align 1, !tbaa !211
  store ptr @.str.10, ptr %52, align 8, !tbaa !212
  store i8 3, ptr %i.jd, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  store ptr %52, ptr %51, align 8, !tbaa !214
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !220 ; 4 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i93, label %_ZN4mlir12RewriterBase18notifyMatchFailureIPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jh = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.jg) #18
  br i1 %i.jh, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i94, label %_ZN4mlir12RewriterBase18notifyMatchFailureIPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i94: ; preds = %bb.al
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %.sroa.0.0.copyload.i.i.i.i95 = load ptr, ptr %i.ji, align 8
  %i.jj = ptrtoint ptr %51 to i64
  %i.jk = load ptr, ptr %i.jg, align 8, !tbaa !16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 88
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(12) %i.jg, ptr %.sroa.0.0.copyload.i.i.i.i95, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIPNS1_9OperationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.jj) #18, !inline_history !166
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.ak, %bb.al, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  br label %bb.es

bb.am:                                            ; preds = %"_ZN4llvm6any_ofIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_2EEbOT_T0_.exit.thread", %"_ZN4llvm6any_ofIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNK12_GLOBAL__N_117DecomposeLinalgOp15matchAndRewriteENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_2EEbOT_T0_.exit"
  %.sroa.048.0.copyload = load ptr, ptr %92, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  store ptr %.sroa.048.0.copyload, ptr %37, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.048.0.copyload, i64 44
  %i.jo = load i32, ptr %i.jn, align 4            ; 3 uses
  %i.jp = and i32 %i.jo, 8388607
  %i.jq = icmp ne i32 %i.jp, 0
  call void @llvm.assume(i1 %i.jq)
  %i.jr = lshr i32 %i.jo, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.jr, 1
  %i.js = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.048.0.copyload, i64 %i.js
  %i.ju = lshr i32 %i.jo, 21
  %i.jv = and i32 %i.ju, 2040
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.048.0.copyload, i64 40
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !228
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.jx, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !229
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !229
  %i.kg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.kf) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  call void @_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE20getIndexingMapsArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.259") align 8 %38, ptr noundef nonnull align 1 dereferenceable(1) %37)
  %i.kh = load ptr, ptr %37, align 8, !tbaa !27   ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ki, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  store ptr %i.kh, ptr %33, align 8, !noalias !232
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 15 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.km = load <2 x ptr>, ptr %i.kk, align 8, !noalias !232
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !233, !noalias !232
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !52, !noalias !232
  %i.kq = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.kh) #18, !noalias !232
  store ptr %i.kp, ptr %i.kk, align 8, !tbaa !233, !noalias !232
  store ptr %i.kq, ptr %i.kl, align 8, !noalias !232
  %.sroa.0.0.copyload.i.i.i.i96 = load ptr, ptr %i.ki, align 8, !noalias !232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18, !noalias !232
  %i.kr = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.kh), !noalias !232
  store ptr %i.kh, ptr %35, align 8, !noalias !232
  %i.ks = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %i.kr, ptr %i.ks, align 8, !noalias !232
  call void @_ZN4mlir6linalg8LinalgOp27createFlatListOfOperandDimsERNS_9OpBuilderENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.264") align 8 %34, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.kj, ptr %.sroa.0.0.copyload.i.i.i.i96) #18, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18, !noalias !232
  call void @_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE20getIndexingMapsArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.259") align 8 %32, ptr noundef nonnull align 1 dereferenceable(1) %33), !noalias !232
  %i.kt = load ptr, ptr %32, align 8, !tbaa !24, !noalias !232
  %i.ku = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !19, !noalias !232
  %i.kw = zext i32 %i.kv to i64
  %i.kx = load ptr, ptr %33, align 8, !tbaa !27, !noalias !232
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ky) #18, !noalias !232
  %i.la = call ptr @_ZN4mlir16concatAffineMapsEN4llvm8ArrayRefINS_9AffineMapEEEPNS_11MLIRContextE(ptr %i.kt, i64 %i.kw, ptr noundef %i.kz) #18, !noalias !232
  %i.lb = load ptr, ptr %32, align 8, !tbaa !24, !noalias !232 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE19getShapesToLoopsMapEv.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef %i.lb) #18, !noalias !232
  br label %_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE19getShapesToLoopsMapEv.exit.i.i

_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE19getShapesToLoopsMapEv.exit.i.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18, !noalias !232
  %i.le = call ptr @_ZN4mlir18inversePermutationENS_9AffineMapE(ptr %i.la) #18, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18, !noalias !232
  %i.lf = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %i.kj, i64 32, i1 false), !noalias !232
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4mlir10IRRewriterE, i64 16), ptr %36, align 8, !tbaa !16, !noalias !232
  %i.lg = load ptr, ptr %34, align 8, !tbaa !24, !noalias !232
  %i.lh = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !19, !noalias !232
  %i.lj = zext i32 %i.li to i64
  call void @_ZN4mlir6affine40makeComposedFoldedMultiResultAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.264") align 8 %39, ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr %.sroa.0.0.copyload.i.i.i.i96, ptr %i.le, ptr %i.lg, i64 %i.lj, i1 noundef zeroext false) #18
  call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !232
  %i.lk = load ptr, ptr %34, align 8, !tbaa !24, !noalias !232 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE19getShapesToLoopsMapEv.exit.i.i
  call void @free(ptr noundef %i.lk) #18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE19getShapesToLoopsMapEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18, !noalias !232
  %.not.i.i.i.i97 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i97, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store <2 x ptr> %i.km, ptr %i.kk, align 8, !noalias !232
  br label %_ZL21getGenericOpLoopRangeRN4mlir9OpBuilderENS_6linalg9GenericOpE.exit.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i8 0, i64 16, i1 false), !noalias !232
  br label %_ZL21getGenericOpLoopRangeRN4mlir9OpBuilderENS_6linalg9GenericOpE.exit.i

_ZL21getGenericOpLoopRangeRN4mlir9OpBuilderENS_6linalg9GenericOpE.exit.i: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  %i.ln = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  store ptr %i.ln, ptr %40, align 8, !tbaa !24
  %i.lo = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 8 uses
  store i32 0, ptr %i.lo, align 8, !tbaa !19
  %i.lp = getelementptr inbounds nuw i8, ptr %40, i64 12 ; 3 uses
  store i32 6, ptr %i.lp, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.lq = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  store ptr %i.lq, ptr %41, align 8, !tbaa !24
  %i.lr = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 8 uses
  store i32 0, ptr %i.lr, align 8, !tbaa !19
  %i.ls = getelementptr inbounds nuw i8, ptr %41, i64 12 ; 3 uses
  store i32 6, ptr %i.ls, align 4, !tbaa !20
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kg, i64 36
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !231 ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.kg, i64 -16
  %i.lw = zext i32 %i.lu to i64
  %.not4253.i = icmp eq i32 %i.lu, 0
  br i1 %.not4253.i, label %._crit_edge.i, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %_ZL21getGenericOpLoopRangeRN4mlir9OpBuilderENS_6linalg9GenericOpE.exit.i
  %105 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7YieldOpEvE2idE
  %i.lx = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ly = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %38, i64 12 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  br label %bb.bf

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i, %_ZL21getGenericOpLoopRangeRN4mlir9OpBuilderENS_6linalg9GenericOpE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  %i.mc = call i64 @_ZN4mlir6linalg9GenericOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 1) #18 ; 3 uses
  %i.md = load ptr, ptr %37, align 8, !tbaa !27   ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 44
  %i.mf = load i32, ptr %i.me, align 4
  %i.mg = and i32 %i.mf, 8388608
  %.not.i.i.i.i.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir6linalg9GenericOp10getOutputsEv.exit.i, label %bb.as, !prof !30

bb.as:                                            ; preds = %._crit_edge.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !33
  br label %_ZN4mlir6linalg9GenericOp10getOutputsEv.exit.i

_ZN4mlir6linalg9GenericOp10getOutputsEv.exit.i:   ; preds = %bb.as, %._crit_edge.i
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.mi, %bb.as ], [ null, %._crit_edge.i ]
  %i.mj = and i64 %i.mc, 4294967295               ; 4 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.mc, 32
  %i.mk = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.mc
  %i.ml = and i64 %i.mk, 4294967295               ; 3 uses
  %i.mm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.mj ; 5 uses
  %i.mn = sub nsw i64 %i.ml, %i.mj                ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 5 uses
  store ptr %i.mo, ptr %42, align 8, !tbaa !24, !alias.scope !234
  %i.mp = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 7 uses
  store i32 0, ptr %i.mp, align 8, !tbaa !19, !alias.scope !234
  %i.mq = getelementptr inbounds nuw i8, ptr %42, i64 12 ; 2 uses
  store i32 6, ptr %i.mq, align 4, !tbaa !20, !alias.scope !234
  %i.mr = icmp ugt i64 %i.mn, 6
  br i1 %i.mr, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i: ; preds = %_ZN4mlir6linalg9GenericOp10getOutputsEv.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull %i.mo, i64 noundef %i.mn, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.mp, align 8, !tbaa !19, !alias.scope !234 ; 2 uses
  %.pre23.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i = load ptr, ptr %42, align 8, !tbaa !24, !alias.scope !234
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %_ZN4mlir6linalg9GenericOp10getOutputsEv.exit.i
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.ml, %i.mj
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i
  %i.ms = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ %i.mo, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.mt = phi i32 [ %.pre.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre23.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ]
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.pre-phi.i.i3.i.i ; 2 uses
  %xtraiter = and i64 %i.mn, 3                    ; 3 uses
  %i.mv = sub nsw i64 %i.mj, %i.ml
  %i.mw = icmp ugt i64 %i.mv, -4
  br i1 %i.mw, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.new

.lr.ph.i.i.i.i.preheader.i.i.i.i.new:             ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %unroll_iter = and i64 %i.mn, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.new
  %.010.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.preheader.i.i.i.i.new ], [ %i.nn, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.new ], [ %i.nm, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.mx = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.2.09.i.i.i.i.i.i.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.my, align 8, !tbaa !54
  %i.mz = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  store i64 %i.mz, ptr %.010.i.i.i.i.i.i.i.i, align 8, !tbaa !54
  %i.na = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 8
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.2.09.i.i.i.i.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.nc, align 8, !tbaa !54
  %i.nd = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.1 to i64
  store i64 %i.nd, ptr %i.na, align 8, !tbaa !54
  %i.ne = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 16
  %i.nf = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.2.09.i.i.i.i.i.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ng, align 8, !tbaa !54
  %i.nh = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.2 to i64
  store i64 %i.nh, ptr %i.ne, align 8, !tbaa !54
  %i.ni = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 24
  %i.nj = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.2.09.i.i.i.i.i.i.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 120
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.nk, align 8, !tbaa !54
  %i.nl = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.3 to i64
  store i64 %i.nl, ptr %i.ni, align 8, !tbaa !54
  %i.nm = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !171

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.preheader.i.i.i.i ], [ %i.nn, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i.unr-lcssa ]
  %.sroa.2.09.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i ], [ %i.nm, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod410 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod410)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.010.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.010.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.nr, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.sroa.2.09.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.no = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.2.09.i.i.i.i.i.i.i.i.epil
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.np, align 8, !tbaa !54
  %i.nq = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.epil to i64
  store i64 %i.nq, ptr %.010.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !54
  %i.nr = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i.epil, 1
  %i.ns = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !172

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i.unr-lcssa
  %.pre59.i = load i32, ptr %i.mq, align 4, !tbaa !20
  %i.nt = zext i32 %.pre59.i to i64
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.i

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.i: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i
  %i.nu = phi i64 [ 6, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ], [ %i.nt, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i ]
  %i.nv = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i ], [ %i.mt, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i ]
  %i.nw = trunc i64 %i.mn to i32
  %i.nx = add i32 %i.nv, %i.nw                    ; 3 uses
  store i32 %i.nx, ptr %i.mp, align 8, !tbaa !19, !alias.scope !234
  %i.ny = load ptr, ptr %40, align 8, !tbaa !24
  %i.nz = load i32, ptr %i.lo, align 8, !tbaa !19 ; 3 uses
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.oa, 3
  %i.ob = zext i32 %i.nx to i64
  %i.oc = add nuw nsw i64 %i.oa, %i.ob            ; 2 uses
  %i.od = icmp samesign ugt i64 %i.oc, %i.nu
  br i1 %i.od, label %bb.at, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

bb.at:                                            ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull %i.mo, i64 noundef %i.oc, i64 noundef 8) #18
  %.pre8.pre.i.i = load i32, ptr %i.mp, align 8, !tbaa !19
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i: ; preds = %bb.at, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.i
  %.pre8.i.i = phi i32 [ %i.nx, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.i ], [ %.pre8.pre.i.i, %bb.at ] ; 2 uses
  %.not.i.i.i100 = icmp eq i32 %i.nz, 0
  br i1 %.not.i.i.i100, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %i.oe = load ptr, ptr %42, align 8, !tbaa !24
  %i.of = zext i32 %.pre8.i.i to i64
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.of
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.og, ptr align 8 %i.ny, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.mp, align 8, !tbaa !19
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i: ; preds = %bb.au, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %i.oh = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.au ]
  %i.oi = add i32 %i.oh, %i.nz
  store i32 %i.oi, ptr %i.mp, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %i.oj = load ptr, ptr %37, align 8, !tbaa !27, !noalias !236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18, !noalias !237
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 36
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !231, !noalias !237 ; 2 uses
  %i.om = icmp eq i32 %i.ol, 0
  %i.on = getelementptr inbounds i8, ptr %i.oj, i64 -16
  %i.oo = zext i32 %i.ol to i64
  %.sroa.0.0.i.i.i.i = select i1 %i.om, ptr null, ptr %i.on
  store ptr %.sroa.0.0.i.i.i.i, ptr %31, align 8, !noalias !237
  %i.op = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.oo, ptr %i.op, align 8, !noalias !237
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %44, ptr noundef nonnull align 8 dereferenceable(16) %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18, !noalias !237
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %.sroa.0.0.copyload.i.i.i.i52.i = load ptr, ptr %44, align 8, !noalias !238
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %44, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i5.i.i = getelementptr inbounds nuw i8, ptr %44, i64 24
  %.sroa.2.0.copyload.i.i.i6.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i5.i.i, align 8, !noalias !238 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  store ptr %i.oq, ptr %43, align 8, !tbaa !24, !alias.scope !238
  %i.or = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 8 uses
  store i32 0, ptr %i.or, align 8, !tbaa !19, !alias.scope !238
  %i.os = getelementptr inbounds nuw i8, ptr %43, i64 12 ; 2 uses
  store i32 6, ptr %i.os, align 4, !tbaa !20, !alias.scope !238
  %i.ot = sub nsw i64 %.sroa.2.0.copyload.i.i.i6.i.i, %.sroa.2.0.copyload.i.i.i.i.i ; 3 uses
  %i.ou = icmp ugt i64 %i.ot, 6
  br i1 %i.ou, label %bb.av, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i.i

bb.av:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %43, ptr noundef nonnull %i.oq, i64 noundef %i.ot, i64 noundef 8) #18
  %.pre.i.i.i60.i = load i32, ptr %i.or, align 8, !tbaa !19, !alias.scope !238 ; 2 uses
  %.pre24.i.i.i.i = zext i32 %.pre.i.i.i60.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.av, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i
  %.pre-phi.i.i.i.i = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i ], [ %.pre24.i.i.i.i, %bb.av ]
  %i.ov = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendIPS2_vEEvT_S6_.exit.i ], [ %.pre.i.i.i60.i, %bb.av ]
  %.not8.i.i.i.i.i.i.i53.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i6.i.i
  br i1 %.not8.i.i.i.i.i.i.i53.i, label %_ZN4llvm9to_vectorIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISE_EE5valueEEEOS8_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i54.i

.lr.ph.i.i.i.i.preheader.i.i.i54.i:               ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i.i
  %i.ow = load ptr, ptr %43, align 8, !tbaa !24, !alias.scope !238
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %.pre-phi.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i55.i

.lr.ph.i.i.i.i.i.i.i55.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i55.i, %.lr.ph.i.i.i.i.preheader.i.i.i54.i
  %.010.i.i.i.i.i.i.i56.i = phi ptr [ %i.pc, %.lr.ph.i.i.i.i.i.i.i55.i ], [ %i.ox, %.lr.ph.i.i.i.i.preheader.i.i.i54.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i57.i = phi i64 [ %i.pb, %.lr.ph.i.i.i.i.i.i.i55.i ], [ %.sroa.2.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i54.i ] ; 2 uses
  %i.oy = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i52.i, i64 noundef %.sroa.2.09.i.i.i.i.i.i.i57.i) #18
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.oz, align 8
  %i.pa = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  store i64 %i.pa, ptr %.010.i.i.i.i.i.i.i56.i, align 8, !tbaa !240
  %i.pb = add nsw i64 %.sroa.2.09.i.i.i.i.i.i.i57.i, 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i56.i, i64 8
  %.not.i.i.i.i.i.i.i58.i = icmp eq i64 %i.pb, %.sroa.2.0.copyload.i.i.i6.i.i
  br i1 %.not.i.i.i.i.i.i.i58.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i55.i, !llvm.loop !179

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i55.i
  %.pre23.i.i.i59.i = load i32, ptr %i.or, align 8, !tbaa !19, !alias.scope !238
  br label %_ZN4llvm9to_vectorIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISE_EE5valueEEEOS8_.exit.i

_ZN4llvm9to_vectorIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISE_EE5valueEEEOS8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i.i
  %i.pd = phi i32 [ %.pre23.i.i.i59.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS1_17ValueTypeIteratorINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESC_SC_E8iteratorEEEPS2_EEvT_SH_T0_.exit.loopexit.i.i.i.i ], [ %i.ov, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i.i ]
  %i.pe = trunc i64 %i.ot to i32
  %i.pf = add i32 %i.pd, %i.pe                    ; 3 uses
  store i32 %i.pf, ptr %i.or, align 8, !tbaa !19, !alias.scope !238
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  %i.pg = load ptr, ptr %41, align 8, !tbaa !24
  %i.ph = load i32, ptr %i.lr, align 8, !tbaa !19 ; 3 uses
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %.idx44.i = shl nuw nsw i64 %i.pi, 3
  %i.pj = zext i32 %i.pf to i64
  %i.pk = add nuw nsw i64 %i.pi, %i.pj            ; 2 uses
  %i.pl = load i32, ptr %i.os, align 4, !tbaa !20
  %i.pm = zext i32 %i.pl to i64
  %i.pn = icmp samesign ugt i64 %i.pk, %i.pm
  br i1 %i.pn, label %bb.aw, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.aw:                                            ; preds = %_ZN4llvm9to_vectorIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISE_EE5valueEEEOS8_.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull %i.oq, i64 noundef %i.pk, i64 noundef 8) #18
  %.pre8.pre.i64.i = load i32, ptr %i.or, align 8, !tbaa !19
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.aw, %_ZN4llvm9to_vectorIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISE_EE5valueEEEOS8_.exit.i
  %.pre8.i61.i = phi i32 [ %i.pf, %_ZN4llvm9to_vectorIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISE_EE5valueEEEOS8_.exit.i ], [ %.pre8.pre.i64.i, %bb.aw ] ; 2 uses
  %.not.i.i62.i = icmp eq i32 %i.ph, 0
  br i1 %.not.i.i62.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPS2_vEEvT_S6_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.po = load ptr, ptr %43, align 8, !tbaa !24
  %i.pp = zext i32 %.pre8.i61.i to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pq, ptr align 8 %i.pg, i64 %.idx44.i, i1 false)
  %.pre.i63.i = load i32, ptr %i.or, align 8, !tbaa !19
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPS2_vEEvT_S6_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPS2_vEEvT_S6_.exit.i: ; preds = %bb.ax, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.pr = phi i32 [ %.pre8.i61.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i63.i, %bb.ax ]
  %i.ps = add i32 %i.pr, %i.ph
  store i32 %i.ps, ptr %i.or, align 8, !tbaa !19
  %i.pt = load ptr, ptr %38, align 8, !tbaa !24
  %i.pu = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !19
  %i.pw = zext i32 %i.pv to i64
  %i.px = call ptr @_ZN4mlir7Builder21getAffineMapArrayAttrEN4llvm8ArrayRefINS_9AffineMapEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr %i.pt, i64 %i.pw) #18
  %i.py = load ptr, ptr %43, align 8, !tbaa !24
  %i.pz = load i32, ptr %i.or, align 8, !tbaa !19
  %i.qa = zext i32 %i.pz to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr %i.py, i64 %i.qa) #18
  %i.qb = call i64 @_ZN4mlir6linalg9GenericOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 0) #18 ; 3 uses
  %i.qc = load ptr, ptr %37, align 8, !tbaa !27   ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 44
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = and i32 %i.qe, 8388608
  %.not.i.i.i.i.i65.i = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i.i.i.i65.i, label %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i, label %bb.ay, !prof !30

bb.ay:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPS2_vEEvT_S6_.exit.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 72
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !33
  br label %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i

_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i:     ; preds = %bb.ay, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPS2_vEEvT_S6_.exit.i
  %.sroa.0.0.i.i.i.i.i66.i = phi ptr [ %i.qh, %bb.ay ], [ null, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPS2_vEEvT_S6_.exit.i ]
  %i.qi = and i64 %i.qb, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i67.i = lshr i64 %i.qb, 32
  %i.qj = add i64 %.sroa.5.0.extract.shift.i.i67.i, %i.qb
  %i.qk = and i64 %i.qj, 4294967295
  %i.ql = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i66.i, i64 %i.qi
  %i.qm = sub nsw i64 %i.qk, %i.qi
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr %i.ql, i64 %i.qm) #18
  %i.qn = load ptr, ptr %42, align 8, !tbaa !24
  %i.qo = load i32, ptr %i.mp, align 8, !tbaa !19
  %i.qp = zext i32 %i.qo to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr %i.qn, i64 %i.qp) #18
  %i.qq = call ptr @_ZN4mlir6linalg9GenericOp16getIteratorTypesEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeEEE11callback_fnIZNK12_GLOBAL__N_117DecomposeLinalgOp21createPeeledGenericOpENS1_6linalg9GenericOpERNS1_15PatternRewriterEE3$_0EEvlS3_S4_S5_", ptr %48, align 8, !tbaa !242
  %i.qr = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.qs = ptrtoint ptr %49 to i64
  store i64 %i.qs, ptr %i.qr, align 8, !tbaa !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  %i.qt = load i64, ptr %45, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.qv = load i64, ptr %i.qu, align 8
  %i.qw = load i64, ptr %46, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.qy = load i64, ptr %i.qx, align 8
  %i.qz = ptrtoint ptr %i.px to i64
  %i.ra = ptrtoint ptr %i.qq to i64
  %i.rb = call ptr @_ZN4mlir6linalg9GenericOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_NS_9ArrayAttrES7_NS_10StringAttrES8_N4llvm12function_refIFvS3_S4_S6_EEENS9_8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.qt, i64 %i.qv, i64 %i.qw, i64 %i.qy, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %47, i64 %i.qz, i64 %i.ra, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::function_ref.326") align 8 %48, ptr noundef nonnull byval(%"class.llvm::ArrayRef.327") align 8 %50) #18 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %i.rc = load ptr, ptr %43, align 8, !tbaa !24   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.oq
  br i1 %i.rd, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i
  call void @free(ptr noundef %i.rc) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i: ; preds = %bb.az, %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  %i.re = load ptr, ptr %42, align 8, !tbaa !24   ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.mo
  br i1 %i.rf, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.re) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i: ; preds = %bb.ba, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  %i.rg = load ptr, ptr %41, align 8, !tbaa !24   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.lq
  br i1 %i.rh, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit70.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.rg) #18
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit70.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit70.i: ; preds = %bb.bb, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  %i.ri = load ptr, ptr %40, align 8, !tbaa !24   ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.ln
  br i1 %i.rj, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit71.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit70.i
  call void @free(ptr noundef %i.ri) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit71.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit71.i: ; preds = %bb.bc, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  %i.rk = load ptr, ptr %39, align 8, !tbaa !24   ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit71.i
  call void @free(ptr noundef %i.rk) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i: ; preds = %bb.bd, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  %i.rn = load ptr, ptr %38, align 8, !tbaa !24   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZNK12_GLOBAL__N_117DecomposeLinalgOp21createPeeledGenericOpEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE.exit, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.rn) #18
  br label %_ZNK12_GLOBAL__N_117DecomposeLinalgOp21createPeeledGenericOpEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE.exit

bb.bf:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i, %.lr.ph55.i
  %.sroa.432.054.i = phi i64 [ 0, %.lr.ph55.i ], [ %i.vh, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i ] ; 2 uses
  %i.rq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, i64 noundef %.sroa.432.054.i) #18 ; 3 uses
  br i1 %105, label %.loopexit.i, label %.critedge47.i

.critedge47.i:                                    ; preds = %bb.bf, %bb.bg
  %.sroa.019.0.in.i = phi ptr [ %.sroa.019.0.i, %bb.bg ], [ %i.rq, %bb.bf ]
  %.sroa.019.0.i = load ptr, ptr %.sroa.019.0.in.i, align 8, !tbaa !56 ; 3 uses
  %.not46.i = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not46.i, label %.loopexit.i, label %bb.bg

bb.bg:                                            ; preds = %.critedge47.i
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !59 ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.rt, align 8, !tbaa !60
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !63
  %i.rw = icmp ne ptr %i.rv, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7YieldOpEvE2idE
  %.not4748.i = icmp eq ptr %i.rs, null
  %.not47.i = or i1 %.not4748.i, %i.rw
  br i1 %.not47.i, label %.critedge47.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 44
  %i.ry = load i32, ptr %i.rx, align 4
  %i.rz = and i32 %i.ry, 8388608
  %.not.i.i98 = icmp eq i32 %i.rz, 0
  br i1 %.not.i.i98, label %.loopexit.i, label %_ZN4mlir9Operation13getOpOperandsEv.exit.i, !prof !30

_ZN4mlir9Operation13getOpOperandsEv.exit.i:       ; preds = %bb.bh
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rs, i64 72
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !33 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 68
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !34 ; 2 uses
  %i.se = zext i32 %i.sd to i64
  %i.sf = shl nuw nsw i64 %i.se, 5
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sf
  %.not51.i = icmp eq i32 %i.sd, 0
  br i1 %.not51.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit.i, %.critedge.i
  %.04552.i = phi ptr [ %i.sn, %.critedge.i ], [ %i.sb, %_ZN4mlir9Operation13getOpOperandsEv.exit.i ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.04552.i, i64 24
  %.sroa.0.0.copyload.i78.i = load ptr, ptr %i.sh, align 8, !tbaa !54
  %i.si = icmp eq ptr %.sroa.0.0.copyload.i78.i, %i.rq
  br i1 %i.si, label %.thread.i, label %.critedge.i

.thread.i:                                        ; preds = %.lr.ph.i
  %i.sj = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.04552.i) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %37) #18
  %i.sk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4mlir19MutableOperandRangeixEj(ptr noundef nonnull align 8 dereferenceable(56) %30, i32 noundef %i.sj) #18
  %i.sl = load ptr, ptr %i.lx, align 8, !tbaa !24 ; 2 uses
  %i.sm = icmp eq ptr %i.sl, %i.ly
  br i1 %i.sm, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i, label %bb.bi

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.04552.i, i64 32 ; 2 uses
  %.not.i99 = icmp eq ptr %i.sn, %i.sg
  br i1 %.not.i99, label %.loopexit.i, label %.lr.ph.i

bb.bi:                                            ; preds = %.thread.i
  call void @free(ptr noundef %i.sl) #18
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i: ; preds = %bb.bi, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %.sroa.0.0.copyload.i79.i = load ptr, ptr %i.so, align 8, !tbaa !54 ; 2 uses
  %i.sp = load i32, ptr %i.lo, align 8, !tbaa !19 ; 2 uses
  %i.sq = load i32, ptr %i.lp, align 4, !tbaa !20
  %.not.i80.i = icmp ult i32 %i.sp, %i.sq
  br i1 %.not.i80.i, label %bb.bk, label %bb.bj, !prof !64

bb.bj:                                            ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr %.sroa.0.0.copyload.i79.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i

bb.bk:                                            ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i
  %i.sr = zext i32 %i.sp to i64
  %i.ss = load ptr, ptr %40, align 8, !tbaa !24
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.sr
  store ptr %.sroa.0.0.copyload.i79.i, ptr %i.st, align 1
  %i.su = load i32, ptr %i.lo, align 8, !tbaa !19
  %i.sv = add i32 %i.su, 1
  store i32 %i.sv, ptr %i.lo, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i: ; preds = %bb.bk, %bb.bj
  %i.sw = load ptr, ptr %37, align 8, !tbaa !27   ; 2 uses
  %i.sx = icmp ult i32 %i.sj, 6
  br i1 %i.sx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i
  %i.sy = add nuw nsw i32 %i.sj, 1
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = sub nsw i64 0, %i.sz
  %i.tb = getelementptr inbounds [16 x i8], ptr %i.sw, i64 %i.ta
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit.i

bb.bm:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i
  %i.tc = getelementptr inbounds i8, ptr %i.sw, i64 -96
  %i.td = add i32 %i.sj, -5
  %i.te = zext i32 %i.td to i64
  %i.tf = sub nsw i64 0, %i.te
  %i.tg = getelementptr inbounds [24 x i8], ptr %i.tc, i64 %i.tf
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit.i

_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i = phi ptr [ %i.tb, %bb.bl ], [ %i.tg, %bb.bm ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.th, align 8
  %i.ti = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.tj = inttoptr i64 %i.ti to ptr               ; 2 uses
  %i.tk = load i32, ptr %i.lr, align 8, !tbaa !19 ; 2 uses
  %i.tl = load i32, ptr %i.ls, align 4, !tbaa !20
  %.not.i82.i = icmp ult i32 %i.tk, %i.tl
  br i1 %.not.i82.i, label %bb.bo, label %bb.bn, !prof !64

bb.bn:                                            ; preds = %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr %i.tj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit.i

bb.bo:                                            ; preds = %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit.i
  %i.tm = zext i32 %i.tk to i64
  %i.tn = load ptr, ptr %41, align 8, !tbaa !24
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %i.tm
  store ptr %i.tj, ptr %i.to, align 1
  %i.tp = load i32, ptr %i.lr, align 8, !tbaa !19
  %i.tq = add i32 %i.tp, 1
  store i32 %i.tq, ptr %i.lr, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit.i: ; preds = %bb.bo, %bb.bn
  %i.tr = call ptr @_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE28getIndexingMapMatchingResultENS_8OpResultE(ptr noundef nonnull align 1 dereferenceable(1) %37, ptr nonnull %.0.i.i.i.i) ; 2 uses
  %i.ts = load i32, ptr %i.lz, align 8, !tbaa !19 ; 2 uses
  %i.tt = load i32, ptr %i.ma, align 4, !tbaa !20
  %.not.i83.i = icmp ult i32 %i.ts, %i.tt
  br i1 %.not.i83.i, label %bb.bq, label %bb.bp, !prof !64

bb.bp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr %i.tr)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i

bb.bq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit.i
  %i.tu = zext i32 %i.ts to i64
  %i.tv = load ptr, ptr %38, align 8, !tbaa !24
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.tu
  store ptr %i.tr, ptr %i.tw, align 1
  %i.tx = load i32, ptr %i.lz, align 8, !tbaa !19
  %i.ty = add i32 %i.tx, 1
  store i32 %i.ty, ptr %i.lz, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i

.loopexit.i:                                      ; preds = %.critedge47.i, %.critedge.i, %_ZN4mlir9Operation13getOpOperandsEv.exit.i, %bb.bh, %bb.bf
  %i.tz = load i32, ptr %i.mb, align 8, !tbaa !19
  %i.ua = call ptr @_ZN4mlir7Builder22getMultiDimIdentityMapEj(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, i32 noundef %i.tz) #18 ; 2 uses
  %i.ub = load ptr, ptr %39, align 8, !tbaa !24
  %i.uc = load i32, ptr %i.mb, align 8, !tbaa !19
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %.0.copyload.i.i.i.i.i84.i = load i64, ptr %i.ue, align 8
  %i.uf = and i64 %.0.copyload.i.i.i.i.i84.i, -8
  %i.ug = inttoptr i64 %i.uf to ptr
  %i.uh = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ub, i64 %i.ud, ptr %i.ug, ptr null) #18 ; 2 uses
  %i.ui = getelementptr inbounds i8, ptr %i.uh, i64 -16 ; 2 uses
  %i.uj = load i32, ptr %i.lo, align 8, !tbaa !19 ; 2 uses
  %i.uk = load i32, ptr %i.lp, align 4, !tbaa !20
  %.not.i85.i = icmp ult i32 %i.uj, %i.uk
  br i1 %.not.i85.i, label %bb.bs, label %bb.br, !prof !64

bb.br:                                            ; preds = %.loopexit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr nonnull %i.ui)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit86.i

bb.bs:                                            ; preds = %.loopexit.i
  %i.ul = zext i32 %i.uj to i64
  %i.um = load ptr, ptr %40, align 8, !tbaa !24
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.ul
  store ptr %i.ui, ptr %i.un, align 1
  %i.uo = load i32, ptr %i.lo, align 8, !tbaa !19
  %i.up = add i32 %i.uo, 1
  store i32 %i.up, ptr %i.lo, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit86.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit86.i: ; preds = %bb.bs, %bb.br
  %i.uq = getelementptr inbounds i8, ptr %i.uh, i64 -8
  %.0.copyload.i.i.i.i.i87.i = load i64, ptr %i.uq, align 8
  %i.ur = and i64 %.0.copyload.i.i.i.i.i87.i, -8
  %i.us = inttoptr i64 %i.ur to ptr               ; 2 uses
  %i.ut = load i32, ptr %i.lr, align 8, !tbaa !19 ; 2 uses
  %i.uu = load i32, ptr %i.ls, align 4, !tbaa !20
  %.not.i88.i = icmp ult i32 %i.ut, %i.uu
  br i1 %.not.i88.i, label %bb.bu, label %bb.bt, !prof !64

bb.bt:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit86.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr %i.us)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit89.i

bb.bu:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit86.i
  %i.uv = zext i32 %i.ut to i64
  %i.uw = load ptr, ptr %41, align 8, !tbaa !24
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.uv
  store ptr %i.us, ptr %i.ux, align 1
  %i.uy = load i32, ptr %i.lr, align 8, !tbaa !19
  %i.uz = add i32 %i.uy, 1
  store i32 %i.uz, ptr %i.lr, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit89.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit89.i: ; preds = %bb.bu, %bb.bt
  %i.va = load i32, ptr %i.lz, align 8, !tbaa !19 ; 2 uses
  %i.vb = load i32, ptr %i.ma, align 4, !tbaa !20
  %.not.i90.i = icmp ult i32 %i.va, %i.vb
  br i1 %.not.i90.i, label %bb.bw, label %bb.bv, !prof !64

bb.bv:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit89.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr %i.ua)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i

bb.bw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit89.i
  %i.vc = zext i32 %i.va to i64
  %i.vd = load ptr, ptr %38, align 8, !tbaa !24
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.vc
  store ptr %i.ua, ptr %i.ve, align 1
  %i.vf = load i32, ptr %i.lz, align 8, !tbaa !19
  %i.vg = add i32 %i.vf, 1
  store i32 %i.vg, ptr %i.lz, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i: ; preds = %bb.bw, %bb.bv, %bb.bq, %bb.bp
  %i.vh = add nuw nsw i64 %.sroa.432.054.i, 1     ; 2 uses
  %.not42.i = icmp eq i64 %i.vh, %i.lw
  br i1 %.not42.i, label %._crit_edge.i, label %bb.bf

_ZNK12_GLOBAL__N_117DecomposeLinalgOp21createPeeledGenericOpEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  %.sroa.047.0.copyload = load ptr, ptr %92, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  store ptr %.sroa.047.0.copyload, ptr %16, align 8
  store ptr %i.rb, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.vi = call i64 @_ZN4mlir6linalg9GenericOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #18 ; 3 uses
  %i.vj = load ptr, ptr %16, align 8, !tbaa !27   ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 44
  %i.vl = load i32, ptr %i.vk, align 4
  %i.vm = and i32 %i.vl, 8388608
  %.not.i.i.i.i.i.i101 = icmp eq i32 %i.vm, 0
  br i1 %.not.i.i.i.i.i.i101, label %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i102, label %bb.bx, !prof !30

bb.bx:                                            ; preds = %_ZNK12_GLOBAL__N_117DecomposeLinalgOp21createPeeledGenericOpEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE.exit
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 72
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !33
  br label %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i102

_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i102:  ; preds = %bb.bx, %_ZNK12_GLOBAL__N_117DecomposeLinalgOp21createPeeledGenericOpEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE.exit
  %.sroa.0.0.i.i.i.i.i.i103 = phi ptr [ %i.vo, %bb.bx ], [ null, %_ZNK12_GLOBAL__N_117DecomposeLinalgOp21createPeeledGenericOpEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE.exit ]
  %i.vp = and i64 %i.vi, 4294967295               ; 4 uses
  %.sroa.5.0.extract.shift.i.i.i104 = lshr i64 %i.vi, 32
  %i.vq = add i64 %.sroa.5.0.extract.shift.i.i.i104, %i.vi
  %i.vr = and i64 %i.vq, 4294967295               ; 3 uses
  %i.vs = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i103, i64 %i.vp ; 5 uses
  %i.vt = sub nsw i64 %i.vr, %i.vp                ; 5 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.vu, ptr %18, align 8, !tbaa !24, !alias.scope !244
  %i.vv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 8 uses
  store i32 0, ptr %i.vv, align 8, !tbaa !19, !alias.scope !244
  %i.vw = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  store i32 6, ptr %i.vw, align 4, !tbaa !20, !alias.scope !244
  %i.vx = icmp ugt i64 %i.vt, 6
  br i1 %i.vx, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i130, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i105

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i130: ; preds = %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i102
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %i.vu, i64 noundef %i.vt, i64 noundef 8) #18
  %.pre.i.i.i.i131 = load i32, ptr %i.vv, align 8, !tbaa !19, !alias.scope !244 ; 2 uses
  %.pre23.i.i.i.i132 = zext i32 %.pre.i.i.i.i131 to i64
  %.pre.i133 = load ptr, ptr %18, align 8, !tbaa !24, !alias.scope !244
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i107

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i105: ; preds = %_ZN4mlir6linalg9GenericOp9getInputsEv.exit.i102
  %.not8.i.i.i.i.i.i.i.i106 = icmp eq i64 %i.vr, %i.vp
  br i1 %.not8.i.i.i.i.i.i.i.i106, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.i115, label %.lr.ph.i.i.i.i.preheader.i.i.i.i107

.lr.ph.i.i.i.i.preheader.i.i.i.i107:              ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i105, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i130
  %i.vy = phi ptr [ %.pre.i133, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i130 ], [ %i.vu, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i105 ]
  %i.vz = phi i32 [ %.pre.i.i.i.i131, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i130 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i105 ]
  %.pre-phi.i.i3.i.i108 = phi i64 [ %.pre23.i.i.i.i132, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i130 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i105 ]
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %.pre-phi.i.i3.i.i108 ; 2 uses
  %xtraiter411 = and i64 %i.vt, 3                 ; 3 uses
  %i.wb = sub nsw i64 %i.vp, %i.vr
  %i.wc = icmp ugt i64 %i.wb, -4
  br i1 %i.wc, label %.lr.ph.i.i.i.i.i.i.i.i109.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.i107.new

.lr.ph.i.i.i.i.preheader.i.i.i.i107.new:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i107
  %unroll_iter415 = and i64 %i.vt, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i.i.i109:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i109, %.lr.ph.i.i.i.i.preheader.i.i.i.i107.new
  %.010.i.i.i.i.i.i.i.i110 = phi ptr [ %i.wa, %.lr.ph.i.i.i.i.preheader.i.i.i.i107.new ], [ %i.wt, %.lr.ph.i.i.i.i.i.i.i.i109 ] ; 5 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i111 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i107.new ], [ %i.ws, %.lr.ph.i.i.i.i.i.i.i.i109 ] ; 5 uses
  %niter416 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i107.new ], [ %niter416.next.3, %.lr.ph.i.i.i.i.i.i.i.i109 ]
  %i.wd = getelementptr inbounds nuw [32 x i8], ptr %i.vs, i64 %.sroa.2.09.i.i.i.i.i.i.i.i111
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112 = load ptr, ptr %i.we, align 8, !tbaa !54
  %i.wf = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112 to i64
  store i64 %i.wf, ptr %.010.i.i.i.i.i.i.i.i110, align 8, !tbaa !54
  %i.wg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i110, i64 8
  %i.wh = getelementptr inbounds nuw [32 x i8], ptr %i.vs, i64 %.sroa.2.09.i.i.i.i.i.i.i.i111
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112.1 = load ptr, ptr %i.wi, align 8, !tbaa !54
  %i.wj = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112.1 to i64
  store i64 %i.wj, ptr %i.wg, align 8, !tbaa !54
  %i.wk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i110, i64 16
  %i.wl = getelementptr inbounds nuw [32 x i8], ptr %i.vs, i64 %.sroa.2.09.i.i.i.i.i.i.i.i111
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112.2 = load ptr, ptr %i.wm, align 8, !tbaa !54
  %i.wn = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112.2 to i64
  store i64 %i.wn, ptr %i.wk, align 8, !tbaa !54
  %i.wo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i110, i64 24
  %i.wp = getelementptr inbounds nuw [32 x i8], ptr %i.vs, i64 %.sroa.2.09.i.i.i.i.i.i.i.i111
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 120
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112.3 = load ptr, ptr %i.wq, align 8, !tbaa !54
  %i.wr = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i112.3 to i64
  store i64 %i.wr, ptr %i.wo, align 8, !tbaa !54
  %i.ws = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i.i.i111, 4 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i110, i64 32 ; 2 uses
  %niter416.next.3 = add i64 %niter416, 4         ; 2 uses
  %niter416.ncmp.3 = icmp eq i64 %niter416.next.3, %unroll_iter415
  br i1 %niter416.ncmp.3, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i114.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i109, !llvm.loop !171

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i114.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i109
  %lcmp.mod413.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod413.not, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i114, label %.lr.ph.i.i.i.i.i.i.i.i109.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i109.epil.preheader:         ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i114.unr-lcssa, %.lr.ph.i.i.i.i.preheader.i.i.i.i107
  %.010.i.i.i.i.i.i.i.i110.epil.init = phi ptr [ %i.wa, %.lr.ph.i.i.i.i.preheader.i.i.i.i107 ], [ %i.wt, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i114.unr-lcssa ]
  %.sroa.2.09.i.i.i.i.i.i.i.i111.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i107 ], [ %i.ws, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS2_9OpOperandENS2_5ValueES6_S6_EcvT_INS_11SmallVectorIS6_Lj6EEEvEEv.exit.loopexit.i114.unr-lcssa ]
  %lcmp.mod414 = icmp ne i64 %xtraiter411, 0
  call void @llvm.assume(i1 %lcmp.mod414)
  br label %.lr.ph.i.i.i.i.i.i.i.i109.epil

.lr.ph.i.i.i.i.i.i.i.i109.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i109.epil, %.lr.ph.i.i.i.i.i.i.i.i109.epil.preheader
  %.010.i.i.i.i.i.i.i.i110.epil = phi ptr [ %i.wy, %.lr.ph.i.i.i.i.i.i.i.i109.epil ], [ %.010.i.i.i.i.i.i.i.i110.epil.init, %.lr.ph.i.i.i.i.i.i.i.i109.epil.preheader ] ; 2 uses
end_hunk_0
