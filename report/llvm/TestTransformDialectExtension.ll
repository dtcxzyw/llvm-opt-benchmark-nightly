Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestTransformDialectExtension?download=true
inline.NumInlined: 30158
inline.NumDeleted: 11507
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4mlir4test18TestConsumeOperand20verifyInvariantsImplEv:bb.a

_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i22.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform33TransformValueHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !219 ; 2 uses
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !28 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i23.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i23.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i33.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i24.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i24.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i24.i
  %.017.i.i.i.i.i.i.i.i.i.i26.i = phi i64 [ %i.cd, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i24.i ], [ %.1.i.i.i.i.i.i.i.i.i.i32.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i27.i = phi ptr [ %i.ca, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i24.i ], [ %.112.i.i.i.i.i.i.i.i.i.i31.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i ] ; 2 uses
  %i.ce = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i26.i, 1 ; 3 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i27.i, i64 %i.ce ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i30.i = load ptr, ptr %i.cf, align 8, !tbaa !219
  %i.cg = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i30.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i22.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = xor i64 %i.ce, -1
  %i.cj = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i26.i, %i.ci
  %.112.i.i.i.i.i.i.i.i.i.i31.i = select i1 %i.cg, ptr %i.ch, ptr %.01116.i.i.i.i.i.i.i.i.i.i27.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i32.i = select i1 %i.cg, i64 %i.cj, i64 %i.ce ; 2 uses
  %i.ck = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i32.i, 0
  br i1 %i.ck, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i33.i, !llvm.loop !948

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i33.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i, %_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i34.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.cd, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i35.i = phi ptr [ %i.ca, %_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i31.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i25.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %.pre-phi.i.i.i.i.i.i.i34.i
  %.not.i.i.i.i.i.i.i36.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i35.i, %i.cl
  br i1 %.not.i.i.i.i.i.i.i36.i, label %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i33.i
  %i.cm = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i35.i, align 8, !tbaa !712
  %i.cn = icmp eq ptr %i.cm, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i22.i
  br i1 %i.cn, label %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, label %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i

_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i: ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i35.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !949
  %.not54.i = icmp eq ptr %i.cp, null
  br i1 %.not54.i, label %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i, label %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread

_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, %bb.j, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i33.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i8 5, ptr %i.n, align 8, !tbaa !65
  store i8 1, ptr %i.o, align 1, !tbaa !68
  store ptr @.str.52, ptr %9, align 8, !tbaa !64
  store i64 7, ptr %i.p, align 8, !tbaa !64
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(34) %9) #31
  %i.cq = load ptr, ptr %8, align 8, !tbaa !176
  %.not.i.i.i24 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i24, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i32 3, ptr %7, align 8, !tbaa !102
  store ptr @.str.149, ptr %i.r, align 8, !tbaa !105
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !107
  %i.cr = load i32, ptr %i.s, align 8, !tbaa !33  ; 2 uses
  %i.cs = load i32, ptr %i.t, align 4, !tbaa !34
  %.not.i.i.i.i.i.i = icmp ult i32 %i.cr, %i.cs
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l, !prof !108

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ct = zext i32 %i.cr to i64
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.cw = load i32, ptr %i.s, align 8, !tbaa !33
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.s, align 8, !tbaa !33
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !176
  %.not.i.i38.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i38.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i32 5, ptr %6, align 8, !tbaa !102
  store i64 0, ptr %i.u, align 8, !tbaa !64
  %i.cy = load i32, ptr %i.s, align 8, !tbaa !33  ; 2 uses
  %i.cz = load i32, ptr %i.t, align 4, !tbaa !34
  %.not.i.i.i.i.i39.i = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i.i.i.i.i39.i, label %bb.p, label %bb.o, !prof !108

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.dd = load i32, ptr %i.s, align 8, !tbaa !33
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.s, align 8, !tbaa !33
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.pr46.i = load ptr, ptr %8, align 8, !tbaa !176
  %.not.i.i40.i = icmp eq ptr %.pr46.i, null
  br i1 %.not.i.i40.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i32 3, ptr %5, align 8, !tbaa !102
  store ptr @.str.157, ptr %i.v, align 8, !tbaa !105
  store i64 52, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i41.i, align 8, !tbaa !107
  %i.df = load i32, ptr %i.s, align 8, !tbaa !33  ; 2 uses
  %i.dg = load i32, ptr %i.t, align 4, !tbaa !34
  %.not.i.i.i.i.i42.i = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i.i.i.i.i42.i, label %bb.s, label %bb.r, !prof !108

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.dk = load i32, ptr %i.s, align 8, !tbaa !33
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.s, align 8, !tbaa !33
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pr48.pr.i = load ptr, ptr %8, align 8, !tbaa !176
  %.not.i.i43.i = icmp eq ptr %.pr48.pr.i, null
  br i1 %.not.i.i43.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.ab) #31
  %i.dm = load i32, ptr %i.s, align 8, !tbaa !33  ; 2 uses
  %i.dn = load i32, ptr %i.t, align 4, !tbaa !34
  %.not.i.i.i.i.i44.i = icmp ult i32 %i.dm, %i.dn
  br i1 %.not.i.i.i.i.i44.i, label %bb.v, label %bb.u, !prof !108

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.do = zext i32 %i.dm to i64
  %i.dp = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dr = load i32, ptr %i.s, align 8, !tbaa !33
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.s, align 8, !tbaa !33
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i: ; preds = %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i, %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i, %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i
  %i.dt = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #31
  %i.du = load ptr, ptr %8, align 8, !tbaa !176
  %.not.i.i25 = icmp eq ptr %i.du, null
  br i1 %.not.i.i25, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i
  %i.dv = load i8, ptr %i.w, align 8, !tbaa !184, !range !185, !noundef !186
  %i.dw = trunc nuw i8 %i.dv to i1
  store i8 0, ptr %i.w, align 8, !tbaa !184
  br i1 %i.dw, label %bb.y, label %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.x) #31
  br label %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit

