Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pattern_matching?download=true
inline.NumInlined: 1695
inline.NumDeleted: 842
begin_hunk_0_@_ZN2cv5gimpl11findMatchesERKN3ade10TypedGraphIJNS0_8NodeTypeENS0_5InputENS0_6OutputENS0_2OpENS0_4DataENS0_10ConstValueENS0_6IslandENS0_8ProtocolENS0_17OriginalInputMetaENS0_10OutputMetaENS0_7JournalENS1_6passes19TopologicalSortDataENS0_17DataObjectCounterENS0_11IslandModelENS0_14ActiveBackendsENS0_18CustomMetaFunctionENS0_9StreamingENS0_12DeserializedENS0_13HasIntrinsicsENS0_10DesyncPathENS0_10DesyncEdgeENS0_14DesynchronizedENS0_11CompileArgsEEEEST_:bb.a
  %.sroa.01.05.i = phi ptr [ %i.adr, %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i ], [ %.val281, %_ZNSt7__cxx114listIN3ade6HandleINS1_4NodeEEESaIS4_EE5clearEv.exit ] ; 5 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 24
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 32
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !92
  %i.acm = load ptr, ptr %i.acj, align 8, !tbaa !94 ; 2 uses
  %i.acn = ptrtoint ptr %i.acl to i64
  %i.aco = ptrtoint ptr %i.acm to i64
  %i.acp = sub i64 %i.acn, %i.aco
  %i.acq = ashr exact i64 %i.acp, 4               ; 2 uses
  %i.acr = urem i64 %.06.i, %i.acq
  %i.acs = udiv i64 %.06.i, %i.acq
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.acm, i64 %i.acr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20, !noalias !431
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !64 ; 2 uses
  %i.acw = load <2 x ptr>, ptr %i.aci, align 8, !tbaa !44
  store <2 x ptr> %i.acw, ptr %45, align 16, !tbaa !44, !noalias !431
  %.not.i.i.i.i.i.i371 = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i.i.i.i371, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph.i370
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 12 ; 3 uses
  %i.acy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73, !noalias !431
  %.not.i.i.i.i.i.i.i372 = icmp eq i8 %i.acy, 0
  br i1 %.not.i.i.i.i.i.i.i372, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.acz = load i32, ptr %i.acx, align 4, !tbaa !74
  %i.ada = add nsw i32 %i.acz, 1
  store i32 %i.ada, ptr %i.acx, align 4, !tbaa !74
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.adb = atomicrmw volatile add ptr %i.acx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i:       ; preds = %bb.fs, %bb.fr, %.lr.ph.i370
  %i.adc = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !64 ; 2 uses
  %i.ade = load <2 x ptr>, ptr %i.act, align 8, !tbaa !44
  store <2 x ptr> %i.ade, ptr %i.ui, align 16, !tbaa !44, !noalias !431
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.add, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit.i, label %bb.ft

bb.ft:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 12 ; 3 uses
  %i.adg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73, !noalias !431
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.adg, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.adh = load i32, ptr %i.adf, align 4, !tbaa !74
  %i.adi = add nsw i32 %i.adh, 1
  store i32 %i.adi, ptr %i.adf, align 4, !tbaa !74
  br label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit.i

bb.fv:                                            ; preds = %bb.ft
  %i.adj = atomicrmw volatile add ptr %i.adf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit.i

_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit.i: ; preds = %bb.fv, %bb.fu, %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i
  %i.adk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i unwind label %.body373 ; 3 uses

_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i: ; preds = %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit.i
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adm = load <2 x ptr>, ptr %45, align 16, !tbaa !44, !noalias !431
  store <2 x ptr> %i.adm, ptr %i.adl, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %45, i8 0, i64 16, i1 false), !noalias !431
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 32
  %i.ado = load <2 x ptr>, ptr %i.ui, align 16, !tbaa !44, !noalias !431
  store <2 x ptr> %i.ado, ptr %i.adn, align 8, !tbaa !44
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.adk, ptr noundef nonnull align 8 dereferenceable(24) %75) #20
  %i.adp = load i64, ptr %i.uh, align 8, !tbaa !434, !alias.scope !431
  %i.adq = add i64 %i.adp, 1
  store i64 %i.adq, ptr %i.uh, align 8, !tbaa !434, !alias.scope !431
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20, !noalias !431
  %i.adr = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq ptr %i.adr, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_117sampleFromProductB5cxx11EmRKSt13unordered_mapIN3ade6HandleINS1_4NodeEEESt6vectorIS4_SaIS4_EENS1_12HandleHasherIS3_EESt8equal_toIS4_ESaISt4pairIKS4_S7_EEE.exit, label %.lr.ph.i370

.body373:                                         ; preds = %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit.i
  %i.ads = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %45) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20, !noalias !431
  call void @_ZNSt7__cxx1110_List_baseISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %75) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #20
  br label %bb.amc

_ZN12_GLOBAL__N_117sampleFromProductB5cxx11EmRKSt13unordered_mapIN3ade6HandleINS1_4NodeEEESt6vectorIS4_SaIS4_EENS1_12HandleHasherIS3_EESt8equal_toIS4_ESaISt4pairIKS4_S7_EEE.exit: ; preds = %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i
  %.pre2744 = load ptr, ptr %74, align 8, !tbaa !90 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.pre2744, %74
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx114listISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EE5clearEv.exit.i, label %.lr.ph.i.i.i1194

.lr.ph.i.i.i1194:                                 ; preds = %_ZN12_GLOBAL__N_117sampleFromProductB5cxx11EmRKSt13unordered_mapIN3ade6HandleINS1_4NodeEEESt6vectorIS4_SaIS4_EENS1_12HandleHasherIS3_EESt8equal_toIS4_ESaISt4pairIKS4_S7_EEE.exit, %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.adt, %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i.i.i ], [ %.pre2744, %_ZN12_GLOBAL__N_117sampleFromProductB5cxx11EmRKSt13unordered_mapIN3ade6HandleINS1_4NodeEEESt6vectorIS4_SaIS4_EENS1_12HandleHasherIS3_EESt8equal_toIS4_ESaISt4pairIKS4_S7_EEE.exit ] ; 4 uses
  %i.adt = load ptr, ptr %.09.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 40
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i.i.i.i.i1195 = icmp eq ptr %i.adv, null
  br i1 %.not.i.i.i.i.i.i.i1195, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.i.i.i1199, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i.i1194
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 12 ; 3 uses
  %i.adx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i.i1196 = icmp eq i8 %i.adx, 0
  br i1 %.not.i.i.i.i.i.i.i.i1196, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ady = load i32, ptr %i.adw, align 4, !tbaa !74 ; 2 uses
  %i.adz = add nsw i32 %i.ady, -1
  store i32 %i.adz, ptr %i.adw, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i1197

bb.fy:                                            ; preds = %bb.fw
  %i.aea = atomicrmw volatile add ptr %i.adw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i1197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i1197: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i.i.i.i1198 = phi i32 [ %i.ady, %bb.fx ], [ %i.aea, %bb.fy ]
  %i.aeb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i1198, 1
  br i1 %i.aeb, label %bb.fz, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.i.i.i1199

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i1197
  %i.aec = load ptr, ptr %i.adv, align 8, !tbaa !72
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 24
  %i.aee = load ptr, ptr %i.aed, align 8
  call void %i.aee(ptr noundef nonnull align 8 dereferenceable(16) %i.adv) #20, !inline_history !223
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.i.i.i1199

_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.i.i.i1199:   ; preds = %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i1197, %.lr.ph.i.i.i1194
  %i.aef = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 24
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.i.i.i1199
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 12 ; 3 uses
  %i.aei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i2.i.i.i.i = icmp eq i8 %i.aei, 0
  br i1 %.not.i.i.i.i2.i.i.i.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aej = load i32, ptr %i.aeh, align 4, !tbaa !74 ; 2 uses
  %i.aek = add nsw i32 %i.aej, -1
  store i32 %i.aek, ptr %i.aeh, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i

