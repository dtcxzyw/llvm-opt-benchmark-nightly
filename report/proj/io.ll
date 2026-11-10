Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev:bb.a
bb.tz:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2554.thread3471
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #41
  store ptr %i.fkg, ptr %87, align 8, !tbaa !160
  %i.gxr = load ptr, ptr %i.gnk, align 8, !tbaa !163 ; 2 uses
  %i.gxs = load i64, ptr %i.gnh, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.gxs, ptr %i.a, align 8, !tbaa !165
  %i.gxt = icmp ugt i64 %i.gxs, 15
  br i1 %i.gxt, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.tz
  %i.gxu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %87, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.gxu, ptr %87, align 8, !tbaa !163
  %i.gxv = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.gxv, ptr %i.fkg, align 8, !tbaa !166
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.tz
  %i.gxw = phi ptr [ %i.gxu, %.noexc.i.i ], [ %i.fkg, %bb.tz ] ; 2 uses
  switch i64 %i.gxs, label %bb.ub [
    i64 1, label %bb.ua
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ua:                                            ; preds = %._crit_edge.i.i.i
  %i.gxx = load i8, ptr %i.gxr, align 1, !tbaa !166
  store i8 %i.gxx, ptr %i.gxw, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ub:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gxw, ptr align 1 %i.gxr, i64 %i.gxs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ub, %bb.ua, %._crit_edge.i.i.i
  %i.gxy = load i64, ptr %i.a, align 8, !tbaa !165 ; 2 uses
  store i64 %i.gxy, ptr %i.fkh, align 8, !tbaa !164
  %i.gxz = load ptr, ptr %87, align 8, !tbaa !163
  %i.gya = getelementptr inbounds nuw i8, ptr %i.gxz, i64 %i.gxy
  store i8 0, ptr %i.gya, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.gyb = getelementptr inbounds nuw i8, ptr %i.fle, i64 48
  %i.gyc = load i16, ptr %i.gyb, align 8
  store i16 %i.gyc, ptr %i.fki, align 8
  %i.gyd = getelementptr inbounds nuw i8, ptr %i.fle, i64 56
  invoke void @_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fkj, ptr noundef nonnull align 8 dereferenceable(24) %i.gyd)
          to label %_ZN5osgeo4proj2io4StepC2ERKS2_.exit unwind label %bb.uc

bb.uc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.gye = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gyf = load ptr, ptr %87, align 8, !tbaa !163 ; 2 uses
  %i.gyg = icmp eq ptr %i.gyf, %i.fkg
  br i1 %i.gyg, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2555: ; preds = %bb.uc
  %i.gyh = load i64, ptr %i.fkg, align 8, !tbaa !166
  %i.gyi = add i64 %i.gyh, 1
  call void @_ZdlPvm(ptr noundef %i.gyf, i64 noundef %i.gyi) #44
  br label %common.resume

common.resume:                                    ; preds = %bb.uc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1284, %bb.sb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2678, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2786, %bb.uf, %bb.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2555
  %common.resume.op = phi { ptr, i32 } [ %.pn1152.pn, %bb.st ], [ %i.gye, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2555 ], [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1284 ], [ %.merged1160, %bb.sb ], [ %lpad.loopexit.split-lp4765, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2678 ], [ %.pn1145.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2786 ], [ %i.hac, %bb.uf ], [ %i.gye, %bb.uc ]
  resume { ptr, i32 } %common.resume.op

_ZN5osgeo4proj2io4StepC2ERKS2_.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.not6.i2558 = icmp eq ptr %i.fkn, %i.grw
  br i1 %.not6.i2558, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit2562, label %.lr.ph.i2559

.lr.ph.i2559:                                     ; preds = %_ZN5osgeo4proj2io4StepC2ERKS2_.exit, %.lr.ph.i2559
  %.sroa.05.07.i2560 = phi ptr [ %i.gyj, %.lr.ph.i2559 ], [ %i.fkn, %_ZN5osgeo4proj2io4StepC2ERKS2_.exit ] ; 2 uses
  %i.gyj = load ptr, ptr %.sroa.05.07.i2560, align 8, !tbaa !273 ; 2 uses
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.05.07.i2560) #41
  %.not.i2561 = icmp eq ptr %i.gyj, %i.grw
  br i1 %.not.i2561, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit2562, label %.lr.ph.i2559, !llvm.loop !122

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit2562: ; preds = %.lr.ph.i2559, %_ZN5osgeo4proj2io4StepC2ERKS2_.exit
  %i.gyk = load ptr, ptr %i.gvm, align 8, !tbaa !273
  %i.gyl = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43
          to label %.noexc2567 unwind label %bb.uf ; 7 uses

.noexc2567:                                       ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit2562
  %i.gym = getelementptr inbounds nuw i8, ptr %i.gyl, i64 16 ; 2 uses
  %i.gyn = getelementptr inbounds nuw i8, ptr %i.gyl, i64 32 ; 3 uses
  store ptr %i.gyn, ptr %i.gym, align 8, !tbaa !160
  %i.gyo = load ptr, ptr %87, align 8, !tbaa !163 ; 2 uses
  %i.gyp = icmp eq ptr %i.gyo, %i.fkg
  br i1 %i.gyp, label %bb.ud, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.ud:                                            ; preds = %.noexc2567
  %i.gyq = load i64, ptr %i.fkh, align 8, !tbaa !164 ; 3 uses
  %i.gyr = icmp ult i64 %i.gyq, 16
  call void @llvm.assume(i1 %i.gyr)
  %i.gys = add nuw nsw i64 %i.gyq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gyn, ptr noundef nonnull align 8 dereferenceable(1) %i.fkg, i64 %i.gys, i1 false)
  br label %_ZSt4nextISt14_List_iteratorIN5osgeo4proj2io4StepEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc2567
  store ptr %i.gyo, ptr %i.gym, align 8, !tbaa !163
  %i.gyt = load i64, ptr %i.fkg, align 8, !tbaa !166
  store i64 %i.gyt, ptr %i.gyn, align 8, !tbaa !166
  %.pre.i.i.i = load i64, ptr %i.fkh, align 8, !tbaa !164
  br label %_ZSt4nextISt14_List_iteratorIN5osgeo4proj2io4StepEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE.exit

