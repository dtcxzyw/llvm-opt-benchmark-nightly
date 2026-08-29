Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfile?download=true
inline.NumInlined: 13228
inline.NumDeleted: 6562
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm23SampleProfileLoaderPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.agt = phi ptr [ %i.agi, %bb.eo ], [ %i.agh, %bb.ep ], [ %i.agh, %.lr.ph.i.i.i16.i.i ] ; 3 uses
  store ptr %i.agt, ptr %16, align 8, !tbaa !709, !alias.scope !691, !noalias !678
  %.sroa.01.07.i.i.i = load ptr, ptr %i.aea, align 8, !tbaa !566, !noalias !693 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.sroa.01.07.i.i.i, %i.adz
  br i1 %.not8.i.i.i, label %_ZN12_GLOBAL__N_119SampleProfileLoader22buildProfiledCallGraphERN4llvm6ModuleE.exit.i.i, label %.lr.ph.i.i86.i

.lr.ph.i.i86.i:                                   ; preds = %_ZNSt10unique_ptrIN4llvm10sampleprof17ProfiledCallGraphESt14default_deleteIS2_EED2Ev.exit.i.i.i
  %i.agu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.agw = getelementptr inbounds nuw i8, ptr %14, i64 12
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.thread.i.i.i, %.lr.ph.i.i86.i
  %.sroa.01.09.i.i.i = phi ptr [ %.sroa.01.07.i.i.i, %.lr.ph.i.i86.i ], [ %.sroa.01.0.i.i.i, %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.thread.i.i.i ] ; 2 uses
  %i.agx = getelementptr inbounds i8, ptr %.sroa.01.09.i.i.i, i64 -64 ; 4 uses
  %i.agy = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.agx) #24, !noalias !678
  br i1 %i.agy, label %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.thread.i.i.i, label %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.i.i.i

_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.i.i.i: ; preds = %bb.eq
  %i.agz = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.agx, ptr nonnull @.str.163, i64 18) #24, !noalias !678
  br i1 %i.agz, label %bb.er, label %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.thread.i.i.i

bb.er:                                            ; preds = %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !693
  %i.aha = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.agx, ptr nonnull @.str.152, i64 36) #24, !noalias !678
  store ptr %i.aha, ptr %15, align 8, !noalias !693
  %i.ahb = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #24, !noalias !678 ; 2 uses
  %i.ahc = extractvalue { ptr, i64 } %i.ahb, 0
  %i.ahd = extractvalue { ptr, i64 } %i.ahb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !693
  %i.ahe = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(140) %i.agx) #24, !noalias !678 ; 2 uses
  %i.ahf = extractvalue { ptr, i64 } %i.ahe, 0
  %i.ahg = extractvalue { ptr, i64 } %i.ahe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !693
  store ptr %i.agu, ptr %14, align 8, !tbaa !27, !noalias !693
  store i32 3, ptr %i.agw, align 4, !tbaa !33, !noalias !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agu, ptr noundef nonnull align 8 dereferenceable(48) @constinit, i64 48, i1 false), !noalias !693
  store i32 3, ptr %i.agv, align 8, !tbaa !32, !noalias !693
  %i.ahh = call { ptr, i64 } @_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefENS_8ArrayRefIS2_EES2_(ptr %i.ahf, i64 %i.ahg, ptr nonnull %i.agu, i64 3, ptr %i.ahc, i64 %i.ahd), !noalias !678 ; 2 uses
  %i.ahi = load ptr, ptr %14, align 8, !tbaa !27, !noalias !693 ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.agu
  br i1 %i.ahj, label %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @free(ptr noundef %i.ahi) #24, !noalias !678
  br label %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit.i.i.i

_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit.i.i.i: ; preds = %bb.es, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !693
  %i.ahk = extractvalue { ptr, i64 } %i.ahh, 0    ; 2 uses
  %i.ahl = extractvalue { ptr, i64 } %i.ahh, 1    ; 3 uses
  %i.ahm = icmp ne i64 %i.ahl, 0
  %i.ahn = load i8, ptr @_ZN4llvm10sampleprof15FunctionSamples6UseMD5E, align 1, !range !24, !noalias !693
  %i.aho = trunc nuw i8 %i.ahn to i1
  %or.cond.i.i.i.i50 = select i1 %i.ahm, i1 %i.aho, i1 false
  br i1 %or.cond.i.i.i.i50, label %bb.et, label %_ZN4llvm10sampleprofL14getRepInFormatENS_9StringRefE.exit.i.i.i

bb.et:                                            ; preds = %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit.i.i.i
  %i.ahp = call noundef i64 @_ZN4llvm11GlobalValue30getGUIDAssumingExternalLinkageENS_9StringRefE(ptr %i.ahk, i64 %i.ahl) #24, !noalias !678
  br label %_ZN4llvm10sampleprofL14getRepInFormatENS_9StringRefE.exit.i.i.i

_ZN4llvm10sampleprofL14getRepInFormatENS_9StringRefE.exit.i.i.i: ; preds = %bb.et, %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit.i.i.i
  %.sroa.06.0.i.i.i.i = phi ptr [ null, %bb.et ], [ %i.ahk, %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit.i.i.i ]
  %.sroa.37.0.i.i.i.i = phi i64 [ %i.ahp, %bb.et ], [ %i.ahl, %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit.i.i.i ]
  call void @_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE(ptr noundef nonnull align 8 dereferenceable(112) %i.agt, ptr %.sroa.06.0.i.i.i.i, i64 %.sroa.37.0.i.i.i.i), !noalias !678
  br label %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.thread.i.i.i

_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.thread.i.i.i: ; preds = %_ZN4llvm10sampleprofL14getRepInFormatENS_9StringRefE.exit.i.i.i, %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.i.i.i, %bb.eq
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i.i.i, i64 8
  %.sroa.01.0.i.i.i = load ptr, ptr %i.ahq, align 8, !tbaa !566, !noalias !678 ; 2 uses
  %.not.i.i87.i = icmp eq ptr %.sroa.01.0.i.i.i, %i.adz
  br i1 %.not.i.i87.i, label %_ZN12_GLOBAL__N_119SampleProfileLoader22buildProfiledCallGraphERN4llvm6ModuleE.exit.i.i, label %bb.eq

_ZN12_GLOBAL__N_119SampleProfileLoader22buildProfiledCallGraphERN4llvm6ModuleE.exit.i.i: ; preds = %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit.thread.i.i.i, %_ZNSt10unique_ptrIN4llvm10sampleprof17ProfiledCallGraphESt14default_deleteIS2_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !678
  store i32 0, ptr %17, align 8, !tbaa !711, !alias.scope !725, !noalias !678
  %i.ahr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ahr, i8 0, i64 96, i1 false), !alias.scope !725, !noalias !678
  call void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE11DFSVisitOneEPNS1_21ProfiledCallGraphNodeE(ptr noundef nonnull align 8 dereferenceable(104) %17, ptr noundef nonnull %i.agt), !noalias !678
  call void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE10GetNextSCCEv(ptr noundef nonnull align 8 dereferenceable(104) %17), !noalias !678
  %i.ahs = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 5 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 3 uses
  %i.ahu = load ptr, ptr %i.ahs, align 8, !tbaa !730, !noalias !678 ; 2 uses
  %i.ahv = load ptr, ptr %i.aht, align 8, !tbaa !730, !noalias !678 ; 2 uses
  %i.ahw = icmp eq ptr %i.ahu, %i.ahv
  br i1 %i.ahw, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FunctionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i.i, label %.lr.ph72.i.i

.lr.ph72.i.i:                                     ; preds = %_ZN12_GLOBAL__N_119SampleProfileLoader22buildProfiledCallGraphERN4llvm6ModuleE.exit.i.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.aib = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aid = getelementptr inbounds nuw i8, ptr %65, i64 1240
  %i.aie = getelementptr inbounds nuw i8, ptr %65, i64 1252
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i, %.lr.ph72.i.i
  %.sroa.0156.9.i = phi ptr [ %.sroa.0156.0.i, %.lr.ph72.i.i ], [ %.sroa.0156.12.i, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i ] ; 2 uses
  %.sroa.9.9.i = phi ptr [ %.sroa.0156.0.i, %.lr.ph72.i.i ], [ %.sroa.9.12.i, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i ] ; 2 uses
  %.sroa.17.9.i = phi ptr [ %.sroa.17.0.i, %.lr.ph72.i.i ], [ %.sroa.17.12.i, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i ] ; 2 uses
  %i.aif = phi ptr [ %.sroa.0156.0.i, %.lr.ph72.i.i ], [ %.pre82.i.i, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i ] ; 2 uses
  %i.aig = phi ptr [ %.sroa.0156.0.i, %.lr.ph72.i.i ], [ %i.akp, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i ] ; 2 uses
  %i.aih = phi ptr [ %i.ahv, %.lr.ph72.i.i ], [ %i.akw, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i ] ; 2 uses
  %i.aii = phi ptr [ %i.ahu, %.lr.ph72.i.i ], [ %i.akv, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !678
  %i.aij = ptrtoint ptr %i.aih to i64             ; 2 uses
  %i.aik = ptrtoint ptr %i.aii to i64             ; 2 uses
  %i.ail = sub i64 %i.aij, %i.aik                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !678
  %.not.i.i.i.i18.i.i = icmp eq ptr %i.aih, %i.aii
  br i1 %.not.i.i.i.i18.i.i, label %_ZNSt12_Vector_baseIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2EmRKS4_.exit.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aim = icmp ugt i64 %i.ail, 9223372036854775800
  br i1 %i.aim, label %bb.ew, label %_ZNSt15__new_allocatorIPN4llvm10sampleprof21ProfiledCallGraphNodeEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !442

bb.ew:                                            ; preds = %bb.ev
  call void @_ZSt28__throw_bad_array_new_lengthv() #27, !noalias !678
  unreachable

_ZNSt15__new_allocatorIPN4llvm10sampleprof21ProfiledCallGraphNodeEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ev
  %i.ain = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ail) #26, !noalias !678
  %.pre78.i.i = load ptr, ptr %i.ahs, align 8, !tbaa !730, !noalias !678 ; 2 uses
  %.pre79.i.i = load ptr, ptr %i.aht, align 8, !tbaa !730, !noalias !678
  %.pre83.i.i = ptrtoint ptr %.pre79.i.i to i64
  %.pre84.i.i = ptrtoint ptr %.pre78.i.i to i64
  br label %_ZNSt12_Vector_baseIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2EmRKS4_.exit.i.i.i

_ZNSt12_Vector_baseIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2EmRKS4_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIPN4llvm10sampleprof21ProfiledCallGraphNodeEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.eu
  %.pre-phi85.i.i = phi i64 [ %.pre84.i.i, %_ZNSt15__new_allocatorIPN4llvm10sampleprof21ProfiledCallGraphNodeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.aik, %bb.eu ]
  %.pre-phi.i.i = phi i64 [ %.pre83.i.i, %_ZNSt15__new_allocatorIPN4llvm10sampleprof21ProfiledCallGraphNodeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.aij, %bb.eu ]
  %i.aio = phi ptr [ %.pre78.i.i, %_ZNSt15__new_allocatorIPN4llvm10sampleprof21ProfiledCallGraphNodeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.aii, %bb.eu ] ; 2 uses
  %i.aip = phi ptr [ %i.ain, %_ZNSt15__new_allocatorIPN4llvm10sampleprof21ProfiledCallGraphNodeEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.eu ] ; 7 uses
  store ptr %i.aip, ptr %18, align 8, !tbaa !731, !noalias !678
  store ptr %i.aip, ptr %i.ahx, align 8, !tbaa !732, !noalias !678
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.ail
  store ptr %i.aiq, ptr %i.ahy, align 8, !tbaa !733, !noalias !678
  %i.air = sub i64 %.pre-phi.i.i, %.pre-phi85.i.i ; 4 uses
  %i.ais = icmp sgt i64 %i.air, 8
  br i1 %i.ais, label %bb.ex, label %bb.ey, !prof !604

bb.ex:                                            ; preds = %_ZNSt12_Vector_baseIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2EmRKS4_.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aip, ptr align 8 %i.aio, i64 %i.air, i1 false), !noalias !678
  br label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i

bb.ey:                                            ; preds = %_ZNSt12_Vector_baseIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2EmRKS4_.exit.i.i.i
  %i.ait = icmp eq i64 %i.air, 8
  br i1 %i.ait, label %bb.ez, label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.aiu = load ptr, ptr %i.aio, align 8, !tbaa !734, !noalias !678
  store ptr %i.aiu, ptr %i.aip, align 8, !tbaa !734, !noalias !678
  br label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i

_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i: ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.aiv = getelementptr inbounds i8, ptr %i.aip, i64 %i.air ; 2 uses
  store ptr %i.aiv, ptr %i.ahx, align 8, !tbaa !732, !noalias !678
  %i.aiw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm15SortProfiledSCCE, i64 120), align 8, !tbaa !271, !range !24, !noalias !678, !noundef !25
  %i.aix = trunc nuw i8 %i.aiw to i1
  br i1 %i.aix, label %bb.fa, label %bb.ff