bb.gc:                                            ; preds = %bb.ga
  %i.ael = atomicrmw volatile add ptr %i.aeh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i: ; preds = %bb.gc, %bb.gb
  %.0.i.i.i.i.i4.i.i.i.i = phi i32 [ %i.aej, %bb.gb ], [ %i.ael, %bb.gc ]
  %i.aem = icmp eq i32 %.0.i.i.i.i.i4.i.i.i.i, 1
  br i1 %i.aem, label %bb.gd, label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i.i.i

bb.gd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i
  %i.aen = load ptr, ptr %i.aeg, align 8, !tbaa !72
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 24
  %i.aep = load ptr, ptr %i.aeo, align 8
  call void %i.aep(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #20, !inline_history !223
  br label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i.i.i

_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i.i.i: ; preds = %bb.gd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i, %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i.i.i.i1199
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 48) #21
  %.not.i.i.i1200 = icmp eq ptr %i.adt, %74
  br i1 %.not.i.i.i1200, label %_ZNSt7__cxx114listISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EE5clearEv.exit.i, label %.lr.ph.i.i.i1194, !llvm.loop !3

_ZNSt7__cxx114listISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EE5clearEv.exit.i: ; preds = %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit.i.i.i, %_ZNSt7__cxx114listIN3ade6HandleINS1_4NodeEEESaIS4_EE5clearEv.exit, %_ZN12_GLOBAL__N_117sampleFromProductB5cxx11EmRKSt13unordered_mapIN3ade6HandleINS1_4NodeEEESt6vectorIS4_SaIS4_EENS1_12HandleHasherIS3_EESt8equal_toIS4_ESaISt4pairIKS4_S7_EEE.exit
  store ptr %74, ptr %i.ue, align 8, !tbaa !430
  store i64 0, ptr %i.uf, align 8, !tbaa !422
  %i.aeq = load ptr, ptr %75, align 8, !tbaa !90  ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %75
  br i1 %i.aer, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EE5clearEv.exit.i
  store ptr %74, ptr %74, align 8, !tbaa !90
  br label %_ZNSt7__cxx1110_List_baseISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EED2Ev.exit

bb.gf:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EE5clearEv.exit.i
  store ptr %i.aeq, ptr %74, align 8, !tbaa !90
  %i.aes = load ptr, ptr %i.ug, align 8, !tbaa !430 ; 2 uses
  store ptr %i.aes, ptr %i.ue, align 8, !tbaa !430
  store ptr %74, ptr %i.aes, align 8, !tbaa !90
  %i.aet = load ptr, ptr %74, align 8, !tbaa !90  ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  store ptr %74, ptr %i.aeu, align 8, !tbaa !430
  %i.aev = load i64, ptr %i.uh, align 8, !tbaa !422 ; 2 uses
  store i64 %i.aev, ptr %i.uf, align 8, !tbaa !422
  br label %_ZNSt7__cxx1110_List_baseISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EED2Ev.exit