_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.dx = trunc nuw i8 %i.dt to i1
  br i1 %i.dx, label %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %.thread82

_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread: ; preds = %_ZN4llvm3isaIJN4mlir9transform27TransformParamTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit
  %i.dy = load ptr, ptr %0, align 8, !tbaa !10    ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 44
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.ea, 8388608
  %.not.i.i.i26 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31.thread, label %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31, !prof !14

_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31: ; preds = %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 68
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !15 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !18
  %i.eg = zext i32 %i.ed to i64
  %i.eh = add nsw i64 %i.eg, -1                   ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 1
  br i1 %i.ei, label %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31
  %.not8792 = icmp eq i32 %i.ed, 1
  br i1 %.not8792, label %.thread82, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %13 = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %.sroa.0.0.copyload.i.i.i42 = load ptr, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i42, i64 8
  %.0.copyload.i.i.i.i.i43 = load i64, ptr %14, align 8
  %15 = and i64 %.0.copyload.i.i.i.i.i43, -8
  %16 = inttoptr i64 %15 to ptr
  %17 = call fastcc i8 @_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.dy, ptr %16, ptr nonnull @.str.52, i64 7, i32 noundef 1)
  br label %.thread82

_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31.thread: ; preds = %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31
  %i.ej = phi i64 [ %i.eh, %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31 ], [ -1, %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.el, align 1, !tbaa !68
  store ptr @.str.50, ptr %12, align 8, !tbaa !64
  store i8 3, ptr %i.ek, align 8, !tbaa !65
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #31
  %i.em = load ptr, ptr %11, align 8, !tbaa !176
  %.not.i.i32 = icmp eq ptr %i.em, null
  br i1 %.not.i.i32, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31.thread
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 5, ptr %3, align 8, !tbaa !102
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.eo, align 8, !tbaa !64
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 9 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !33 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !34
  %.not.i.i.i.i.i = icmp ult i32 %i.eq, %i.es
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa, !prof !108

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.et = zext i32 %i.eq to i64
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ew = load i32, ptr %i.ep, align 8, !tbaa !33
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ep, align 8, !tbaa !33
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %.pr = load ptr, ptr %11, align 8, !tbaa !176
  %.not.i.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i.i33, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store i32 3, ptr %2, align 8, !tbaa !102
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.51, ptr %i.ey, align 8, !tbaa !105
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !107
  %i.ez = load i32, ptr %i.ep, align 8, !tbaa !33 ; 2 uses
  %i.fa = load i32, ptr %i.er, align 4, !tbaa !34
  %.not.i.i.i.i.i34 = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i.i.i.i.i34, label %bb.ae, label %bb.ad, !prof !108

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fb = zext i32 %i.ez to i64
  %i.fc = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fe = load i32, ptr %i.ep, align 8, !tbaa !33
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.ep, align 8, !tbaa !33
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.pr77 = load ptr, ptr %11, align 8, !tbaa !176
  %.not.i.i35 = icmp eq ptr %.pr77, null
  br i1 %.not.i.i35, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store i32 5, ptr %1, align 8, !tbaa !102
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ej, ptr %i.fg, align 8, !tbaa !64
  %i.fh = load i32, ptr %i.ep, align 8, !tbaa !33 ; 2 uses
  %i.fi = load i32, ptr %i.er, align 4, !tbaa !34
  %.not.i.i.i.i.i36 = icmp ult i32 %i.fh, %i.fi
  br i1 %.not.i.i.i.i.i36, label %bb.ah, label %bb.ag, !prof !108

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.fj = zext i32 %i.fh to i64
  %i.fk = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fm = load i32, ptr %i.ep, align 8, !tbaa !33
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.ep, align 8, !tbaa !33
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir4test18TestConsumeOperand14getODSOperandsEj.exit31.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.fo = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #31
  %i.fp = load ptr, ptr %11, align 8, !tbaa !176
  %.not.i37 = icmp eq ptr %i.fp, null
  br i1 %.not.i37, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !184, !range !185, !noundef !186
  %i.fs = trunc nuw i8 %i.fr to i1
  store i8 0, ptr %i.fq, align 8, !tbaa !184
  br i1 %i.fs, label %bb.ak, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ft) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.thread82