_ZSt4nextISt14_List_iteratorIN5osgeo4proj2io4StepEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ud
  %i.gyu = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gyq, %bb.ud ]
  %i.gyv = getelementptr inbounds nuw i8, ptr %i.gyl, i64 24
  store i64 %i.gyu, ptr %i.gyv, align 8, !tbaa !164
  store ptr %i.fkg, ptr %87, align 8, !tbaa !163
  store i64 0, ptr %i.fkh, align 8, !tbaa !164
  store i8 0, ptr %i.fkg, align 8, !tbaa !166
  %i.gyw = getelementptr inbounds nuw i8, ptr %i.gyl, i64 48
  %i.gyx = load i16, ptr %i.fki, align 8
  store i16 %i.gyx, ptr %i.gyw, align 8
  %i.gyy = getelementptr inbounds nuw i8, ptr %i.gyl, i64 56
  %i.gyz = load <2 x ptr>, ptr %i.fkj, align 8, !tbaa !582
  store <2 x ptr> %i.gyz, ptr %i.gyy, align 8, !tbaa !582
  %i.gza = getelementptr inbounds nuw i8, ptr %i.gyl, i64 72
  %i.gzb = load ptr, ptr %i.fkl, align 8, !tbaa !588
  store ptr %i.gzb, ptr %i.gza, align 8, !tbaa !588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fkj, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gyl, ptr noundef %i.gyk) #41
  %i.gzc = load i64, ptr %i.fjw, align 8, !tbaa !683
  %i.gzd = add i64 %i.gzc, 1
  store i64 %i.gzd, ptr %i.fjw, align 8, !tbaa !683
  %i.gze = load ptr, ptr %i.grw, align 8, !tbaa !273
  %i.gzf = load ptr, ptr %i.fkj, align 8, !tbaa !579 ; 3 uses
  %i.gzg = load ptr, ptr %i.fkk, align 8, !tbaa !580 ; 2 uses
  %.not4.i.i.i.i2572 = icmp eq ptr %i.gzf, %i.gzg
  br i1 %.not4.i.i.i.i2572, label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2582, label %.lr.ph.i.i.i.i2573

.lr.ph.i.i.i.i2573:                               ; preds = %_ZSt4nextISt14_List_iteratorIN5osgeo4proj2io4StepEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE.exit, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2578
  %.05.i.i.i.i2574 = phi ptr [ %i.gzs, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2578 ], [ %i.gzf, %_ZSt4nextISt14_List_iteratorIN5osgeo4proj2io4StepEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE.exit ] ; 5 uses
  %i.gzh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2574, i64 32
  %i.gzi = load ptr, ptr %i.gzh, align 8, !tbaa !163 ; 2 uses
  %i.gzj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2574, i64 48 ; 2 uses
  %i.gzk = icmp eq ptr %i.gzi, %i.gzj
  br i1 %i.gzk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i2575

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i2575: ; preds = %.lr.ph.i.i.i.i2573
  %i.gzl = load i64, ptr %i.gzj, align 8, !tbaa !166
  %i.gzm = add i64 %i.gzl, 1
  call void @_ZdlPvm(ptr noundef %i.gzi, i64 noundef %i.gzm) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2576: ; preds = %.lr.ph.i.i.i.i2573, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i2575
  %i.gzn = load ptr, ptr %.05.i.i.i.i2574, align 8, !tbaa !163 ; 2 uses
  %i.gzo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2574, i64 16 ; 2 uses
  %i.gzp = icmp eq ptr %i.gzn, %i.gzo
  br i1 %i.gzp, label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i2577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i2577: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2576
  %i.gzq = load i64, ptr %i.gzo, align 8, !tbaa !166
  %i.gzr = add i64 %i.gzq, 1
  call void @_ZdlPvm(ptr noundef %i.gzn, i64 noundef %i.gzr) #44
  br label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2578

_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2578: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i2576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i2577
  %i.gzs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2574, i64 72 ; 2 uses
  %.not.i.i.i.i2579 = icmp eq ptr %i.gzs, %i.gzg
  br i1 %.not.i.i.i.i2579, label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i2580, label %.lr.ph.i.i.i.i2573, !llvm.loop !88

_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i2580: ; preds = %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i.i.i2578
  %.pr.i.i2581 = load ptr, ptr %i.fkj, align 8, !tbaa !579
  br label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2582

_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2582: ; preds = %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i2580, %_ZSt4nextISt14_List_iteratorIN5osgeo4proj2io4StepEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE.exit
  %i.gzt = phi ptr [ %.pr.i.i2581, %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i2580 ], [ %i.gzf, %_ZSt4nextISt14_List_iteratorIN5osgeo4proj2io4StepEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE.exit ] ; 3 uses
  %.not.i.i1.i.i2583 = icmp eq ptr %i.gzt, null
  br i1 %.not.i.i1.i.i2583, label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i2584, label %bb.ue

bb.ue:                                            ; preds = %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2582
  %i.gzu = load ptr, ptr %i.fkl, align 8, !tbaa !588
  %i.gzv = ptrtoint ptr %i.gzu to i64
  %i.gzw = ptrtoint ptr %i.gzt to i64
  %i.gzx = sub i64 %i.gzv, %i.gzw
  call void @_ZdlPvm(ptr noundef nonnull %i.gzt, i64 noundef %i.gzx) #44
  br label %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i2584

_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i2584: ; preds = %bb.ue, %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit.i.i2582
  %i.gzy = load ptr, ptr %87, align 8, !tbaa !163 ; 2 uses
  %i.gzz = icmp eq ptr %i.gzy, %i.fkg
  br i1 %i.gzz, label %_ZN5osgeo4proj2io4StepD2Ev.exit2590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2585: ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i2584
  %i.haa = load i64, ptr %i.fkg, align 8, !tbaa !166
  %i.hab = add i64 %i.haa, 1
  call void @_ZdlPvm(ptr noundef %i.gzy, i64 noundef %i.hab) #44
  br label %_ZN5osgeo4proj2io4StepD2Ev.exit2590

_ZN5osgeo4proj2io4StepD2Ev.exit2590:              ; preds = %_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit.i2584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2585
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #41
  br label %_ZSt9__advanceISt14_List_iteratorIN5osgeo4proj2io4StepEElEvRT_T0_St26bidirectional_iterator_tag.exit2473

bb.uf:                                            ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit2562
  %i.hac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj2io4StepD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %87) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #41
  br label %common.resume

.critedge1177:                                    ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2492, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2372, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2303, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2309, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2309.thread, %bb.sf, %_ZNK5osgeo4proj2io4Step8KeyValueeqERKS3_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2301, %bb.se, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2303.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.sg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2355, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2360, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2365, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2367, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2450, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2453, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2450.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2456, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2356, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2358, %bb.su, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2361, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2363, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2360.thread3390, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2365.thread3391, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2368, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2370, %bb.sv, %bb.th, %bb.ti, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2444.thread3422, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2453.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2433.thread3416, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2444, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2439.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2439, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2417.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2433, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2428, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2423.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2423, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2411.thread3405, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2417, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2395.thread3400, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2411, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2406, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2401.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2401, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2384.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2395, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2390.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2390, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2384, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2381, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2378.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2378, %bb.sw, %bb.sx, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2381.thread, %bb.sy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2391, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2393, %bb.sz, %bb.ta, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2402, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2404, %bb.tb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2407, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2409, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2406.thread3404, %bb.tc, %bb.td, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2424, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2426, %bb.te, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2429, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2431, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2428.thread3415, %bb.tf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2440, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2442, %bb.tg, %.critedge107, %bb.tv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2541, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2539, %bb.tu, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2529.thread, %bb.tt, %bb.ts, %bb.tr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2518, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2516, %bb.tq, %bb.tp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2507, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2505, %bb.tn, %bb.tm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2498, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2504, %bb.to, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2509, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2509.thread3448, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2504.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2498.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2515, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2515.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2520, %.preheader3573, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2526, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2526.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2529, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2532, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2520.thread3452, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2538, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2538.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2543, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit2532.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2543.thread3464, %bb.ty, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2552, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2550, %bb.tw, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2487.thread3442, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2490, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2488, %bb.tl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2485, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2483, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2480.thread3440, %bb.tj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2478, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2476, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2554.thread3471, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2549.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2554, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2549, %bb.tx, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2487, %bb.tk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2482, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2480, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2475
  %i.had = load ptr, ptr %.sroa.02918.13905, align 8, !tbaa !273
  br label %_ZSt9__advanceISt14_List_iteratorIN5osgeo4proj2io4StepEElEvRT_T0_St26bidirectional_iterator_tag.exit2473

