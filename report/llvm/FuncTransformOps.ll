Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FuncTransformOps?download=true
inline.NumInlined: 7972
inline.NumDeleted: 3747
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4mlir9transform13CastAndCallOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE:bb.a

.critedge:                                        ; preds = %.split
  %.sroa.0418.0 = load ptr, ptr %.sroa.0418.0519, align 8, !tbaa !106 ; 2 uses
  %.not500 = icmp eq ptr %.sroa.0418.0, null
  br i1 %.not500, label %.critedge125, label %.split

.critedge125:                                     ; preds = %.critedge, %.lr.ph526.split
  %i.jt = getelementptr inbounds nuw i8, ptr %.0118525, i64 8 ; 2 uses
  %.not120 = icmp eq ptr %i.jt, %i.hw
  br i1 %.not120, label %.critedge127, label %.lr.ph526.split

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  br label %bb.db

.critedge127:                                     ; preds = %.critedge125, %.critedge125.us, %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit.thread457
  %i.ju = load ptr, ptr %31, align 8, !tbaa !26   ; 3 uses
  %i.jv = load i32, ptr %i.f, align 8, !tbaa !28  ; 2 uses
  %i.jw = zext i32 %i.jv to i64
  %.idx548 = shl nuw nsw i64 %i.jw, 3
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.idx548 ; 2 uses
  %.not121528 = icmp eq i32 %i.jv, 0
  br i1 %.not121528, label %.critedge131, label %.lr.ph530

.lr.ph530:                                        ; preds = %.critedge127
  br i1 %.not499, label %.lr.ph530.split.us, label %.lr.ph530.split

.lr.ph530.split.us:                               ; preds = %.lr.ph530, %.critedge129.us
  %.0119529.us = phi ptr [ %i.kb, %.critedge129.us ], [ %i.ju, %.lr.ph530 ] ; 2 uses
  %i.jy = load i64, ptr %.0119529.us, align 8, !tbaa !38
  %i.jz = inttoptr i64 %i.jy to ptr               ; 2 uses
  %i.ka = call noundef zeroext i1 @_ZNK4mlir13DominanceInfo17properlyDominatesENS_5ValueEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr %i.jz, ptr noundef %i.hs) #26
  br i1 %i.ka, label %.critedge129.us, label %.split532.us

.critedge129.us:                                  ; preds = %.lr.ph530.split.us
  %i.kb = getelementptr inbounds nuw i8, ptr %.0119529.us, i64 8 ; 2 uses
  %.not121.us = icmp eq ptr %i.kb, %i.jx
  br i1 %.not121.us, label %.critedge131, label %.lr.ph530.split.us

.lr.ph530.split:                                  ; preds = %.lr.ph530, %.critedge129
  %.0119529 = phi ptr [ %i.lr, %.critedge129 ], [ %i.ju, %.lr.ph530 ] ; 2 uses
  %i.kc = load i64, ptr %.0119529, align 8, !tbaa !38
  %i.kd = inttoptr i64 %i.kc to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store ptr %i.kd, ptr %24, align 8
  %i.ke = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #26
  %i.kf = icmp eq ptr %i.ke, %i.hs
  br i1 %i.kf, label %_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit.thread, label %_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit

_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit.thread: ; preds = %.lr.ph530.split
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.critedge129

_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit: ; preds = %.lr.ph530.split
  %.sroa.0.0.copyload.i212 = load ptr, ptr %24, align 8, !tbaa !38
  %i.kg = call noundef zeroext i1 @_ZNK4mlir13DominanceInfo17properlyDominatesENS_5ValueEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr %.sroa.0.0.copyload.i212, ptr noundef %i.hs) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br i1 %i.kg, label %.critedge129, label %.split532.us