_ZNSt7__cxx1110_List_baseISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EED2Ev.exit: ; preds = %bb.gf, %bb.ge
  %i.aew = phi i64 [ 0, %bb.ge ], [ %i.aev, %bb.gf ]
  %i.aex = phi ptr [ %74, %bb.ge ], [ %i.aet, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #20
  br label %.preheader1685

.preheader1685:                                   ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit, %_ZNSt7__cxx1110_List_baseISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EED2Ev.exit
  %.01792560 = phi i64 [ %i.aew, %_ZNSt7__cxx1110_List_baseISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EED2Ev.exit ], [ %i.bny, %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit ] ; 2 uses
  %.sroa.01480.02558 = phi ptr [ %i.aex, %_ZNSt7__cxx1110_List_baseISt4pairIN3ade6HandleINS2_4NodeEEES5_ESaIS6_EED2Ev.exit ], [ %.sroa.01480.1.lcssa3059, %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit ] ; 2 uses
  %i.aey = icmp eq i64 %.01792560, 0
  br i1 %i.aey, label %.preheader.i.i, label %.lr.ph2553

._crit_edge2554:                                  ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1253
  br i1 %.4185, label %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit.thread, label %.preheader.i.i

.lr.ph2553:                                       ; preds = %.preheader1685, %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1253
  %.01782552 = phi i64 [ %i.blr, %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1253 ], [ 0, %.preheader1685 ]
  %.sroa.01480.12550 = phi ptr [ %i.bls, %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1253 ], [ %.sroa.01480.02558, %.preheader1685 ] ; 13 uses
  %i.aez = load ptr, ptr %i.m, align 8, !tbaa !85 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.01480.12550, i64 16 ; 5 uses
  %.not5.i.i.i383 = icmp eq ptr %i.aez, null
  br i1 %.not5.i.i.i383, label %_ZSt4findINSt8__detail14_Node_iteratorIN3ade6HandleINS2_4NodeEEELb1ELb1EEES5_ET_S7_S7_RKT0_.exit.thread, label %.lr.ph.i.i.i384.preheader

.lr.ph.i.i.i384.preheader:                        ; preds = %.lr.ph2553
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.01480.12550, i64 24
  br label %.lr.ph.i.i.i384

.lr.ph.i.i.i384:                                  ; preds = %.lr.ph.i.i.i384.preheader, %bb.gy
  %.sroa.03.06.i.i.i = phi ptr [ %i.ahd, %bb.gy ], [ %i.aez, %.lr.ph.i.i.i384.preheader ] ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !64, !noalias !435 ; 8 uses
  %.not.i.i.i.i.i.i1201 = icmp eq ptr %i.afe, null
  br i1 %.not.i.i.i.i.i.i1201, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph.i.i.i384
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 8 ; 7 uses
  %i.afg = load atomic i32, ptr %i.aff monotonic, align 8, !noalias !435
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gi, %bb.gg
  %.06.i.i.i.i.i.i.i1202 = phi i32 [ %i.afg, %bb.gg ], [ %i.afk, %bb.gi ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i1203 = icmp eq i32 %.06.i.i.i.i.i.i.i1202, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i1203, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.afh = add nsw i32 %.06.i.i.i.i.i.i.i1202, 1
  %i.afi = cmpxchg weak ptr %i.aff, i32 %.06.i.i.i.i.i.i.i1202, i32 %i.afh acq_rel monotonic, align 8, !noalias !435 ; 2 uses
  %i.afj = extractvalue { i32, i1 } %i.afi, 1
  %i.afk = extractvalue { i32, i1 } %i.afi, 0
  br i1 %i.afj, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i1204, label %bb.gh, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i1204: ; preds = %bb.gi
  %i.afl = load atomic i32, ptr %i.aff monotonic, align 8, !noalias !435
  %.not.i.i.i.i.i1205 = icmp eq i32 %i.afl, 0
  br i1 %.not.i.i.i.i.i1205, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i1206, label %bb.gj

bb.gj:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i1204
  %i.afm = load ptr, ptr %i.afc, align 8, !tbaa !67, !noalias !435
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i1206

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i1206: ; preds = %bb.gj, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i1204
  %i.afn = phi ptr [ %i.afm, %bb.gj ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i1204 ] ; 3 uses
  %i.afo = load atomic i64, ptr %i.aff acquire, align 8 ; 2 uses
  %i.afp = icmp eq i64 %i.afo, 4294967297
  %i.afq = trunc i64 %i.afo to i32                ; 2 uses
  br i1 %i.afp, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i1206
  store i32 0, ptr %i.aff, align 8, !tbaa !69
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afe, i64 12
  store i32 0, ptr %i.afr, align 4, !tbaa !70
  %i.afs = load ptr, ptr %i.afe, align 8, !tbaa !72
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  %i.afu = load ptr, ptr %i.aft, align 8
  call void %i.afu(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #20, !inline_history !226
  %i.afv = load ptr, ptr %i.afe, align 8, !tbaa !72
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 24
  %i.afx = load ptr, ptr %i.afw, align 8
  call void %i.afx(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #20, !inline_history !226
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

bb.gl:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i1206
  %i.afy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i1.i.i1207 = icmp eq i8 %i.afy, 0
  br i1 %.not.i.i.i1.i.i1207, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.afz = add nsw i32 %i.afq, -1
  store i32 %i.afz, ptr %i.aff, align 8, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1208

bb.gn:                                            ; preds = %bb.gl
  %i.aga = atomicrmw volatile add ptr %i.aff, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1208

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1208: ; preds = %bb.gn, %bb.gm
  %.0.i.i.i.i.i.i1209 = phi i32 [ %i.afq, %bb.gm ], [ %i.aga, %bb.gn ]
  %i.agb = icmp eq i32 %.0.i.i.i.i.i.i1209, 1
  br i1 %i.agb, label %bb.go, label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, !prof !75

bb.go:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1208
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #20
  br label %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i

_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i:          ; preds = %bb.gh, %bb.go, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1208, %bb.gk, %.lr.ph.i.i.i384
  %i.agc = phi ptr [ %i.afn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1208 ], [ %i.afn, %bb.go ], [ %i.afn, %bb.gk ], [ null, %.lr.ph.i.i.i384 ], [ null, %bb.gh ]
  %i.agd = load ptr, ptr %i.afb, align 8, !tbaa !64, !noalias !436 ; 8 uses
  %.not.i.i.i.i.i2.i = icmp eq ptr %i.agd, null
  br i1 %.not.i.i.i.i.i2.i, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8 ; 7 uses
  %i.agf = load atomic i32, ptr %i.age monotonic, align 8, !noalias !436
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gr, %bb.gp
  %.06.i.i.i.i.i.i3.i = phi i32 [ %i.agf, %bb.gp ], [ %i.agj, %bb.gr ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i4.i = icmp eq i32 %.06.i.i.i.i.i.i3.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i4.i, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.agg = add nsw i32 %.06.i.i.i.i.i.i3.i, 1
  %i.agh = cmpxchg weak ptr %i.age, i32 %.06.i.i.i.i.i.i3.i, i32 %i.agg acq_rel monotonic, align 8, !noalias !436 ; 2 uses
  %i.agi = extractvalue { i32, i1 } %i.agh, 1
  %i.agj = extractvalue { i32, i1 } %i.agh, 0
  br i1 %i.agi, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i, label %bb.gq, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i: ; preds = %bb.gr
  %i.agk = load atomic i32, ptr %i.age monotonic, align 8, !noalias !436
  %.not.i.i.i.i6.i = icmp eq i32 %i.agk, 0
  br i1 %.not.i.i.i.i6.i, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i, label %bb.gs

bb.gs:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i
  %i.agl = load ptr, ptr %i.afa, align 8, !tbaa !67, !noalias !436
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i:    ; preds = %bb.gs, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i
  %i.agm = phi ptr [ %i.agl, %bb.gs ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i5.i ] ; 3 uses
  %i.agn = load atomic i64, ptr %i.age acquire, align 8 ; 2 uses
  %i.ago = icmp eq i64 %i.agn, 4294967297
  %i.agp = trunc i64 %i.agn to i32                ; 2 uses
  br i1 %i.ago, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i
  store i32 0, ptr %i.age, align 8, !tbaa !69
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agd, i64 12
  store i32 0, ptr %i.agq, align 4, !tbaa !70
  %i.agr = load ptr, ptr %i.agd, align 8, !tbaa !72
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  %i.agt = load ptr, ptr %i.ags, align 8
  call void %i.agt(ptr noundef nonnull align 8 dereferenceable(16) %i.agd) #20, !inline_history !226
  %i.agu = load ptr, ptr %i.agd, align 8, !tbaa !72
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 24
  %i.agw = load ptr, ptr %i.agv, align 8
  call void %i.agw(ptr noundef nonnull align 8 dereferenceable(16) %i.agd) #20, !inline_history !226
  br label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit

bb.gu:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i7.i
  %i.agx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i1.i8.i = icmp eq i8 %i.agx, 0
  br i1 %.not.i.i.i1.i8.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.agy = add nsw i32 %i.agp, -1
  store i32 %i.agy, ptr %i.age, align 8, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i

bb.gw:                                            ; preds = %bb.gu
  %i.agz = atomicrmw volatile add ptr %i.age, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i: ; preds = %bb.gw, %bb.gv
  %.0.i.i.i.i.i10.i = phi i32 [ %i.agp, %bb.gv ], [ %i.agz, %bb.gw ]
  %i.aha = icmp eq i32 %.0.i.i.i.i.i10.i, 1
  br i1 %i.aha, label %bb.gx, label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit, !prof !75

bb.gx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agd) #20
  br label %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit

_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit:          ; preds = %bb.gq, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i, %bb.gt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i, %bb.gx
  %i.ahb = phi ptr [ %i.agm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i9.i ], [ %i.agm, %bb.gx ], [ %i.agm, %bb.gt ], [ null, %_ZNK3ade6HandleINS_4NodeEE3getEv.exit.i ], [ null, %bb.gq ]
  %i.ahc = icmp eq ptr %i.agc, %i.ahb
  br i1 %i.ahc, label %_ZSt4findINSt8__detail14_Node_iteratorIN3ade6HandleINS2_4NodeEEELb1ELb1EEES5_ET_S7_S7_RKT0_.exit, label %bb.gy

bb.gy:                                            ; preds = %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit
  %i.ahd = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i385 = icmp eq ptr %i.ahd, null
  br i1 %.not.i.i.i385, label %_ZSt4findINSt8__detail14_Node_iteratorIN3ade6HandleINS2_4NodeEEELb1ELb1EEES5_ET_S7_S7_RKT0_.exit.thread, label %.lr.ph.i.i.i384, !llvm.loop !229

_ZSt4findINSt8__detail14_Node_iteratorIN3ade6HandleINS2_4NodeEEELb1ELb1EEES5_ET_S7_S7_RKT0_.exit: ; preds = %_ZNK3ade6HandleINS_4NodeEEeqERKS2_.exit
  %i.ahe = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8__detail9_Map_baseIN3ade6HandleINS1_4NodeEEESt4pairIKS4_S4_ESaIS7_ENS_10_Select1stESt8equal_toIS4_ENS1_12HandleHasherIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(64) %72, ptr noundef nonnull align 8 dereferenceable(16) %i.afa)
          to label %_ZNSt13unordered_mapIN3ade6HandleINS0_4NodeEEES3_NS0_12HandleHasherIS2_EESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit unwind label %bb.hg ; 2 uses

_ZNSt13unordered_mapIN3ade6HandleINS0_4NodeEEES3_NS0_12HandleHasherIS2_EESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit: ; preds = %_ZSt4findINSt8__detail14_Node_iteratorIN3ade6HandleINS2_4NodeEEELb1ELb1EEES5_ET_S7_S7_RKT0_.exit
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sroa.01480.12550, i64 32
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !67
  store ptr %i.ahg, ptr %i.ahe, align 8, !tbaa !67
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.01480.12550, i64 40
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i387 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i.i.i387, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %_ZNSt13unordered_mapIN3ade6HandleINS0_4NodeEEES3_NS0_12HandleHasherIS2_EESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 12 ; 3 uses
  %i.ahl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i388 = icmp eq i8 %i.ahl, 0
  br i1 %.not.i.i.i.i.i388, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ahm = load i32, ptr %i.ahk, align 4, !tbaa !74
  %i.ahn = add nsw i32 %i.ahm, 1
end_hunk_0
begin_hunk_1_@_ZN2cv5gimpl11findMatchesERKN3ade10TypedGraphIJNS0_8NodeTypeENS0_5InputENS0_6OutputENS0_2OpENS0_4DataENS0_10ConstValueENS0_6IslandENS0_8ProtocolENS0_17OriginalInputMetaENS0_10OutputMetaENS0_7JournalENS1_6passes19TopologicalSortDataENS0_17DataObjectCounterENS0_11IslandModelENS0_14ActiveBackendsENS0_18CustomMetaFunctionENS0_9StreamingENS0_12DeserializedENS0_13HasIntrinsicsENS0_10DesyncPathENS0_10DesyncEdgeENS0_14DesynchronizedENS0_11CompileArgsEEEEST_:bb.a
  br label %.body535

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.nr
  %lpad.loopexit1639 = landingpad { ptr, i32 }
          cleanup
  br label %.body535

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit1641 = landingpad { ptr, i32 }
          cleanup
  br label %.body535

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.preheader2620
  %lpad.loopexit1644 = landingpad { ptr, i32 }
          cleanup
  br label %.body535

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit1646 = landingpad { ptr, i32 }
          cleanup
  br label %.body535

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.nn, %bb.ns, %bb.ny, %bb.oc, %_ZNK3ade6HandleINS_4NodeEEptEv.exit.i.i.i.i.i.i, %_ZNK3ade6HandleINS_4NodeEEptEv.exit55.i.i.i.i.i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit1650 = landingpad { ptr, i32 }
          cleanup
  br label %.body535

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.nv, %.noexc.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body535

bb.po:                                            ; preds = %.split.i.i.i531, %.noexc551, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv5gimpl11findMatchesERKN3ade10TypedGraphIJNS3_8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS4_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEESW_E3$_2EclINSt8__detail14_Node_iteratorISt4pairIKNS4_6HandleINS4_4NodeEEESt6vectorImSaImEEELb0ELb1EEEEEbT_.exit.i.i.i"
  %i.bhw = load i8, ptr %i.c, align 1, !tbaa !126, !range !114, !noundef !52
  %i.bhx = trunc nuw i8 %i.bhw to i1
  br i1 %i.bhx, label %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit", label %bb.pp

bb.pp:                                            ; preds = %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #20
  %i.bhy = load ptr, ptr %i.awt, align 8, !tbaa !64 ; 2 uses
  %i.bhz = load <2 x ptr>, ptr %i.awq, align 8, !tbaa !44
  store <2 x ptr> %i.bhz, ptr %87, align 16, !tbaa !44
  %.not.i.i.i.i.i554 = icmp eq ptr %i.bhy, null
  br i1 %.not.i.i.i.i.i554, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i556, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhy, i64 12 ; 3 uses
  %i.bib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i555 = icmp eq i8 %i.bib, 0
  br i1 %.not.i.i.i.i.i.i555, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.bic = load i32, ptr %i.bia, align 4, !tbaa !74
  %i.bid = add nsw i32 %i.bic, 1
  store i32 %i.bid, ptr %i.bia, align 4, !tbaa !74
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i556

bb.ps:                                            ; preds = %bb.pq
  %i.bie = atomicrmw volatile add ptr %i.bia, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i556

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i556:      ; preds = %bb.ps, %bb.pr, %bb.pp
  %i.bif = load ptr, ptr %i.ayh, align 8, !tbaa !64 ; 2 uses
  %i.big = load <2 x ptr>, ptr %i.aye, align 8, !tbaa !44
  store <2 x ptr> %i.big, ptr %i.vu, align 16, !tbaa !44
  %.not.i.i.i.i3.i557 = icmp eq ptr %i.bif, null
  br i1 %.not.i.i.i.i3.i557, label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit, label %bb.pt

bb.pt:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i556
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bif, i64 12 ; 3 uses
  %i.bii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i4.i = icmp eq i8 %i.bii, 0
  br i1 %.not.i.i.i.i.i4.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.bij = load i32, ptr %i.bih, align 4, !tbaa !74
  %i.bik = add nsw i32 %i.bij, 1
  store i32 %i.bik, ptr %i.bih, align 4, !tbaa !74
  br label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit

bb.pv:                                            ; preds = %bb.pt
  %i.bil = atomicrmw volatile add ptr %i.bih, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit

_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit: ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i556, %bb.pu, %bb.pv
  %i.bim = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %bb.pw unwind label %bb.qf     ; 3 uses

bb.pw:                                            ; preds = %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 16
  %i.bio = load <2 x ptr>, ptr %87, align 16, !tbaa !44
  store <2 x ptr> %i.bio, ptr %i.bin, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %87, i8 0, i64 16, i1 false)
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bim, i64 32
  %i.biq = load <2 x ptr>, ptr %i.vu, align 16, !tbaa !44
  store <2 x ptr> %i.biq, ptr %i.bip, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vu, i8 0, i64 16, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bim, ptr noundef nonnull align 8 dereferenceable(24) %74) #20
  %i.bir = load i64, ptr %i.uf, align 8, !tbaa !434
  %i.bis = add i64 %i.bir, 1
  store i64 %i.bis, ptr %i.uf, align 8, !tbaa !434
  %i.bit = load ptr, ptr %i.vv, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i.i559 = icmp eq ptr %i.bit, null
  br i1 %.not.i.i.i.i559, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i563, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 12 ; 3 uses
  %i.biv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i560 = icmp eq i8 %i.biv, 0
  br i1 %.not.i.i.i.i.i560, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.biw = load i32, ptr %i.biu, align 4, !tbaa !74 ; 2 uses
  %i.bix = add nsw i32 %i.biw, -1
  store i32 %i.bix, ptr %i.biu, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i561

bb.pz:                                            ; preds = %bb.px
  %i.biy = atomicrmw volatile add ptr %i.biu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i561

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i561: ; preds = %bb.pz, %bb.py
  %.0.i.i.i.i.i.i562 = phi i32 [ %i.biw, %bb.py ], [ %i.biy, %bb.pz ]
  %i.biz = icmp eq i32 %.0.i.i.i.i.i.i562, 1
  br i1 %i.biz, label %bb.qa, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i563

bb.qa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i561
  %i.bja = load ptr, ptr %i.bit, align 8, !tbaa !72
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 24
  %i.bjc = load ptr, ptr %i.bjb, align 8
  call void %i.bjc(ptr noundef nonnull align 8 dereferenceable(16) %i.bit) #20, !inline_history !271
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i563

_ZN3ade6HandleINS_4NodeEED2Ev.exit.i563:          ; preds = %bb.qa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i561, %bb.pw
  %i.bjd = load ptr, ptr %i.vt, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bjd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit, label %bb.qb

bb.qb:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i563
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 12 ; 3 uses
  %i.bjf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i2.i = icmp eq i8 %i.bjf, 0
  br i1 %.not.i.i.i.i2.i, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.bjg = load i32, ptr %i.bje, align 4, !tbaa !74 ; 2 uses
  %i.bjh = add nsw i32 %i.bjg, -1
  store i32 %i.bjh, ptr %i.bje, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

bb.qd:                                            ; preds = %bb.qb
  %i.bji = atomicrmw volatile add ptr %i.bje, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i: ; preds = %bb.qd, %bb.qc
  %.0.i.i.i.i.i4.i = phi i32 [ %i.bjg, %bb.qc ], [ %i.bji, %bb.qd ]
  %i.bjj = icmp eq i32 %.0.i.i.i.i.i4.i, 1
  br i1 %i.bjj, label %bb.qe, label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit

bb.qe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i
  %i.bjk = load ptr, ptr %i.bjd, align 8, !tbaa !72
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 24
  %i.bjm = load ptr, ptr %i.bjl, align 8
  call void %i.bjm(ptr noundef nonnull align 8 dereferenceable(16) %i.bjd) #20, !inline_history !271
  br label %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit

_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit: ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit.i563, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i, %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #20
  br label %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit"

bb.qf:                                            ; preds = %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_EC2IS3_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS3_SC_.exit
  %i.bjn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %87) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #20
  br label %.body535