bb.fa:                                            ; preds = %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !678
  call void @_ZN4llvm19scc_member_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEEC2ERKSt6vectorIPNS1_21ProfiledCallGraphNodeESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.ahs), !noalias !678
  %i.aiy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.ahz), !noalias !678 ; 0 uses
  %i.aiz = load ptr, ptr %i.ahz, align 8, !tbaa !731, !noalias !678 ; 3 uses
  %.not.i.i.i.i19.i.i = icmp eq ptr %i.aiz, null
  br i1 %.not.i.i.i.i19.i.i, label %_ZN4llvm19scc_member_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEED2Ev.exit.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aja = load ptr, ptr %i.aia, align 8, !tbaa !733, !noalias !678
  %i.ajb = ptrtoint ptr %i.aja to i64
  %i.ajc = ptrtoint ptr %i.aiz to i64
  %i.ajd = sub i64 %i.ajb, %i.ajc
  call void @_ZdlPvm(ptr noundef nonnull %i.aiz, i64 noundef %i.ajd) #25, !noalias !678
  br label %_ZN4llvm19scc_member_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEED2Ev.exit.i.i

_ZN4llvm19scc_member_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEED2Ev.exit.i.i: ; preds = %bb.fb, %bb.fa
  %i.aje = load i32, ptr %i.aib, align 4, !tbaa !736, !noalias !678 ; 2 uses
  %i.ajf = icmp eq i32 %i.aje, 0
  br i1 %i.ajf, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit.i.i, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %_ZN4llvm19scc_member_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEED2Ev.exit.i.i
  %i.ajg = load ptr, ptr %19, align 8, !tbaa !739, !noalias !678
  %i.ajh = load ptr, ptr %i.aic, align 8, !tbaa !740, !noalias !678
  %i.aji = zext i32 %i.aje to i64
  %i.ajj = add nuw nsw i64 %i.aji, 31
  %i.ajk = lshr i64 %i.ajj, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %indvars.iv.i.i.i.i
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !368, !noalias !678 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.ajm, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i35.i.i

.lr.ph.i.i35.i.i:                                 ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.ajn = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.fc

bb.fc:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i35.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.ajm, %.lr.ph.i.i35.i.i ], [ %i.ake, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.ajo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.ajp = or disjoint i32 %i.ajo, %i.ajn
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [48 x i8], ptr %i.ajg, i64 %i.ajq ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 44
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !741, !noalias !678 ; 2 uses
  %i.aju = icmp eq i32 %i.ajt, 0
  br i1 %i.aju, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !744, !noalias !678
  %i.ajx = zext i32 %i.ajt to i64                 ; 2 uses
  %i.ajy = shl nuw nsw i64 %i.ajx, 3
  %i.ajz = add nuw nsw i64 %i.ajx, 31
  %i.aka = lshr i64 %i.ajz, 3
  %i.akb = and i64 %i.aka, 1073741820
  %i.akc = add nuw nsw i64 %i.akb, %i.ajy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ajw, i64 noundef %i.akc, i64 noundef 8) #24, !noalias !678
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.fd, %bb.fc
  %i.akd = add i32 %.0.i3.i.i.i.i, -1
  %i.ake = and i32 %i.akd, %.0.i3.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.ake, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.fc, !llvm.loop !745

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i36.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ajk
  br i1 %.not.i.i.i36.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !746

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.aib, align 4, !tbaa !736, !noalias !678 ; 2 uses
  %i.akf = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.akf, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit.i.i, label %bb.fe

bb.fe:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i.i.i
  %i.akg = load ptr, ptr %19, align 8, !tbaa !739, !noalias !678
  %i.akh = zext i32 %.pr.i.i.i to i64             ; 2 uses
  %i.aki = mul nuw nsw i64 %i.akh, 48
  %i.akj = add nuw nsw i64 %i.akh, 31
  %i.akk = lshr i64 %i.akj, 3
  %i.akl = and i64 %i.akk, 1073741820
  %i.akm = add nuw nsw i64 %i.akl, %i.aki
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.akg, i64 noundef %i.akm, i64 noundef 8) #24, !noalias !678
  br label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit.i.i: ; preds = %bb.fe, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i.i.i, %_ZN4llvm19scc_member_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !678
  %.pre80.i.i = load ptr, ptr %18, align 8, !tbaa !730, !noalias !678
  %.pre81.i.i = load ptr, ptr %i.ahx, align 8, !tbaa !730, !noalias !678
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit.i.i, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i
  %i.akn = phi ptr [ %.pre81.i.i, %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit.i.i ], [ %i.aiv, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i ] ; 2 uses
  %i.ako = phi ptr [ %.pre80.i.i, %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit.i.i ], [ %i.aip, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EEC2ERKS5_.exit.i.i ] ; 2 uses
  %.not5969.i.i = icmp eq ptr %i.ako, %i.akn
  br i1 %.not5969.i.i, label %._crit_edge.i93.i, label %.lr.ph71.i.i

._crit_edge.i93.i:                                ; preds = %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i, %bb.ff
  %.sroa.0156.12.i = phi ptr [ %.sroa.0156.9.i, %bb.ff ], [ %.sroa.0156.11.i, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ] ; 3 uses
  %.sroa.9.12.i = phi ptr [ %.sroa.9.9.i, %bb.ff ], [ %.sroa.9.11.i, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ] ; 3 uses
  %.sroa.17.12.i = phi ptr [ %.sroa.17.9.i, %bb.ff ], [ %.sroa.17.11.i, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ] ; 3 uses
  %.pre82.i.i = phi ptr [ %i.aif, %bb.ff ], [ %i.anf, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ] ; 4 uses
  %i.akp = phi ptr [ %i.aig, %bb.ff ], [ %i.ang, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ] ; 3 uses
  call void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE10GetNextSCCEv(ptr noundef nonnull align 8 dereferenceable(104) %17), !noalias !678
  %i.akq = load ptr, ptr %18, align 8, !tbaa !731, !noalias !678 ; 3 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.akq, null
  br i1 %.not.i.i.i20.i.i, label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i, label %bb.fg

bb.fg:                                            ; preds = %._crit_edge.i93.i
  %i.akr = load ptr, ptr %i.ahy, align 8, !tbaa !733, !noalias !678
  %i.aks = ptrtoint ptr %i.akr to i64
  %i.akt = ptrtoint ptr %i.akq to i64
  %i.aku = sub i64 %i.aks, %i.akt
  call void @_ZdlPvm(ptr noundef nonnull %i.akq, i64 noundef %i.aku) #25, !noalias !678
  br label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.fg, %._crit_edge.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !678
  %i.akv = load ptr, ptr %i.ahs, align 8, !tbaa !730, !noalias !678 ; 2 uses
  %i.akw = load ptr, ptr %i.aht, align 8, !tbaa !730, !noalias !678 ; 2 uses
  %i.akx = icmp eq ptr %i.akv, %i.akw
  br i1 %i.akx, label %._crit_edge73.i.i, label %bb.eu, !llvm.loop !747

.lr.ph71.i.i:                                     ; preds = %bb.ff, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i
  %.sroa.0156.10.i = phi ptr [ %.sroa.0156.11.i, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ], [ %.sroa.0156.9.i, %bb.ff ] ; 5 uses
  %.sroa.9.10.i = phi ptr [ %.sroa.9.11.i, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ], [ %.sroa.9.9.i, %bb.ff ] ; 4 uses
  %.sroa.17.10.i = phi ptr [ %.sroa.17.11.i, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ], [ %.sroa.17.9.i, %bb.ff ] ; 7 uses
  %i.aky = phi ptr [ %i.anf, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ], [ %i.aif, %bb.ff ] ; 9 uses
  %i.akz = phi ptr [ %i.ang, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ], [ %i.aig, %bb.ff ] ; 7 uses
  %.sroa.038.070.i.i = phi ptr [ %i.anh, %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i ], [ %i.ako, %bb.ff ] ; 2 uses
  %i.ala = load ptr, ptr %.sroa.038.070.i.i, align 8, !tbaa !734, !noalias !678 ; 2 uses
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !748, !noalias !678 ; 2 uses
  %.not.i.i.i21.i.i = icmp eq ptr %i.alb, null
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !749, !noalias !678 ; 2 uses
  br i1 %.not.i.i.i21.i.i, label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph71.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !678
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %12) #24, !noalias !678
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %12, ptr nonnull %i.alb, i64 %i.ald) #24, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !678
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %12, ptr noundef nonnull align 1 dereferenceable(16) %13) #24, !noalias !678
  %.0.copyload.i.i.i.i.i.i.i.i.i.i88.i = load i64, ptr %13, align 8, !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !678
  br label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i.i.i

_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i.i.i: ; preds = %bb.fh, %.lr.ph71.i.i
  %.0.i.i.i.i89.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i.i88.i, %bb.fh ], [ %i.ald, %.lr.ph71.i.i ] ; 2 uses
  %i.ale = load ptr, ptr %i.ct, align 8, !tbaa !750, !noalias !751 ; 3 uses
  %i.alf = load ptr, ptr %i.aid, align 8, !tbaa !760, !noalias !751 ; 2 uses
  %i.alg = load i32, ptr %i.aie, align 4, !tbaa !761, !noalias !751 ; 4 uses
  %i.alh = icmp eq i32 %i.alg, 0
  br i1 %i.alh, label %.loopexit.i.i.i.i90.i, label %bb.fi

bb.fi:                                            ; preds = %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i.i.i
  %i.ali = add i32 %i.alg, -1                     ; 2 uses
  %i.alj = mul i64 %.0.i.i.i.i89.i, -4658895280553007687 ; 2 uses
  %i.alk = lshr i64 %i.alj, 31
  %i.all = xor i64 %i.alk, %i.alj
  %i.alm = trunc i64 %i.all to i32
  %i.aln = and i32 %i.ali, %i.alm                 ; 3 uses
  %i.alo = zext i32 %i.aln to i64                 ; 2 uses
  %i.alp = lshr i64 %i.alo, 5
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.alf, i64 %i.alp
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !368, !noalias !762
  %i.als = and i32 %i.aln, 31
  %i.alt = lshr i32 %i.alr, %i.als
  %i.alu = trunc i32 %i.alt to i1
  br i1 %i.alu, label %.lr.ph.i.i.i.i.i94.i, label %.loopexit.i.i.i.i90.i, !prof !603

.lr.ph.i.i.i.i.i94.i:                             ; preds = %bb.fi, %bb.fj
  %i.alv = phi i64 [ %i.amb, %bb.fj ], [ %i.alo, %bb.fi ]
  %.017.i.i.i.i.i95.i = phi i32 [ %i.ama, %bb.fj ], [ %i.aln, %bb.fi ]
  %i.alw = getelementptr inbounds nuw [16 x i8], ptr %i.ale, i64 %i.alv ; 2 uses
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !128, !noalias !762
  %i.aly = icmp eq i64 %.0.i.i.i.i89.i, %i.alx
  br i1 %i.aly, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit.i.i.i, label %bb.fj, !prof !604

bb.fj:                                            ; preds = %.lr.ph.i.i.i.i.i94.i
  %i.alz = add nuw i32 %.017.i.i.i.i.i95.i, 1
  %i.ama = and i32 %i.alz, %i.ali                 ; 3 uses
  %i.amb = zext i32 %i.ama to i64                 ; 2 uses
  %i.amc = lshr i64 %i.amb, 5
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alf, i64 %i.amc
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !368, !noalias !762
  %i.amf = and i32 %i.ama, 31
  %i.amg = lshr i32 %i.ame, %i.amf
  %i.amh = trunc i32 %i.amg to i1
  br i1 %i.amh, label %.lr.ph.i.i.i.i.i94.i, label %.loopexit.i.i.i.i90.i, !prof !605

.loopexit.i.i.i.i90.i:                            ; preds = %bb.fj, %bb.fi, %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i.i.i
  %i.ami = zext i32 %i.alg to i64                 ; 2 uses
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.ale, i64 %i.ami
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i94.i
  %.pre.i.i96.i = zext i32 %i.alg to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.i.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit.i.i.i, %.loopexit.i.i.i.i90.i
  %.pre-phi.i.i91.i = phi i64 [ %.pre.i.i96.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit.i.i.i ], [ %i.ami, %.loopexit.i.i.i.i90.i ]
  %.lcssa.sink.i.i.i.i92.i = phi ptr [ %i.alw, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit.i.i.i ], [ %i.amj, %.loopexit.i.i.i.i90.i ] ; 2 uses
  %i.amk = getelementptr inbounds nuw [16 x i8], ptr %i.ale, i64 %.pre-phi.i.i91.i
  %.not.i22.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i92.i, %i.amk
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i, label %_ZNK4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS_8FunctionEJEE6lookupERKS3_.exit.i.i

_ZNK4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS_8FunctionEJEE6lookupERKS3_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.i.i.i
  %i.aml = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i92.i, i64 8
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !662, !noalias !678 ; 5 uses
  %.not14.i.i = icmp eq ptr %i.amm, null
  br i1 %.not14.i.i, label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i, label %bb.fk

bb.fk:                                            ; preds = %_ZNK4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS_8FunctionEJEE6lookupERKS3_.exit.i.i
  %i.amn = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.amm) #24, !noalias !678
  br i1 %i.amn, label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i, label %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit23.i.i

_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit23.i.i: ; preds = %bb.fk
  %i.amo = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.amm, ptr nonnull @.str.163, i64 18) #24, !noalias !678
  br i1 %i.amo, label %bb.fl, label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i

bb.fl:                                            ; preds = %_ZN4llvmL22skipProfileForFunctionERKNS_8FunctionE.exit23.i.i
  %.not.i24.i.i = icmp eq ptr %i.akz, %.sroa.17.10.i
  br i1 %.not.i24.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store ptr %i.amm, ptr %i.akz, align 8, !tbaa !639, !noalias !678
  %i.amp = getelementptr inbounds nuw i8, ptr %i.akz, i64 8 ; 2 uses
  br label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EE9push_backERKS2_.exit.i.i