.split532.us:                                     ; preds = %_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit, %.lr.ph530.split.us
  %.us-phi533 = phi ptr [ %i.jz, %.lr.ph530.split.us ], [ %i.kd, %_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  %i.kh = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i8 1, ptr %i.kh, align 8, !tbaa !12
  %i.ki = getelementptr inbounds nuw i8, ptr %41, i64 33
  store i8 1, ptr %i.ki, align 1, !tbaa !8
  %i.kj = load ptr, ptr %1, align 8, !tbaa !30, !noalias !124
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %.sroa.0.0.copyload.i.i.i213 = load ptr, ptr %i.kk, align 8, !noalias !127
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %40, ptr %.sroa.0.0.copyload.i.i.i213, ptr noundef nonnull align 8 dereferenceable(34) %41) #26
  %i.kl = load ptr, ptr %40, align 8, !tbaa !13
  %.not.i.i.i.i214 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i214, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222, label %bb.ac

bb.ac:                                            ; preds = %.split532.us
  %i.km = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store i32 3, ptr %23, align 8, !tbaa !79
  %i.kn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.6, ptr %i.kn, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i215 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 6, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i215, align 8, !tbaa !84
  %i.ko = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 6 uses
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !28 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %40, i64 36 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !29
  %.not.i.i.i.i.i.i.i216 = icmp ult i32 %i.kp, %i.kr
  br i1 %.not.i.i.i.i.i.i.i216, label %bb.ae, label %bb.ad, !prof !34

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(24) %23)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA7_KcEEOS0_OT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ks = zext i32 %i.kp to i64
  %i.kt = load ptr, ptr %i.km, align 8, !tbaa !26
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %i.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ku, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  %i.kv = load i32, ptr %i.ko, align 8, !tbaa !28
  %i.kw = add i32 %i.kv, 1
  store i32 %i.kw, ptr %i.ko, align 8, !tbaa !28
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA7_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA7_KcEEOS0_OT_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %.pr466 = load ptr, ptr %40, align 8, !tbaa !13
  %.not.i.i.i.i217 = icmp eq ptr %.pr466, null
  br i1 %.not.i.i.i.i217, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRNS_5ValueEEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRNS_5ValueEEEOS0_OT_.exit: ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA7_KcEEOS0_OT_.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.ky = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(192) %i.kx, ptr %.us-phi533) #26 ; 0 uses
  %.pr468 = load ptr, ptr %40, align 8, !tbaa !13
  %.not.i.i.i.i218 = icmp eq ptr %.pr468, null
  br i1 %.not.i.i.i.i218, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222, label %bb.af

bb.af:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRNS_5ValueEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store i32 3, ptr %22, align 8, !tbaa !79
  %i.kz = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @.str.7, ptr %i.kz, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i219 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 35, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i219, align 8, !tbaa !84
  %i.la = load i32, ptr %i.ko, align 8, !tbaa !28 ; 2 uses
  %i.lb = load i32, ptr %i.kq, align 4, !tbaa !29
  %.not.i.i.i.i.i.i.i220 = icmp ult i32 %i.la, %i.lb
  br i1 %.not.i.i.i.i.i.i.i220, label %bb.ah, label %bb.ag, !prof !34

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(24) %22)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA36_KcEEOS0_OT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.lc = zext i32 %i.la to i64
  %i.ld = load ptr, ptr %i.km, align 8, !tbaa !26
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.lc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.le, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false)
  %i.lf = load i32, ptr %i.ko, align 8, !tbaa !28
  %i.lg = add i32 %i.lf, 1
  store i32 %i.lg, ptr %i.ko, align 8, !tbaa !28
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA36_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA36_KcEEOS0_OT_.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %.pr470.pr = load ptr, ptr %40, align 8, !tbaa !13
  %.not.i.i.i.i221 = icmp eq ptr %.pr470.pr, null
  br i1 %.not.i.i.i.i221, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222, label %bb.ai

bb.ai:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA36_KcEEOS0_OT_.exit
  %i.lh = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(192) %i.kx, ptr noundef nonnull align 8 dereferenceable(64) %i.hs) #26 ; 0 uses
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222

_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222: ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA7_KcEEOS0_OT_.exit, %.split532.us, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRNS_5ValueEEEOS0_OT_.exit, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA36_KcEEOS0_OT_.exit, %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %40) #26, !noalias !130
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.li, ptr %0, align 8, !tbaa !26, !alias.scope !133
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.lj, align 8, !tbaa !28, !alias.scope !133
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.lk, align 4, !tbaa !29, !alias.scope !133
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.ll, align 8, !tbaa !86, !alias.scope !133
  %i.lm = load ptr, ptr %40, align 8, !tbaa !13
  %.not.i.i223 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i223, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %40) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRPNS_9OperationEEEOS0_OT_.exit222
  %i.ln = getelementptr inbounds nuw i8, ptr %40, i64 200 ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !23, !range !24, !noundef !25
  %i.lp = trunc nuw i8 %i.lo to i1
  store i8 0, ptr %i.ln, align 8, !tbaa !23
  br i1 %i.lp, label %bb.al, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit224