"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit.thread1601": ; preds = %bb.my, %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.loopexit1672

"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit": ; preds = %bb.po, %_ZNSt4pairIN3ade6HandleINS0_4NodeEEES3_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.bjo = load ptr, ptr %.sroa.01460.02547, align 8, !tbaa !51 ; 2 uses
  %.not1627 = icmp eq ptr %i.bjo, null
  br i1 %.not1627, label %.loopexit1672, label %.lr.ph2549

.body535:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt6vectorImSaImEED2Ev.exit32.i.i.i.i.i, %bb.nw, %bb.nm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i.i.i.i, %bb.ni, %bb.qf
  %.pn255 = phi { ptr, i32 } [ %i.bjn, %bb.qf ], [ %i.aza, %bb.ni ], [ %.pn16.pn.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit32.i.i.i.i.i ], [ %i.bbp, %bb.nw ], [ %i.aza, %bb.nm ], [ %i.aza, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1631, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit1634, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1636, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1639, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1641, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1644, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1646, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1650, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  br label %.body524

.body524:                                         ; preds = %bb.mx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i516, %bb.mt, %.body535
  %.pn255.pn = phi { ptr, i32 } [ %.pn255, %.body535 ], [ %i.axm, %bb.mt ], [ %i.axm, %bb.mx ], [ %i.axm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.qs

.loopexit1672:                                    ; preds = %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit", %._crit_edge2544, %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit.thread1601"
  %.4185 = phi i1 [ true, %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit.thread1601" ], [ false, %._crit_edge2544 ], [ false, %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb0ELb1EEEZN2cv5gimpl11findMatchesERKNS3_10TypedGraphIJNSE_8NodeTypeENSE_5InputENSE_6OutputENSE_2OpENSE_4DataENSE_10ConstValueENSE_6IslandENSE_8ProtocolENSE_17OriginalInputMetaENSE_10OutputMetaENSE_7JournalENS3_6passes19TopologicalSortDataENSE_17DataObjectCounterENSE_11IslandModelENSE_14ActiveBackendsENSE_18CustomMetaFunctionENSE_9StreamingENSE_12DeserializedENSE_13HasIntrinsicsENSE_10DesyncPathENSE_10DesyncEdgeENSE_14DesynchronizedENSE_11CompileArgsEEEES16_E3$_2ET_S18_S18_T0_.exit" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  %i.bjp = load ptr, ptr %i.us, align 8, !tbaa !125 ; 2 uses
  %.not5.i.i.i1231 = icmp eq ptr %i.bjp, null
  br i1 %.not5.i.i.i1231, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i1232

.lr.ph.i.i.i1232:                                 ; preds = %.loopexit1672, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i
  %.06.i.i.i1233 = phi ptr [ %i.bjq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i ], [ %i.bjp, %.loopexit1672 ] ; 5 uses
  %i.bjq = load ptr, ptr %.06.i.i.i1233, align 8, !tbaa !51 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %.06.i.i.i1233, i64 24
  %i.bjs = load ptr, ptr %i.bjr, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i.i.i.i.i.i1234 = icmp eq ptr %i.bjs, null
  br i1 %.not.i.i.i.i.i.i.i.i1234, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1235, label %bb.qg

bb.qg:                                            ; preds = %.lr.ph.i.i.i1232
  %i.bjt = getelementptr inbounds nuw i8, ptr %.06.i.i.i1233, i64 40
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !121
  %i.bjv = ptrtoint ptr %i.bju to i64
  %i.bjw = ptrtoint ptr %i.bjs to i64
  %i.bjx = sub i64 %i.bjv, %i.bjw
  call void @_ZdlPvm(ptr noundef nonnull %i.bjs, i64 noundef %i.bjx) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1235

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1235:      ; preds = %bb.qg, %.lr.ph.i.i.i1232
  %i.bjy = getelementptr inbounds nuw i8, ptr %.06.i.i.i1233, i64 16
  %i.bjz = load ptr, ptr %i.bjy, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i1.i.i.i.i.i1236 = icmp eq ptr %i.bjz, null
  br i1 %.not.i.i.i1.i.i.i.i.i1236, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, label %bb.qh

bb.qh:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1235
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 12 ; 3 uses
  %i.bkb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i.i.i1237 = icmp eq i8 %i.bkb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1237, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.bkc = load i32, ptr %i.bka, align 4, !tbaa !74 ; 2 uses
  %i.bkd = add nsw i32 %i.bkc, -1
  store i32 %i.bkd, ptr %i.bka, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1238

bb.qj:                                            ; preds = %bb.qh
  %i.bke = atomicrmw volatile add ptr %i.bka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1238

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1238: ; preds = %bb.qj, %bb.qi
  %.0.i.i.i.i.i.i.i.i.i.i1239 = phi i32 [ %i.bkc, %bb.qi ], [ %i.bke, %bb.qj ]
  %i.bkf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i1239, 1
  br i1 %i.bkf, label %bb.qk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i

bb.qk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1238
  %i.bkg = load ptr, ptr %i.bjz, align 8, !tbaa !72
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 24
  %i.bki = load ptr, ptr %i.bkh, align 8
  call void %i.bki(ptr noundef nonnull align 8 dereferenceable(16) %i.bjz) #20, !inline_history !272
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i: ; preds = %bb.qk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1238, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1235
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i1233, i64 noundef 56) #21
  %.not.i.i.i1240 = icmp eq ptr %i.bjq, null
  br i1 %.not.i.i.i1240, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i1232, !llvm.loop !273

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, %.loopexit1672
  %i.bkj = load ptr, ptr %i.up, align 8, !tbaa !105
  %i.bkk = load i64, ptr %i.ur, align 8, !tbaa !106
  %i.bkl = shl i64 %i.bkk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bkj, i8 0, i64 %i.bkl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.us, i8 0, i64 16, i1 false)
  %i.bkm = load ptr, ptr %i.up, align 8, !tbaa !105 ; 2 uses
  %i.bkn = icmp eq ptr %i.bkm, %i.uq
  br i1 %i.bkn, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.ql

bb.ql:                                            ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.bko = load i64, ptr %i.ur, align 8, !tbaa !106
  %i.bkp = shl i64 %i.bko, 3
  call void @_ZdlPvm(ptr noundef %i.bkm, i64 noundef %i.bkp) #21
  br label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.ql
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  %i.bkq = load ptr, ptr %i.um, align 8, !tbaa !125 ; 2 uses
  %.not5.i.i.i1241 = icmp eq ptr %i.bkq, null
  br i1 %.not5.i.i.i1241, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1252, label %.lr.ph.i.i.i1242

.lr.ph.i.i.i1242:                                 ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1250
  %.06.i.i.i1243 = phi ptr [ %i.bkr, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1250 ], [ %i.bkq, %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit ] ; 5 uses
  %i.bkr = load ptr, ptr %.06.i.i.i1243, align 8, !tbaa !51 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %.06.i.i.i1243, i64 24
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i.i.i.i.i.i1244 = icmp eq ptr %i.bkt, null
  br i1 %.not.i.i.i.i.i.i.i.i1244, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1245, label %bb.qm

bb.qm:                                            ; preds = %.lr.ph.i.i.i1242
  %i.bku = getelementptr inbounds nuw i8, ptr %.06.i.i.i1243, i64 40
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !121
  %i.bkw = ptrtoint ptr %i.bkv to i64
  %i.bkx = ptrtoint ptr %i.bkt to i64
  %i.bky = sub i64 %i.bkw, %i.bkx
  call void @_ZdlPvm(ptr noundef nonnull %i.bkt, i64 noundef %i.bky) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1245

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1245:      ; preds = %bb.qm, %.lr.ph.i.i.i1242
  %i.bkz = getelementptr inbounds nuw i8, ptr %.06.i.i.i1243, i64 16
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i1.i.i.i.i.i1246 = icmp eq ptr %i.bla, null
  br i1 %.not.i.i.i1.i.i.i.i.i1246, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1250, label %bb.qn

bb.qn:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1245
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 12 ; 3 uses
  %i.blc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i.i.i1247 = icmp eq i8 %i.blc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1247, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bld = load i32, ptr %i.blb, align 4, !tbaa !74 ; 2 uses
  %i.ble = add nsw i32 %i.bld, -1
  store i32 %i.ble, ptr %i.blb, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1248

bb.qp:                                            ; preds = %bb.qn
  %i.blf = atomicrmw volatile add ptr %i.blb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1248

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1248: ; preds = %bb.qp, %bb.qo
  %.0.i.i.i.i.i.i.i.i.i.i1249 = phi i32 [ %i.bld, %bb.qo ], [ %i.blf, %bb.qp ]
  %i.blg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i1249, 1
  br i1 %i.blg, label %bb.qq, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1250

bb.qq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1248
  %i.blh = load ptr, ptr %i.bla, align 8, !tbaa !72
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 24
  %i.blj = load ptr, ptr %i.bli, align 8
  call void %i.blj(ptr noundef nonnull align 8 dereferenceable(16) %i.bla) #20, !inline_history !272
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1250

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1250: ; preds = %bb.qq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1248, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1245
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i1243, i64 noundef 56) #21
  %.not.i.i.i1251 = icmp eq ptr %i.bkr, null
  br i1 %.not.i.i.i1251, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1252, label %.lr.ph.i.i.i1242, !llvm.loop !273

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1252: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1250, %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %i.blk = load ptr, ptr %i.uj, align 8, !tbaa !105
  %i.bll = load i64, ptr %i.ul, align 8, !tbaa !106
  %i.blm = shl i64 %i.bll, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.blk, i8 0, i64 %i.blm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.um, i8 0, i64 16, i1 false)
  %i.bln = load ptr, ptr %i.uj, align 8, !tbaa !105 ; 2 uses
  %i.blo = icmp eq ptr %i.bln, %i.uk
  br i1 %i.blo, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1253, label %bb.qr