bb.fn:                                            ; preds = %bb.fl
  %i.amq = ptrtoint ptr %.sroa.17.10.i to i64
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JDnEEESt4pairIPSD_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1024
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !787
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !788
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !785
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !847
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !847
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !950
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !788, !noalias !1025 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !787, !noalias !1025 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !786, !noalias !1025 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !847    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !847
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1023

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1024
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !786
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !788
  store ptr %i.y, ptr %i.q, align 8, !tbaa !787
  store i32 0, ptr %i.p, align 16, !tbaa !785
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1024
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !788    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !787
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !786  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !787  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !788
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !786
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !847  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1030

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !847
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !950
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !950
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !368
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1031

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1032

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !786
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !785
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !785
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !786
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZNK12_GLOBAL__N_119SampleProfileLoader25findCalleeFunctionSamplesERKN4llvm8CallBaseE(ptr noundef nonnull align 8 dereferenceable(1568) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.559", align 4 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.llvm::sampleprof::LineLocation", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !834  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNK12_GLOBAL__N_119SampleProfileLoader19findFunctionSamplesERKN4llvm11InstructionE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !827  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 8, !tbaa !638
  %i.h = icmp eq i8 %i.g, 14
  br i1 %i.h, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1033
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1034
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread

_ZNK4llvm8CallBase17getCalledFunctionEv.exit:     ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i
  %i.n = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #24 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  br label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread

_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread: ; preds = %bb.c, %bb.b, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit
  %.sroa.0.0 = phi ptr [ %i.o, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit ], [ null, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i ], [ null, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %i.p, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit ], [ 0, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i ], [ 0, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %i.q = load i8, ptr @_ZN4llvm10sampleprof15FunctionSamples11ProfileIsCSE, align 1, !tbaa !434, !range !24, !noundef !25
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !515
  %i.u = tail call noundef ptr @_ZN4llvm20SampleContextTracker26getCalleeContextSamplesForERKNS_8CallBaseENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %.sroa.0.0, i64 %.sroa.6.0) #24
  br label %_ZNK12_GLOBAL__N_119SampleProfileLoader19findFunctionSamplesERKN4llvm11InstructionE.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread
  %i.v = load i8, ptr @_ZN4llvm10sampleprof15FunctionSamples19ProfileIsProbeBasedE, align 1, !tbaa !434, !range !24, !noundef !25
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4llvm12extractProbeERKNS_11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.559") align 4 %2, ptr noundef nonnull align 8 dereferenceable(72) %1) #24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.y = load i8, ptr %i.x, align 4, !tbaa !929, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.z, label %bb.g, label %_ZNK12_GLOBAL__N_119SampleProfileLoader19findFunctionSamplesERKN4llvm11InstructionE.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !834 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !847
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1136
  br label %_ZNK12_GLOBAL__N_119SampleProfileLoader19findFunctionSamplesERKN4llvm11InstructionE.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !941
  %i.ad = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10DILocationEPKNS_10sampleprof15FunctionSamplesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JDnEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1044 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ad, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ae = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = load i8, ptr @_ZN4llvm10sampleprof15FunctionSamples11ProfileIsCSE, align 1, !tbaa !434, !range !24, !noundef !25
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !847 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !515
  %i.ak = call noundef ptr @_ZN4llvm20SampleContextTracker20getContextSamplesForEPKNS_10DILocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.aj, ptr noundef %i.ah) #24
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !805
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1072
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %4 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1089, !noalias !1190 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1095, !noalias !1190 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1088, !noalias !1190 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !748    ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !749  ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %3) #24
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr nonnull %i.h, i64 %i.j) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr noundef nonnull align 1 dereferenceable(16) %4) #24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.k = trunc i64 %.0.i.i to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !368
  %i.r = and i32 %i.l, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, %bb.d
  %i.u = phi ptr [ %i.z, %bb.d ], [ %i.n, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ] ; 2 uses
  %.024 = phi i32 [ %i.x, %bb.d ], [ %i.l, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ]
  %i.v = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.u) ; 3 uses
  br i1 %i.v, label %.thread, label %bb.d, !prof !604

bb.d:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.024, 1
  %i.x = and i32 %i.w, %i.g                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !368
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1097

.thread:                                          ; preds = %.lr.ph, %bb.d, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, %bb.a
  %.lcssa29.sink = phi ptr [ %i.n, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ], [ null, %bb.a ], [ %i.z, %bb.d ], [ %i.u, %.lr.ph ]
  %.2 = phi i1 [ false, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ], [ false, %bb.a ], [ %i.v, %bb.d ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1098
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !749  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !749
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !748    ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !748    ; 3 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.f, null
  %.not9.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i = or i1 %.not.i.i.i, %.not9.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit

_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.d ], [ false, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.476", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1088
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1089
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1095
  store i32 0, ptr %i.p, align 16, !tbaa !1099
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1098
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1089
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1095
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1088 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1095 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1089
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1088
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !748  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !749  ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #24
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %i.v, i64 %i.x) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #24
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i, %bb.c ], [ %i.x, %bb.b ]
  %i.y = trunc i64 %.0.i.i.i to i32
  %i.z = and i32 %i.k, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !368
  %i.ae = and i32 %i.z, 31                        ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, %.lr.ph.i
  %.014.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.z, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ]
  %i.ah = add i32 %.014.i, 1
  %i.ai = and i32 %i.ah, %i.k                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !368
  %i.an = and i32 %i.ai, 31                       ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1195

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %.lcssa12.i = phi i64 [ %i.aa, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ %i.aj, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ab, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ %i.ak, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ae, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ %i.an, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1076
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !128
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !128
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !368
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !368
  %i.ay = add i32 %.0.i19, -1
  %i.az = and i32 %i.ay, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1196

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1197

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1088
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1099
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1099
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !1089
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit

_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSJ_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !442

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !586  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.c, %bb.b ] ; 8 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !632 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g), !inline_history !1054
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j), !inline_history !1055
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m), !inline_history !1054
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 248) #25
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit, label %.lr.ph.i, !llvm.loop !1056

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit: ; preds = %.lr.ph.i, %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !548    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !549
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #25
  br label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !1198
  %i.v = load ptr, ptr %1, align 8, !tbaa !548    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !1116
  store ptr %i.y, ptr %i.o, align 8, !tbaa !1116
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.d
  %i.z = phi ptr [ %i.o, %bb.d ], [ %i.v, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !548
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !549 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !549
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !586 ; 3 uses
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !586
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1114
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !1114
  %.not.i12 = icmp eq ptr %i.ae, null
  br i1 %.not.i12, label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1103
  %i.ak = urem i64 %i.aj, %i.ab
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ak
  store ptr %i.b, ptr %i.al, align 8, !tbaa !1102
  br label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.e, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.am, align 8, !tbaa !1200
  store i64 1, ptr %i.aa, align 8, !tbaa !549
  store ptr null, ptr %i.w, align 8, !tbaa !1116
  store ptr %i.w, ptr %1, align 8, !tbaa !548
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketImJEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !466
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1207
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !468
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !520
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !466
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !520, !noalias !1208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468, !noalias !1208 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !467, !noalias !1208 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !368
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1206

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1207
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.373", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !467
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !520
  store ptr %i.y, ptr %i.q, align 8, !tbaa !468
  store i32 0, ptr %i.p, align 16, !tbaa !466
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1207
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit

_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !520    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !467  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !468  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !520
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !467
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1213

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store i64 %i.v, ptr %i.as, align 8, !tbaa !128
  %i.at = shl nuw i32 1, %.lcssa.i
  %i.au = or i32 %i.at, %.lcssa11.i
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !368
  %i.av = add i32 %.0.i15, -1
  %i.aw = and i32 %i.av, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1214

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1215

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !467
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ax = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !466
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !466
  %i.bb = icmp eq i32 %i.ax, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bc = zext i32 %i.ax to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bh, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !467
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit

_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152)) unnamed_addr #5

declare void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152), ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152), ptr noundef nonnull align 1 dereferenceable(16)) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #5

declare void @_ZN4llvm20SampleContextTrackerC1ERNS_10sampleprof16SampleProfileMapEPKNS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20SampleContextTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm15ContextTrieNodeEESt10_Select1stIS4_ESt4lessImESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.c), !inline_history !1216
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1217 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesEPNS_15ContextTrieNodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1220
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesEPNS_15ContextTrieNodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesEPNS_15ContextTrieNodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1221 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesEPNS_15ContextTrieNodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.q, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i ], [ %i.p, %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesEPNS_15ContextTrieNodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit ] ; 4 uses
  %i.q = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !632 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1223 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1226
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #25
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1227

_ZNSt10_HashtableImSt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i.i, %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesEPNS_15ContextTrieNodeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !1228
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1229
  %i.ab = shl i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1228  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapImSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS4_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.af = load i64, ptr %i.z, align 8, !tbaa !1229
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZNSt13unordered_mapImSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS4_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEED2Ev.exit

_ZNSt13unordered_mapImSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS4_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPN4llvm10sampleprof15FunctionSamplesESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm15ContextTrieNodeEESt10_Select1stIS4_ESt4lessImESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1125
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm15ContextTrieNodeEESt10_Select1stIS4_ESt4lessImESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1126 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm15ContextTrieNodeEESt10_Select1stIS4_ESt4lessImESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef %i.g), !inline_history !1230
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 136) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1231

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E24lookupOrInsertIntoBucketIRKmJS2_EEESt4pairIPS7_bEOT_DpOT0_:bb.a
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1263
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !601
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !524
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 24                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1264
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1265
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !524, !noalias !1266 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !601, !noalias !1266 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !521, !noalias !1266 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !368
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1262

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1263
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.587", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !521
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !524
  store ptr %i.y, ptr %i.q, align 8, !tbaa !601
  store i32 0, ptr %i.p, align 16, !tbaa !1264
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1263
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit

_ZN4llvm8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !524
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !601
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !521  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !601  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !524
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !521
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1271

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !1265
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !368
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !368
  %i.ay = add i32 %.0.i16, -1
  %i.az = and i32 %i.ay, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1272

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1273

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !521
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1264
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1264
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !524
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !521
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit

_ZN4llvm8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_21PseudoProbeDescriptorENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefENS_8ArrayRefIS2_EES2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 9 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  store ptr %0, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  switch i64 %5, label %_ZN4llvmeqENS_9StringRefES0_.exit48 [
    i64 0, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit34
    i64 8, label %_ZN4llvmeqENS_9StringRefES0_.exit38
  ]

_ZN4llvmeqENS_9StringRefES0_.exit34:              ; preds = %bb.a
  %i.c = load i16, ptr %4, align 1
  %i.d = xor i16 %i.c, 27745
  %i.e = getelementptr i8, ptr %4, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i16
  %i.h = xor i16 %i.g, 108
  %i.i = or i16 %i.d, %i.h
  %i.j = icmp ne i16 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit48

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 46, ptr %i.a, align 1, !tbaa !19, !noalias !1274
  %i.m = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull %i.a, i64 1, i64 noundef 0) #24, !noalias !1277
  %.sroa.558.0.copyload60 = load i64, ptr %i.b, align 8, !tbaa !128
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.558.0.copyload60)
  %.sroa.056.0 = load ptr, ptr %7, align 8, !tbaa !386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.056.0, ptr %6, align 8, !tbaa !386
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.speculated.i.i.i, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !128
  br label %.loopexit

_ZN4llvmeqENS_9StringRefES0_.exit38:              ; preds = %bb.a
  %i.n = load i64, ptr %4, align 1
  %i.o = icmp ne i64 %i.n, 7234316346692756851
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvmeqENS_9StringRefES0_.exit38.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit48

_ZN4llvmeqENS_9StringRefES0_.exit38.thread:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1076
  %.idx = shl nuw nsw i64 %3, 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not79 = icmp eq i64 %3, 0
  br i1 %.not79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit38.thread
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.080 = phi ptr [ %2, %.lr.ph ], [ %i.al, %bb.g ] ; 3 uses
  %.sroa.051.0.copyload = load ptr, ptr %.080, align 8, !tbaa !386 ; 2 uses
  %.sroa.5.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.080, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..0.sroa_idx, align 8, !tbaa !128 ; 3 uses
  %.not.i39 = icmp eq i64 %.sroa.5.0.copyload, 8
  br i1 %.not.i39, label %_ZN4llvmeqENS_9StringRefES0_.exit42, label %_ZN4llvmeqENS_9StringRefES0_.exit42.thread

_ZN4llvmeqENS_9StringRefES0_.exit42:              ; preds = %bb.b
  %i.t = load i64, ptr %.sroa.051.0.copyload, align 1
  %i.u = icmp ne i64 %i.t, 3346571921249492782
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load i8, ptr @_ZN4llvm10sampleprof15FunctionSamples13HasUniqSuffixE, align 1, !range !24
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.g, label %_ZN4llvmeqENS_9StringRefES0_.exit42.thread

_ZN4llvmeqENS_9StringRefES0_.exit42.thread:       ; preds = %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit42
  %i.z = call noundef i64 @_ZNK4llvm9StringRef5rfindES0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.051.0.copyload, i64 %.sroa.5.0.copyload) #24 ; 4 uses
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit42.thread
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !367 ; 3 uses
  %i.ac = load ptr, ptr %6, align 8
  %.not.i4483 = icmp eq i64 %i.ab, 0
  br i1 %.not.i4483, label %_ZNK4llvm9StringRef5rfindEcm.exit, label %.lr.ph85