.thread82:                                        ; preds = %.lr.ph.preheader, %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit, %.preheader, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %bb.a
  %.sroa.019.8 = phi i8 [ %i.fo, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZL63__mlir_ods_local_type_constraint_TestTransformDialectExtension3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit ], [ 0, %bb.a ], [ 1, %.preheader ], [ %17, %.lr.ph.preheader ]
  ret i8 %.sroa.019.8
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4test18TestConsumeOperand16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir4test18TestConsumeOperand20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4test18TestConsumeOperand5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1104", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.1069", align 8 ; 10 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.879", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.1107", align 8 ; 9 uses
  %8 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::SMLoc", align 8       ; 5 uses
  %10 = alloca %class.anon.1109, align 8          ; 7 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 6 uses
  %12 = alloca %"class.mlir::Type", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %2, ptr %3, align 8, !tbaa !951
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !954
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 4, ptr %i.d, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr null, ptr %5, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %5, ptr %6, align 8, !tbaa !957
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !960
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !34
  %i.i = load ptr, ptr %0, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  %i.m = load ptr, ptr %0, align 8, !tbaa !215
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i8 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #31
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !215
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i8 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !215
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 24, i1 false)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !215
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 744
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i16 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %8, i1 noundef zeroext true) #31 ; 2 uses
  %i.ae = and i16 %i.ad, 256
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i16 %i.ad to i1
  br i1 %i.af, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !34
  %.not.i = icmp ult i32 %i.ag, %i.ah
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !108

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(28) %8)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = zext i32 %i.ag to i64
  %i.aj = load ptr, ptr %4, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.al = load i32, ptr %i.c, align 8, !tbaa !33
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.c, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_.exit: ; preds = %bb.g, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_.exit, %bb.b
  %.sroa.066.0 = phi ptr [ %i.z, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.an = load ptr, ptr %0, align 8, !tbaa !215
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  store ptr %i.aq, ptr %9, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !215
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #31
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.i, label %.critedge51

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.017.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store ptr %0, ptr %10, align 8, !tbaa !932
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.ay, align 8, !tbaa !934
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %i.az, align 8, !tbaa !936
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !924
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.bb = call ptr @_ZNK4mlir13NamedAttrList3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88) %i.ar, ptr %.sroa.0.0.copyload.i.i.i) #31 ; 2 uses
  %.not.i54 = icmp eq ptr %i.bb, null
  br i1 %.not.i54, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = ptrtoint ptr %10 to i64
  %i.bd = call fastcc i8 @_ZL63__mlir_ods_local_attr_constraint_TestTransformDialectExtension3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.bb, ptr nonnull @.str.59, i64 22, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_4test18TestConsumeOperand5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_l", i64 %i.bc)
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.critedge51

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.bf = load ptr, ptr %0, align 8, !tbaa !215
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store ptr null, ptr %11, align 8, !tbaa !955
  %i.bk = load ptr, ptr %0, align 8, !tbaa !215
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 568
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #31, !inline_history !972
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %11, align 8, !tbaa !920
  store i64 %i.bp, ptr %5, align 8, !tbaa !920
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.bq = load ptr, ptr %0, align 8, !tbaa !215
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store ptr null, ptr %12, align 8, !tbaa !955
  %i.bv = load ptr, ptr %0, align 8, !tbaa !215
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 584
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call i16 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #31 ; 2 uses
end_hunk_0