bb.qr:                                            ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1252
  %i.blp = load i64, ptr %i.ul, align 8, !tbaa !106
  %i.blq = shl i64 %i.blp, 3
  call void @_ZdlPvm(ptr noundef %i.bln, i64 noundef %i.blq) #21
  br label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1253

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1253: ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1252, %bb.qr
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #20
  %i.blr = add nuw i64 %.01782552, 1              ; 2 uses
  %i.bls = load ptr, ptr %.sroa.01480.12550, align 8, !tbaa !90 ; 2 uses
  %i.blt = icmp uge i64 %i.blr, %.01792560
  %.not254 = or i1 %i.blt, %.4185
  br i1 %.not254, label %._crit_edge2554, label %.lr.ph2553, !llvm.loop !274

bb.qs:                                            ; preds = %.body524, %bb.mk, %bb.kz, %bb.jh
  %.pn268.pn = phi { ptr, i32 } [ %.pn268, %bb.kz ], [ %.pn262, %bb.mk ], [ %.pn255.pn, %.body524 ], [ %i.anz, %bb.jh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.jg
  %.pn268.pn.pn = phi { ptr, i32 } [ %.pn268.pn, %bb.qs ], [ %i.any, %bb.jg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  %i.blu = load ptr, ptr %i.us, align 8, !tbaa !125 ; 2 uses
  %.not5.i.i.i1254 = icmp eq ptr %i.blu, null
  br i1 %.not5.i.i.i1254, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1265, label %.lr.ph.i.i.i1255

.lr.ph.i.i.i1255:                                 ; preds = %bb.qt, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1263
  %.06.i.i.i1256 = phi ptr [ %i.blv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1263 ], [ %i.blu, %bb.qt ] ; 5 uses
  %i.blv = load ptr, ptr %.06.i.i.i1256, align 8, !tbaa !51 ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %.06.i.i.i1256, i64 24
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i.i.i.i.i.i1257 = icmp eq ptr %i.blx, null
  br i1 %.not.i.i.i.i.i.i.i.i1257, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1258, label %bb.qu

bb.qu:                                            ; preds = %.lr.ph.i.i.i1255
  %i.bly = getelementptr inbounds nuw i8, ptr %.06.i.i.i1256, i64 40
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !121
  %i.bma = ptrtoint ptr %i.blz to i64
  %i.bmb = ptrtoint ptr %i.blx to i64
  %i.bmc = sub i64 %i.bma, %i.bmb
  call void @_ZdlPvm(ptr noundef nonnull %i.blx, i64 noundef %i.bmc) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1258

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1258:      ; preds = %bb.qu, %.lr.ph.i.i.i1255
  %i.bmd = getelementptr inbounds nuw i8, ptr %.06.i.i.i1256, i64 16
  %i.bme = load ptr, ptr %i.bmd, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i1.i.i.i.i.i1259 = icmp eq ptr %i.bme, null
  br i1 %.not.i.i.i1.i.i.i.i.i1259, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1263, label %bb.qv

bb.qv:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1258
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 12 ; 3 uses
  %i.bmg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i.i.i1260 = icmp eq i8 %i.bmg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1260, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bmh = load i32, ptr %i.bmf, align 4, !tbaa !74 ; 2 uses
  %i.bmi = add nsw i32 %i.bmh, -1
  store i32 %i.bmi, ptr %i.bmf, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1261

bb.qx:                                            ; preds = %bb.qv
  %i.bmj = atomicrmw volatile add ptr %i.bmf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1261

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1261: ; preds = %bb.qx, %bb.qw
  %.0.i.i.i.i.i.i.i.i.i.i1262 = phi i32 [ %i.bmh, %bb.qw ], [ %i.bmj, %bb.qx ]
  %i.bmk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i1262, 1
  br i1 %i.bmk, label %bb.qy, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1263

bb.qy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1261
  %i.bml = load ptr, ptr %i.bme, align 8, !tbaa !72
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 24
  %i.bmn = load ptr, ptr %i.bmm, align 8
  call void %i.bmn(ptr noundef nonnull align 8 dereferenceable(16) %i.bme) #20, !inline_history !272
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1263

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1263: ; preds = %bb.qy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1261, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1258
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i1256, i64 noundef 56) #21
  %.not.i.i.i1264 = icmp eq ptr %i.blv, null
  br i1 %.not.i.i.i1264, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1265, label %.lr.ph.i.i.i1255, !llvm.loop !273

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1265: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1263, %bb.qt
  %i.bmo = load ptr, ptr %i.up, align 8, !tbaa !105
  %i.bmp = load i64, ptr %i.ur, align 8, !tbaa !106
  %i.bmq = shl i64 %i.bmp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bmo, i8 0, i64 %i.bmq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.us, i8 0, i64 16, i1 false)
  %i.bmr = load ptr, ptr %i.up, align 8, !tbaa !105 ; 2 uses
  %i.bms = icmp eq ptr %i.bmr, %i.uq
  br i1 %i.bms, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1266, label %bb.qz

