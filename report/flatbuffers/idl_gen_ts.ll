Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_ts?download=true
inline.NumInlined: 5490
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11flatbuffers2ts11TsGenerator13generateEntryEv:bb.a
  %i.abz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.421, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i453
  %i.aca = load i64, ptr %i.fw, align 8, !tbaa !153, !alias.scope !553
  %i.acb = sub i64 4611686018427387903, %i.aca
  %i.acc = icmp ult i64 %i.acb, %i.abu
  br i1 %i.acc, label %.invoke.i.i456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455

.invoke.i.i456:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454, %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.cont.i.i457 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp

.cont.i.i457:                                     ; preds = %.invoke.i.i456
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454
  %i.acd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.abs, i64 noundef %i.abu)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit460 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i453, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit449, %.invoke.i.i456
  %lpad.loopexit.split-lp2026 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ace = load ptr, ptr %30, align 8, !tbaa !33, !alias.scope !553 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, %i.fv
  br i1 %i.acf, label %.body458, label %.body458.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit460: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.acg = load i64, ptr %i.fw, align 8, !tbaa !153, !noalias !554
  %i.ach = add i64 %i.acg, -4611686018427387895
  %i.aci = icmp ult i64 %i.ach, 9
  br i1 %i.aci, label %bb.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i461

bb.cs:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit460
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc465 unwind label %.loopexit.split-lp573.loopexit.split-lp.loopexit.split-lp

.noexc465:                                        ; preds = %bb.cs
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i461: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit460
  %i.acj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.422, i64 noundef 9)
          to label %.noexc466 unwind label %.loopexit.split-lp573.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc466:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i461
  store ptr %i.fx, ptr %29, align 8, !tbaa !27, !alias.scope !554
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !33 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 16 ; 5 uses
  %i.acm = icmp eq ptr %i.ack, %i.acl
  br i1 %i.acm, label %bb.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462

bb.ct:                                            ; preds = %.noexc466
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !153 ; 3 uses
  %i.acp = icmp ult i64 %i.aco, 16
  call void @llvm.assume(i1 %i.acp)
  %i.acq = add nuw nsw i64 %i.aco, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fx, ptr noundef nonnull align 8 dereferenceable(1) %i.acl, i64 %i.acq, i1 false)
  br label %bb.cu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462: ; preds = %.noexc466
  store ptr %i.ack, ptr %29, align 8, !tbaa !33, !alias.scope !554
  %i.acr = load i64, ptr %i.acl, align 8, !tbaa !28
  store i64 %i.acr, ptr %i.fx, align 8, !tbaa !28, !alias.scope !554
  %.phi.trans.insert.i463 = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %.pre.i464 = load i64, ptr %.phi.trans.insert.i463, align 8, !tbaa !153
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462, %bb.ct
  %i.acs = phi i64 [ %i.aco, %bb.ct ], [ %.pre.i464, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462 ]
  %i.act = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  store i64 %i.acs, ptr %i.fy, align 8, !tbaa !153, !alias.scope !554
  store ptr %i.acl, ptr %i.acj, align 8, !tbaa !33
  store i64 0, ptr %i.act, align 8, !tbaa !153
  store i8 0, ptr %i.acl, align 8, !tbaa !28
  %i.acu = load i64, ptr %i.fy, align 8, !tbaa !153 ; 2 uses
  %i.acv = load i64, ptr %i.e, align 8, !tbaa !153
  %i.acw = sub i64 4611686018427387903, %i.acv
  %i.acx = icmp ult i64 %i.acw, %i.acu
  br i1 %i.acx, label %bb.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i468

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc469 unwind label %.loopexit.split-lp578.loopexit.split-lp.loopexit.split-lp