bb.al:                                            ; preds = %bb.ak
  %i.lq = getelementptr inbounds nuw i8, ptr %40, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.lq) #26
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit224

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit224:   ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %bb.db

.critedge129:                                     ; preds = %_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit.thread, %_ZNK4mlir13DominanceInfo9dominatesENS_5ValueEPNS_9OperationE.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %.0119529, i64 8 ; 2 uses
  %.not121 = icmp eq ptr %i.lr, %i.jx
  br i1 %.not121, label %.critedge131, label %.lr.ph530.split

.critedge131:                                     ; preds = %.critedge129, %.critedge129.us, %.critedge127
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  store ptr null, ptr %42, align 8, !tbaa !30
  %i.ls = load ptr, ptr %1, align 8, !tbaa !30    ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 44
  %i.lu = load i32, ptr %i.lt, align 4            ; 2 uses
  %.not.i.i.i.i225 = icmp ugt i32 %i.lu, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i225)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.lw = lshr i32 %i.lu, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i226 = and i32 %i.lw, 1
  %i.lx = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i226 to i64 ; 2 uses
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !105 ; 2 uses
  %.not.i227.not = icmp eq ptr %i.lz, null
  br i1 %.not.i227.not, label %_ZN4mlir9transform13CastAndCallOp11getFunctionEv.exit267, label %bb.am

bb.am:                                            ; preds = %.critedge131
  %i.ma = call noundef ptr @_ZN4mlir11SymbolTable23lookupNearestSymbolFromEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef %i.hs, ptr nonnull %i.lz) #26 ; 3 uses
  %.not.i.i.i236 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i236, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.mb, align 8, !tbaa !136
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !138
  %i.me = icmp eq ptr %i.md, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %i.me, label %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_4func6FuncOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %bb.ao

_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_4func6FuncOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %bb.an
  store ptr %i.ma, ptr %42, align 8
  br label %bb.bn

bb.ao:                                            ; preds = %bb.an, %bb.am
  store ptr null, ptr %42, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  %i.mf = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i8 1, ptr %i.mf, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %44, i64 33
  store i8 1, ptr %i.mg, align 1, !tbaa !8
  %i.mh = load ptr, ptr %1, align 8, !tbaa !30, !noalias !141
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %.sroa.0.0.copyload.i.i.i237 = load ptr, ptr %i.mi, align 8, !noalias !144
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %43, ptr %.sroa.0.0.copyload.i.i.i237, ptr noundef nonnull align 8 dereferenceable(34) %44) #26
  %i.mj = load ptr, ptr %43, align 8, !tbaa !13
  %.not.i.i.i.i238 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i238, label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mk = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store i32 3, ptr %21, align 8, !tbaa !79
  %i.ml = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.8, ptr %i.ml, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i239 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i239, align 8, !tbaa !84
  %i.mm = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !28 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %43, i64 36
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !29
  %.not.i.i.i.i.i.i.i240 = icmp ult i32 %i.mn, %i.mp
  br i1 %.not.i.i.i.i.i.i.i240, label %bb.ar, label %bb.aq, !prof !34

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, ptr noundef nonnull align 8 dereferenceable(24) %21)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA19_KcEEOS0_OT_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.mq = zext i32 %i.mn to i64
  %i.mr = load ptr, ptr %i.mk, align 8, !tbaa !26
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %i.mr, i64 %i.mq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ms, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  %i.mt = load i32, ptr %i.mm, align 8, !tbaa !28
  %i.mu = add i32 %i.mt, 1
  store i32 %i.mu, ptr %i.mm, align 8, !tbaa !28
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %.pre572 = load ptr, ptr %43, align 8, !tbaa !13
  %i.mv = icmp eq ptr %.pre572, null
  %i.mw = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 44
  %i.my = load i32, ptr %i.mx, align 4            ; 2 uses
  %.not.i.i.i.i241 = icmp ugt i32 %i.my, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i241)
  br i1 %i.mv, label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.as