bb.qz:                                            ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1265
  %i.bmt = load i64, ptr %i.ur, align 8, !tbaa !106
  %i.bmu = shl i64 %i.bmt, 3
  call void @_ZdlPvm(ptr noundef %i.bmr, i64 noundef %i.bmu) #21
  br label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1266

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1266: ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1265, %bb.qz
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  %i.bmv = load ptr, ptr %i.um, align 8, !tbaa !125 ; 2 uses
  %.not5.i.i.i1267 = icmp eq ptr %i.bmv, null
  br i1 %.not5.i.i.i1267, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1278, label %.lr.ph.i.i.i1268

.lr.ph.i.i.i1268:                                 ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1266, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1276
  %.06.i.i.i1269 = phi ptr [ %i.bmw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1276 ], [ %i.bmv, %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1266 ] ; 5 uses
  %i.bmw = load ptr, ptr %.06.i.i.i1269, align 8, !tbaa !51 ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %.06.i.i.i1269, i64 24
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i.i.i.i.i.i1270 = icmp eq ptr %i.bmy, null
  br i1 %.not.i.i.i.i.i.i.i.i1270, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1271, label %bb.ra

bb.ra:                                            ; preds = %.lr.ph.i.i.i1268
  %i.bmz = getelementptr inbounds nuw i8, ptr %.06.i.i.i1269, i64 40
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !121
  %i.bnb = ptrtoint ptr %i.bna to i64
  %i.bnc = ptrtoint ptr %i.bmy to i64
  %i.bnd = sub i64 %i.bnb, %i.bnc
  call void @_ZdlPvm(ptr noundef nonnull %i.bmy, i64 noundef %i.bnd) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1271

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1271:      ; preds = %bb.ra, %.lr.ph.i.i.i1268
  %i.bne = getelementptr inbounds nuw i8, ptr %.06.i.i.i1269, i64 16
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i1.i.i.i.i.i1272 = icmp eq ptr %i.bnf, null
  br i1 %.not.i.i.i1.i.i.i.i.i1272, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1276, label %bb.rb