_ZSt9__advanceISt14_List_iteratorIN5osgeo4proj2io4StepEElEvRT_T0_St26bidirectional_iterator_tag.exit2473: ; preds = %.lr.ph.i2465, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit, %_ZN5osgeo4proj2io4StepD2Ev.exit2590, %_ZN5osgeo4proj2io4StepD2Ev.exit2353, %.critedge1177
  %.sroa.02918.3 = phi ptr [ %.sroa.02918.13905, %_ZN5osgeo4proj2io4StepD2Ev.exit2353 ], [ %i.had, %.critedge1177 ], [ %i.gze, %_ZN5osgeo4proj2io4StepD2Ev.exit2590 ], [ %i.gbi, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit ], [ %i.gbi, %.lr.ph.i2465 ] ; 2 uses
  %.not3528 = icmp eq ptr %.sroa.02918.3, %i.k
  br i1 %.not3528, label %._crit_edge3907.loopexit, label %.lr.ph.i2292.preheader

._crit_edge3907.loopexit:                         ; preds = %_ZSt9__advanceISt14_List_iteratorIN5osgeo4proj2io4StepEElEvRT_T0_St26bidirectional_iterator_tag.exit2473
  %.pre4015.a = load ptr, ptr %i.k, align 8, !tbaa !273
  br label %._crit_edge3907

._crit_edge3907:                                  ; preds = %._crit_edge3907.loopexit, %bb.sd
  %i.hae = phi ptr [ %.pre4015.a, %._crit_edge3907.loopexit ], [ %i.fjp, %bb.sd ] ; 6 uses
  %.not3529 = icmp eq ptr %i.hae, %i.k
  br i1 %.not3529, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %._crit_edge3907
  %i.haf = load ptr, ptr %i.hae, align 8, !tbaa !273
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %._crit_edge3907
  %.sroa.0.0 = phi ptr [ %i.haf, %bb.ug ], [ %i.hae, %._crit_edge3907 ] ; 2 uses
  %.not35303911 = icmp eq ptr %.sroa.0.0, %i.k
  br i1 %.not35303911, label %._crit_edge3914, label %.lr.ph.i2592.preheader.lr.ph

.lr.ph.i2592.preheader.lr.ph:                     ; preds = %bb.uh
  %i.hag = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  br label %.lr.ph.i2592.preheader