.noexc469:                                        ; preds = %bb.cv
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i468: ; preds = %bb.cu
  %i.acy = load ptr, ptr %29, align 8, !tbaa !33
  %i.acz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.acy, i64 noundef %i.acu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit471 unwind label %.loopexit.split-lp578.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit471: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i468
  %i.ada = load ptr, ptr %29, align 8, !tbaa !33  ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.fx
  br i1 %i.adb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit471
  %i.adc = load i64, ptr %i.fx, align 8, !tbaa !28
  %i.add = add i64 %i.adc, 1
  call void @_ZdlPvm(ptr noundef %i.ada, i64 noundef %i.add) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472
  %i.ade = load ptr, ptr %30, align 8, !tbaa !33  ; 2 uses
  %i.adf = icmp eq ptr %i.ade, %i.fv
  br i1 %i.adf, label %.lr.ph.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474
  %i.adg = load i64, ptr %i.fv, align 8, !tbaa !28
  %i.adh = add i64 %i.adg, 1
  call void @_ZdlPvm(ptr noundef %i.ade, i64 noundef %i.adh) #24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.adi = load ptr, ptr %i.aat, align 8, !tbaa !531 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8 ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !189
  %i.adl = load ptr, ptr %i.adi, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.adm = ptrtoint ptr %i.adk to i64
  %i.adn = ptrtoint ptr %i.adl to i64
  %i.ado = sub i64 %i.adm, %i.adn
  %i.adp = icmp ugt i64 %i.ado, 32                ; 2 uses
  %.neg.neg = select i1 %i.adp, i64 2, i64 1
  %i.adq = load ptr, ptr %i.adj, align 8, !tbaa !167
  %.neg = select i1 %i.adp, i64 -2, i64 -1
  %i.adr = getelementptr inbounds [32 x i8], ptr %i.adq, i64 %.neg
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %.neg.neg, %.lr.ph.i.i.i.i.i ], [ %i.aek, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.adr, %.lr.ph.i.i.i.i.i ], [ %i.aej, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i ] ; 4 uses
  %i.ads = load ptr, ptr %i.fz, align 8, !tbaa !189 ; 8 uses
  %i.adt = load ptr, ptr %i.ga, align 8, !tbaa !196
  %.not.i.i.i.i.i.i.i478 = icmp eq ptr %i.ads, %i.adt
  br i1 %.not.i.i.i.i.i.i.i478, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 16 ; 3 uses
  store ptr %i.adu, ptr %i.ads, align 8, !tbaa !27
  %i.adv = load ptr, ptr %.056.i.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !153 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.adx, ptr %i.a, align 8, !tbaa !166
  %i.ady = icmp ugt i64 %i.adx, 15
  br i1 %i.ady, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cx
  %i.adz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ads, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc479 unwind label %bb.di ; 2 uses

.noexc479:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.adz, ptr %i.ads, align 8, !tbaa !33
  %i.aea = load i64, ptr %i.a, align 8, !tbaa !166
  store i64 %i.aea, ptr %i.adu, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc479, %bb.cx
  %i.aeb = phi ptr [ %i.adz, %.noexc479 ], [ %i.adu, %bb.cx ] ; 2 uses
  switch i64 %i.adx, label %bb.cz [
    i64 1, label %bb.cy
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aec = load i8, ptr %i.adv, align 1, !tbaa !28
  store i8 %i.aec, ptr %i.aeb, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aeb, ptr align 1 %i.adv, i64 %i.adx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aed = load i64, ptr %i.a, align 8, !tbaa !166 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  store i64 %i.aed, ptr %i.aee, align 8, !tbaa !153
  %i.aef = load ptr, ptr %i.ads, align 8, !tbaa !33
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aed
  store i8 0, ptr %i.aeg, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.aeh = load ptr, ptr %i.fz, align 8, !tbaa !189
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 32
  store ptr %i.aei, ptr %i.fz, align 8, !tbaa !189
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i

bb.da:                                            ; preds = %bb.cw
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr %i.ads, ptr noundef nonnull align 8 dereferenceable(32) %.056.i.i.i.i.i)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i unwind label %bb.di

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i: ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.aej = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 32
  %i.aek = add nsw i64 %.07.i.i.i.i.i, -1
  %34 = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %34, label %bb.cw, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit, !llvm.loop !520

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  invoke void @_ZNK11flatbuffers5Namer11DirectoriesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_7SkipDirENS_4CaseE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(400) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef 3, i32 noundef 1)
          to label %bb.db unwind label %bb.dj