bb.d:                                             ; preds = %.lr.ph85
  %.not.i44 = icmp eq i64 %i.ad, 0
  br i1 %.not.i44, label %_ZNK4llvm9StringRef5rfindEcm.exit, label %.lr.ph85, !llvm.loop !1280

.lr.ph85:                                         ; preds = %bb.c, %bb.d
  %.0.i4384 = phi i64 [ %i.ad, %bb.d ], [ %i.ab, %bb.c ]
  %i.ad = add i64 %.0.i4384, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19
  %i.ag = icmp eq i8 %i.af, 46
  br i1 %i.ag, label %._ZNK4llvm9StringRef5rfindEcm.exit_crit_edge86, label %bb.d, !llvm.loop !1280

._ZNK4llvm9StringRef5rfindEcm.exit_crit_edge86:   ; preds = %.lr.ph85
  br label %_ZNK4llvm9StringRef5rfindEcm.exit, !llvm.loop !1280

_ZNK4llvm9StringRef5rfindEcm.exit:                ; preds = %bb.d, %._ZNK4llvm9StringRef5rfindEcm.exit_crit_edge86, %bb.c
  %.06.i = phi i64 [ %i.ad, %._ZNK4llvm9StringRef5rfindEcm.exit_crit_edge86 ], [ -1, %bb.c ], [ -1, %bb.d ] ; 2 uses
  %i.ah = icmp eq i64 %.06.i, %i.z
end_hunk_4
begin_hunk_5_@_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE17clearFunctionDataEb:bb.a
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit:       ; preds = %bb.i, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 0, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !701
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !702
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !703
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 0, ptr %i.ba, align 8, !tbaa !704
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1304 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5clearEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  %i.bf = shl i32 %i.bd, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !1305 ; 3 uses
  %i.bi = icmp ult i32 %i.bf, %i.bh
  %i.bj = icmp ugt i32 %i.bh, 64
  %or.cond.i3 = and i1 %i.bi, %i.bj
  br i1 %or.cond.i3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bb)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5clearEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1306
  %i.bm = zext i32 %i.bh to i64
  %i.bn = add nuw nsw i64 %i.bm, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.bp, i1 false)
  store i32 0, ptr %i.bc, align 8, !tbaa !1304
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5clearEv.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit, %bb.m, %bb.n
  br i1 %1, label %bb.o, label %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EEaSEDn.exit

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5clearEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !60 ; 7 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !60
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EEaSEDn.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bs) #24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef %i.bu) #24
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !27 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.bx) #24
  br label %_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i.i.i: ; preds = %bb.r, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 208) #25
  br label %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EEaSEDn.exit

_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EEaSEDn.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !107 ; 7 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !107
  %.not.i.i.i4 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i4, label %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EEaSEDn.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EEaSEDn.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cc) #24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i5, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef %i.ce) #24
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i5

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i5: ; preds = %bb.t, %bb.s
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !27 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i5
  tail call void @free(ptr noundef %i.ch) #24
  br label %_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i.i.i: ; preds = %bb.u, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i.i.i5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 232) #25
  br label %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EEaSEDn.exit

_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EEaSEDn.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EEaSEDn.exit, %_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !122 ; 8 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !122
  %.not.i.i.i6 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i6, label %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EEaSEDn.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EEaSEDn.exit
  tail call void @_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(184) %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cm) #24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !125
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #25
  br label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !27 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.cu) #24
  br label %_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 184) #25
  br label %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EEaSEDn.exit

_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EEaSEDn.exit: ; preds = %_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i.i.i, %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EEaSEDn.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5clearEv.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !1307 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EEaSEDn.exit
  %i.db = shl i32 %i.cz, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1308 ; 4 uses
  %i.de = icmp ult i32 %i.db, %i.dd
  br i1 %i.de, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.df = icmp ugt i32 %i.dd, 64
  br i1 %i.df, label %bb.aa, label %.lr.ph7.preheader.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.cx)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit

bb.ab:                                            ; preds = %bb.y
  %i.dg = icmp eq i32 %i.dd, 0
  br i1 %i.dg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.ab, %bb.z
  %i.dh = load ptr, ptr %i.cx, align 8, !tbaa !1309
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1310
  %i.dk = zext i32 %i.dd to i64
  %i.dl = add nuw nsw i64 %i.dk, 31
  %i.dm = lshr i64 %i.dl, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.do, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.dp = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.ac

bb.ac:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.do, %.lr.ph.i.i ], [ %i.dz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.dr = or disjoint i32 %i.dq, %i.dp
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [88 x i8], ptr %i.dh, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !27 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef %i.dv) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.ad, %bb.ac
  %i.dy = add i32 %.0.i3.i.i, -1
  %i.dz = and i32 %i.dy, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.ac, !llvm.loop !1311

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i7 = icmp eq i64 %indvars.iv.next.i.i, %i.dm
  br i1 %.not.i.i.i7, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph7.i.i, !llvm.loop !1312

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i = load i32, ptr %i.dc, align 4, !tbaa !1308
  %i.ea = zext i32 %.pre.i to i64
  %i.eb = add nuw nsw i64 %i.ea, 31
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = and i64 %i.ec, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i, %bb.ab
  %i.ee = phi i64 [ %i.ed, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i ], [ 0, %bb.ab ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1310
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %i.ee, i1 false)
  store i32 0, ptr %i.cy, align 8, !tbaa !1307
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit: ; preds = %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EEaSEDn.exit, %bb.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !1307 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit23, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit
  %i.el = shl i32 %i.ej, 2
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1308 ; 4 uses
  %i.eo = icmp ult i32 %i.el, %i.en
  br i1 %i.eo, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ep = icmp ugt i32 %i.en, 64
  br i1 %i.ep, label %bb.ag, label %.lr.ph7.preheader.i.i8

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.eh)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit23

bb.ah:                                            ; preds = %bb.ae
  %i.eq = icmp eq i32 %i.en, 0
  br i1 %i.eq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i22, label %.lr.ph7.preheader.i.i8

.lr.ph7.preheader.i.i8:                           ; preds = %bb.ah, %bb.af
  %i.er = load ptr, ptr %i.eh, align 8, !tbaa !1309
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1310
  %i.eu = zext i32 %i.en to i64
  %i.ev = add nuw nsw i64 %i.eu, 31
  %i.ew = lshr i64 %i.ev, 5
  br label %.lr.ph7.i.i9

.lr.ph7.i.i9:                                     ; preds = %._crit_edge.i.i17, %.lr.ph7.preheader.i.i8
  %indvars.iv.i.i10 = phi i64 [ 0, %.lr.ph7.preheader.i.i8 ], [ %indvars.iv.next.i.i18, %._crit_edge.i.i17 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i.i10
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i11 = icmp eq i32 %i.ey, 0
  br i1 %.not11.i2.i.i11, label %._crit_edge.i.i17, label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %.lr.ph7.i.i9
  %indvars.iv.tr.i.i13 = trunc nuw i64 %indvars.iv.i.i10 to i32
  %i.ez = shl nuw i32 %indvars.iv.tr.i.i13, 5
  br label %bb.ai

bb.ai:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i15, %.lr.ph.i.i12
  %.0.i3.i.i14 = phi i32 [ %i.ey, %.lr.ph.i.i12 ], [ %i.fj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i15 ] ; 3 uses
  %i.fa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i14, i1 true)
  %i.fb = or disjoint i32 %i.fa, %i.ez
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [88 x i8], ptr %i.er, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !27 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i15, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef %i.ff) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i15

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i15: ; preds = %bb.aj, %bb.ai
  %i.fi = add i32 %.0.i3.i.i14, -1
  %i.fj = and i32 %i.fi, %.0.i3.i.i14             ; 2 uses
  %.not11.i.i.i16 = icmp eq i32 %i.fj, 0
  br i1 %.not11.i.i.i16, label %._crit_edge.i.i17, label %bb.ai, !llvm.loop !1311

._crit_edge.i.i17:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i15, %.lr.ph7.i.i9
  %indvars.iv.next.i.i18 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %.not.i.i.i19 = icmp eq i64 %indvars.iv.next.i.i18, %i.ew
  br i1 %.not.i.i.i19, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i20, label %.lr.ph7.i.i9, !llvm.loop !1312

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i20: ; preds = %._crit_edge.i.i17
  %.pre.i21 = load i32, ptr %i.em, align 4, !tbaa !1308
  %i.fk = zext i32 %.pre.i21 to i64
  %i.fl = add nuw nsw i64 %i.fk, 31
  %i.fm = lshr i64 %i.fl, 3
  %i.fn = and i64 %i.fm, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i22

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i22: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i20, %bb.ah
  %i.fo = phi i64 [ %i.fn, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i20 ], [ 0, %bb.ah ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1310
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fq, i8 0, i64 %i.fo, i1 false)
  store i32 0, ptr %i.ei, align 8, !tbaa !1307
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit23

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit23: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit, %bb.ag, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i22
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !1313 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZN4llvm14sampleprofutil21SampleCoverageTracker5clearEv.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit23
  %i.fv = shl i32 %i.ft, 2
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !1314 ; 4 uses
  %i.fy = icmp ult i32 %i.fv, %i.fx
  br i1 %i.fy, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fz = icmp ugt i32 %i.fx, 64
  br i1 %i.fz, label %bb.am, label %.lr.ph7.preheader.i.i.i

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(33) %i.fr)
  br label %_ZN4llvm14sampleprofutil21SampleCoverageTracker5clearEv.exit

bb.an:                                            ; preds = %bb.ak
  %i.ga = icmp eq i32 %i.fx, 0
  br i1 %i.ga, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.an, %bb.al
  %i.gb = load ptr, ptr %i.fr, align 8, !tbaa !1315
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1316
  %i.ge = zext i32 %i.fx to i64
  %i.gf = add nuw nsw i64 %i.ge, 31
  %i.gg = lshr i64 %i.gf, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i.i.i
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.gj = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.gi, %.lr.ph.i.i.i ], [ %i.gs, %bb.ao ] ; 3 uses
  %i.gk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.gl = or disjoint i32 %i.gk, %i.gj
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [56 x i8], ptr %i.gb, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.go, ptr noundef %i.gq)
  %i.gr = add i32 %.0.i3.i.i.i, -1
  %i.gs = and i32 %i.gr, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.ao, !llvm.loop !1317

._crit_edge.i.i.i:                                ; preds = %bb.ao, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.gg
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1318

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i: ; preds = %._crit_edge.i.i.i
  %.pre.i.i = load i32, ptr %i.fw, align 4, !tbaa !1314
  %i.gt = zext i32 %.pre.i.i to i64
  %i.gu = add nuw nsw i64 %i.gt, 31
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = and i64 %i.gv, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i, %bb.an
  %i.gx = phi i64 [ %i.gw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i ], [ 0, %bb.an ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !1316
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gz, i8 0, i64 %i.gx, i1 false)
  store i32 0, ptr %i.fs, align 8, !tbaa !1313
  br label %_ZN4llvm14sampleprofutil21SampleCoverageTracker5clearEv.exit

_ZN4llvm14sampleprofutil21SampleCoverageTracker5clearEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit23, %bb.am, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i64 0, ptr %i.ha, align 8, !tbaa !1319
  ret void
}