bb.as:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA19_KcEEOS0_OT_.exit
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  %i.na = lshr i32 %i.my, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i242 = and i32 %i.na, 1
  %i.nb = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i242 to i64
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %i.nb
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !105
  %i.ne = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr %i.nd) #26
  %i.nf = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !28 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %43, i64 36
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !29
  %.not.i.i.i.i.i.i.i248 = icmp ult i32 %i.ng, %i.ni
  br i1 %.not.i.i.i.i.i.i.i248, label %bb.au, label %bb.at, !prof !34

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ne, ptr noundef nonnull align 8 dereferenceable(24) %20)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.nj = zext i32 %i.ng to i64
  %i.nk = load ptr, ptr %i.ne, align 8, !tbaa !26
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.nk, i64 %i.nj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nl, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false)
  %i.nm = load i32, ptr %i.nf, align 8, !tbaa !28
  %i.nn = add i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nf, align 8, !tbaa !28
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %bb.ao, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA19_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %43) #26, !noalias !147
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.no, ptr %0, align 8, !tbaa !26, !alias.scope !150
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.np, align 8, !tbaa !28, !alias.scope !150
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.nq, align 4, !tbaa !29, !alias.scope !150
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.nr, align 8, !tbaa !86, !alias.scope !150
  %i.ns = load ptr, ptr %43, align 8, !tbaa !13
  %.not.i.i249 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i249, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %43) #26
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %43, i64 200 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 8, !tbaa !23, !range !24, !noundef !25
  %i.nv = trunc nuw i8 %i.nu to i1
  store i8 0, ptr %i.nt, align 8, !tbaa !23
  br i1 %i.nv, label %bb.ax, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit250

bb.ax:                                            ; preds = %bb.aw
  %i.nw = getelementptr inbounds nuw i8, ptr %43, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.nw) #26
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit250

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit250:   ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  br label %.critedge133

_ZN4mlir9transform13CastAndCallOp11getFunctionEv.exit267: ; preds = %.critedge131
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.ls, i64 %i.lx ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 80
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !33
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 84
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !33
  %i.oc = add i32 %i.ob, %i.nz
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 88
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !33
  %i.of = add i32 %i.oc, %i.oe
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ls, i64 72
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !35
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.oi, i64 %i.og
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %.sroa.0.0.copyload.i.i.i.i265 = load ptr, ptr %i.ok, align 8, !tbaa !38
  %i.ol = call { ptr, i64 } @_ZNK4mlir9transform14TransformState17getPayloadOpsViewENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(328) %4, ptr %.sroa.0.0.copyload.i.i.i.i265) #26, !noalias !153 ; 2 uses
  %i.om = extractvalue { ptr, i64 } %i.ol, 0      ; 3 uses
  %i.on = extractvalue { ptr, i64 } %i.ol, 1      ; 2 uses
  %.idx.i.i268 = shl i64 %i.on, 3
  %i.oo = getelementptr i8, ptr %i.om, i64 %.idx.i.i268 ; 5 uses
  %.not2.i.i.i.i.i269 = icmp eq i64 %i.on, 0
  br i1 %.not2.i.i.i.i.i269, label %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit277, label %.lr.ph.i.i.i.i.i270

.lr.ph.i.i.i.i.i270:                              ; preds = %_ZN4mlir9transform13CastAndCallOp11getFunctionEv.exit267, %bb.ay
  %.sroa.010.0.i.i271 = phi ptr [ %i.oq, %bb.ay ], [ %i.om, %_ZN4mlir9transform13CastAndCallOp11getFunctionEv.exit267 ] ; 3 uses
  %i.op = load ptr, ptr %.sroa.010.0.i.i271, align 8, !tbaa !91, !noalias !156
  %.not1.i.i.i.i.i272 = icmp eq ptr %i.op, null
  br i1 %.not1.i.i.i.i.i272, label %bb.ay, label %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit277

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i270
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i271, i64 8 ; 2 uses
  %.not.i.i.i.i.i276 = icmp eq ptr %i.oq, %i.oo
  br i1 %.not.i.i.i.i.i276, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread, label %.lr.ph.i.i.i.i.i270, !llvm.loop !95