.lr.ph.i2592.preheader:                           ; preds = %.lr.ph.i2592.preheader.lr.ph, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit"
  %i.hah = phi ptr [ %i.hae, %.lr.ph.i2592.preheader.lr.ph ], [ %i.hhe, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit" ] ; 9 uses
  %i.hai = phi ptr [ %i.hae, %.lr.ph.i2592.preheader.lr.ph ], [ %i.hhf, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit" ] ; 8 uses
  %.sroa.0.13912 = phi ptr [ %.sroa.0.0, %.lr.ph.i2592.preheader.lr.ph ], [ %.sroa.0.2, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit" ] ; 15 uses
  %i.haj = getelementptr inbounds nuw i8, ptr %.sroa.0.13912, i64 8
  %i.hak = load ptr, ptr %i.haj, align 8, !tbaa !272 ; 10 uses
  %i.hal = getelementptr inbounds nuw i8, ptr %i.hak, i64 16 ; 2 uses
  %i.ham = getelementptr inbounds nuw i8, ptr %.sroa.0.13912, i64 16 ; 2 uses
  %i.han = getelementptr inbounds nuw i8, ptr %.sroa.0.13912, i64 56
  %i.hao = getelementptr inbounds nuw i8, ptr %.sroa.0.13912, i64 64
  %i.hap = load ptr, ptr %i.hao, align 8, !tbaa !580 ; 2 uses
  %i.haq = load ptr, ptr %i.han, align 8, !tbaa !579 ; 7 uses
  %i.har = ptrtoint ptr %i.hap to i64
  %i.has = ptrtoint ptr %i.haq to i64
  %i.hat = sub i64 %i.har, %i.has                 ; 3 uses
  %i.hau = sdiv exact i64 %i.hat, 72
  %i.hav = getelementptr inbounds nuw i8, ptr %i.hak, i64 56
  %i.haw = getelementptr inbounds nuw i8, ptr %i.hak, i64 64
  %i.hax = load ptr, ptr %i.haw, align 8, !tbaa !580
  %i.hay = load ptr, ptr %i.hav, align 8, !tbaa !579 ; 6 uses
  %i.haz = ptrtoint ptr %i.hax to i64
  %i.hba = ptrtoint ptr %i.hay to i64
  %i.hbb = sub i64 %i.haz, %i.hba                 ; 2 uses
  %i.hbc = getelementptr inbounds nuw i8, ptr %.sroa.0.13912, i64 24
  %i.hbd = load i64, ptr %i.hbc, align 8, !tbaa !164 ; 4 uses
  %i.hbe = icmp eq i64 %i.hbd, 8
  br i1 %i.hbe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597: ; preds = %.lr.ph.i2592.preheader
  %i.hbf = load ptr, ptr %i.ham, align 8, !tbaa !163
  %i.hbg = load i64, ptr %i.hbf, align 1
  %i.hbh = icmp ne i64 %i.hbg, 8097884942730098785
  %i.hbi = zext i1 %i.hbh to i32
  %i.hbj = icmp eq i32 %i.hbi, 0
  br i1 %i.hbj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597
  %i.hbk = getelementptr inbounds nuw i8, ptr %i.hak, i64 24
  %i.hbl = load i64, ptr %i.hbk, align 8, !tbaa !164
  %i.hbm = icmp eq i64 %i.hbl, 8
  br i1 %i.hbm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread
  %i.hbn = load ptr, ptr %i.hal, align 8, !tbaa !163
  %i.hbo = load i64, ptr %i.hbn, align 1
  %i.hbp = icmp ne i64 %i.hbo, 8097884942730098785
  %i.hbq = zext i1 %i.hbp to i32
  %i.hbr = icmp eq i32 %i.hbq, 0
  %i.hbs = icmp eq i64 %i.hat, 72
  %or.cond117 = and i1 %i.hbs, %i.hbr
  %i.hbt = icmp eq i64 %i.hbb, 72
  %or.cond119 = and i1 %i.hbt, %or.cond117
  br i1 %or.cond119, label %bb.ui, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

bb.ui:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2599
  %i.hbu = getelementptr inbounds nuw i8, ptr %i.haq, i64 8
  %i.hbv = load i64, ptr %i.hbu, align 8, !tbaa !164
  %i.hbw = icmp eq i64 %i.hbv, 5
  br i1 %i.hbw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2600, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2600: ; preds = %bb.ui
  %i.hbx = load ptr, ptr %i.haq, align 8, !tbaa !163 ; 2 uses
  %i.hby = load i32, ptr %i.hbx, align 1
  %i.hbz = xor i32 %i.hby, 1701081711
  %i.hca = getelementptr i8, ptr %i.hbx, i64 4
  %i.hcb = load i8, ptr %i.hca, align 1
  %i.hcc = zext i8 %i.hcb to i32
  %i.hcd = xor i32 %i.hcc, 114
  %i.hce = or i32 %i.hbz, %i.hcd
  %i.hcf = icmp ne i32 %i.hce, 0
  %i.hcg = zext i1 %i.hcf to i32
  %i.hch = icmp eq i32 %i.hcg, 0
  br i1 %i.hch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2602, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2602: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2600
  %i.hci = getelementptr inbounds nuw i8, ptr %i.haq, i64 40
  %i.hcj = load i64, ptr %i.hci, align 8, !tbaa !164
  %i.hck = icmp eq i64 %i.hcj, 3
  br i1 %i.hck, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2604, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2604: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2602
  %i.hcl = getelementptr inbounds nuw i8, ptr %i.haq, i64 32
  %i.hcm = load ptr, ptr %i.hcl, align 8, !tbaa !163 ; 2 uses
  %i.hcn = load i16, ptr %i.hcm, align 1
  %i.hco = xor i16 %i.hcn, 11314
  %i.hcp = getelementptr i8, ptr %i.hcm, i64 2
  %i.hcq = load i8, ptr %i.hcp, align 1
  %i.hcr = zext i8 %i.hcq to i16
  %i.hcs = xor i16 %i.hcr, 49
  %i.hct = or i16 %i.hco, %i.hcs
  %i.hcu = icmp ne i16 %i.hct, 0
  %i.hcv = zext i1 %i.hcu to i32
  %i.hcw = icmp eq i32 %i.hcv, 0
  br i1 %i.hcw, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2604.thread3480, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2604.thread3480: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2604
  %i.hcx = getelementptr inbounds nuw i8, ptr %i.hay, i64 8
  %i.hcy = load i64, ptr %i.hcx, align 8, !tbaa !164
  %i.hcz = icmp eq i64 %i.hcy, 5
  br i1 %i.hcz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2605, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2605: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2604.thread3480
  %i.hda = load ptr, ptr %i.hay, align 8, !tbaa !163 ; 2 uses
  %i.hdb = load i32, ptr %i.hda, align 1
  %i.hdc = xor i32 %i.hdb, 1701081711
  %i.hdd = getelementptr i8, ptr %i.hda, i64 4
  %i.hde = load i8, ptr %i.hdd, align 1
  %i.hdf = zext i8 %i.hde to i32
  %i.hdg = xor i32 %i.hdf, 114
  %i.hdh = or i32 %i.hdc, %i.hdg
  %i.hdi = icmp ne i32 %i.hdh, 0
  %i.hdj = zext i1 %i.hdi to i32
  %i.hdk = icmp eq i32 %i.hdj, 0
  br i1 %i.hdk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2607, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2607: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i2605
  %i.hdl = getelementptr inbounds nuw i8, ptr %i.hay, i64 40
  %i.hdm = load i64, ptr %i.hdl, align 8, !tbaa !164
  %i.hdn = icmp eq i64 %i.hdm, 3
  br i1 %i.hdn, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i2607
  %i.hdo = getelementptr inbounds nuw i8, ptr %i.hay, i64 32
  %i.hdp = load ptr, ptr %i.hdo, align 8, !tbaa !163 ; 2 uses
  %i.hdq = load i16, ptr %i.hdp, align 1
  %i.hdr = xor i16 %i.hdq, 11314
  %i.hds = getelementptr i8, ptr %i.hdp, i64 2
  %i.hdt = load i8, ptr %i.hds, align 1
  %i.hdu = zext i8 %i.hdt to i16
  %i.hdv = xor i16 %i.hdu, 49
  %i.hdw = or i16 %i.hdr, %i.hdv
  %i.hdx = icmp ne i16 %i.hdw, 0
  %i.hdy = zext i1 %i.hdx to i32
  %i.hdz = icmp eq i32 %i.hdy, 0
  br i1 %i.hdz, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609.thread3481, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2597.thread3477

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609.thread3481: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609
  %i.hea = load ptr, ptr %.sroa.0.13912, align 8, !tbaa !273 ; 5 uses
  %.not6.i5.i2611 = icmp eq ptr %i.hak, %i.hea
  br i1 %.not6.i5.i2611, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618, label %.lr.ph.i.i2612

.lr.ph.i.i2612:                                   ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609.thread3481, %.lr.ph.i.i2612
  %.sroa.05.07.i.i2613 = phi ptr [ %i.heb, %.lr.ph.i.i2612 ], [ %i.hak, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609.thread3481 ] ; 2 uses
  %i.heb = load ptr, ptr %.sroa.05.07.i.i2613, align 8, !tbaa !273 ; 2 uses
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.05.07.i.i2613) #41
  %.not.i.i2614 = icmp eq ptr %i.heb, %i.hea
  br i1 %.not.i.i2614, label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618.loopexit, label %.lr.ph.i.i2612, !llvm.loop !122

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618.loopexit: ; preds = %.lr.ph.i.i2612
  %.pre4017.a = load ptr, ptr %i.k, align 8, !tbaa !273
  br label %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618

_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618: ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618.loopexit, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609.thread3481
  %i.hec = phi ptr [ %.pre4017.a, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618.loopexit ], [ %i.hah, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit2609.thread3481 ] ; 6 uses
  %.not.i2619 = icmp eq ptr %i.hea, %i.hec
  br i1 %.not.i2619, label %bb.uj, label %.lr.ph.i6.preheader.i2620

.lr.ph.i6.preheader.i2620:                        ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618
  %i.hed = getelementptr inbounds nuw i8, ptr %i.hea, i64 8
  %i.hee = load ptr, ptr %i.hed, align 8, !tbaa !272 ; 2 uses
  %i.hef = icmp eq ptr %i.hee, %i.hec
  br label %bb.uj

bb.uj:                                            ; preds = %.lr.ph.i6.preheader.i2620, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618
  %.sroa.0.3 = phi ptr [ %i.hea, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618 ], [ %i.hee, %.lr.ph.i6.preheader.i2620 ] ; 3 uses
  %i.heg = phi i1 [ true, %_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE5eraseESt20_List_const_iteratorIS4_ES8_.exit.i2618 ], [ %i.hef, %.lr.ph.i6.preheader.i2620 ]
  %i.heh = icmp ne ptr %.sroa.0.3, %i.k
  %or.cond.i2622 = and i1 %i.heg, %i.heh
  br i1 %or.cond.i2622, label %bb.uk, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_3clEv.exit", !llvm.loop !1927

end_hunk_0
begin_hunk_1_@_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE12scan_commentEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %.backedge

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.h = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %switch.tableidx = add i32 %i.h, 1              ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 15
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 18435, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader

.backedge:                                        ; preds = %.backedge.backedge, %.preheader2
  %i.j = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.j, label %.backedge.backedge [
    i32 -1, label %.loopexit.sink.split
    i32 0, label %.loopexit.sink.split
    i32 42, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge
  %i.k = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %cond = icmp eq i32 %i.k, 47
  br i1 %cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !770
  %i.l = load i64, ptr %i.c, align 8, !tbaa !773
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !773
  %i.n = load i64, ptr %i.d, align 8, !tbaa !774  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.e, align 8, !tbaa !775  ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.e, align 8, !tbaa !775
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = add i64 %i.n, -1
  store i64 %i.r, ptr %i.d, align 8, !tbaa !774
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.s = load i32, ptr %i.f, align 4, !tbaa !769
  %.not2.i = icmp eq i32 %i.s, -1
  br i1 %.not2.i, label %.backedge.backedge, label %bb.h, !prof !214

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !776
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !776
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.h, %bb.g, %.backedge
  br label %.backedge, !llvm.loop !2298

.loopexit.sink.split:                             ; preds = %.backedge, %.backedge, %bb.a
  %.str.694.sink = phi ptr [ @.str.694, %bb.a ], [ @.str.693, %.backedge ], [ @.str.693, %.backedge ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.694.sink, ptr %i.v, align 8, !tbaa !771
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.loopexit.sink.split
  %.0 = phi i1 [ true, %.preheader ], [ false, %.loopexit.sink.split ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_stringEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [6 x i32], align 4                ; 4 uses
  %i.f = alloca [6 x i32], align 4                ; 4 uses
  %i.g = alloca [6 x i32], align 4                ; 4 uses
  tail call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(148) %0) #41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 40 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 20 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 20 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.t = load <2 x i64>, ptr %i.h, align 8, !tbaa !165
  %i.u = add <2 x i64> %i.t, splat (i64 1)
  store <2 x i64> %i.u, ptr %i.h, align 8, !tbaa !165
  %i.v = load i8, ptr %i.j, align 8, !tbaa !770, !range !221, !noundef !222
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.j, align 8, !tbaa !770
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !769
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %0, align 8, !tbaa !391    ; 3 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !391
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, label %bb.e, !prof !214

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.x, align 1, !tbaa !166
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !777
  br label %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i

_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.e ], [ -1, %bb.d ] ; 2 uses
  store i32 %.0.i.i, ptr %i.k, align 4, !tbaa !769
  br label %bb.f

bb.f:                                             ; preds = %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, %bb.c
  %i.ac = phi i32 [ %.0.i.i, %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %.not.i = icmp eq i32 %i.ac, -1
  br i1 %.not.i, label %.thread104.sink.split, label %bb.g, !prof !214

bb.g:                                             ; preds = %bb.f
  %i.ad = trunc i32 %i.ac to i8                   ; 2 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !776 ; 3 uses
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !731
  %.not.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !166
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !776
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !776
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !730 ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775807
  br i1 %i.am, label %bb.j, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.an = add i64 %.sroa.speculated.i.i.i.i.i, %i.al ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.al
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #43 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al ; 2 uses
  store i8 %i.ad, ptr %i.as, align 1, !tbaa !166
  %i.at = icmp sgt i64 %i.al, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !731
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ax) #44
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !730
  store ptr %i.au, ptr %i.n, align 8, !tbaa !776
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !731
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.h
  %.pr.i = load i32, ptr %i.k, align 4, !tbaa !769 ; 3 uses
  %1 = icmp eq i32 %.pr.i, 10
  br i1 %1, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !775
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !775
  store i64 0, ptr %i.i, align 8, !tbaa !774
  br label %.thread104.sink.split

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  switch i32 %.pr.i, label %bb.cd [
    i32 -1, label %.thread104.sink.split.loopexit
    i32 34, label %.thread104
    i32 92, label %bb.m
    i32 0, label %.thread104.sink.split.loopexit156
    i32 1, label %.thread104.sink.split
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.av
    i32 7, label %bb.aw
    i32 8, label %bb.ax
    i32 9, label %bb.ay
    i32 244, label %bb.cc
    i32 11, label %bb.az
    i32 12, label %bb.ba
    i32 13, label %bb.bb
    i32 14, label %bb.bc
    i32 15, label %bb.bd
    i32 16, label %bb.be
    i32 17, label %bb.bf
    i32 18, label %bb.bg
    i32 19, label %bb.bh
    i32 20, label %bb.bi
    i32 21, label %bb.bj
    i32 22, label %bb.bk
    i32 23, label %bb.bl
    i32 24, label %bb.bm
    i32 25, label %bb.bn
    i32 26, label %bb.bo
    i32 27, label %bb.bp
    i32 28, label %bb.bq
    i32 29, label %bb.br
    i32 30, label %bb.bs
    i32 31, label %bb.bt
    i32 32, label %bb.bu
    i32 33, label %bb.bu
    i32 35, label %bb.bu
    i32 36, label %bb.bu
    i32 37, label %bb.bu
    i32 38, label %bb.bu
    i32 39, label %bb.bu
    i32 40, label %bb.bu
    i32 41, label %bb.bu
    i32 42, label %bb.bu
    i32 43, label %bb.bu
    i32 44, label %bb.bu
    i32 45, label %bb.bu
    i32 46, label %bb.bu
    i32 47, label %bb.bu
    i32 48, label %bb.bu
    i32 49, label %bb.bu
    i32 50, label %bb.bu
    i32 51, label %bb.bu
    i32 52, label %bb.bu
    i32 53, label %bb.bu
    i32 54, label %bb.bu
    i32 55, label %bb.bu
    i32 56, label %bb.bu
    i32 57, label %bb.bu
    i32 58, label %bb.bu
    i32 59, label %bb.bu
    i32 60, label %bb.bu
    i32 61, label %bb.bu
    i32 62, label %bb.bu
    i32 63, label %bb.bu
    i32 64, label %bb.bu
    i32 65, label %bb.bu
    i32 66, label %bb.bu
    i32 67, label %bb.bu
    i32 68, label %bb.bu
    i32 69, label %bb.bu
    i32 70, label %bb.bu
    i32 71, label %bb.bu
    i32 72, label %bb.bu
    i32 73, label %bb.bu
    i32 74, label %bb.bu
    i32 75, label %bb.bu
    i32 76, label %bb.bu
    i32 77, label %bb.bu
    i32 78, label %bb.bu
    i32 79, label %bb.bu
    i32 80, label %bb.bu
    i32 81, label %bb.bu
    i32 82, label %bb.bu
    i32 83, label %bb.bu
    i32 84, label %bb.bu
    i32 85, label %bb.bu
    i32 86, label %bb.bu
    i32 87, label %bb.bu
    i32 88, label %bb.bu
    i32 89, label %bb.bu
    i32 90, label %bb.bu
    i32 91, label %bb.bu
    i32 93, label %bb.bu
    i32 94, label %bb.bu
    i32 95, label %bb.bu
    i32 96, label %bb.bu
    i32 97, label %bb.bu
    i32 98, label %bb.bu
    i32 99, label %bb.bu
    i32 100, label %bb.bu
    i32 101, label %bb.bu
    i32 102, label %bb.bu
    i32 103, label %bb.bu
    i32 104, label %bb.bu
    i32 105, label %bb.bu
    i32 106, label %bb.bu
    i32 107, label %bb.bu
    i32 108, label %bb.bu
    i32 109, label %bb.bu
    i32 110, label %bb.bu
    i32 111, label %bb.bu
    i32 112, label %bb.bu
    i32 113, label %bb.bu
    i32 114, label %bb.bu
    i32 115, label %bb.bu
    i32 116, label %bb.bu
    i32 117, label %bb.bu
    i32 118, label %bb.bu
    i32 119, label %bb.bu
    i32 120, label %bb.bu
    i32 121, label %bb.bu
    i32 122, label %bb.bu
    i32 123, label %bb.bu
    i32 124, label %bb.bu
    i32 125, label %bb.bu
    i32 126, label %bb.bu
    i32 127, label %bb.bu
    i32 194, label %bb.bw
    i32 195, label %bb.bw
    i32 196, label %bb.bw
    i32 197, label %bb.bw
    i32 198, label %bb.bw
    i32 199, label %bb.bw
    i32 200, label %bb.bw
    i32 201, label %bb.bw
    i32 202, label %bb.bw
    i32 203, label %bb.bw
    i32 204, label %bb.bw
    i32 205, label %bb.bw
    i32 206, label %bb.bw
    i32 207, label %bb.bw
    i32 208, label %bb.bw
    i32 209, label %bb.bw
    i32 210, label %bb.bw
    i32 211, label %bb.bw
    i32 212, label %bb.bw
    i32 213, label %bb.bw
    i32 214, label %bb.bw
    i32 215, label %bb.bw
    i32 216, label %bb.bw
    i32 217, label %bb.bw
    i32 218, label %bb.bw
    i32 219, label %bb.bw
    i32 220, label %bb.bw
    i32 221, label %bb.bw
    i32 222, label %bb.bw
    i32 223, label %bb.bw
    i32 224, label %bb.bx
    i32 225, label %bb.by
    i32 226, label %bb.by
    i32 227, label %bb.by
    i32 228, label %bb.by
    i32 229, label %bb.by
    i32 230, label %bb.by
    i32 231, label %bb.by
    i32 232, label %bb.by
    i32 233, label %bb.by
    i32 234, label %bb.by
    i32 235, label %bb.by
    i32 236, label %bb.by
    i32 238, label %bb.by
    i32 239, label %bb.by
    i32 237, label %bb.bz
    i32 240, label %bb.ca
    i32 241, label %bb.cb
    i32 242, label %bb.cb
    i32 243, label %bb.cb
  ]

bb.m:                                             ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  %i.bc = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.bc, label %.thread104.sink.split [
    i32 34, label %bb.n
    i32 92, label %bb.p
    i32 47, label %bb.r
    i32 98, label %bb.t
    i32 102, label %bb.v
    i32 110, label %bb.x
    i32 114, label %bb.z
    i32 116, label %bb.ab
    i32 117, label %bb.ad
  ]

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.s
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n
  %i.bh = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.o, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.o
  %i.bl = phi ptr [ %.pre.i.i, %bb.o ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 34, ptr %i.bm, align 1, !tbaa !166
  store i64 %i.be, ptr %i.r, align 8, !tbaa !164
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !166
  br label %.backedge

bb.p:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.s
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49: ; preds = %bb.p
  %i.bt = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.p
  %i.bu = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49
  %i.bv = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49 ]
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.q, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.bp, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i48 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47, %bb.q
  %i.bx = phi ptr [ %.pre.i.i48, %bb.q ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i8 92, ptr %i.by, align 1, !tbaa !166
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !164
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  store i8 0, ptr %i.ca, align 1, !tbaa !166
  br label %.backedge

bb.r:                                             ; preds = %bb.m
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.s
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54: ; preds = %bb.r
  %i.cf = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.r
  %i.cg = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54
  %i.ch = phi i64 [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54 ]
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.s, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.cb, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i53 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52, %bb.s
  %i.cj = phi ptr [ %.pre.i.i53, %bb.s ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store i8 47, ptr %i.ck, align 1, !tbaa !166
  store i64 %i.cc, ptr %i.r, align 8, !tbaa !164
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cc
  store i8 0, ptr %i.cm, align 1, !tbaa !166
  br label %.backedge

bb.t:                                             ; preds = %bb.m
  %i.cn = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.co = add i64 %i.cn, 1                        ; 3 uses
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.s
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59: ; preds = %bb.t
  %i.cr = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.t
  %i.cs = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59
  %i.ct = phi i64 [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59 ]
  %i.cu = icmp ugt i64 %i.co, %i.ct
  br i1 %i.cu, label %bb.u, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.cn, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i58 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57, %bb.u
  %i.cv = phi ptr [ %.pre.i.i58, %bb.u ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn
  store i8 8, ptr %i.cw, align 1, !tbaa !166
  store i64 %i.co, ptr %i.r, align 8, !tbaa !164
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.co
  store i8 0, ptr %i.cy, align 1, !tbaa !166
  br label %.backedge

bb.v:                                             ; preds = %bb.m
  %i.cz = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.s
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64: ; preds = %bb.v
  %i.dd = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.v
  %i.de = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64
  %i.df = phi i64 [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64 ]
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.w, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.cz, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i63 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62, %bb.w
  %i.dh = phi ptr [ %.pre.i.i63, %bb.w ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i8 12, ptr %i.di, align 1, !tbaa !166
  store i64 %i.da, ptr %i.r, align 8, !tbaa !164
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.da
  store i8 0, ptr %i.dk, align 1, !tbaa !166
  br label %.backedge

bb.x:                                             ; preds = %bb.m
  %i.dl = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.dm = add i64 %i.dl, 1                        ; 3 uses
  %i.dn = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.s
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

end_hunk_1
begin_hunk_2_@_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_stringEv:bb.a
  %i.dy = add i64 %i.dx, 1                        ; 3 uses
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.s
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74: ; preds = %bb.z
  %i.eb = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.eb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.z
  %i.ec = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74
  %i.ed = phi i64 [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74 ]
  %i.ee = icmp ugt i64 %i.dy, %i.ed
  br i1 %i.ee, label %bb.aa, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.dx, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i73 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72, %bb.aa
  %i.ef = phi ptr [ %.pre.i.i73, %bb.aa ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  store i8 13, ptr %i.eg, align 1, !tbaa !166
  store i64 %i.dy, ptr %i.r, align 8, !tbaa !164
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dy
  store i8 0, ptr %i.ei, align 1, !tbaa !166
  br label %.backedge

bb.ab:                                            ; preds = %bb.m
  %i.ej = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.ek = add i64 %i.ej, 1                        ; 3 uses
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.s
  br i1 %i.em, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79: ; preds = %bb.ab
  %i.en = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.en)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.ab
  %i.eo = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79
  %i.ep = phi i64 [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79 ]
  %i.eq = icmp ugt i64 %i.ek, %i.ep
  br i1 %i.eq, label %bb.ac, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.ej, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i78 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77, %bb.ac
  %i.er = phi ptr [ %.pre.i.i78, %bb.ac ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej
  store i8 9, ptr %i.es, align 1, !tbaa !166
  store i64 %i.ek, ptr %i.r, align 8, !tbaa !164
  %i.et = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ek
  store i8 0, ptr %i.eu, align 1, !tbaa !166
  br label %.backedge

bb.ad:                                            ; preds = %bb.m
  %i.ev = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 13 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %.thread104.sink.split, label %bb.ae, !prof !214

bb.ae:                                            ; preds = %bb.ad
  %i.ex = and i32 %i.ev, -1024
  switch i32 %i.ex, label %bb.aj [
    i32 55296, label %bb.af
    i32 56320, label %.thread104.sink.split
  ], !prof !2300

bb.af:                                            ; preds = %bb.ae
  %i.ey = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.ez = icmp eq i32 %i.ey, 92
  br i1 %i.ez, label %bb.ag, label %.thread104.sink.split, !prof !240

bb.ag:                                            ; preds = %bb.af
  %i.fa = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.fb = icmp eq i32 %i.fa, 117
  br i1 %i.fb, label %bb.ah, label %.thread104.sink.split, !prof !240

bb.ah:                                            ; preds = %bb.ag
  %i.fc = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 3 uses
  %i.fd = icmp eq i32 %i.fc, -1
  br i1 %i.fd, label %.thread104.sink.split, label %bb.ai, !prof !214

bb.ai:                                            ; preds = %bb.ah
  %i.fe = and i32 %i.fc, -1024
  %i.ff = icmp eq i32 %i.fe, 56320
  br i1 %i.ff, label %.thread100, label %.thread104.sink.split, !prof !240

.thread100:                                       ; preds = %bb.ai
  %i.fg = shl nuw nsw i32 %i.ev, 10
  %i.fh = add nsw i32 %i.fg, -56613888
  %i.fi = add nsw i32 %i.fh, %i.fc
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ae
  %i.fj = icmp slt i32 %i.ev, 128
  br i1 %i.fj, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fk = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.fl = add i64 %i.fk, 1                        ; 3 uses
  %i.fm = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.s
  br i1 %i.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84: ; preds = %bb.ak
  %i.fo = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %bb.ak
  %i.fp = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84
  %i.fq = phi i64 [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84 ]
  %i.fr = icmp ugt i64 %i.fl, %i.fq
  br i1 %i.fr, label %bb.al, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.fk, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i83 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82, %bb.al
  %i.fs = phi ptr [ %.pre.i.i83, %bb.al ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82 ]
  %i.ft = trunc i32 %i.ev to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !166
  store i64 %i.fl, ptr %i.r, align 8, !tbaa !164
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fl
  store i8 0, ptr %i.fw, align 1, !tbaa !166
  br label %.backedge

bb.am:                                            ; preds = %bb.aj
  %i.fx = icmp samesign ult i32 %i.ev, 2048
  br i1 %i.fx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fy = lshr i32 %i.ev, 6
  %i.fz = or disjoint i32 %i.fy, 192
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.fz)
  %i.ga = and i32 %i.ev, 63
  %i.gb = or disjoint i32 %i.ga, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gb)
  br label %.backedge

.backedge:                                        ; preds = %bb.an, %bb.aq, %bb.ap, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit70, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90
  br label %bb.b, !llvm.loop !2299

bb.ao:                                            ; preds = %bb.am
  %i.gc = icmp samesign ult i32 %i.ev, 65536
  br i1 %i.gc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gd = lshr i32 %i.ev, 12
  %i.ge = or disjoint i32 %i.gd, 224
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.ge)
  %i.gf = lshr i32 %i.ev, 6
  %i.gg = and i32 %i.gf, 63
  %i.gh = or disjoint i32 %i.gg, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gh)
  %i.gi = and i32 %i.ev, 63
  %i.gj = or disjoint i32 %i.gi, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gj)
  br label %.backedge

bb.aq:                                            ; preds = %.thread100, %bb.ao
  %.1419699102 = phi i32 [ %i.fi, %.thread100 ], [ %i.ev, %bb.ao ] ; 4 uses
  %i.gk = lshr i32 %.1419699102, 18
  %i.gl = or i32 %i.gk, 240
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gl)
  %i.gm = lshr i32 %.1419699102, 12
  %i.gn = and i32 %i.gm, 63
  %i.go = or disjoint i32 %i.gn, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.go)
  %i.gp = lshr i32 %.1419699102, 6
  %i.gq = and i32 %i.gp, 63
  %i.gr = or disjoint i32 %i.gq, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gr)
  %i.gs = and i32 %.1419699102, 63
  %i.gt = or disjoint i32 %i.gs, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gt)
  br label %.backedge