bb.rb:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1271
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 12 ; 3 uses
  %i.bnh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i.i.i1273 = icmp eq i8 %i.bnh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1273, label %bb.rd, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bni = load i32, ptr %i.bng, align 4, !tbaa !74 ; 2 uses
  %i.bnj = add nsw i32 %i.bni, -1
  store i32 %i.bnj, ptr %i.bng, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1274

bb.rd:                                            ; preds = %bb.rb
  %i.bnk = atomicrmw volatile add ptr %i.bng, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1274

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1274: ; preds = %bb.rd, %bb.rc
  %.0.i.i.i.i.i.i.i.i.i.i1275 = phi i32 [ %i.bni, %bb.rc ], [ %i.bnk, %bb.rd ]
  %i.bnl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i1275, 1
  br i1 %i.bnl, label %bb.re, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1276

bb.re:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1274
  %i.bnm = load ptr, ptr %i.bnf, align 8, !tbaa !72
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 24
  %i.bno = load ptr, ptr %i.bnn, align 8
  call void %i.bno(ptr noundef nonnull align 8 dereferenceable(16) %i.bnf) #20, !inline_history !272
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1276

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1276: ; preds = %bb.re, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i1274, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i1271
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i1269, i64 noundef 56) #21
  %.not.i.i.i1277 = icmp eq ptr %i.bmw, null
  br i1 %.not.i.i.i1277, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1278, label %.lr.ph.i.i.i1268, !llvm.loop !273

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1278: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN3ade6HandleINS3_4NodeEEESt6vectorImSaImEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i1276, %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1266
  %i.bnp = load ptr, ptr %i.uj, align 8, !tbaa !105
  %i.bnq = load i64, ptr %i.ul, align 8, !tbaa !106
  %i.bnr = shl i64 %i.bnq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bnp, i8 0, i64 %i.bnr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.um, i8 0, i64 16, i1 false)
  %i.bns = load ptr, ptr %i.uj, align 8, !tbaa !105 ; 2 uses
  %i.bnt = icmp eq ptr %i.bns, %i.uk
  br i1 %i.bnt, label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1279, label %bb.rf

bb.rf:                                            ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1278
  %i.bnu = load i64, ptr %i.ul, align 8, !tbaa !106
  %i.bnv = shl i64 %i.bnu, 3
  call void @_ZdlPvm(ptr noundef %i.bns, i64 noundef %i.bnv) #21
  br label %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1279

_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1279: ; preds = %_ZNSt10_HashtableIN3ade6HandleINS0_4NodeEEESt4pairIKS3_St6vectorImSaImEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_12HandleHasherIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1278, %bb.rf
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #20
  br label %bb.amc

.preheader.i.i:                                   ; preds = %._crit_edge2554, %.preheader1685
  %.sroa.01480.1.lcssa3059 = phi ptr [ %i.bls, %._crit_edge2554 ], [ %.sroa.01480.02558, %.preheader1685 ] ; 3 uses
  %i.bnw = icmp eq ptr %.sroa.01480.1.lcssa3059, %74
  br i1 %i.bnw, label %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit.thread.thread, label %.lr.ph.i.i565

.lr.ph.i.i565:                                    ; preds = %.preheader.i.i, %.lr.ph.i.i565
  %.015.i.i = phi i64 [ %i.bny, %.lr.ph.i.i565 ], [ 0, %.preheader.i.i ]
  %.sroa.010.014.i.i = phi ptr [ %i.bnx, %.lr.ph.i.i565 ], [ %.sroa.01480.1.lcssa3059, %.preheader.i.i ]
  %i.bnx = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !90 ; 2 uses
  %i.bny = add nuw nsw i64 %.015.i.i, 1           ; 2 uses
  %.not.i.i566 = icmp eq ptr %i.bnx, %74
  br i1 %.not.i.i566, label %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit, label %.lr.ph.i.i565, !llvm.loop !275

_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit: ; preds = %.lr.ph.i.i565
  br label %.preheader1685, !llvm.loop !276

_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit.thread: ; preds = %._crit_edge2554
  %i.bnz = add i64 %.0188, 1
  br label %bb.alt, !llvm.loop !277

_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit.thread.thread: ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #20
  store ptr %i.vx, ptr %i.vw, align 8, !tbaa !98
  store i64 1, ptr %i.vy, align 8, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.wa, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #20
  store ptr %i.wd, ptr %i.wc, align 8, !tbaa !98
  store i64 1, ptr %i.we, align 8, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.wg, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wh, i8 0, i64 16, i1 false)
  %i.boa = load ptr, ptr %i.tt, align 8, !tbaa !100 ; 2 uses
  %.not2618 = icmp eq ptr %i.boa, null
  br i1 %.not2618, label %._crit_edge2582.thread, label %.lr.ph2581

.lr.ph2581:                                       ; preds = %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit.thread.thread, %bb.act
  %.sroa.01413.sroa.3.12577 = phi i64 [ %.sroa.01413.sroa.3.5, %bb.act ], [ %.sroa.01413.sroa.3.0, %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit.thread.thread ] ; 3 uses
  %.sroa.01447.02576 = phi ptr [ %i.cuk, %bb.act ], [ %i.boa, %_ZSt8distanceISt14_List_iteratorISt4pairIN3ade6HandleINS2_4NodeEEES5_EEENSt15iterator_traitsIT_E15difference_typeES9_S9_.exit.thread.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #20
  %i.bob = getelementptr inbounds nuw i8, ptr %.sroa.01447.02576, i64 16 ; 3 uses
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !64, !noalias !464, !nonnull !52, !noundef !52 ; 7 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 8 ; 7 uses
  %i.boe = load atomic i32, ptr %i.bod monotonic, align 8, !noalias !464
  br label %bb.rg

bb.rg:                                            ; preds = %bb.rg, %.lr.ph2581
  %.06.i.i.i.i.i.i.i568 = phi i32 [ %i.boe, %.lr.ph2581 ], [ %i.boi, %bb.rg ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i569 = icmp ne i32 %.06.i.i.i.i.i.i.i568, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i569)
  %i.bof = add nsw i32 %.06.i.i.i.i.i.i.i568, 1
  %i.bog = cmpxchg weak ptr %i.bod, i32 %.06.i.i.i.i.i.i.i568, i32 %i.bof acq_rel monotonic, align 8, !noalias !464 ; 2 uses
  %i.boh = extractvalue { i32, i1 } %i.bog, 1
  %i.boi = extractvalue { i32, i1 } %i.bog, 0
  br i1 %i.boh, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i570, label %bb.rg, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i570: ; preds = %bb.rg
  %i.boj = getelementptr inbounds nuw i8, ptr %.sroa.01447.02576, i64 8 ; 3 uses
  %i.bok = load atomic i32, ptr %i.bod monotonic, align 8, !noalias !464
  %.not.i.i.i.i.i571 = icmp eq i32 %i.bok, 0
  br i1 %.not.i.i.i.i.i571, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i572, label %bb.rh

bb.rh:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i570
  %i.bol = load ptr, ptr %i.boj, align 8, !tbaa !67, !noalias !464
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i572

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i572:  ; preds = %bb.rh, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i570
  %i.bom = phi ptr [ %i.bol, %bb.rh ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i570 ] ; 2 uses
  %i.bon = load atomic i64, ptr %i.bod acquire, align 8 ; 2 uses
  %i.boo = icmp eq i64 %i.bon, 4294967297
  %i.bop = trunc i64 %i.bon to i32                ; 2 uses
  br i1 %i.boo, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i572
  store i32 0, ptr %i.bod, align 8, !tbaa !69
  %i.boq = getelementptr inbounds nuw i8, ptr %i.boc, i64 12
  store i32 0, ptr %i.boq, align 4, !tbaa !70
  %i.bor = load ptr, ptr %i.boc, align 8, !tbaa !72
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 16
  %i.bot = load ptr, ptr %i.bos, align 8
  call void %i.bot(ptr noundef nonnull align 8 dereferenceable(16) %i.boc) #20, !inline_history !163
  %i.bou = load ptr, ptr %i.boc, align 8, !tbaa !72
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 24
  %i.bow = load ptr, ptr %i.bov, align 8
  call void %i.bow(ptr noundef nonnull align 8 dereferenceable(16) %i.boc) #20, !inline_history !163
  br label %bb.rn

bb.rj:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i572
  %i.box = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i1.i.i573 = icmp eq i8 %i.box, 0
  br i1 %.not.i.i.i1.i.i573, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.boy = add nsw i32 %i.bop, -1
  store i32 %i.boy, ptr %i.bod, align 8, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i574

bb.rl:                                            ; preds = %bb.rj
  %i.boz = atomicrmw volatile add ptr %i.bod, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i574

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i574: ; preds = %bb.rl, %bb.rk
  %.0.i.i.i.i.i.i575 = phi i32 [ %i.bop, %bb.rk ], [ %i.boz, %bb.rl ]
  %i.bpa = icmp eq i32 %.0.i.i.i.i.i.i575, 1
  br i1 %i.bpa, label %bb.rm, label %bb.rn, !prof !75

bb.rm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i574
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boc) #20
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i574, %bb.ri
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bom) ]
  invoke void @_ZN3ade4Node7inEdgesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.26") align 8 %90, ptr noundef nonnull align 8 dereferenceable(72) %i.bom)
          to label %bb.ro unwind label %bb.uh