_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit277: ; preds = %.lr.ph.i.i.i.i.i270, %_ZN4mlir9transform13CastAndCallOp11getFunctionEv.exit267
  %.sroa.010.1.i.i273 = phi ptr [ %i.om, %_ZN4mlir9transform13CastAndCallOp11getFunctionEv.exit267 ], [ %.sroa.010.0.i.i271, %.lr.ph.i.i.i.i.i270 ] ; 3 uses
  %.not.i282 = icmp eq ptr %.sroa.010.1.i.i273, %i.oo
  br i1 %.not.i282, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread, label %.preheader.i283

.preheader.i283:                                  ; preds = %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit277
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i273, i64 8 ; 2 uses
  %.not2.i.i.i.i284 = icmp eq ptr %i.or, %i.oo
  br i1 %.not2.i.i.i.i284, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread478, label %.lr.ph.i.i.i.i285

.lr.ph.i.i.i.i285:                                ; preds = %.preheader.i283, %bb.az
  %.sroa.09.0.i286 = phi ptr [ %i.ot, %bb.az ], [ %i.or, %.preheader.i283 ] ; 3 uses
  %i.os = load ptr, ptr %.sroa.09.0.i286, align 8, !tbaa !91, !noalias !159
  %.not1.i.i.i.i287 = icmp eq ptr %i.os, null
  br i1 %.not1.i.i.i.i287, label %bb.az, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290

bb.az:                                            ; preds = %.lr.ph.i.i.i.i285
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i286, i64 8 ; 2 uses
  %.not.i.i.i.i289 = icmp eq ptr %i.ot, %i.oo
  br i1 %.not.i.i.i.i289, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread478, label %.lr.ph.i.i.i.i285, !llvm.loop !95

_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290: ; preds = %.lr.ph.i.i.i.i285
  %i.ou = icmp eq ptr %.sroa.09.0.i286, %i.oo
  br i1 %i.ou, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread478, label %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread

_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread: ; preds = %bb.ay, %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit277, %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  %i.ov = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i8 1, ptr %i.ov, align 8, !tbaa !12
  %i.ow = getelementptr inbounds nuw i8, ptr %46, i64 33
  store i8 1, ptr %i.ow, align 1, !tbaa !8
  %i.ox = load ptr, ptr %1, align 8, !tbaa !30, !noalias !162
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %.sroa.0.0.copyload.i.i.i291 = load ptr, ptr %i.oy, align 8, !noalias !165
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %45, ptr %.sroa.0.0.copyload.i.i.i291, ptr noundef nonnull align 8 dereferenceable(34) %46) #26
  %i.oz = load ptr, ptr %45, align 8, !tbaa !13
  %.not.i.i.i.i292 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i.i292, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA35_KcEEOS0_OT_.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread
  %i.pa = getelementptr inbounds nuw i8, ptr %45, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store i32 3, ptr %19, align 8, !tbaa !79
  %i.pb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.9, ptr %i.pb, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i293 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 34, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i293, align 8, !tbaa !84
  %i.pc = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !28 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %45, i64 36
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !29
  %.not.i.i.i.i.i.i.i294 = icmp ult i32 %i.pd, %i.pf
  br i1 %.not.i.i.i.i.i.i.i294, label %bb.bc, label %bb.bb, !prof !34

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull align 8 dereferenceable(24) %19)
  br label %_ZN4mlir10Diagnostic6appendIRA35_KcEERS0_OT_.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.pg = zext i32 %i.pd to i64
  %i.ph = load ptr, ptr %i.pa, align 8, !tbaa !26
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %i.pg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pi, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false)
  %i.pj = load i32, ptr %i.pc, align 8, !tbaa !28
  %i.pk = add i32 %i.pj, 1
  store i32 %i.pk, ptr %i.pc, align 8, !tbaa !28
  br label %_ZN4mlir10Diagnostic6appendIRA35_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA35_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA35_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA35_KcEEOS0_OT_.exit: ; preds = %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread, %_ZN4mlir10Diagnostic6appendIRA35_KcEERS0_OT_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %45) #26, !noalias !168
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.pl, ptr %0, align 8, !tbaa !26, !alias.scope !171
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.pm, align 8, !tbaa !28, !alias.scope !171
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.pn, align 4, !tbaa !29, !alias.scope !171
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.po, align 8, !tbaa !86, !alias.scope !171
  %i.pp = load ptr, ptr %45, align 8, !tbaa !13
  %.not.i.i295 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i295, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA35_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %45) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA35_KcEEOS0_OT_.exit
  %i.pq = getelementptr inbounds nuw i8, ptr %45, i64 200 ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 8, !tbaa !23, !range !24, !noundef !25
  %i.ps = trunc nuw i8 %i.pr to i1
  store i8 0, ptr %i.pq, align 8, !tbaa !23
  br i1 %i.ps, label %bb.bf, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit296