bb.ar:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.as:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.at:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.au:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.av:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.aw:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.ax:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.ay:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.az:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.ba:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bb:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bc:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bd:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.be:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bf:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bg:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bh:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bi:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bj:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bk:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bl:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bm:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bn:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bo:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bp:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bq:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.br:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bs:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bt:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

bb.bu:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  %i.gu = load i64, ptr %i.r, align 8, !tbaa !164 ; 4 uses
  %i.gv = add i64 %i.gu, 1                        ; 3 uses
  %i.gw = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.s
  br i1 %i.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89: ; preds = %bb.bu
  %i.gy = icmp ult i64 %i.gu, 16
  call void @llvm.assume(i1 %i.gy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.bu
  %i.gz = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89
  %i.ha = phi i64 [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89 ]
  %i.hb = icmp ugt i64 %i.gv, %i.ha
  br i1 %i.hb, label %bb.bv, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.gu, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i88 = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87, %bb.bv
  %i.hc = phi ptr [ %.pre.i.i88, %bb.bv ], [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87 ]
  %i.hd = trunc nuw nsw i32 %.pr.i to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gu
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !166
  store i64 %i.gv, ptr %i.r, align 8, !tbaa !164
  %i.hf = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gv
  store i8 0, ptr %i.hg, align 1, !tbaa !166
  br label %.backedge

bb.bw:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i32 128, ptr %i.a, align 4, !tbaa !213
  store i32 191, ptr %i.p, align 4, !tbaa !213
  %i.hh = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br i1 %i.hh, label %.backedge, label %.thread104, !prof !240

bb.bx:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store <4 x i32> <i32 160, i32 191, i32 128, i32 191>, ptr %i.b, align 16, !tbaa !213
  %i.hi = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.b, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br i1 %i.hi, label %.backedge, label %.thread104, !prof !240

bb.by:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store <4 x i32> <i32 128, i32 191, i32 128, i32 191>, ptr %i.c, align 16, !tbaa !213
  %i.hj = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.c, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br i1 %i.hj, label %.backedge, label %.thread104, !prof !240

bb.bz:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store <4 x i32> <i32 128, i32 159, i32 128, i32 191>, ptr %i.d, align 16, !tbaa !213
  %i.hk = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.d, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br i1 %i.hk, label %.backedge, label %.thread104, !prof !240

bb.ca:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(24) @constinit.732, i64 24, i1 false), !tbaa.struct !2301
  %i.hl = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.e, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br i1 %i.hl, label %.backedge, label %.thread104, !prof !240