bb.ro:                                            ; preds = %bb.rn
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #20
  %i.bpb = getelementptr inbounds nuw i8, ptr %.sroa.01447.02576, i64 32 ; 3 uses
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !64, !noalias !465, !nonnull !52, !noundef !52 ; 7 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8 ; 7 uses
  %i.bpe = load atomic i32, ptr %i.bpd monotonic, align 8, !noalias !465
  br label %bb.rp

bb.rp:                                            ; preds = %bb.rp, %bb.ro
  %.06.i.i.i.i.i.i.i578 = phi i32 [ %i.bpe, %bb.ro ], [ %i.bpi, %bb.rp ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i579 = icmp ne i32 %.06.i.i.i.i.i.i.i578, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i579)
  %i.bpf = add nsw i32 %.06.i.i.i.i.i.i.i578, 1
  %i.bpg = cmpxchg weak ptr %i.bpd, i32 %.06.i.i.i.i.i.i.i578, i32 %i.bpf acq_rel monotonic, align 8, !noalias !465 ; 2 uses
  %i.bph = extractvalue { i32, i1 } %i.bpg, 1
  %i.bpi = extractvalue { i32, i1 } %i.bpg, 0
  br i1 %i.bph, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i580, label %bb.rp, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i580: ; preds = %bb.rp
  %i.bpj = getelementptr inbounds nuw i8, ptr %.sroa.01447.02576, i64 24 ; 3 uses
  %i.bpk = load atomic i32, ptr %i.bpd monotonic, align 8, !noalias !465
  %.not.i.i.i.i.i581 = icmp eq i32 %i.bpk, 0
  br i1 %.not.i.i.i.i.i581, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i582, label %bb.rq

bb.rq:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i580
  %i.bpl = load ptr, ptr %i.bpj, align 8, !tbaa !67, !noalias !465
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i582

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i582:  ; preds = %bb.rq, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i580
  %i.bpm = phi ptr [ %i.bpl, %bb.rq ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i580 ] ; 2 uses
  %i.bpn = load atomic i64, ptr %i.bpd acquire, align 8 ; 2 uses
  %i.bpo = icmp eq i64 %i.bpn, 4294967297
  %i.bpp = trunc i64 %i.bpn to i32                ; 2 uses
  br i1 %i.bpo, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i582
  store i32 0, ptr %i.bpd, align 8, !tbaa !69
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpc, i64 12
  store i32 0, ptr %i.bpq, align 4, !tbaa !70
  %i.bpr = load ptr, ptr %i.bpc, align 8, !tbaa !72
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 16
  %i.bpt = load ptr, ptr %i.bps, align 8
  call void %i.bpt(ptr noundef nonnull align 8 dereferenceable(16) %i.bpc) #20, !inline_history !163
  %i.bpu = load ptr, ptr %i.bpc, align 8, !tbaa !72
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 24
  %i.bpw = load ptr, ptr %i.bpv, align 8
  call void %i.bpw(ptr noundef nonnull align 8 dereferenceable(16) %i.bpc) #20, !inline_history !163
  br label %bb.rw

bb.rs:                                            ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i582
  %i.bpx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i1.i.i583 = icmp eq i8 %i.bpx, 0
  br i1 %.not.i.i.i1.i.i583, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bpy = add nsw i32 %i.bpp, -1
  store i32 %i.bpy, ptr %i.bpd, align 8, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i584

bb.ru:                                            ; preds = %bb.rs
  %i.bpz = atomicrmw volatile add ptr %i.bpd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i584

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i584: ; preds = %bb.ru, %bb.rt
  %.0.i.i.i.i.i.i585 = phi i32 [ %i.bpp, %bb.rt ], [ %i.bpz, %bb.ru ]
  %i.bqa = icmp eq i32 %.0.i.i.i.i.i.i585, 1
  br i1 %i.bqa, label %bb.rv, label %bb.rw, !prof !75

bb.rv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i584
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bpc) #20
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i584, %bb.rr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bpm) ]
  invoke void @_ZN3ade4Node7inEdgesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.26") align 8 %91, ptr noundef nonnull align 8 dereferenceable(72) %i.bpm)
          to label %bb.rx unwind label %bb.ui

bb.rx:                                            ; preds = %bb.rw
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #20
  %i.bqb = load ptr, ptr %i.bob, align 8, !tbaa !64, !noalias !466, !nonnull !52, !noundef !52 ; 7 uses
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 8 ; 7 uses
  %i.bqd = load atomic i32, ptr %i.bqc monotonic, align 8, !noalias !466
  br label %bb.ry

bb.ry:                                            ; preds = %bb.ry, %bb.rx
  %.06.i.i.i.i.i.i.i588 = phi i32 [ %i.bqd, %bb.rx ], [ %i.bqh, %bb.ry ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i589 = icmp ne i32 %.06.i.i.i.i.i.i.i588, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i589)
  %i.bqe = add nsw i32 %.06.i.i.i.i.i.i.i588, 1
  %i.bqf = cmpxchg weak ptr %i.bqc, i32 %.06.i.i.i.i.i.i.i588, i32 %i.bqe acq_rel monotonic, align 8, !noalias !466 ; 2 uses
  %i.bqg = extractvalue { i32, i1 } %i.bqf, 1
  %i.bqh = extractvalue { i32, i1 } %i.bqf, 0
  br i1 %i.bqg, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i590, label %bb.ry, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i590: ; preds = %bb.ry
  %i.bqi = load atomic i32, ptr %i.bqc monotonic, align 8, !noalias !466
  %.not.i.i.i.i.i591 = icmp eq i32 %i.bqi, 0
  br i1 %.not.i.i.i.i.i591, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i592, label %bb.rz

bb.rz:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i590
end_hunk_1