bb.bf:                                            ; preds = %bb.be
  %i.pt = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.pt) #26
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit296

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit296:   ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %.critedge133

_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread478: ; preds = %bb.az, %.preheader.i283, %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290
  %i.pu = load ptr, ptr %.sroa.010.1.i.i273, align 8, !tbaa !91 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i297 = load ptr, ptr %i.pv, align 8, !tbaa !136
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i297, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !138
  %i.py = icmp eq ptr %i.px, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i = select i1 %i.py, ptr %i.pu, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %42, align 8
  %.not501 = icmp eq ptr %spec.select.i.i, null
  br i1 %.not501, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %_ZN4llvm16hasSingleElementIRNS_14iterator_rangeINS_20filter_iterator_implIPKPN4mlir9OperationEZNKS3_9transform14TransformState13getPayloadOpsENS3_5ValueEEUlS5_E_St26bidirectional_iterator_tagEEEEEEbOT_.exit290.thread478
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  %i.pz = getelementptr inbounds nuw i8, ptr %48, i64 32
  store i8 1, ptr %i.pz, align 8, !tbaa !12
  %i.qa = getelementptr inbounds nuw i8, ptr %48, i64 33
  store i8 1, ptr %i.qa, align 1, !tbaa !8
  %i.qb = load ptr, ptr %1, align 8, !tbaa !30, !noalias !174
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %.sroa.0.0.copyload.i.i.i298 = load ptr, ptr %i.qc, align 8, !noalias !177
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %47, ptr %.sroa.0.0.copyload.i.i.i298, ptr noundef nonnull align 8 dereferenceable(34) %48) #26
  %i.qd = load ptr, ptr %47, align 8, !tbaa !13
  %.not.i.i.i.i299 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i299, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qe = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store i32 3, ptr %18, align 8, !tbaa !79
  %i.qf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.10, ptr %i.qf, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i300 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 27, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i300, align 8, !tbaa !84
  %i.qg = getelementptr inbounds nuw i8, ptr %47, i64 32 ; 3 uses
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !28 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %47, i64 36
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !29
  %.not.i.i.i.i.i.i.i301 = icmp ult i32 %i.qh, %i.qj
  br i1 %.not.i.i.i.i.i.i.i301, label %bb.bj, label %bb.bi, !prof !34

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, ptr noundef nonnull align 8 dereferenceable(24) %18)
  br label %_ZN4mlir10Diagnostic6appendIRA28_KcEERS0_OT_.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.qk = zext i32 %i.qh to i64
  %i.ql = load ptr, ptr %i.qe, align 8, !tbaa !26
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %i.ql, i64 %i.qk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qm, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false)
  %i.qn = load i32, ptr %i.qg, align 8, !tbaa !28
  %i.qo = add i32 %i.qn, 1
  store i32 %i.qo, ptr %i.qg, align 8, !tbaa !28
  br label %_ZN4mlir10Diagnostic6appendIRA28_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA28_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit: ; preds = %bb.bg, %_ZN4mlir10Diagnostic6appendIRA28_KcEERS0_OT_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %47) #26, !noalias !180
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qp, ptr %0, align 8, !tbaa !26, !alias.scope !183
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.qq, align 8, !tbaa !28, !alias.scope !183
end_hunk_0