declare void @_ZN4llvm19updateProfileCalleeEPNS_8FunctionElPKNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEE(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm6Module18eraseNamedMetadataEPNS_11NamedMDNodeE(ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120GUIDToFuncNameMapper26SetGUIDToFuncNameMapForAllEPN4llvm8DenseMapImNS1_9StringRefENS1_12DenseMapInfoImvEENS1_6detail12DenseMapPairImS3_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::queue", align 8        ; 18 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 8, ptr %i.b, align 8, !tbaa !1320
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !1325
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26 ; 6 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !1326
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 7 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !1327
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.e, ptr %i.h, align 8, !tbaa !1328
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1329
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 7 uses
  store ptr %i.d, ptr %i.l, align 8, !tbaa !1327
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store ptr %i.e, ptr %i.m, align 8, !tbaa !1328
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  store ptr %i.i, ptr %i.n, align 8, !tbaa !1329
  store ptr %i.e, ptr %i.f, align 8, !tbaa !1330
  store ptr %i.e, ptr %i.k, align 8, !tbaa !1331
  %i.o = load ptr, ptr %0, align 8, !tbaa !1332, !nonnull !25, !align !364
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.027.032 = load ptr, ptr %i.p, align 8, !tbaa !632 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.027.032, null
  br i1 %.not33, label %._crit_edge42, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !1334
  %.pre43 = load ptr, ptr %i.f, align 8, !tbaa !1334 ; 2 uses
  %i.q = icmp eq ptr %.pre, %.pre43
  br i1 %i.q, label %._crit_edge42, label %.lr.ph41

.lr.ph:                                           ; preds = %bb.a, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %.sroa.027.034 = phi ptr [ %.sroa.027.0, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit ], [ %.sroa.027.032, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.027.034, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !950
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !1331 ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !1335
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.not.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %i.r, ptr %i.s, align 8, !tbaa !950
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.k, align 8, !tbaa !1331
  br label %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

bb.c:                                             ; preds = %.lr.ph
  call void @_ZNSt5dequeIPN4llvm10sampleprof15FunctionSamplesESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.sroa.027.0 = load ptr, ptr %.sroa.027.034, align 8, !tbaa !632 ; 2 uses
  %.not = icmp eq ptr %.sroa.027.0, null
  br i1 %.not, label %.preheader, label %.lr.ph

.loopexit.loopexit:                               ; preds = %._crit_edge
  %.pre46 = load ptr, ptr %i.f, align 8, !tbaa !1334
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.w = phi ptr [ %.pre46, %.loopexit.loopexit ], [ %storemerge.i.i, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE3popEv.exit ] ; 2 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !1334
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %._crit_edge42, label %.lr.ph41, !llvm.loop !1336

.lr.ph41:                                         ; preds = %.preheader, %.loopexit
  %i.z = phi ptr [ %i.w, %.loopexit ], [ %.pre43, %.preheader ] ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !950 ; 3 uses
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !1337
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %.not.i.i = icmp eq ptr %i.z, %i.ac
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE3popEv.exit

bb.e:                                             ; preds = %.lr.ph41
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !1338
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef 512) #25
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !1339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.g, align 8, !tbaa !1327
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1326 ; 3 uses
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !1328
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !1329
  br label %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.f, align 8, !tbaa !1330
  store ptr %1, ptr %i.aa, align 8, !tbaa !1070
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !702 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 128 ; 2 uses
  %.not3038 = icmp eq ptr %i.ak, %i.al
  br i1 %.not3038, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE3popEv.exit, %._crit_edge
  %.sroa.023.039 = phi ptr [ %i.ap, %._crit_edge ], [ %i.ak, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE3popEv.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.023.039, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !702 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.023.039, i64 48 ; 2 uses
  %.not3135 = icmp eq ptr %i.an, %i.ao
  br i1 %.not3135, label %._crit_edge, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.lr.ph40
  %.pre44 = load ptr, ptr %i.k, align 8, !tbaa !1331
  %.pre45 = load ptr, ptr %i.n, align 8, !tbaa !1335
  br label %.lr.ph37

._crit_edge:                                      ; preds = %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit16, %.lr.ph40
  %i.ap = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.023.039) #28 ; 2 uses
  %.not30 = icmp eq ptr %i.ap, %i.al
  br i1 %.not30, label %.loopexit.loopexit, label %.lr.ph40

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit16
  %i.aq = phi ptr [ %i.ed, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit16 ], [ %.pre45, %.lr.ph37.preheader ] ; 2 uses
  %i.ar = phi ptr [ %storemerge, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit16 ], [ %.pre44, %.lr.ph37.preheader ] ; 4 uses
  %.sroa.019.036 = phi ptr [ %i.ee, %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit16 ], [ %i.an, %.lr.ph37.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 48 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.not.i.i.i15 = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i.i15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph37
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !950
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br label %_ZNSt5queueIPN4llvm10sampleprof15FunctionSamplesESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit16

bb.g:                                             ; preds = %.lr.ph37
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !1327 ; 3 uses
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !1327 ; 6 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E24lookupOrInsertIntoBucketImJS2_EEESt4pairIPS7_bEOT_DpOT0_:bb.a
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1348
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !850
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !851
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 24                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !848
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1076
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !851, !noalias !1349 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !850, !noalias !1349 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !849, !noalias !1349 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !368
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1347

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1348
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.367", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !849
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !851
  store ptr %i.y, ptr %i.q, align 8, !tbaa !850
  store i32 0, ptr %i.p, align 16, !tbaa !848
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1348
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit

_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !851
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !850
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !849  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !850  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !851
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !849
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1354

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !1076
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !368
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !368
  %i.ay = add i32 %.0.i16, -1
  %i.az = and i32 %i.ay, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1355

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1356

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !849
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !848
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !848
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !851
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !849
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit

_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4llvm10sampleprof15FunctionSamplesESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1327 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1327
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1334
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1328
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1329
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1334
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.159) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1320
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1325
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN4llvm10sampleprof15FunctionSamplesESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN4llvm10sampleprof15FunctionSamplesESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN4llvm10sampleprof15FunctionSamplesESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN4llvm10sampleprof15FunctionSamplesESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1340
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !1326
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !1331
  %i.aq = load ptr, ptr %1, align 8, !tbaa !950
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !950
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !1327
  store ptr %i.am, ptr %i.o, align 8, !tbaa !1328
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1329
  store ptr %i.am, ptr %i.a, align 8, !tbaa !1331
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4llvm10sampleprof15FunctionSamplesESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1340 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1339 ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1320 ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !1325
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !604
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E24lookupOrInsertIntoBucketIRKmJS3_EEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1297
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !760
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !750
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1363
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bi = load ptr, ptr %2, align 8, !tbaa !639
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !639
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !750, !noalias !1364 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !760, !noalias !1364 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !761, !noalias !1364 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !368
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1362

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1297
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.343", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !761
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !750
  store ptr %i.y, ptr %i.q, align 8, !tbaa !760
  store i32 0, ptr %i.p, align 16, !tbaa !1363
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1297
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit

_ZN4llvm8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !750    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !760
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !761  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !760  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !750
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !761
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1369

_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !639
  store ptr %i.av, ptr %i.at, align 8, !tbaa !639
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !368
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1370

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1371

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !761
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1363
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1363
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !761
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEE4killEv.exit

_ZN4llvm8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E24lookupOrInsertIntoBucketIRKmJRS3_EEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !750, !noalias !1372 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !760, !noalias !1372 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !761, !noalias !1372 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !603

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !128
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !605, !llvm.loop !1362

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1297
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1363
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1297
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !760
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !750
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1363
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bi = load ptr, ptr %2, align 8, !tbaa !639
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !639
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN4llvm9StringMapINS0_8DenseMapINS0_10sampleprof12LineLocationENS0_20SampleProfileMatcher10MatchStateENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S6_EEEENS0_15MallocAllocatorEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISI_ESt18is_move_assignableISI_EEE5valueEvE4typeERSI_SR_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !460
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1709
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1517
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1503
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1521
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !734
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1503, !noalias !1710 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1517, !noalias !1710 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1518, !noalias !1710 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !368
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1520

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1709
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.899", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1518
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1503
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1517
  store i32 0, ptr %i.p, align 16, !tbaa !1521
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1709
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit

_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1503   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1517
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1518 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1517 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1503
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1518
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1715

_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !734
  store ptr %i.av, ptr %i.at, align 8, !tbaa !734
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !368
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1716

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1717

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1518
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1521
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1521
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1518
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit

_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE17_M_emplace_uniqueIJPS5_RSA_iEEESt4pairISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !734
  %i.d = load ptr, ptr %2, align 8, !tbaa !734
  %i.e = load i32, ptr %3, align 4, !tbaa !368
  %i.f = sext i32 %i.e to i64
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1527
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !1392
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.f, ptr %i.h, align 8, !tbaa !1394
  %i.i = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE24_M_get_insert_unique_posERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 4 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !1392 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1392 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !748  ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !748  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128  ; 3 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !128  ; 3 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v)
  %i.x = icmp eq ptr %i.q, %i.r
  br i1 %i.x, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.y = tail call i32 @memcmp(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef %i.w) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.z = icmp eq i64 %i.v, %i.u
  br i1 %i.z, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.aa = icmp ult i64 %i.v, %i.u
  %i.ab = select i1 %i.aa, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %i.y, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 1, %bb.e ], [ -1, %bb.d ]
  %i.ac = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, %bb.b
  %i.ad = phi i1 [ %i.ac, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !704
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !704
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.3.016 = phi i8 [ 1, %.thread ], [ 0, %bb.g ]
  %.sroa.010.015 = phi ptr [ %i.a, %.thread ], [ %i.j, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.015, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.016, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE11DFSVisitOneEPNS1_21ProfiledCallGraphNodeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !734
  %i.b = load i32, ptr %0, align 8, !tbaa !711
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !711
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 %i.c, ptr %i.f, align 4, !tbaa !368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !732  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !733
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1750
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1736
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !767
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1738
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !734
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !734
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !368
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !767, !noalias !1751 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1736, !noalias !1751 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !766, !noalias !1751 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !734    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !734
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1737

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1750
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.874", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !766
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !767
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1736
  store i32 0, ptr %i.p, align 16, !tbaa !1738
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1750
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !767    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1736
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !766  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1736 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !767
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !766
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !734  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1756

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !734
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !368
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !368
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !368
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !368
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1757

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1758

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !766
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1738
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1738
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !766
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE16DFSVisitChildrenEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1725 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1726
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1759 ; 2 uses
  %.not11 = icmp eq ptr %i.g, %i.f
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.k = phi ptr [ %i.b, %.lr.ph ], [ %i.be, %bb.h ] ; 3 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.bj, %bb.h ] ; 2 uses
  %i.m = phi ptr [ %i.d, %.lr.ph ], [ %i.bg, %bb.h ]
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.l) #28
  store ptr %i.n, ptr %i.m, align 8, !tbaa !1759
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1392 ; 3 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !767, !noalias !1760 ; 3 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !1736, !noalias !1760 ; 2 uses
  %i.s = load i32, ptr %i.j, align 4, !tbaa !766, !noalias !1760 ; 4 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = add i32 %i.s, -1                         ; 2 uses
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.u, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368, !noalias !1769
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !603

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.ai = phi i64 [ %i.ao, %bb.d ], [ %i.ab, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.an, %bb.d ], [ %i.aa, %bb.c ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !734, !noalias !1769
  %i.al = icmp eq ptr %i.p, %i.ak
  br i1 %i.al, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.am = add nuw i32 %.017.i.i.i.i, 1
  %i.an = and i32 %i.am, %i.u                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !368, !noalias !1769
  %i.as = and i32 %i.an, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !605

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.av = zext i32 %i.s to i64                    ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.av
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre13 = zext i32 %i.s to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre13, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit ], [ %i.av, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.aj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit ], [ %i.aw, %.loopexit.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.pre-phi
  %i.ay = icmp eq ptr %.lcssa.sink.i.i, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  tail call void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE11DFSVisitOneEPNS1_21ProfiledCallGraphNodeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.p)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1725
  br label %bb.h, !llvm.loop !1770

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1771 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1729
  %i.bd = icmp ugt i32 %i.bc, %i.ba
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1729
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.be = phi ptr [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %.pre, %bb.e ] ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -16 ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !1726
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !1759 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.bi
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1773 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !736  ; 4 uses
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.f, 64
  br i1 %i.h, label %bb.d, label %.lr.ph7.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.c, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !739
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !740
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !368  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ai, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741  ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !744
  %i.ab = zext i32 %i.x to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.g, %bb.f
  %i.ah = add i32 %.0.i3.i, -1
  %i.ai = and i32 %i.ah, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.f, !llvm.loop !745

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.loopexit, label %.lr.ph7.i, !llvm.loop !746

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.e, align 4, !tbaa !736
  %i.aj = zext i32 %.pre to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.loopexit, %bb.e
  %i.an = phi i64 [ %i.am, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.loopexit ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !740
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.an, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !1773
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1773 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !736  ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !739
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !740
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !368  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ai, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741  ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !744
  %i.ab = zext i32 %i.x to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c
  %i.ah = add i32 %.0.i3.i, -1
  %i.ai = and i32 %i.ah, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !745

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !746

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !1773
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !736 ; 2 uses
  %.not.i3 = icmp eq i32 %i.aj, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !740
  %i.am = zext i32 %i.aj to i64
  %i.an = add nuw nsw i64 %i.am, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.al, i8 0, i64 %i.ap, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit
  %i.aq = load i32, ptr %i.g, align 4, !tbaa !736 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %0, align 8, !tbaa !739
  %i.at = zext i32 %i.aq to i64                   ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 48
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !736
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE17deallocateBucketsEv.exit
  %i.az = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 48
  %i.ba = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  %i.be = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bd, i64 noundef 8) #24 ; 2 uses
  %i.bf = load i32, ptr %i.g, align 4, !tbaa !736 ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 2 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !739
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !740
  store i32 0, ptr %i.a, align 8, !tbaa !1773
  %.not.i.i5 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nuw nsw i64 %i.bg, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bi, i8 0, i64 %i.bm, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.886", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !736
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 48                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !739
  store ptr %i.y, ptr %i.q, align 8, !tbaa !740
  store i32 0, ptr %i.p, align 16, !tbaa !1773
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1774   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !956 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store ptr %i.z, ptr %2, align 16, !tbaa !1774
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !437
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !956
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !368
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !368
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  %i.au = load i32, ptr %i.at, align 4, !tbaa !741 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !744
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !745

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !746

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !736 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !739
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = mul nuw nsw i64 %i.bi, 48
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !739
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !740
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !736  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !740  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !739
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !736
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !734  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1775

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.lcssa12.i ; 5 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !734
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 13, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ay = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !437
  store <2 x ptr> %i.ay, ptr %i.av, align 8, !tbaa !437
  store ptr null, ptr %i.aw, align 8, !tbaa !1776
  store ptr null, ptr %i.ax, align 8, !tbaa !956
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !368
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !368
  store i32 0, ptr %i.ba, align 8, !tbaa !368
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 3 uses
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !368
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !368
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !368
  %i.bg = shl nuw i32 1, %.lcssa.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !368
  %i.bj = or i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !368
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !741 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bm = zext i32 %i.bk to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.br, i64 noundef 8) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bs = add i32 %.0.i17, -1
  %i.bt = and i32 %i.bs, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1777

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1778

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !736
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bu = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !1773
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !1773
  %i.by = icmp eq i32 %i.bu, 0
  br i1 %i.by, label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.bz = load ptr, ptr %1, align 8, !tbaa !739
  %i.ca = zext i32 %i.bu to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 48
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS1_17ProfiledCallGraphENS_11GraphTraitsIS6_EEE8NodeInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS5_17ProfiledCallGraphENS_11GraphTraitsISA_EEE8NodeInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !739, !noalias !1779 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !740, !noalias !1779 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !736, !noalias !1779 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !734    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !368
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !603

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !734
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_.exit, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !368
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !605, !llvm.loop !1784

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1774
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1773
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1774
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !740
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !739
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeENS_19scc_member_iteratorIPNS2_17ProfiledCallGraphENS_11GraphTraitsIS7_EEE8NodeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1429
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1776
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1450
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !744
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1429
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1395
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1395
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !744, !noalias !1796 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1450, !noalias !1796 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !741, !noalias !1796 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1395   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1395
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1795

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1776
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.980", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !741
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !744
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1450
  store i32 0, ptr %i.p, align 16, !tbaa !1429
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1776
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !744    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1450
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !741  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1450 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !744
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !741
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1395 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1801

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1395
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !368
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1802

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1803

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !741
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1429
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1429
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !741
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof21ProfiledCallGraphEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1405 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1405
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1427
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1406
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1407
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1427
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.159) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1400
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1404
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1452
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !730
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !1409
  %i.aq = load ptr, ptr %1, align 8, !tbaa !734
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !734
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !1405
  store ptr %i.am, ptr %i.o, align 8, !tbaa !1406
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1407
  store ptr %i.am, ptr %i.a, align 8, !tbaa !1409
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1452 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1434 ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1400 ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !1404
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !604

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPN4llvm10sampleprof21ProfiledCallGraphNodeES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E16shrink_and_clearEv:bb.a
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE17deallocateBucketsEv.exit
  %i.ab = mul nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 24
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #24 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !1302 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1836
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1303
  store i32 0, ptr %i.a, align 8, !tbaa !1301
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1125
  tail call void @_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1126 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1837

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1304 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1305 ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1305 ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !1304
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1306
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !1838
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #24
  store i32 0, ptr %i.r, align 4, !tbaa !1305
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !1305
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #24 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !1305 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1838
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1306
  store i32 0, ptr %i.a, align 8, !tbaa !1304
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1307 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1308 ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !1309
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1310
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !368  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ab, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.x) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c
  %i.aa = add i32 %.0.i3.i, -1
  %i.ab = and i32 %i.aa, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !1311

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1312

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !1307
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !1308 ; 2 uses
  %.not.i3 = icmp eq i32 %i.ac, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1310
  %i.af = zext i32 %i.ac to i64
  %i.ag = add nuw nsw i64 %i.af, 31
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.ai, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !1308 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !1309
  %i.am = zext i32 %i.aj to i64                   ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 88
  %i.ao = add nuw nsw i64 %i.am, 31
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 1073741820
  %i.ar = add nuw nsw i64 %i.aq, %i.an
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.al, i64 noundef %i.ar, i64 noundef 8) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !1308
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit
  %i.as = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 88
  %i.at = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  %i.ax = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aw, i64 noundef 8) #24 ; 2 uses
  %i.ay = load i32, ptr %i.g, align 4, !tbaa !1308 ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba ; 2 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !1309
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !1310
  store i32 0, ptr %i.a, align 8, !tbaa !1307
  %.not.i.i5 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = add nuw nsw i64 %i.az, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bb, i8 0, i64 %i.bf, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1313 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1314 ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !1315
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1316
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !368  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.aa, %bb.c ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.y)
  %i.z = add i32 %.0.i3.i, -1
  %i.aa = and i32 %i.z, %.0.i3.i                  ; 2 uses
  %.not11.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !1317

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1318

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !1313
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !1314 ; 2 uses
  %.not.i3 = icmp eq i32 %i.ab, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1316
  %i.ae = zext i32 %i.ab to i64
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !1314 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE17deallocateBucketsEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1315
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 56
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE17deallocateBucketsEv.exit: ; preds = %bb.f, %bb.g
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !1314
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE17deallocateBucketsEv.exit
  %i.ar = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 56
  %i.as = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.av, i64 noundef 8) #24 ; 2 uses
  %i.ax = load i32, ptr %i.g, align 4, !tbaa !1314 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !1315
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !1316
  store i32 0, ptr %i.a, align 8, !tbaa !1313
  %.not.i.i5 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add nuw nsw i64 %i.ay, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit

bb.j:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS1_12LineLocationEjSt4lessIS6_ESaISt4pairIKS6_jEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1125
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1126 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1839

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare { i64, i8 } @_ZNK4llvm8Function13getEntryCountEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #5

declare void @_ZN4llvm8Function13setEntryCountEmPKNS_8DenseSetImNS_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(140), i64 noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm20SampleContextTracker17getBaseSamplesForERKNS_8FunctionEb(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(140), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm10sampleprof19SampleProfileReader13getSamplesForERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(190) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.770", align 8 ; 7 uses
  %3 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = tail call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.152, i64 36) #24
  store ptr %i.a, ptr %3, align 8
  %i.b = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.e = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #24 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 3, ptr %i.j, align 4, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) @constinit, i64 48, i1 false)
  store i32 3, ptr %i.i, align 8, !tbaa !32
  %i.k = call { ptr, i64 } @_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefENS_8ArrayRefIS2_EES2_(ptr %i.f, i64 %i.g, ptr nonnull %i.h, i64 3, ptr %i.c, i64 %i.d) ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.l) #24
  br label %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit

_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameERKNS_8FunctionE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.n = extractvalue { ptr, i64 } %i.k, 0
  %i.o = extractvalue { ptr, i64 } %i.k, 1
  %i.p = call noundef ptr @_ZN4llvm10sampleprof19SampleProfileReader13getSamplesForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(190) %0, ptr %i.n, i64 %i.o)
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119SampleProfileLoader15emitAnnotationsERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(1568) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::OptimizationRemark", align 8 ; 9 uses
  %3 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %4 = alloca %"class.llvm::OptimizationRemark", align 8 ; 15 uses
  %5 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %6 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.1459", align 8 ; 7 uses
  %8 = alloca %"class.std::optional.559", align 4 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %"struct.llvm::sampleprof::LineLocation", align 8 ; 5 uses
  %10 = alloca %"class.llvm::ErrorOr.1438", align 8 ; 16 uses
  %11 = alloca %"class.llvm::ErrorOr.911", align 8 ; 7 uses
  %12 = alloca %"class.std::optional.559", align 4 ; 5 uses
  %13 = alloca %"class.llvm::ErrorOr.1438", align 8 ; 11 uses
  %14 = alloca %"class.llvm::DenseMap.476", align 8 ; 6 uses
  %15 = alloca %"class.llvm::SmallVector.1441", align 8 ; 10 uses
  %i.d = alloca [1 x i32], align 4                ; 4 uses
  %i.e = alloca [1 x i32], align 4                ; 4 uses
  %16 = alloca %"class.llvm::SmallVector.1446", align 8 ; 14 uses
  %17 = alloca %"class.llvm::DenseMap.98", align 8 ; 15 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.std::optional.1137", align 8 ; 13 uses
  %19 = alloca %"class.llvm::InlineCost", align 8 ; 9 uses
  %20 = alloca %"struct.llvm::InlineParams", align 4 ; 4 uses
  %21 = alloca %"class.llvm::function_ref.1247", align 8 ; 6 uses
  %22 = alloca %"class.llvm::function_ref.1248", align 8 ; 5 uses
  %23 = alloca %"class.llvm::function_ref.1249", align 8 ; 5 uses
  %24 = alloca %"class.llvm::MapVector.1111", align 8 ; 20 uses
  %25 = alloca %"class.llvm::SmallVector.1278", align 8 ; 24 uses
  %26 = alloca %"class.llvm::SmallVector.1278", align 8 ; 13 uses
  %27 = alloca %"class.llvm::SmallVector.1278", align 8 ; 11 uses
  %28 = alloca %"struct.(anonymous namespace)::InlineCandidate", align 8 ; 9 uses
  %i.g = alloca i64, align 8                      ; 6 uses
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2401
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2385
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2379
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !2387
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !2387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !128
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2379, !noalias !2402 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2385, !noalias !2402 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2386, !noalias !2402 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !368
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !2400

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2401
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1187", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2386
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2379
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2385
  store i32 0, ptr %i.p, align 16, !tbaa !2387
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2401
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2379   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2385
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2386 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2385 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2379
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2386
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !2407

_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !128
  store i64 %i.av, ptr %i.at, align 8, !tbaa !128
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !368
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2408

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2409

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2386
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !2387
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !2387
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !2386
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E24lookupOrInsertIntoBucketIRKmJSB_EEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2379, !noalias !2410 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2385, !noalias !2410 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2386, !noalias !2410 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !603

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !128
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !605, !llvm.loop !2400

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2401
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2387
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2401
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2385
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !2379
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !368
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !368
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !2387
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !2387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !128
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bi = load i64, ptr %2, align 8, !tbaa !128
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !128
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseI18InstrProfValueDataLb1EE18growAndEmplaceBackIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !128 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2428
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1933
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1923
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1936
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1878
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1878
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !368
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1923, !noalias !2429 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1933, !noalias !2429 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1920, !noalias !2429 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1878   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1878
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !1935

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2428
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1112", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1920
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1923
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1933
  store i32 0, ptr %i.p, align 16, !tbaa !1936
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2428
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1923   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1933
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1920 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1933 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1923
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1920
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1878 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2434

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1878
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !368
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !368
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !368
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !368
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2435

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !2436

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1920
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1936
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1936
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8CallBaseEPKNS_10sampleprof15FunctionSamplesEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESE_IJOS7_EEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !1898
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %3, align 8, !tbaa !1326
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1878 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !950  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !604

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8CallBaseEPKNS_10sampleprof15FunctionSamplesEELb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.e, ptr %i.f)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !32
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8CallBaseEPKNS_10sampleprof15FunctionSamplesEELb1EE9push_backES8_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  store ptr %i.e, ptr %i.m, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.n = load i32, ptr %i.g, align 8, !tbaa !32
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !32
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8CallBaseEPKNS_10sampleprof15FunctionSamplesEELb1EE9push_backES8_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8CallBaseEPKNS_10sampleprof15FunctionSamplesEELb1EE9push_backES8_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !27
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  ret ptr %i.t
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8CallBaseEPKNS_10sampleprof15FunctionSamplesEELb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !32
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !32
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !32
  ret void
}

declare void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN4llvm26OptimizationRemarkAnalysisC1EPKcNS_9StringRefERKNS_18DiagnosticLocationEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare ptr @_ZN4llvm14InlineFunctionERNS_8CallBaseERNS_18InlineFunctionInfoEbPNS_9AAResultsEbbPNS_8FunctionEPNS_25OptimizationRemarkEmitterE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(185), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm26emitInlinedIntoBasedOnCostERNS_25OptimizationRemarkEmitterENS_8DebugLocEPKNS_10BasicBlockERKNS_8FunctionES8_RKNS_10InlineCostEbPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr noundef, ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(64), i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm20SampleContextTracker25markContextSamplesInlinedEPKNS_10sampleprof15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm15getInlineParamsEv(ptr dead_on_unwind writable sret(%"struct.llvm::InlineParams") align 4) local_unnamed_addr #5

declare void @_ZN4llvm13getInlineCostERNS_8CallBaseEPNS_8FunctionERKNS_12InlineParamsERNS_19TargetTransformInfoENS_12function_refIFRNS_15AssumptionCacheERS2_EEENS9_IFRKNS_17TargetLibraryInfoESC_EEENS9_IFRNS_18BlockFrequencyInfoESC_EEEPNS_18ProfileSummaryInfoEPNS_25OptimizationRemarkEmitterENS9_IFRNS_20EphemeralValuesCacheESC_EEE(ptr dead_on_unwind writable sret(%"class.llvm::InlineCost") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 4 dereferenceable(74), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"class.llvm::function_ref") align 8, ptr noundef byval(%"class.llvm::function_ref.1247") align 8, ptr noundef byval(%"class.llvm::function_ref.1248") align 8, ptr noundef, ptr noundef, ptr noundef byval(%"class.llvm::function_ref.1249") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm12function_refIFRKNS_17TargetLibraryInfoERNS_8FunctionEEE11callback_fnISt8functionIS6_EEES3_lS5_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFRKN4llvm17TargetLibraryInfoERNS0_8FunctionEEEclES5_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFRKN4llvm17TargetLibraryInfoERNS0_8FunctionEEEclES5_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.f = tail call noundef nonnull align 8 dereferenceable(80) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %1) #24, !inline_history !2437
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(153) ptr @_ZN4llvm12function_refIFRNS_15AssumptionCacheERNS_8FunctionEEE11callback_fnISt8functionIS5_EEES2_lS4_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFRN4llvm15AssumptionCacheERNS0_8FunctionEEEclES4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #27
end_hunk_13
begin_hunk_14_@_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1125
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  %spec.select72 = select i1 %i.au, ptr null, ptr %i.ap
  %spec.select73 = select i1 %i.au, ptr %1, ptr %i.ap
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE24_M_get_insert_unique_posERS4_.exit