bb.cb:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(24) @constinit.733, i64 24, i1 false), !tbaa.struct !2301
  %i.hm = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.f, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br i1 %i.hm, label %.backedge, label %.thread104, !prof !240

bb.cc:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(24) @constinit.734, i64 24, i1 false), !tbaa.struct !2301
  %i.hn = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.g, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br i1 %i.hn, label %.backedge, label %.thread104, !prof !240

bb.cd:                                            ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

.thread104.sink.split.loopexit:                   ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

.thread104.sink.split.loopexit156:                ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit
  br label %.thread104.sink.split

.thread104.sink.split:                            ; preds = %bb.m, %bb.ae, %bb.ag, %bb.af, %bb.ai, %bb.ah, %bb.ad, %bb.f, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %.thread104.sink.split.loopexit156, %.thread104.sink.split.loopexit, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.cd
  %.str.697.sink = phi ptr [ @.str.704, %bb.at ], [ @.str.703, %bb.as ], [ @.str.702, %bb.ar ], [ @.str.701, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit ], [ @.str.695, %.thread104.sink.split.loopexit ], [ @.str.735, %bb.cd ], [ @.str.731, %bb.bt ], [ @.str.730, %bb.bs ], [ @.str.729, %bb.br ], [ @.str.728, %bb.bq ], [ @.str.727, %bb.bp ], [ @.str.726, %bb.bo ], [ @.str.725, %bb.bn ], [ @.str.724, %bb.bm ], [ @.str.723, %bb.bl ], [ @.str.722, %bb.bk ], [ @.str.721, %bb.bj ], [ @.str.720, %bb.bi ], [ @.str.719, %bb.bh ], [ @.str.718, %bb.bg ], [ @.str.717, %bb.bf ], [ @.str.716, %bb.be ], [ @.str.715, %bb.bd ], [ @.str.714, %bb.bc ], [ @.str.713, %bb.bb ], [ @.str.712, %bb.ba ], [ @.str.711, %bb.az ], [ @.str.710, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91 ], [ @.str.709, %bb.ay ], [ @.str.708, %bb.ax ], [ @.str.707, %bb.aw ], [ @.str.706, %bb.av ], [ @.str.705, %bb.au ], [ @.str.696, %bb.ah ], [ @.str.696, %bb.ad ], [ @.str.697, %bb.ai ], [ @.str.697, %bb.ag ], [ @.str.698, %bb.ae ], [ @.str.695, %bb.f ], [ @.str.697, %bb.af ], [ @.str.699, %bb.m ], [ @.str.700, %.thread104.sink.split.loopexit156 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.697.sink, ptr %i.ho, align 8, !tbaa !771
  br label %.thread104

.thread104:                                       ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit, %.thread104.sink.split
  %.5 = phi i32 [ 14, %.thread104.sink.split ], [ 14, %bb.ca ], [ 14, %bb.bz ], [ 14, %bb.by ], [ 14, %bb.bx ], [ 14, %bb.bw ], [ 4, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit ], [ 14, %bb.cc ], [ 14, %bb.cb ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_numberEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  tail call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(148) %0) #41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 15 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !769  ; 2 uses
  switch i32 %i.c, label %bb.h [
    i32 45, label %bb.b
    i32 48, label %bb.d
    i32 49, label %bb.f
    i32 50, label %bb.f
    i32 51, label %bb.f
    i32 52, label %bb.f
    i32 53, label %bb.f
    i32 54, label %bb.f
    i32 55, label %bb.f
    i32 56, label %bb.f
    i32 57, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !164  ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !163  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.o = phi ptr [ %.pre.i.i, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 45, ptr %i.p, align 1, !tbaa !166
  store i64 %i.g, ptr %i.e, align 8, !tbaa !164
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store i8 0, ptr %i.r, align 1, !tbaa !166
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !164  ; 4 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !163  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27: ; preds = %bb.d
  %i.z = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.d
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27 ]
  %i.ac = icmp ugt i64 %i.v, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i26 = load ptr, ptr %i.s, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25, %bb.e
  %i.ad = phi ptr [ %.pre.i.i26, %bb.e ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i8 48, ptr %i.ae, align 1, !tbaa !166
  store i64 %i.v, ptr %i.t, align 8, !tbaa !164
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !163
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store i8 0, ptr %i.ag, align 1, !tbaa !166
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !164 ; 4 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !163 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32: ; preds = %bb.f
  %i.ao = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.f
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32 ]
  %i.ar = icmp ugt i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i31 = load ptr, ptr %i.ah, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30, %bb.g
  %i.as = phi ptr [ %.pre.i.i31, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30 ]
  %i.at = trunc nuw nsw i32 %i.c to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 %i.at, ptr %i.au, align 1, !tbaa !166
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !164
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ak
  store i8 0, ptr %i.aw, align 1, !tbaa !166
  br label %.preheader101

bb.h:                                             ; preds = %bb.a, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit
  %i.ax = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.ax, label %bb.l [
    i32 48, label %bb.i
    i32 49, label %bb.j
    i32 50, label %bb.j
    i32 51, label %bb.j
    i32 52, label %bb.j
    i32 53, label %bb.j
    i32 54, label %bb.j
    i32 55, label %bb.j
    i32 56, label %bb.j
    i32 57, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !769
  tail call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.ay)
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.az = load i32, ptr %i.b, align 4, !tbaa !769
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !164 ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !163 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37: ; preds = %bb.j
  %i.bh = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37 ]
  %i.bk = icmp ugt i64 %i.bd, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i36 = load ptr, ptr %i.ba, align 8, !tbaa !163
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35, %bb.k
  %i.bl = phi ptr [ %.pre.i.i36, %bb.k ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35 ]
  %i.bm = trunc i32 %i.az to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !166
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !164
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !163
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bd
end_hunk_2