bb.db:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.ael = load i64, ptr %i.gb, align 8, !tbaa !153, !noalias !555
  %i.aem = add i64 %i.ael, -4611686018427387898
  %i.aen = icmp ult i64 %i.aem, 6
  br i1 %i.aen, label %bb.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i481

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc485 unwind label %.loopexit.split-lp583.loopexit.split-lp.loopexit.split-lp

.noexc485:                                        ; preds = %bb.dc
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i481: ; preds = %bb.db
  %i.aeo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.423, i64 noundef 6)
          to label %.noexc486 unwind label %.loopexit.split-lp583.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc486:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i481
  store ptr %i.gc, ptr %32, align 8, !tbaa !27, !alias.scope !555
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !33 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16 ; 5 uses
  %i.aer = icmp eq ptr %i.aep, %i.aeq
  br i1 %i.aer, label %bb.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482

bb.dd:                                            ; preds = %.noexc486
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !153 ; 3 uses
  %i.aeu = icmp ult i64 %i.aet, 16
  call void @llvm.assume(i1 %i.aeu)
  %i.aev = add nuw nsw i64 %i.aet, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gc, ptr noundef nonnull align 8 dereferenceable(1) %i.aeq, i64 %i.aev, i1 false)
  br label %bb.de

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482: ; preds = %.noexc486
  store ptr %i.aep, ptr %32, align 8, !tbaa !33, !alias.scope !555
  %i.aew = load i64, ptr %i.aeq, align 8, !tbaa !28
  store i64 %i.aew, ptr %i.gc, align 8, !tbaa !28, !alias.scope !555
  %.phi.trans.insert.i483 = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %.pre.i484 = load i64, ptr %.phi.trans.insert.i483, align 8, !tbaa !153
  br label %bb.de

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482, %bb.dd
  %i.aex = phi i64 [ %i.aet, %bb.dd ], [ %.pre.i484, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482 ]
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  store i64 %i.aex, ptr %i.gd, align 8, !tbaa !153, !alias.scope !555
  store ptr %i.aeq, ptr %i.aeo, align 8, !tbaa !33
  store i64 0, ptr %i.aey, align 8, !tbaa !153
  store i8 0, ptr %i.aeq, align 8, !tbaa !28
  %i.aez = load i64, ptr %i.gd, align 8, !tbaa !153 ; 2 uses
  %i.afa = load i64, ptr %i.e, align 8, !tbaa !153
  %i.afb = sub i64 4611686018427387903, %i.afa
  %i.afc = icmp ult i64 %i.afb, %i.aez
  br i1 %i.afc, label %bb.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i488

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc489 unwind label %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp

.noexc489:                                        ; preds = %bb.df
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i488: ; preds = %bb.de
  %i.afd = load ptr, ptr %32, align 8, !tbaa !33
  %i.afe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.afd, i64 noundef %i.aez)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit491 unwind label %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit491: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i488
  %i.aff = load ptr, ptr %32, align 8, !tbaa !33  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.gc
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit491
  %i.afh = load i64, ptr %i.gc, align 8, !tbaa !28
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492
  %i.afj = load ptr, ptr %33, align 8, !tbaa !33  ; 2 uses
  %i.afk = icmp eq ptr %i.afj, %i.ge
  br i1 %i.afk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494
  %i.afl = load i64, ptr %i.ge, align 8, !tbaa !28
  %i.afm = add i64 %i.afl, 1
  call void @_ZdlPvm(ptr noundef %i.afj, i64 noundef %i.afm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.afn = add nsw i32 %.1691666, 1
  %i.afo = load ptr, ptr %31, align 8, !tbaa !190 ; 3 uses
  %i.afp = load ptr, ptr %i.fz, align 8, !tbaa !189 ; 2 uses
  %.not4.i.i.i498 = icmp eq ptr %i.afo, %i.afp
  br i1 %.not4.i.i.i498, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i506, label %.lr.ph.i.i.i499

.lr.ph.i.i.i499:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i502
  %.05.i.i.i500 = phi ptr [ %i.afv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i502 ], [ %i.afo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ] ; 3 uses
  %i.afq = load ptr, ptr %.05.i.i.i500, align 8, !tbaa !33 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.05.i.i.i500, i64 16 ; 2 uses
  %i.afs = icmp eq ptr %i.afq, %i.afr
  br i1 %i.afs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i501: ; preds = %.lr.ph.i.i.i499
  %i.aft = load i64, ptr %i.afr, align 8, !tbaa !28
  %i.afu = add i64 %i.aft, 1
  call void @_ZdlPvm(ptr noundef %i.afq, i64 noundef %i.afu) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i502

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i502: ; preds = %.lr.ph.i.i.i499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i501
  %i.afv = getelementptr inbounds nuw i8, ptr %.05.i.i.i500, i64 32 ; 2 uses
  %.not.i.i.i503 = icmp eq ptr %i.afv, %i.afp
  br i1 %.not.i.i.i503, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i504, label %.lr.ph.i.i.i499, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i504: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i502
  %.pr.i505 = load ptr, ptr %31, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i506

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i506: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497
  %i.afw = phi ptr [ %.pr.i505, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i504 ], [ %i.afo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ] ; 3 uses
  %.not.i.i1.i507 = icmp eq ptr %i.afw, null
  br i1 %.not.i.i1.i507, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit509, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i506
  %i.afx = load ptr, ptr %i.ga, align 8, !tbaa !196
  %i.afy = ptrtoint ptr %i.afx to i64
  %i.afz = ptrtoint ptr %i.afw to i64
  %i.aga = sub i64 %i.afy, %i.afz
  call void @_ZdlPvm(ptr noundef nonnull %i.afw, i64 noundef %i.aga) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit509

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit509: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i506, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  %i.agb = load ptr, ptr %28, align 8, !tbaa !33  ; 2 uses
  %i.agc = icmp eq ptr %i.agb, %i.ft
  br i1 %i.agc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit509
  %i.agd = load i64, ptr %i.ft, align 8, !tbaa !28
  %i.age = add i64 %i.agd, 1
  call void @_ZdlPvm(ptr noundef %i.agb, i64 noundef %i.age) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph1668, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512
  %.270 = phi i32 [ %i.afn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512 ], [ %.1691666, %.lr.ph1668 ] ; 2 uses
  %i.agf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0536.01665) #28 ; 2 uses
  %.not551 = icmp eq ptr %i.agf, %i.j
  br i1 %.not551, label %._crit_edge1669, label %.lr.ph1668

.loopexit.split-lp573.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i461, %bb.cs
  %lpad.loopexit.split-lp2029 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515

.loopexit.split-lp578.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i468, %bb.cv
  %lpad.loopexit.split-lp2032 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agg = load ptr, ptr %29, align 8, !tbaa !33  ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.fx
  br i1 %i.agh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513: ; preds = %.loopexit.split-lp578.loopexit.split-lp.loopexit.split-lp
  %i.agi = load i64, ptr %i.fx, align 8, !tbaa !28
  %i.agj = add i64 %i.agi, 1
  call void @_ZdlPvm(ptr noundef %i.agg, i64 noundef %i.agj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515: ; preds = %.loopexit.split-lp578.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp573.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513
  %.pn79 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2032, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513 ], [ %lpad.loopexit.split-lp2029, %.loopexit.split-lp573.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2032, %.loopexit.split-lp578.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.agk = load ptr, ptr %30, align 8, !tbaa !33  ; 2 uses
  %i.agl = icmp eq ptr %i.agk, %i.fv
  br i1 %i.agl, label %.body458, label %.body458.sink.split

.body458.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp
  %.sink2013 = phi ptr [ %i.ace, %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp ], [ %i.agk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ]
  %.pn79.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp2026, %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ]
  %i.agm = load i64, ptr %i.fv, align 8, !tbaa !28
  %i.agn = add i64 %i.agm, 1
  call void @_ZdlPvm(ptr noundef %.sink2013, i64 noundef %i.agn) #24
  br label %.body458

.body458:                                         ; preds = %.body458.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp
  %.pn79.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp2026, %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ], [ %.pn79.pn.ph, %.body458.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.dl
end_hunk_0