bb.s:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.av, align 8, !tbaa !807 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.ax = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.aw) ; 2 uses
  %.in.v.i34 = select i1 %i.ax, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !807 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !2442

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.ax, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !702
  %i.ba = icmp eq ptr %.019.lcssa29.i48, %i.az
  br i1 %i.ba, label %_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE24_M_get_insert_unique_posERS4_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bb, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i40, i64 32
  %i.bd = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 2 uses
  %spec.select.i41 = select i1 %i.bd, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bd, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE24_M_get_insert_unique_posERS4_.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE24_M_get_insert_unique_posERS4_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.d
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ null, %bb.d ], [ %spec.select, %bb.k ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.v, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.an, %bb.p ], [ %i.i, %bb.d ], [ %spec.select71, %bb.k ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.v, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !809, !noalias !2443 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !813, !noalias !2443 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !814, !noalias !2443 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !368
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !639
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !2285

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !2286
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #11 align 2 {
_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.365", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !809
  store ptr %i.y, ptr %i.q, align 8, !tbaa !813
  store i32 0, ptr %i.p, align 16, !tbaa !815
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2286
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !437
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !368 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !368
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #11 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !809 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !813
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !814 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !813 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !809
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !814
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !368  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !639  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !368  ; 2 uses
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.016.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !368 ; 2 uses
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !2448

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa15.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.lcssa13.i ; 2 uses
  store ptr %i.p, ptr %i.an, align 8, !tbaa !639
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !128
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !128
  %i.ar = shl nuw i32 1, %.lcssa.i
  %i.as = or i32 %i.ar, %.lcssa11.i
  store i32 %i.as, ptr %i.am, align 4, !tbaa !368
  %i.at = add i32 %.0.i21, -1
  %i.au = and i32 %i.at, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2449

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !2450

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !814
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.aw, align 8, !tbaa !815
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.ax, align 8, !tbaa !815
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.az = zext i32 %i.av to i64                   ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val11, i64 noundef %i.be, i64 noundef 8) #24
  store i32 0, ptr %i.b, align 4, !tbaa !814
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEN12_GLOBAL__N_119SampleProfileLoader21NotInlinedProfileInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8copyFromERKS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1920 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17deallocateBucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1923
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 4
  %i.g = add nuw nsw i64 %i.e, 31
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741820
  %i.j = add nuw nsw i64 %i.i, %i.f
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.j, i64 noundef 8) #24
  store i32 0, ptr %i.a, align 4, !tbaa !1920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !1936
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1920 ; 3 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !1920
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit, label %bb.c

_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17deallocateBucketsEv.exit
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = add nuw nsw i64 %i.n, 31
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741820
  %i.s = add nuw nsw i64 %i.r, %i.o
  %i.t = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.s, i64 noundef 8) #24 ; 3 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !1920
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !1923
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1933
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1936
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !1936
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1923
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1933
  %i.ae = add nuw nsw i64 %i.v, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 8 %i.ab, i64 %i.w, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPNS_8CallBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN4llvm14sampleprofutil13callsiteIsHotEPKNS_10sampleprof15FunctionSamplesEPNS_18ProfileSummaryInfoEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119SampleProfileLoader42emitOptimizationRemarksForInlineCandidatesERKN4llvm15SmallVectorImplIPNS1_8CallBaseEEERKNS1_8FunctionEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1568) %0, ptr nofree readonly captures(address) %.0.val, i32 %.8.val, ptr noundef nonnull align 8 dereferenceable(140) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 10 uses
  %4 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %5 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 6 uses
  %6 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 6 uses
  %i.a = zext i32 %.8.val to i64
  %.idx = shl nuw nsw i64 %i.a, 3
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx
  %.not13 = icmp eq i32 %.8.val, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.e = select i1 %2, ptr @.str.183, ptr @.str.184
  %i.f = select i1 %2, i64 10, i64 7
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread
  %.014 = phi ptr [ %.0.val, %.lr.ph ], [ %i.bn, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread ] ; 2 uses
  %i.p = load ptr, ptr %.014, align 8, !tbaa !1878 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !827  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2493
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1300
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1835
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1298
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1991
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1991
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !128
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1835, !noalias !2494 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1300, !noalias !2494 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1299, !noalias !2494 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1991   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1991
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !2012

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2493
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.98", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1299
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1835
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1300
  store i32 0, ptr %i.p, align 16, !tbaa !1298
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2493
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1835   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1300
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1299 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1300 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1835
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1299
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1991 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2499

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1991
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !128
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !128
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !368
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2500

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2501

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1299
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1298
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1298
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1299
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE22findEquivalenceClassesERS1_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1298", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.f, align 4, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %.sroa.018.023 = load ptr, ptr %i.g, align 8, !tbaa !566 ; 3 uses
  %.not2124 = icmp eq ptr %.sroa.018.023, %i.h
  br i1 %.not2124, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.d
  %.sroa.012.026.pre = load ptr, ptr %i.g, align 8, !tbaa !566
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.sroa.012.026 = phi ptr [ %.sroa.012.026.pre, %.preheader.loopexit ], [ %.sroa.018.023, %bb.a ] ; 2 uses
  %.not2227 = icmp eq ptr %.sroa.012.026, %i.h
  br i1 %.not2227, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.018.025 = phi ptr [ %.sroa.018.023, %.lr.ph ], [ %.sroa.018.0, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.018.025, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.n, ptr %i.a, align 8, !tbaa !1991
  %i.o = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JRPS2_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2502
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.o, 1
  %i.p = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !32
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !1991
  call void @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE14getDescendantsEPS1_RNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(204) %i.q, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1991
  %i.t = load ptr, ptr %2, align 8, !tbaa !27
  %i.u = load i32, ptr %i.e, align 8, !tbaa !32
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !107
  call void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE19findEquivalencesForEPNS_10BasicBlockENS_8ArrayRefIS4_EEPNS_17PostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %i.s, ptr %i.t, i64 %i.v, ptr noundef nonnull %i.w)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.018.025, i64 8
  %.sroa.018.0 = load ptr, ptr %i.x, align 8, !tbaa !566 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.018.0, %i.h
  br i1 %.not21, label %.preheader.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.y = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.y) #24
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.f:                                             ; preds = %.lr.ph29, %bb.h
  %.sroa.012.028 = phi ptr [ %.sroa.012.026, %.lr.ph29 ], [ %.sroa.012.0, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.012.028, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ab = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1991 ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !1991
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !1991
  %.not = icmp eq ptr %i.ae, %i.ad
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i10 = extractvalue { ptr, i8 } %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i10, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !128
  %i.ai = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i11 = extractvalue { ptr, i8 } %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i11, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !128
  br label %bb.h

end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JRPS2_EEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2524
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1306
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !1838
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1304
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1991
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1991
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %2, align 8, !tbaa !1991
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1991
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1838, !noalias !2525 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1306, !noalias !2525 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1305, !noalias !2525 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1991   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1991
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !2523

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2524
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.113", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1305
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1838
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1306
  store i32 0, ptr %i.p, align 16, !tbaa !1304
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2524
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1838   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1306
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1305 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1306 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1838
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1305
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1991 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2530

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1991
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1991
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1991
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !368
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2531

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2532

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1305
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1304
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1304
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1305
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb1EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(228), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1838, !noalias !2533 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1306, !noalias !2533 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1305, !noalias !2533 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1991   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !368
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !603

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1991
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !368
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !605, !llvm.loop !2523

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2524
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1304
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2524
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1306
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1838
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1304
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1991
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1991
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1991
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !368
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !605, !llvm.loop !2548

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2549
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1307
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !604

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2549
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1310
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1309
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 88                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !368
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !368
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1307
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1991
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1991
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 8, ptr %i.bl, align 4, !tbaa !33
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1309, !noalias !2550 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1310, !noalias !2550 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1308, !noalias !2550 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1991   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !368
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1991
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !2548

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2549
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.133", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1308
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 88                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1309
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1310
  store i32 0, ptr %i.p, align 16, !tbaa !1307
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2549   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !956 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store ptr %i.z, ptr %2, align 16, !tbaa !2549
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !437
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !956
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !368
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !368
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1311

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1312

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1308 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !1309
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 88
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1309
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1310
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1308 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1310 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1309
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1308
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1991 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !368
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !368
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2555

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !1991
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 8, ptr %i.aw, align 4, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !27 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIPKNS_10BasicBlockEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIPKNS_10BasicBlockEE12assignRemoteEOS4_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !27
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !33
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !27
  store i32 0, ptr %i.be, align 4, !tbaa !33
  br label %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = zext i32 %i.ay to i64                   ; 2 uses
  %i.bh = icmp ugt i32 %i.ay, 8
  br i1 %i.bh, label %_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i, label %_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 8) #24
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i ], [ %i.bg, %bb.e ]
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !27
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 8 %i.bi, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPKNS_10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i.thread, %_ZSt4moveIPPKN4llvm10BasicBlockES4_ET0_T_S6_S5_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i.sink.split

_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPKNS_10BasicBlockEE12assignRemoteEOS4_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i

_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bk = shl nuw i32 1, %.lcssa.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !368
  %i.bn = or i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !368
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !27 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i
  tail call void @free(ptr noundef %i.bp) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj8EEC2EOS4_.exit.i, %bb.f
  %i.bs = add i32 %.0.i16, -1
  %i.bt = and i32 %i.bs, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2556

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2557

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !1308
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bu = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !1307
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !1307
  %i.by = icmp eq i32 %i.bu, 0
  br i1 %i.by, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bz = load ptr, ptr %1, align 8, !tbaa !1309
  %i.ca = zext i32 %i.bu to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 88
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1308
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS7_Lj8EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_10BasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !32
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !32
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE21propagateThroughEdgesERS1_b(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %3 = alloca %"struct.std::pair.1053", align 8   ; 18 uses
  %4 = alloca %"struct.std::pair.1053", align 8   ; 17 uses
  %5 = alloca %"struct.std::pair.1053", align 8   ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %"struct.std::pair.1053", align 8   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.0765.0925 = load ptr, ptr %i.d, align 8, !tbaa !566 ; 2 uses
  %.not805926 = icmp eq ptr %.sroa.0765.0925, %i.e
  br i1 %.not805926, label %._crit_edge931, label %.lr.ph930

end_hunk_17
begin_hunk_18_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E24lookupOrInsertIntoBucketIRKS6_JEEES2_IPSB_bEOT_DpOT0_:bb.a
  %i.bh = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bi = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bj = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = lshr i64 %i.bn, 5
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !368
  %i.bu = or i32 %i.bq, %i.bt
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !368
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !1301
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ba, align 8, !tbaa !1301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.bx, align 8, !tbaa !128
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.bj, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit ], [ %i.aj, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1836, !noalias !2992 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1303, !noalias !2992 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1302, !noalias !2992 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2045   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2569 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = shl i64 %i.l, 32
  %i.t = and i64 %i.r, 4294967295
  %i.u = or disjoint i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4658895280553007687       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.g, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.as, %bb.c ], [ %i.ab, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.aq, %bb.c ], [ %i.z, %bb.b ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2045
  %i.ak = icmp eq ptr %i.h, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.n, %i.am
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false     ; 3 uses
  br i1 %i.ao, label %.thread, label %bb.c, !prof !604

bb.c:                                             ; preds = %.lr.ph
  %i.ap = add nuw i32 %.024, 1
  %i.aq = and i32 %i.ap, %i.g                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %i.ar, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !368
  %i.aw = and i32 %i.aq, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph, label %.thread, !prof !605, !llvm.loop !2047

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ], [ %i.as, %bb.c ], [ %i.ai, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ao, %bb.c ], [ %i.ao, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2991
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.100", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1302
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1836
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1303
  store i32 0, ptr %i.p, align 16, !tbaa !1301
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !437
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2991
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !437
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !437
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !437
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !368 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !368
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !368
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !368
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !368
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1836
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1303
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1302 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1303 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1836
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1302
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !368  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2045
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2569
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = shl i64 %i.z, 32
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = or disjoint i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.k, %i.am                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !368
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.b ]
  %i.av = add i32 %.014.i, 1
  %i.aw = and i32 %i.av, %i.k                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5                       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !368
  %i.bb = and i32 %i.aw, 31                       ; 2 uses
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !2997

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !128
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !128
  %i.bi = shl nuw i32 1, %.lcssa.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !368
  %i.bl = or i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !368
  %i.bm = add i32 %.0.i17, -1
  %i.bn = and i32 %i.bm, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2998

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2999

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1302
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bo = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1301
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !1301
  %i.bs = icmp eq i32 %i.bo, 0
  br i1 %i.bs, label %_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bt = load ptr, ptr %1, align 8, !tbaa !1836
  %i.bu = zext i32 %i.bo to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 24
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1302
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_10BasicBlockES8_EmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setISt4pairIPKN4llvm10BasicBlockES4_ESt4lessIS5_ESaIS5_EE6insertISt13move_iteratorIPS5_EEEvT_SE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE22_M_insert_range_uniqueISt13move_iteratorIPS5_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESH_SH_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.b, align 8, !tbaa !704
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i, %.lr.ph.i
  %i.f = phi i64 [ %.pre, %.lr.ph.i ], [ %i.bf, %_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i ] ; 3 uses
  %.sroa.04.08.i = phi ptr [ %1, %.lr.ph.i ], [ %i.bg, %_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i ] ; 10 uses
  %.not.i4 = icmp eq i64 %i.f, 0
  br i1 %.not.i4, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread79.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !807  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2045 ; 2 uses
  %i.j = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !2045 ; 2 uses
  %i.k = icmp ult ptr %i.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult ptr %i.j, %i.i
  br i1 %i.l, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread79.i, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.i

_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2569
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2569
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.h, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread79.i

_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread79.i: ; preds = %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.i, %bb.d, %bb.b
  %.02124.i.i = load ptr, ptr %i.d, align 8, !tbaa !807 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02124.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread79.i
  %i.r = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !2045 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.lr.ph.i.i
  %.02126.i.i = phi ptr [ %.02124.i.i, %.lr.ph.i.i ], [ %.02126.i.i.be, %.backedge.i.backedge ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2045 ; 3 uses
  %i.w = icmp ult ptr %i.r, %i.v
  br i1 %i.w, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.backedge.i
  %i.x = icmp ult ptr %i.v, %i.r
  br i1 %i.x, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.thread.i, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.i.i

_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2569
  %i.aa = icmp ult ptr %i.t, %i.z
  br i1 %i.aa, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.i, label %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.thread.i

_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.i: ; preds = %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.i.i, %.backedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 16
  %.021.i.i = load ptr, ptr %i.ab, align 8, !tbaa !807 ; 2 uses
  %.not.i.i5 = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i5, label %._crit_edge.thread.i.i, label %.backedge.i.backedge

_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.thread.i: ; preds = %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.i.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 24
  %.021.i81.i = load ptr, ptr %i.ac, align 8, !tbaa !807 ; 2 uses
  %.not.i82.i = icmp eq ptr %.021.i81.i, null
  br i1 %.not.i82.i, label %._crit_edge.i.thread.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.thread.i, %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.i
  %.02126.i.i.be = phi ptr [ %.021.i.i, %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.i ], [ %.021.i81.i, %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.thread.i ]
  br label %.backedge.i, !llvm.loop !2664

._crit_edge.thread.i.i:                           ; preds = %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.i, %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread79.i
  %.020.lcssa34.i.i = phi ptr [ %i.a, %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread79.i ], [ %.02126.i.i, %_ZNKSt4lessISt4pairIPKN4llvm10BasicBlockES4_EEclERKS5_S8_.exit.thread.i.i ] ; 4 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.ae = icmp eq ptr %.020.lcssa34.i.i, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i.i) #28 ; 2 uses
  %.phi.trans.insert105.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.pre106.i = load ptr, ptr %.phi.trans.insert105.i, align 8, !tbaa !2045
  %.pre107.i = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !2045
end_hunk_18
begin_hunk_19_@_ZN4llvmlsINS_18OptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE:bb.a
bb.f:                                             ; preds = %._crit_edge.i.i4.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !19
  store i8 %i.z, ptr %i.y, align 1, !tbaa !19
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit

bb.g:                                             ; preds = %._crit_edge.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit: ; preds = %._crit_edge.i.i4.i, %bb.f, %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !127
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !1014
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS0_8ArgumentE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef nonnull align 8 dereferenceable(80) %2) #24
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !14  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !19
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.am = load i64, ptr %i.c, align 8, !tbaa !19
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #25
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret ptr %0
}

declare void @_ZN4llvm18OptimizationRemarkC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr, i64, ptr noundef) unnamed_addr #5

declare void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i64, ptr) unnamed_addr #5

declare noundef i32 @_ZNK4llvm14sampleprofutil21SampleCoverageTracker16countUsedRecordsEPKNS_10sampleprof15FunctionSamplesEPNS_18ProfileSummaryInfoE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK4llvm14sampleprofutil21SampleCoverageTracker16countBodyRecordsEPKNS_10sampleprof15FunctionSamplesEPNS_18ProfileSummaryInfoE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK4llvm14sampleprofutil21SampleCoverageTracker15computeCoverageEjj(ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK4llvm14sampleprofutil21SampleCoverageTracker16countBodySamplesEPKNS_10sampleprof15FunctionSamplesEPNS_18ProfileSummaryInfoE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm18DILexicalBlockFile7getImplERNS_11LLVMContextEPNS_8MetadataES4_jNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm10DILocation7getImplERNS_11LLVMContextEjjPNS_8MetadataES4_bmhNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEED2Ev(ptr noundef nonnull align 8 dead_on_return(1232) dereferenceable(1232) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #24, !inline_history !140
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !19
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !519  ; 6 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm18PseudoProbeManagerESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !467  ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !520
  %i.ab = zext i32 %i.x to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #24
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit.i.i.i

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !521 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZNKSt14default_deleteIN4llvm18PseudoProbeManagerEEclEPS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit.i.i.i
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !524
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #24
  br label %_ZNKSt14default_deleteIN4llvm18PseudoProbeManagerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm18PseudoProbeManagerEEclEPS1_.exit.i: ; preds = %bb.f, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 48) #25
  br label %_ZNSt10unique_ptrIN4llvm18PseudoProbeManagerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm18PseudoProbeManagerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt14default_deleteIN4llvm18PseudoProbeManagerEEclEPS1_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof13SampleContextESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !391 ; 3 uses
  %.not.i4 = icmp eq ptr %i.av, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN4llvm10sampleprof19SampleProfileReaderESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm10sampleprof19SampleProfileReaderEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm10sampleprof19SampleProfileReaderEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm18PseudoProbeManagerESt14default_deleteIS1_EED2Ev.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(190) %i.av) #24, !inline_history !3033
  br label %_ZNSt10unique_ptrIN4llvm10sampleprof19SampleProfileReaderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm10sampleprof19SampleProfileReaderESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm18PseudoProbeManagerESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm10sampleprof19SampleProfileReaderEEclEPS2_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1314 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN4llvm14sampleprofutil21SampleCoverageTrackerD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZNSt10unique_ptrIN4llvm10sampleprof19SampleProfileReaderESt14default_deleteIS2_EED2Ev.exit
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !1315
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1316
  %i.bg = zext i32 %i.bb to i64
  %i.bh = add nuw nsw i64 %i.bg, 31
  %i.bi = lshr i64 %i.bh, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bl = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bk, %.lr.ph.i.i.i ], [ %i.bu, %bb.g ] ; 3 uses
  %i.bm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bn = or disjoint i32 %i.bm, %i.bl
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bd, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef %i.bs)
  %i.bt = add i32 %.0.i3.i.i.i, -1
  %i.bu = and i32 %i.bt, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !1317

._crit_edge.i.i.i:                                ; preds = %bb.g, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bi
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1318

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.ba, align 4, !tbaa !1314 ; 2 uses
  %i.bv = icmp eq i32 %.pr.i.i, 0
  br i1 %i.bv, label %_ZN4llvm14sampleprofutil21SampleCoverageTrackerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i
  %i.bw = load ptr, ptr %i.az, align 8, !tbaa !1315
  %i.bx = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.by = mul nuw nsw i64 %i.bx, 56
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #24
  br label %_ZN4llvm14sampleprofutil21SampleCoverageTrackerD2Ev.exit

_ZN4llvm14sampleprofutil21SampleCoverageTrackerD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm10sampleprof19SampleProfileReaderESt14default_deleteIS2_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10sampleprof15FunctionSamplesESt3mapINS2_12LineLocationEjSt4lessIS7_ESaISt4pairIKS7_jEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv.exit.i.i, %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !1308 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm14sampleprofutil21SampleCoverageTrackerD2Ev.exit
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !1309
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1310
  %i.ck = zext i32 %i.cf to i64
  %i.cl = add nuw nsw i64 %i.ck, 31
  %i.cm = lshr i64 %i.cl, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.co, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.cp = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.i

bb.i:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.co, %.lr.ph.i.i ], [ %i.cz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.cq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.cr = or disjoint i32 %i.cq, %i.cp
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [88 x i8], ptr %i.ch, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !27 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef %i.cv) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.j, %bb.i
  %i.cy = add i32 %.0.i3.i.i, -1
  %i.cz = and i32 %i.cy, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !1311

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cm
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1312

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ce, align 4, !tbaa !1308 ; 2 uses
  %i.da = icmp eq i32 %.pr.i, 0
  br i1 %i.da, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  %i.db = load ptr, ptr %i.cd, align 8, !tbaa !1309
  %i.dc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.dd = mul nuw nsw i64 %i.dc, 88
  %i.de = add nuw nsw i64 %i.dc, 31
  %i.df = lshr i64 %i.de, 3
  %i.dg = and i64 %i.df, 1073741820
  %i.dh = add nuw nsw i64 %i.dg, %i.dd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.db, i64 noundef %i.dh, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZN4llvm14sampleprofutil21SampleCoverageTrackerD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !1308 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit19, label %.lr.ph7.preheader.i.i5

.lr.ph7.preheader.i.i5:                           ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !1309
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1310
  %i.dp = zext i32 %i.dk to i64
  %i.dq = add nuw nsw i64 %i.dp, 31
  %i.dr = lshr i64 %i.dq, 5
  br label %.lr.ph7.i.i6

.lr.ph7.i.i6:                                     ; preds = %._crit_edge.i.i14, %.lr.ph7.preheader.i.i5
  %indvars.iv.i.i7 = phi i64 [ 0, %.lr.ph7.preheader.i.i5 ], [ %indvars.iv.next.i.i15, %._crit_edge.i.i14 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i.i7
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !368 ; 2 uses
  %.not11.i2.i.i8 = icmp eq i32 %i.dt, 0
  br i1 %.not11.i2.i.i8, label %._crit_edge.i.i14, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %.lr.ph7.i.i6
  %indvars.iv.tr.i.i10 = trunc nuw i64 %indvars.iv.i.i7 to i32
  %i.du = shl nuw i32 %indvars.iv.tr.i.i10, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i12, %.lr.ph.i.i9
  %.0.i3.i.i11 = phi i32 [ %i.dt, %.lr.ph.i.i9 ], [ %i.ee, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i12 ] ; 3 uses
  %i.dv = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i11, i1 true)
  %i.dw = or disjoint i32 %i.dv, %i.du
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [88 x i8], ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !27 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i12, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %i.ea) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i12

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i12: ; preds = %bb.m, %bb.l
  %i.ed = add i32 %.0.i3.i.i11, -1
  %i.ee = and i32 %i.ed, %.0.i3.i.i11             ; 2 uses
  %.not11.i.i.i13 = icmp eq i32 %i.ee, 0
  br i1 %.not11.i.i.i13, label %._crit_edge.i.i14, label %bb.l, !llvm.loop !1311

._crit_edge.i.i14:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i12, %.lr.ph7.i.i6
  %indvars.iv.next.i.i15 = add nuw nsw i64 %indvars.iv.i.i7, 1 ; 2 uses
  %.not.i.i.i16 = icmp eq i64 %indvars.iv.next.i.i15, %i.dr
  br i1 %.not.i.i.i16, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i17, label %.lr.ph7.i.i6, !llvm.loop !1312

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i17: ; preds = %._crit_edge.i.i14
  %.pr.i18 = load i32, ptr %i.dj, align 4, !tbaa !1308 ; 2 uses
  %i.ef = icmp eq i32 %.pr.i18, 0
  br i1 %i.ef, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit19, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i17
  %i.eg = load ptr, ptr %i.di, align 8, !tbaa !1309
  %i.eh = zext i32 %.pr.i18 to i64                ; 2 uses
  %i.ei = mul nuw nsw i64 %i.eh, 88
  %i.ej = add nuw nsw i64 %i.eh, 31
  %i.ek = lshr i64 %i.ej, 3
  %i.el = and i64 %i.ek, 1073741820
  %i.em = add nuw nsw i64 %i.el, %i.ei
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.eg, i64 noundef %i.em, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit19

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit19: ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS4_Lj8EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i17, %bb.n
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !122 ; 8 uses
  %.not.i20 = icmp eq ptr %i.eo, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit19
  tail call void @_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(184) %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ep) #24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !125
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #25
  br label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !27 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.ex) #24
  br label %_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 184) #25
  br label %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_11SmallVectorIS3_Lj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit19, %_ZNKSt14default_deleteIN4llvm8LoopInfoEEclEPS1_.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !107 ; 7 uses
  %.not.i21 = icmp eq ptr %i.fb, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 136
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fc) #24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !27 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef %i.fe) #24
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i: ; preds = %bb.s, %bb.r
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !27 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.fh) #24
  br label %_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i: ; preds = %bb.t, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 232) #25
  br label %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm8LoopInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm17PostDominatorTreeEEclEPS1_.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !60 ; 7 uses
  %.not.i22 = icmp eq ptr %i.fl, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fm) #24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !27 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i23, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef %i.fo) #24
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i23

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i23: ; preds = %bb.v, %bb.u
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !27 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i23
  tail call void @free(ptr noundef %i.fr) #24
  br label %_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i: ; preds = %bb.w, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 208) #25
  br label %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm17PostDominatorTreeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm13DominatorTreeEEclEPS1_.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !1305 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !1838
  %i.fz = zext i32 %i.fv to i64                   ; 2 uses
  %i.ga = shl nuw nsw i64 %i.fz, 4
  %i.gb = add nuw nsw i64 %i.fz, 31
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = and i64 %i.gc, 1073741820
  %i.ge = add nuw nsw i64 %i.gd, %i.ga
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fy, i64 noundef %i.ge, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13DominatorTreeESt14default_deleteIS1_EED2Ev.exit, %bb.x
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !701
  tail call void @_ZNSt8_Rb_treeISt4pairIPKN4llvm10BasicBlockES4_ES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gg, ptr noundef %i.gi)
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !27 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZN4llvm8SmallSetISt4pairIPKNS_10BasicBlockES4_ELj32ESt4lessIS5_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit
  tail call void @free(ptr noundef %i.gj) #24
  br label %_ZN4llvm8SmallSetISt4pairIPKNS_10BasicBlockES4_ELj32ESt4lessIS5_EED2Ev.exit

_ZN4llvm8SmallSetISt4pairIPKNS_10BasicBlockES4_ELj32ESt4lessIS5_EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit, %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !20, !range !24, !noundef !25
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm8SmallSetISt4pairIPKNS_10BasicBlockES4_ELj32ESt4lessIS5_EED2Ev.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.gq) #24
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm8SmallSetISt4pairIPKNS_10BasicBlockES4_ELj32ESt4lessIS5_EED2Ev.exit, %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !1302 ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_ZN4llvm8DenseMapISt4pairIPKNS_10BasicBlockES4_EmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %bb.aa

end_hunk_19
