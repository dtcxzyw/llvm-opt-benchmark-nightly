Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-deserialization?download=true
inline.NumInlined: 24803
inline.NumDeleted: 2361
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_2v:bb.a
  %i.ols = getelementptr inbounds nuw i8, ptr %1647, i64 30
  %i.olt = getelementptr inbounds nuw i8, ptr %1646, i64 16 ; 2 uses
  %i.olu = getelementptr inbounds nuw i8, ptr %1646, i64 8 ; 2 uses
  %i.olv = getelementptr inbounds nuw i8, ptr %1643, i64 8 ; 2 uses
  %.sroa.2286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1649, i64 8
  %i.olw = getelementptr inbounds nuw i8, ptr %1652, i64 16 ; 2 uses
  %i.olx = getelementptr inbounds nuw i8, ptr %1652, i64 8
  %i.oly = getelementptr inbounds nuw i8, ptr %1652, i64 30
  %i.olz = getelementptr inbounds nuw i8, ptr %1651, i64 16 ; 2 uses
  %i.oma = getelementptr inbounds nuw i8, ptr %1651, i64 8 ; 2 uses
  %i.omb = getelementptr inbounds nuw i8, ptr %1648, i64 8 ; 2 uses
  %.sroa.2278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1654, i64 8
  %i.omc = getelementptr inbounds nuw i8, ptr %1657, i64 16 ; 2 uses
  %i.omd = getelementptr inbounds nuw i8, ptr %1657, i64 8
  %i.ome = getelementptr inbounds nuw i8, ptr %1657, i64 30
  %i.omf = getelementptr inbounds nuw i8, ptr %1656, i64 16 ; 2 uses
  %i.omg = getelementptr inbounds nuw i8, ptr %1656, i64 8 ; 2 uses
  %i.omh = getelementptr inbounds nuw i8, ptr %1653, i64 8 ; 2 uses
  %i.omi = getelementptr inbounds nuw i8, ptr %1635, i64 24 ; 2 uses
  %i.omj = getelementptr inbounds nuw i8, ptr %1599, i64 16 ; 16 uses
  %i.omk = getelementptr inbounds nuw i8, ptr %1599, i64 8 ; 4 uses
  %i.oml = getelementptr inbounds nuw i8, ptr %1598, i64 8 ; 2 uses
  %i.omm = getelementptr inbounds nuw i8, ptr %1596, i64 16
  %i.omn = getelementptr inbounds nuw i8, ptr %1601, i64 8 ; 2 uses
  %i.omo = getelementptr inbounds nuw i8, ptr %1595, i64 8 ; 2 uses
  %i.omp = getelementptr inbounds nuw i8, ptr %1596, i64 8
  %i.omq = getelementptr inbounds nuw i8, ptr %1600, i64 16 ; 2 uses
  %i.omr = getelementptr inbounds nuw i8, ptr %1607, i64 16 ; 21 uses
  %i.oms = getelementptr inbounds nuw i8, ptr %1607, i64 8 ; 7 uses
  %i.omt = getelementptr inbounds nuw i8, ptr %1606, i64 120 ; 5 uses
  %i.omu = getelementptr inbounds nuw i8, ptr %1606, i64 336
  %i.omv = getelementptr inbounds nuw i8, ptr %1606, i64 344
  %i.omw = getelementptr inbounds nuw i8, ptr %1606, i64 345
  %i.omx = getelementptr inbounds nuw i8, ptr %1606, i64 352
  %i.omy = getelementptr inbounds nuw i8, ptr %1606, i64 8 ; 3 uses
  %i.omz = getelementptr inbounds nuw i8, ptr %1606, i64 16 ; 8 uses
  %i.ona = getelementptr inbounds nuw i8, ptr %1606, i64 24
  %i.onb = getelementptr inbounds nuw i8, ptr %1606, i64 72 ; 3 uses
  %i.onc = getelementptr inbounds nuw i8, ptr %1606, i64 80
  %i.ond = getelementptr inbounds nuw i8, ptr %1606, i64 88 ; 4 uses
  %i.one = getelementptr inbounds nuw i8, ptr %1606, i64 104 ; 8 uses
  %i.onf = getelementptr inbounds nuw i8, ptr %1606, i64 96
  %i.ong = getelementptr inbounds nuw i8, ptr %1605, i64 8 ; 2 uses
  %i.onh = getelementptr inbounds nuw i8, ptr %1603, i64 16
  %i.oni = getelementptr inbounds nuw i8, ptr %1609, i64 8 ; 2 uses
  %i.onj = getelementptr inbounds nuw i8, ptr %1602, i64 8 ; 2 uses
  %i.onk = getelementptr inbounds nuw i8, ptr %1603, i64 8
  %i.onl = getelementptr inbounds nuw i8, ptr %1608, i64 16 ; 2 uses
  %i.onm = getelementptr inbounds nuw i8, ptr %1610, i64 8 ; 7 uses
  %i.onn = getelementptr inbounds nuw i8, ptr %1614, i64 16 ; 16 uses
  %i.ono = getelementptr inbounds nuw i8, ptr %1614, i64 8 ; 5 uses
  %i.onp = getelementptr inbounds nuw i8, ptr %1611, i64 8 ; 2 uses
  %i.onq = getelementptr inbounds nuw i8, ptr %1610, i64 16 ; 3 uses
  %.sroa.2310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1616, i64 8
  %i.onr = getelementptr inbounds nuw i8, ptr %1615, i64 8 ; 2 uses
  %.sroa.2306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1619, i64 8
  %i.ons = getelementptr inbounds nuw i8, ptr %1622, i64 16 ; 2 uses
  %i.ont = getelementptr inbounds nuw i8, ptr %1622, i64 8
  %i.onu = getelementptr inbounds nuw i8, ptr %1622, i64 22
  %i.onv = getelementptr inbounds nuw i8, ptr %1621, i64 16 ; 2 uses
  %i.onw = getelementptr inbounds nuw i8, ptr %1621, i64 8 ; 2 uses
  %i.onx = getelementptr inbounds nuw i8, ptr %1618, i64 8 ; 2 uses
  %i.ony = getelementptr inbounds nuw i8, ptr %1610, i64 24 ; 2 uses
  %i.onz = getelementptr inbounds nuw i8, ptr %1593, i64 8 ; 2 uses
  %i.ooa = getelementptr inbounds nuw i8, ptr %1592, i64 8 ; 2 uses
  %i.oob = getelementptr inbounds nuw i8, ptr %1591, i64 8 ; 2 uses
  store i32 -1, ptr %i.bl, align 4, !tbaa !58
  %i.ooc = getelementptr inbounds nuw i8, ptr %1594, i64 17 ; 2 uses
  %i.ood = getelementptr inbounds nuw i8, ptr %1594, i64 18 ; 2 uses
  %i.ooe = getelementptr inbounds nuw i8, ptr %1594, i64 19
  %i.oof = getelementptr inbounds nuw i8, ptr %1647, i64 16 ; 2 uses
  %i.oog = getelementptr inbounds nuw i8, ptr %1652, i64 16 ; 2 uses
  %i.ooh = getelementptr inbounds nuw i8, ptr %1657, i64 16 ; 2 uses
  %i.ooi = getelementptr inbounds nuw i8, ptr %1622, i64 16 ; 2 uses
  br label %bb.fvw

bb.fvq:                                           ; preds = %bb.fvx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #29
  br label %bb.ghx

bb.fvr:                                           ; preds = %bb.fvk, %bb.fqo
  %.pn4182.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4182.pn.pn.pn.pn.pn, %bb.fvk ], [ %i.nxn, %bb.fqo ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %1548) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1548) #29
  br label %bb.gjh

bb.fvs:                                           ; preds = %bb.fvl
  %i.ooj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fvu

bb.fvt:                                           ; preds = %bb.fvm
  %i.ook = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1590) #29
  br label %bb.fvu

bb.fvu:                                           ; preds = %bb.fvt, %bb.fvs
  %.pn4191 = phi { ptr, i32 } [ %i.ook, %bb.fvt ], [ %i.ooj, %bb.fvs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1590) #29
  br label %bb.gjh

bb.fvv:                                           ; preds = %bb.fvn
  %i.ool = landingpad { ptr, i32 }
          cleanup
  br label %bb.gil

bb.fvw:                                           ; preds = %bb.fvp, %bb.fvx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #29
  store i32 -1, ptr %i.bm, align 4, !tbaa !58
  br label %bb.fvy

bb.fvx:                                           ; preds = %bb.fvz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #29
  %i.oom = load i32, ptr %i.bl, align 4, !tbaa !58 ; 2 uses
  %i.oon = add nsw i32 %i.oom, 1
  store i32 %i.oon, ptr %i.bl, align 4, !tbaa !58
  %i.ooo = icmp slt i32 %i.oom, 1
  br i1 %i.ooo, label %bb.fvw, label %bb.fvq, !llvm.loop !774

bb.fvy:                                           ; preds = %bb.fvw, %bb.fvz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #29
  store i32 -1, ptr %i.bn, align 4, !tbaa !58
  br label %bb.fwa

bb.fvz:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_2vE3$_0ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #29
  %i.oop = load i32, ptr %i.bm, align 4, !tbaa !58 ; 2 uses
  %i.ooq = add nsw i32 %i.oop, 1
  store i32 %i.ooq, ptr %i.bm, align 4, !tbaa !58
  %i.oor = icmp slt i32 %i.oop, 1
  br i1 %i.oor, label %bb.fvy, label %bb.fvx, !llvm.loop !775

bb.fwa:                                           ; preds = %bb.fvy, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_2vE3$_0ED2Ev.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %1591) #29
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1591)
          to label %bb.fwb unwind label %bb.fzk

bb.fwb:                                           ; preds = %bb.fwa
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_2vE3$_0EE", i64 16), ptr %1591, align 8, !tbaa !53, !alias.scope !926
  store i64 %i.ojs, ptr %i.ojt, align 8, !tbaa !927, !alias.scope !926
  call void @llvm.lifetime.start.p0(ptr nonnull %1592) #29
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1592)
          to label %bb.fwc unwind label %bb.fzl

bb.fwc:                                           ; preds = %bb.fwb
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_2vE3$_1EE", i64 16), ptr %1592, align 8, !tbaa !53, !alias.scope !928
  store i64 %i.oju, ptr %i.ojv, align 8, !tbaa !927, !alias.scope !928
  call void @llvm.lifetime.start.p0(ptr nonnull %1593) #29
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1593)
          to label %bb.fwd unwind label %bb.fzm

bb.fwd:                                           ; preds = %bb.fwc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_2vE3$_2EE", i64 16), ptr %1593, align 8, !tbaa !53, !alias.scope !929
  store i64 %i.ojw, ptr %i.ojx, align 8, !tbaa !927, !alias.scope !929
  call void @llvm.lifetime.start.p0(ptr nonnull %1594) #29
  store ptr %i.ojy, ptr %1594, align 8, !tbaa !61
  store i64 0, ptr %i.ojz, align 8, !tbaa !64
  store i8 0, ptr %i.ojy, align 8, !tbaa !46
  %i.oos = load ptr, ptr %1440, align 8, !tbaa !65 ; 3 uses
  %i.oot = load i8, ptr %i.oos, align 1, !tbaa !46
  %i.oou = load i32, ptr %i.bl, align 4, !tbaa !58 ; 2 uses
  %i.oov = trunc i32 %i.oou to i8
  %i.oow = add i8 %i.oot, %i.oov
  %.pre = load i32, ptr %i.bm, align 4, !tbaa !58 ; 2 uses
  store i8 %i.oow, ptr %i.ojy, align 8, !tbaa !46
  store i64 1, ptr %i.ojz, align 8, !tbaa !64
  store i8 0, ptr %i.ooc, align 1, !tbaa !46
  %i.oox = getelementptr inbounds nuw i8, ptr %i.oos, i64 1
  %i.ooy = load i8, ptr %i.oox, align 1, !tbaa !46
  %i.ooz = trunc i32 %.pre to i8
  %i.opa = add i8 %i.ooy, %i.ooz
  store i8 %i.opa, ptr %i.ooc, align 1, !tbaa !46
  store i64 2, ptr %i.ojz, align 8, !tbaa !64
  store i8 0, ptr %i.ood, align 2, !tbaa !46
  %i.opb = getelementptr inbounds nuw i8, ptr %i.oos, i64 2
  %i.opc = load i8, ptr %i.opb, align 1, !tbaa !46
  %i.opd = load i32, ptr %i.bn, align 4, !tbaa !58 ; 2 uses
  %i.ope = trunc i32 %i.opd to i8
  %i.opf = add i8 %i.opc, %i.ope
  store i8 %i.opf, ptr %i.ood, align 2, !tbaa !46
  store i64 3, ptr %i.ojz, align 8, !tbaa !64
  store i8 0, ptr %i.ooe, align 1, !tbaa !46
  %i.opg = icmp eq i32 %i.oou, 0
  %i.oph = icmp eq i32 %.pre, 0
  %or.cond = select i1 %i.opg, i1 %i.oph, i1 false
  %i.opi = icmp eq i32 %i.opd, 0
  %or.cond3 = select i1 %or.cond, i1 %i.opi, i1 false
  br i1 %or.cond3, label %bb.fwe, label %bb.gav

bb.fwe:                                           ; preds = %bb.fwd
  call void @llvm.lifetime.start.p0(ptr nonnull %1595) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1596) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1597) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %1597, i32 noundef 10)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10416 unwind label %bb.fzn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10416: ; preds = %bb.fwe
  call void @llvm.lifetime.start.p0(ptr nonnull %1598) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1599) #29
  %i.opj = load ptr, ptr %1594, align 8, !tbaa !65, !noalias !930 ; 5 uses
  %i.opk = load i64, ptr %i.ojz, align 8, !tbaa !64, !noalias !930 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  store ptr %i.omj, ptr %1599, align 8, !tbaa !61, !alias.scope !931
  store i64 0, ptr %i.omk, align 8, !tbaa !64, !alias.scope !931
  store i8 0, ptr %i.omj, align 8, !tbaa !46, !alias.scope !931
  %i.opl = add i64 %i.opk, 4                      ; 3 uses
  %.not.i10411 = icmp ugt i64 %i.opl, 15
  br i1 %.not.i10411, label %bb.fwf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

bb.fwf:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10416
  %i.opm = icmp slt i64 %i.opl, 0
  br i1 %i.opm, label %.invoke.i.invoke, label %bb.fwg

bb.fwg:                                           ; preds = %bb.fwf
  %.0.i10413 = call i64 @llvm.umax.i64(i64 %i.opl, i64 30) ; 4 uses
  %i.opn = add nuw i64 %.0.i10413, 1              ; 2 uses
  %i.opo = icmp slt i64 %i.opn, 0
  br i1 %i.opo, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10414, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10414: ; preds = %bb.fwg
  %i.opp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.opn) #32
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread unwind label %.loopexit11304 ; 5 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10414
  store i8 0, ptr %i.opp, align 1, !tbaa !46
  store ptr %i.opp, ptr %1599, align 8, !tbaa !65
  store i64 %.0.i10413, ptr %i.omj, align 8, !tbaa !46
  %.not.i.i.i1018511231 = icmp ugt i64 %i.opk, %.0.i10413
  br i1 %.not.i.i.i1018511231, label %bb.fwj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10416
  %i.opq = icmp slt i64 %i.opk, 0
  br i1 %i.opq, label %.invoke.i.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread
  %i.opr = phi ptr [ %i.opp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.omj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit ] ; 5 uses
  switch i64 %i.opk, label %bb.fwi [
    i64 0, label %bb.fwm
    i64 1, label %bb.fwh
  ]

bb.fwh:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ops = load i8, ptr %i.opj, align 1, !tbaa !46, !noalias !931
  store i8 %i.ops, ptr %i.opr, align 1, !tbaa !46
  br label %bb.fwm

bb.fwi:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.opr, ptr align 1 %i.opj, i64 %i.opk, i1 false)
  br label %bb.fwm

bb.fwj:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread
  %i.opt = shl nuw i64 %.0.i10413, 1              ; 2 uses
  %i.opu = icmp ult i64 %i.opk, %i.opt
  %spec.store.select.i.i10403 = call i64 @llvm.umin.i64(i64 %i.opt, i64 9223372036854775807)
  %.0.i10393 = select i1 %i.opu, i64 %spec.store.select.i.i10403, i64 %i.opk ; 2 uses
  %i.opv = add nuw i64 %.0.i10393, 1              ; 2 uses
  %i.opw = icmp slt i64 %i.opv, 0
  br i1 %i.opw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10394, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10394: ; preds = %bb.fwj
  %i.opx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.opv) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10395 unwind label %.loopexit11304 ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10394
  %.not15179 = icmp eq ptr %i.opj, null
  br i1 %.not15179, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10408, label %bb.fwk

bb.fwk:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10395
  %cond.i10402 = icmp eq i64 %i.opk, 1
  br i1 %cond.i10402, label %1729, label %bb.fwl

1729:                                             ; preds = %bb.fwk
  %1730 = load i8, ptr %i.opj, align 1, !tbaa !46
  store i8 %1730, ptr %i.opx, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10408

bb.fwl:                                           ; preds = %bb.fwk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.opx, ptr nonnull align 1 %i.opj, i64 %i.opk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10395, %1729, %bb.fwl
  %i.opy = load i64, ptr %i.omj, align 8, !tbaa !46
  %i.opz = add i64 %i.opy, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.opp, i64 noundef %i.opz) #33
  store ptr %i.opx, ptr %1599, align 8, !tbaa !65
  store i64 %.0.i10393, ptr %i.omj, align 8, !tbaa !46
  br label %bb.fwm

bb.fwm:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10408, %bb.fwi, %bb.fwh
  %i.oqa = phi ptr [ %i.opx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10408 ], [ %i.opr, %bb.fwi ], [ %i.opr, %bb.fwh ], [ %i.opr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  store i64 %i.opk, ptr %i.omk, align 8, !tbaa !64, !alias.scope !931
  %i.oqb = getelementptr inbounds nuw i8, ptr %i.oqa, i64 %i.opk
  store i8 0, ptr %i.oqb, align 1, !tbaa !46
  %i.oqc = load i64, ptr %i.omk, align 8, !tbaa !64, !alias.scope !931 ; 10 uses
  %i.oqd = and i64 %i.oqc, -4
  %i.oqe = icmp eq i64 %i.oqd, 9223372036854775804
  br i1 %i.oqe, label %.invoke.i.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i.invoke:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10376, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %bb.fwm, %bb.fwf
  %i.oqf = phi ptr [ @.str.278, %bb.fwf ], [ @.str.279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit ], [ @.str.279, %bb.fwm ], [ @.str.278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10376 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.oqf) #35
          to label %.invoke.i.cont unwind label %.loopexit.split-lp11305

.invoke.i.cont:                                   ; preds = %.invoke.i.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %bb.fwm
  %i.oqg = add nsw i64 %i.oqc, 4                  ; 7 uses
  %i.oqh = load ptr, ptr %1599, align 8, !tbaa !65, !alias.scope !931 ; 6 uses
  %i.oqi = icmp eq ptr %i.oqh, %i.omj             ; 2 uses
  br i1 %i.oqi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  %i.oqj = icmp ult i64 %i.oqc, 16
  call void @llvm.assume(i1 %i.oqj)
  %.not.i.i13.i = icmp samesign ugt i64 %i.oqc, 11
  br i1 %.not.i.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10376, label %bb.fwn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  %i.oqk = load i64, ptr %i.omj, align 8, !tbaa !46, !alias.scope !931 ; 2 uses
  %.not.i.i13.i11233 = icmp ugt i64 %i.oqg, %i.oqk
  br i1 %.not.i.i13.i11233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10376, label %bb.fwn

bb.fwn:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i
  %i.oql = getelementptr inbounds nuw i8, ptr %i.oqh, i64 %i.oqc
  store i32 1819047278, ptr %i.oql, align 1
  %.pre12489 = load ptr, ptr %1599, align 8, !tbaa !65, !alias.scope !931
  br label %bb.fwv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10376: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i
  %i.oqm = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i ], [ %i.oqk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread ] ; 2 uses
  %i.oqn = icmp slt i64 %i.oqc, -4
  br i1 %i.oqn, label %.invoke.i.invoke, label %bb.fwo

bb.fwo:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10376
  %i.oqo = icmp ugt i64 %i.oqg, %i.oqm
  br i1 %i.oqo, label %bb.fwp, label %bb.fwr

bb.fwp:                                           ; preds = %bb.fwo
  %i.oqp = shl nuw i64 %i.oqm, 1                  ; 2 uses
  %i.oqq = icmp ult i64 %i.oqg, %i.oqp
  br i1 %i.oqq, label %bb.fwq, label %bb.fwr

bb.fwq:                                           ; preds = %bb.fwp
  %spec.store.select.i.i10385 = call i64 @llvm.umin.i64(i64 %i.oqp, i64 9223372036854775807)
  br label %bb.fwr

bb.fwr:                                           ; preds = %bb.fwq, %bb.fwp, %bb.fwo
  %.0.i10377 = phi i64 [ %spec.store.select.i.i10385, %bb.fwq ], [ %i.oqg, %bb.fwp ], [ %i.oqg, %bb.fwo ] ; 2 uses
  %i.oqr = add nuw i64 %.0.i10377, 1              ; 2 uses
  %i.oqs = icmp slt i64 %i.oqr, 0
  br i1 %i.oqs, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10378, !prof !117

.invoke:                                          ; preds = %bb.fwr, %bb.fwj, %bb.fwg
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.cont unwind label %.loopexit.split-lp11305

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10378: ; preds = %bb.fwr
  %i.oqt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oqr) #32
          to label %.noexc10389 unwind label %.loopexit11304 ; 5 uses

.noexc10389:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10378
  switch i64 %i.oqc, label %bb.fwt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10379
    i64 1, label %bb.fws
  ]

bb.fws:                                           ; preds = %.noexc10389
  %i.oqu = load i8, ptr %i.oqh, align 1, !tbaa !46
  store i8 %i.oqu, ptr %i.oqt, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10379

bb.fwt:                                           ; preds = %.noexc10389
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oqt, ptr align 1 %i.oqh, i64 %i.oqc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10379: ; preds = %bb.fwt, %bb.fws, %.noexc10389
  %i.oqv = getelementptr inbounds nuw i8, ptr %i.oqt, i64 %i.oqc
  store i32 1819047278, ptr %i.oqv, align 1
  br i1 %i.oqi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10379
  %i.oqw = icmp ult i64 %i.oqc, 16
  call void @llvm.assume(i1 %i.oqw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10379
  %i.oqx = load i64, ptr %i.omj, align 8, !tbaa !46
  %i.oqy = add i64 %i.oqx, 1
  call void @_ZdlPvm(ptr noundef %i.oqh, i64 noundef %i.oqy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10390: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10383
  store ptr %i.oqt, ptr %1599, align 8, !tbaa !65
  store i64 %.0.i10377, ptr %i.omj, align 8, !tbaa !46
  br label %bb.fwv

.loopexit11304:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10414
  %i.oqz = phi ptr [ %i.oqh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10378 ], [ %i.opp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10394 ], [ %i.omj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10414 ]
  %lpad.loopexit11306 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fwu

.loopexit.split-lp11305:                          ; preds = %.invoke, %.invoke.i.invoke
  %lpad.loopexit.split-lp11307 = landingpad { ptr, i32 }
          cleanup
  %.pre12497 = load ptr, ptr %1599, align 8, !tbaa !65, !alias.scope !931
  br label %bb.fwu

bb.fwu:                                           ; preds = %.loopexit.split-lp11305, %.loopexit11304
  %i.ora = phi ptr [ %i.oqz, %.loopexit11304 ], [ %.pre12497, %.loopexit.split-lp11305 ] ; 2 uses
  %lpad.phi11308 = phi { ptr, i32 } [ %lpad.loopexit11306, %.loopexit11304 ], [ %lpad.loopexit.split-lp11307, %.loopexit.split-lp11305 ] ; 2 uses
  %i.orb = icmp eq ptr %i.ora, %i.omj
  br i1 %i.orb, label %.body10187, label %.body10187.sink.split

bb.fwv:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10390, %bb.fwn
  %i.orc = phi ptr [ %i.oqt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10390 ], [ %.pre12489, %bb.fwn ]
  store i64 %i.oqg, ptr %i.omk, align 8, !tbaa !64, !alias.scope !931
  %i.ord = getelementptr inbounds nuw i8, ptr %i.orc, i64 %i.oqg
  store i8 0, ptr %i.ord, align 1, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1600, i8 0, i64 32, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5parseIS9_EESD_OT_St8functionIFbiNS0_6detail13parse_event_tERSD_EEbb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %1598, ptr noundef nonnull align 8 dereferenceable(32) %1599, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %1600, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.fww unwind label %bb.fzo

bb.fww:                                           ; preds = %bb.fwv
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.ore = load i32, ptr %1597, align 4, !tbaa !41, !noalias !932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1596, ptr noundef nonnull align 8 dereferenceable(16) %1598, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %1598, align 8, !tbaa !45, !noalias !932
  store ptr null, ptr %i.oml, align 8, !tbaa !46, !noalias !932
  store i32 %i.ore, ptr %i.omm, align 8, !tbaa !76, !alias.scope !932
  call void @llvm.lifetime.start.p0(ptr nonnull %1601) #29
  store i8 0, ptr %1601, align 8, !tbaa !50
  store ptr null, ptr %i.omn, align 8, !tbaa !46
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqISG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISK_EEtlNS0_6ResultEEESL_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %1595, ptr noundef nonnull align 8 dereferenceable(20) %1596, ptr noundef nonnull align 8 dereferenceable(16) %1601)
          to label %bb.fwx unwind label %bb.fzp

bb.fwx:                                           ; preds = %bb.fww
  %i.orf = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 989, ptr noundef nonnull @.str.182, ptr noundef nonnull align 8 dereferenceable(32) %1595)
          to label %bb.fwy unwind label %bb.fzq   ; 0 uses

bb.fwy:                                           ; preds = %bb.fwx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.omo) #29
  %i.org = load i8, ptr %1601, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.omn, i8 noundef zeroext %i.org) #31
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8373 unwind label %bb.fwz, !inline_history !51

bb.fwz:                                           ; preds = %bb.fwy
  %i.orh = landingpad { ptr, i32 }
          catch ptr null
  %i.ori = extractvalue { ptr, i32 } %i.orh, 0
  call void @__clang_call_terminate(ptr %i.ori) #30, !inline_history !51
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8373: ; preds = %bb.fwy
  call void @llvm.lifetime.end.p0(ptr nonnull %1601) #29
  %i.orj = load i8, ptr %1596, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.omp, i8 noundef zeroext %i.orj) #31
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8374 unwind label %bb.fxa, !inline_history !51

bb.fxa:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8373
  %i.ork = landingpad { ptr, i32 }
          catch ptr null
  %i.orl = extractvalue { ptr, i32 } %i.ork, 0
  call void @__clang_call_terminate(ptr %i.orl) #30, !inline_history !51
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8374: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8373
  %i.orm = load i8, ptr %1598, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.oml, i8 noundef zeroext %i.orm) #31
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8375 unwind label %bb.fxb, !inline_history !51

bb.fxb:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8374
  %i.orn = landingpad { ptr, i32 }
          catch ptr null
  %i.oro = extractvalue { ptr, i32 } %i.orn, 0
  call void @__clang_call_terminate(ptr %i.oro) #30, !inline_history !51
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8375: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8374
  %i.orp = load ptr, ptr %i.omq, align 8, !tbaa !38 ; 2 uses
  %.not.i8376 = icmp eq ptr %i.orp, null
  br i1 %.not.i8376, label %_ZNSt14_Function_baseD2Ev.exit8377, label %bb.fxc

bb.fxc:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8375
  %i.orq = invoke noundef zeroext i1 %i.orp(ptr noundef nonnull align 8 dereferenceable(32) %1600, ptr noundef nonnull align 8 dereferenceable(32) %1600, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8377 unwind label %bb.fxd ; 0 uses

bb.fxd:                                           ; preds = %bb.fxc
  %i.orr = landingpad { ptr, i32 }
          catch ptr null
  %i.ors = extractvalue { ptr, i32 } %i.orr, 0
  call void @__clang_call_terminate(ptr %i.ors) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit8377:               ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8375, %bb.fxc
  %i.ort = load ptr, ptr %1599, align 8, !tbaa !65 ; 2 uses
  %i.oru = icmp eq ptr %i.ort, %i.omj
  br i1 %i.oru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8378: ; preds = %_ZNSt14_Function_baseD2Ev.exit8377
  %i.orv = load i64, ptr %i.omj, align 8, !tbaa !46
  %i.orw = add i64 %i.orv, 1
  call void @_ZdlPvm(ptr noundef %i.ort, i64 noundef %i.orw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8380: ; preds = %_ZNSt14_Function_baseD2Ev.exit8377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8378
  call void @llvm.lifetime.end.p0(ptr nonnull %1599) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1598) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1597) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1596) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1595) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1602) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1603) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1604) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %1604, i32 noundef 10)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10470 unwind label %bb.fzw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10470: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8380
  call void @llvm.lifetime.start.p0(ptr nonnull %1605) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1606) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1607) #29
  %i.orx = load ptr, ptr %1594, align 8, !tbaa !65, !noalias !933 ; 5 uses
  %i.ory = load i64, ptr %i.ojz, align 8, !tbaa !64, !noalias !933 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  store ptr %i.omr, ptr %1607, align 8, !tbaa !61, !alias.scope !934
  store i64 0, ptr %i.oms, align 8, !tbaa !64, !alias.scope !934
  store i8 0, ptr %i.omr, align 8, !tbaa !46, !alias.scope !934
  %i.orz = add i64 %i.ory, 4                      ; 3 uses
  %.not.i10462 = icmp ugt i64 %i.orz, 15
  br i1 %.not.i10462, label %bb.fxe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10474

bb.fxe:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10470
  %i.osa = icmp slt i64 %i.orz, 0
  br i1 %i.osa, label %.invoke.i10205.invoke, label %bb.fxf

bb.fxf:                                           ; preds = %bb.fxe
  %.0.i10464 = call i64 @llvm.umax.i64(i64 %i.orz, i64 30) ; 4 uses
  %i.osb = add nuw i64 %.0.i10464, 1              ; 2 uses
  %i.osc = icmp slt i64 %i.osb, 0
  br i1 %i.osc, label %.invoke15163, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10465, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10465: ; preds = %bb.fxf
  %i.osd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.osb) #32
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10192.thread unwind label %.loopexit11309 ; 5 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10192.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10465
  store i8 0, ptr %i.osd, align 1, !tbaa !46
  store ptr %i.osd, ptr %1607, align 8, !tbaa !65
  store i64 %.0.i10464, ptr %i.omr, align 8, !tbaa !46
  %.not.i.i.i1019511235 = icmp ugt i64 %i.ory, %.0.i10464
  br i1 %.not.i.i.i1019511235, label %bb.fxi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10474: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10470
  %i.ose = icmp slt i64 %i.ory, 0
  br i1 %i.ose, label %.invoke.i10205.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10192.thread
  %i.osf = phi ptr [ %i.osd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10192.thread ], [ %i.omr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10474 ] ; 5 uses
  switch i64 %i.ory, label %bb.fxh [
    i64 0, label %bb.fxl
    i64 1, label %bb.fxg
  ]

bb.fxg:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10194
  %i.osg = load i8, ptr %i.orx, align 1, !tbaa !46, !noalias !934
  store i8 %i.osg, ptr %i.osf, align 1, !tbaa !46
  br label %bb.fxl

bb.fxh:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10194
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.osf, ptr align 1 %i.orx, i64 %i.ory, i1 false)
  br label %bb.fxl

bb.fxi:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10192.thread
  %i.osh = shl nuw i64 %.0.i10464, 1              ; 2 uses
  %i.osi = icmp ult i64 %i.ory, %i.osh
  %spec.store.select.i.i10454 = call i64 @llvm.umin.i64(i64 %i.osh, i64 9223372036854775807)
  %.0.i10442 = select i1 %i.osi, i64 %spec.store.select.i.i10454, i64 %i.ory ; 2 uses
  %i.osj = add nuw i64 %.0.i10442, 1              ; 2 uses
  %i.osk = icmp slt i64 %i.osj, 0
  br i1 %i.osk, label %.invoke15163, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10443, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10443: ; preds = %bb.fxi
  %i.osl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.osj) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10444 unwind label %.loopexit11309 ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10444: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10443
  %.not15180 = icmp eq ptr %i.orx, null
  br i1 %.not15180, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10459, label %bb.fxj

bb.fxj:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10444
  %cond.i10453 = icmp eq i64 %i.ory, 1
  br i1 %cond.i10453, label %1731, label %bb.fxk

1731:                                             ; preds = %bb.fxj
  %1732 = load i8, ptr %i.orx, align 1, !tbaa !46
  store i8 %1732, ptr %i.osl, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10459

bb.fxk:                                           ; preds = %bb.fxj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.osl, ptr nonnull align 1 %i.orx, i64 %i.ory, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10459: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10444, %1731, %bb.fxk
  %i.osm = load i64, ptr %i.omr, align 8, !tbaa !46
  %i.osn = add i64 %i.osm, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.osd, i64 noundef %i.osn) #33
  store ptr %i.osl, ptr %1607, align 8, !tbaa !65
  store i64 %.0.i10442, ptr %i.omr, align 8, !tbaa !46
  br label %bb.fxl

bb.fxl:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10459, %bb.fxh, %bb.fxg
  %i.oso = phi ptr [ %i.osl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10459 ], [ %i.osf, %bb.fxh ], [ %i.osf, %bb.fxg ], [ %i.osf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10194 ]
  store i64 %i.ory, ptr %i.oms, align 8, !tbaa !64, !alias.scope !934
  %i.osp = getelementptr inbounds nuw i8, ptr %i.oso, i64 %i.ory
  store i8 0, ptr %i.osp, align 1, !tbaa !46
  %i.osq = load i64, ptr %i.oms, align 8, !tbaa !64, !alias.scope !934 ; 10 uses
  %i.osr = and i64 %i.osq, -4
  %i.oss = icmp eq i64 %i.osr, 9223372036854775804
  br i1 %i.oss, label %.invoke.i10205.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10198

.invoke.i10205.invoke:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10474, %bb.fxl, %bb.fxe
  %i.ost = phi ptr [ @.str.278, %bb.fxe ], [ @.str.279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10474 ], [ @.str.279, %bb.fxl ], [ @.str.278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10421 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ost) #35
          to label %.invoke.i10205.cont unwind label %.loopexit.split-lp11310

.invoke.i10205.cont:                              ; preds = %.invoke.i10205.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10198: ; preds = %bb.fxl
  %i.osu = add nsw i64 %i.osq, 4                  ; 7 uses
  %i.osv = load ptr, ptr %1607, align 8, !tbaa !65, !alias.scope !934 ; 6 uses
  %i.osw = icmp eq ptr %i.osv, %i.omr             ; 2 uses
  br i1 %i.osw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10198
  %i.osx = icmp ult i64 %i.osq, 16
  call void @llvm.assume(i1 %i.osx)
  %.not.i.i13.i10201 = icmp samesign ugt i64 %i.osq, 11
  br i1 %.not.i.i13.i10201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10421, label %bb.fxm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10198
  %i.osy = load i64, ptr %i.omr, align 8, !tbaa !46, !alias.scope !934 ; 2 uses
  %.not.i.i13.i1020111237 = icmp ugt i64 %i.osu, %i.osy
  br i1 %.not.i.i13.i1020111237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10421, label %bb.fxm

bb.fxm:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200
  %i.osz = getelementptr inbounds nuw i8, ptr %i.osv, i64 %i.osq
  store i32 1819047278, ptr %i.osz, align 1
  %.pre12490 = load ptr, ptr %1607, align 8, !tbaa !65, !alias.scope !934
  br label %bb.fxu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10421: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200
  %i.ota = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200 ], [ %i.osy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10200.thread ] ; 2 uses
  %i.otb = icmp slt i64 %i.osq, -4
  br i1 %i.otb, label %.invoke.i10205.invoke, label %bb.fxn

bb.fxn:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10421
  %i.otc = icmp ugt i64 %i.osu, %i.ota
  br i1 %i.otc, label %bb.fxo, label %bb.fxq

bb.fxo:                                           ; preds = %bb.fxn
  %i.otd = shl nuw i64 %i.ota, 1                  ; 2 uses
  %i.ote = icmp ult i64 %i.osu, %i.otd
  br i1 %i.ote, label %bb.fxp, label %bb.fxq

bb.fxp:                                           ; preds = %bb.fxo
  %spec.store.select.i.i10434 = call i64 @llvm.umin.i64(i64 %i.otd, i64 9223372036854775807)
  br label %bb.fxq

bb.fxq:                                           ; preds = %bb.fxp, %bb.fxo, %bb.fxn
  %.0.i10422 = phi i64 [ %spec.store.select.i.i10434, %bb.fxp ], [ %i.osu, %bb.fxo ], [ %i.osu, %bb.fxn ] ; 2 uses
  %i.otf = add nuw i64 %.0.i10422, 1              ; 2 uses
  %i.otg = icmp slt i64 %i.otf, 0
  br i1 %i.otg, label %.invoke15163, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10423, !prof !117

.invoke15163:                                     ; preds = %bb.fxq, %bb.fxi, %bb.fxf
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.cont15164 unwind label %.loopexit.split-lp11310

.cont15164:                                       ; preds = %.invoke15163
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10423: ; preds = %bb.fxq
  %i.oth = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.otf) #32
          to label %.noexc10438 unwind label %.loopexit11309 ; 5 uses

.noexc10438:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10423
  switch i64 %i.osq, label %bb.fxs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10424
    i64 1, label %bb.fxr
  ]

bb.fxr:                                           ; preds = %.noexc10438
  %i.oti = load i8, ptr %i.osv, align 1, !tbaa !46
  store i8 %i.oti, ptr %i.oth, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10424

bb.fxs:                                           ; preds = %.noexc10438
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oth, ptr align 1 %i.osv, i64 %i.osq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10424: ; preds = %bb.fxs, %bb.fxr, %.noexc10438
  %i.otj = getelementptr inbounds nuw i8, ptr %i.oth, i64 %i.osq
  store i32 1819047278, ptr %i.otj, align 1
  br i1 %i.osw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10424
  %i.otk = icmp ult i64 %i.osq, 16
  call void @llvm.assume(i1 %i.otk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10424
  %i.otl = load i64, ptr %i.omr, align 8, !tbaa !46
  %i.otm = add i64 %i.otl, 1
  call void @_ZdlPvm(ptr noundef %i.osv, i64 noundef %i.otm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10439: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10430
  store ptr %i.oth, ptr %1607, align 8, !tbaa !65
  store i64 %.0.i10422, ptr %i.omr, align 8, !tbaa !46
  br label %bb.fxu

.loopexit11309:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10423, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10465
  %i.otn = phi ptr [ %i.osv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10423 ], [ %i.osd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10443 ], [ %i.omr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10465 ]
  %lpad.loopexit11311 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fxt

.loopexit.split-lp11310:                          ; preds = %.invoke15163, %.invoke.i10205.invoke
  %lpad.loopexit.split-lp11312 = landingpad { ptr, i32 }
          cleanup
  %.pre12496 = load ptr, ptr %1607, align 8, !tbaa !65, !alias.scope !934
  br label %bb.fxt

bb.fxt:                                           ; preds = %.loopexit.split-lp11310, %.loopexit11309
  %i.oto = phi ptr [ %i.otn, %.loopexit11309 ], [ %.pre12496, %.loopexit.split-lp11310 ] ; 2 uses
  %lpad.phi11313 = phi { ptr, i32 } [ %lpad.loopexit11311, %.loopexit11309 ], [ %lpad.loopexit.split-lp11312, %.loopexit.split-lp11310 ] ; 2 uses
  %i.otp = icmp eq ptr %i.oto, %i.omr
  br i1 %i.otp, label %.body10208, label %.body10208.sink.split

bb.fxu:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10439, %bb.fxm
  %i.otq = phi ptr [ %i.oth, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10439 ], [ %.pre12490, %bb.fxm ]
  store i64 %i.osu, ptr %i.oms, align 8, !tbaa !64, !alias.scope !934
  %i.otr = getelementptr inbounds nuw i8, ptr %i.otq, i64 %i.osu
  store i8 0, ptr %i.otr, align 1, !tbaa !46
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.omt) #29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.omt, align 8, !tbaa !53
  store ptr null, ptr %i.omu, align 8, !tbaa !935
  store i8 0, ptr %i.omv, align 8, !tbaa !178
  store i8 0, ptr %i.omw, align 1, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.omx, i8 0, i64 32, i1 false)
  store ptr %i.okq, ptr %1606, align 8, !tbaa !53
  %i.ots = load i64, ptr %i.oks, align 8
  %i.ott = getelementptr inbounds i8, ptr %1606, i64 %i.ots
  store ptr %i.okr, ptr %i.ott, align 8, !tbaa !53
  store i64 0, ptr %i.omy, align 8, !tbaa !823
  %i.otu = load ptr, ptr %1606, align 8, !tbaa !53
  %i.otv = getelementptr i8, ptr %i.otu, i64 -24
  %i.otw = load i64, ptr %i.otv, align 8
  %i.otx = getelementptr inbounds i8, ptr %1606, i64 %i.otw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.otx, ptr noundef null)
          to label %_ZNSiC2Ev.exit.i unwind label %bb.fxx

_ZNSiC2Ev.exit.i:                                 ; preds = %bb.fxu
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %1606, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.omt, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.omz, align 8, !tbaa !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ona, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.onb) #29
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.omz, align 8, !tbaa !53
  store ptr %i.one, ptr %i.ond, align 8, !tbaa !61
  %i.oty = load ptr, ptr %1607, align 8, !tbaa !65 ; 3 uses
  %i.otz = icmp eq ptr %i.oty, %i.omr
  br i1 %i.otz, label %bb.fxv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10211

bb.fxv:                                           ; preds = %_ZNSiC2Ev.exit.i
  %i.oua = load i64, ptr %i.oms, align 8, !tbaa !64 ; 3 uses
  %i.oub = icmp ult i64 %i.oua, 16
  call void @llvm.assume(i1 %i.oub)
  %i.ouc = add nuw nsw i64 %i.oua, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.one, ptr noundef nonnull align 8 dereferenceable(1) %i.omr, i64 %i.ouc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10211: ; preds = %_ZNSiC2Ev.exit.i
  store ptr %i.oty, ptr %i.ond, align 8, !tbaa !65
  %i.oud = load i64, ptr %i.omr, align 8, !tbaa !46
  store i64 %i.oud, ptr %i.one, align 8, !tbaa !46
  %.pre12491 = load i64, ptr %i.oms, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10211, %bb.fxv
  %i.oue = phi ptr [ %i.oty, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10211 ], [ %i.one, %bb.fxv ]
  %i.ouf = phi i64 [ %.pre12491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10211 ], [ %i.oua, %bb.fxv ]
  store i64 %i.ouf, ptr %i.onf, align 8, !tbaa !64
  store ptr %i.omr, ptr %1607, align 8, !tbaa !65
  store i64 0, ptr %i.oms, align 8, !tbaa !64
  store i8 0, ptr %i.omr, align 8, !tbaa !46
  store i32 8, ptr %i.onc, align 8, !tbaa !938
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.omz, ptr noundef %i.oue, i64 noundef 0, i64 noundef 0)
          to label %_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit unwind label %bb.fxw

bb.fxw:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.oug = landingpad { ptr, i32 }
          cleanup
  %i.ouh = load ptr, ptr %i.ond, align 8, !tbaa !65 ; 2 uses
  %i.oui = icmp eq ptr %i.ouh, %i.one
  br i1 %i.oui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10212: ; preds = %bb.fxw
  %i.ouj = load i64, ptr %i.one, align 8, !tbaa !46
  %i.ouk = add i64 %i.ouj, 1
  call void @_ZdlPvm(ptr noundef %i.ouh, i64 noundef %i.ouk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10213: ; preds = %bb.fxw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10212
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.omz, align 8, !tbaa !53
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.onb) #29
  br label %.body10215

_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.oul = load ptr, ptr %1606, align 8, !tbaa !53
  %i.oum = getelementptr i8, ptr %i.oul, i64 -24
  %i.oun = load i64, ptr %i.oum, align 8
  %i.ouo = getelementptr inbounds i8, ptr %1606, i64 %i.oun
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ouo, ptr noundef nonnull %i.omz)
          to label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit unwind label %bb.fxy

bb.fxx:                                           ; preds = %bb.fxu
  %i.oup = landingpad { ptr, i32 }
          cleanup
  br label %bb.fxz

bb.fxy:                                           ; preds = %_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit
  %i.ouq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.omz) #29
  br label %.body10215

.body10215:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10213, %bb.fxy
  %.pn.i8383 = phi { ptr, i32 } [ %i.ouq, %bb.fxy ], [ %i.oug, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10213 ]
  store ptr %i.okq, ptr %1606, align 8, !tbaa !53
  %i.our = load i64, ptr %i.oks, align 8
  %i.ous = getelementptr inbounds i8, ptr %1606, i64 %i.our
  store ptr %i.okr, ptr %i.ous, align 8, !tbaa !53
  store i64 0, ptr %i.omy, align 8, !tbaa !823
  br label %bb.fxz

bb.fxz:                                           ; preds = %.body10215, %bb.fxx
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i8383, %.body10215 ], [ %i.oup, %bb.fxx ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.omt) #29
  br label %.body8384

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit: ; preds = %_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1608, i8 0, i64 32, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5parseINS4_19basic_istringstreamIcS7_S8_EEEESD_OT_St8functionIFbiNS0_6detail13parse_event_tERSD_EEbb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %1605, ptr noundef nonnull align 8 dereferenceable(120) %1606, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %1608, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.fya unwind label %bb.fzx

bb.fya:                                           ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.out = load i32, ptr %1604, align 4, !tbaa !41, !noalias !939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1603, ptr noundef nonnull align 8 dereferenceable(16) %1605, i64 16, i1 false), !tbaa.struct !74
  store i8 0, ptr %1605, align 8, !tbaa !45, !noalias !939
  store ptr null, ptr %i.ong, align 8, !tbaa !46, !noalias !939
  store i32 %i.out, ptr %i.onh, align 8, !tbaa !76, !alias.scope !939
  call void @llvm.lifetime.start.p0(ptr nonnull %1609) #29
  store i8 0, ptr %1609, align 8, !tbaa !50
  store ptr null, ptr %i.oni, align 8, !tbaa !46
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqISG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISK_EEtlNS0_6ResultEEESL_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %1602, ptr noundef nonnull align 8 dereferenceable(20) %1603, ptr noundef nonnull align 8 dereferenceable(16) %1609)
          to label %bb.fyb unwind label %bb.fzy

bb.fyb:                                           ; preds = %bb.fya
  %i.ouu = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 990, ptr noundef nonnull @.str.184, ptr noundef nonnull align 8 dereferenceable(32) %1602)
          to label %bb.fyc unwind label %bb.fzz   ; 0 uses

bb.fyc:                                           ; preds = %bb.fyb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.onj) #29
  %i.ouv = load i8, ptr %1609, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.oni, i8 noundef zeroext %i.ouv) #31
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8386 unwind label %bb.fyd, !inline_history !51

bb.fyd:                                           ; preds = %bb.fyc
  %i.ouw = landingpad { ptr, i32 }
          catch ptr null
  %i.oux = extractvalue { ptr, i32 } %i.ouw, 0
  call void @__clang_call_terminate(ptr %i.oux) #30, !inline_history !51
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8386: ; preds = %bb.fyc
  call void @llvm.lifetime.end.p0(ptr nonnull %1609) #29
  %i.ouy = load i8, ptr %1603, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.onk, i8 noundef zeroext %i.ouy) #31
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8387 unwind label %bb.fye, !inline_history !51

bb.fye:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8386
  %i.ouz = landingpad { ptr, i32 }
          catch ptr null
  %i.ova = extractvalue { ptr, i32 } %i.ouz, 0
  call void @__clang_call_terminate(ptr %i.ova) #30, !inline_history !51
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8387: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8386
  %i.ovb = load i8, ptr %1605, align 8, !tbaa !50
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ong, i8 noundef zeroext %i.ovb) #31
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8388 unwind label %bb.fyf, !inline_history !51

bb.fyf:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8387
  %i.ovc = landingpad { ptr, i32 }
          catch ptr null
  %i.ovd = extractvalue { ptr, i32 } %i.ovc, 0
  call void @__clang_call_terminate(ptr %i.ovd) #30, !inline_history !51
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8388: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit8387
  %i.ove = load ptr, ptr %i.onl, align 8, !tbaa !38 ; 2 uses
  %.not.i8389 = icmp eq ptr %i.ove, null
  br i1 %.not.i8389, label %_ZNSt14_Function_baseD2Ev.exit8390, label %bb.fyg

bb.fyg:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8388
  %i.ovf = invoke noundef zeroext i1 %i.ove(ptr noundef nonnull align 8 dereferenceable(32) %1608, ptr noundef nonnull align 8 dereferenceable(32) %1608, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8390 unwind label %bb.fyh ; 0 uses

bb.fyh:                                           ; preds = %bb.fyg
  %i.ovg = landingpad { ptr, i32 }
          catch ptr null
  %i.ovh = extractvalue { ptr, i32 } %i.ovg, 0
  call void @__clang_call_terminate(ptr %i.ovh) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit8390:               ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8388, %bb.fyg
  store ptr %i.old, ptr %1606, align 8, !tbaa !53
  %i.ovi = load i64, ptr %i.olf, align 8
  %i.ovj = getelementptr inbounds i8, ptr %1606, i64 %i.ovi
  store ptr %i.ole, ptr %i.ovj, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.omz, align 8, !tbaa !53
  %i.ovk = load ptr, ptr %i.ond, align 8, !tbaa !65 ; 2 uses
  %i.ovl = icmp eq ptr %i.ovk, %i.one
  br i1 %i.ovl, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8391: ; preds = %_ZNSt14_Function_baseD2Ev.exit8390
  %i.ovm = load i64, ptr %i.one, align 8, !tbaa !46
  %i.ovn = add i64 %i.ovm, 1
  call void @_ZdlPvm(ptr noundef %i.ovk, i64 noundef %i.ovn) #33
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8393

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8393: ; preds = %_ZNSt14_Function_baseD2Ev.exit8390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8391
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.omz, align 8, !tbaa !53
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.onb) #29
  store ptr %i.okq, ptr %1606, align 8, !tbaa !53
  %i.ovo = load i64, ptr %i.oks, align 8
  %i.ovp = getelementptr inbounds i8, ptr %1606, i64 %i.ovo
  store ptr %i.okr, ptr %i.ovp, align 8, !tbaa !53
  store i64 0, ptr %i.omy, align 8, !tbaa !823
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.omt) #29
  %i.ovq = load ptr, ptr %1607, align 8, !tbaa !65 ; 2 uses
  %i.ovr = icmp eq ptr %i.ovq, %i.omr
  br i1 %i.ovr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8394: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8393
  %i.ovs = load i64, ptr %i.omr, align 8, !tbaa !46
  %i.ovt = add i64 %i.ovs, 1
  call void @_ZdlPvm(ptr noundef %i.ovq, i64 noundef %i.ovt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8396: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8394
  call void @llvm.lifetime.end.p0(ptr nonnull %1607) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1606) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1605) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1604) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1603) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1602) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1610) #29
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN12_GLOBAL__N_114SaxEventLoggerE, i64 16), ptr %1610, align 8, !tbaa !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.onm, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1611) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1612) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1613) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %1613, i32 noundef 10)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10525 unwind label %bb.gaf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10525: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8396
  call void @llvm.lifetime.start.p0(ptr nonnull %1614) #29
  %i.ovu = load ptr, ptr %1594, align 8, !tbaa !65, !noalias !940 ; 5 uses
  %i.ovv = load i64, ptr %i.ojz, align 8, !tbaa !64, !noalias !940 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  store ptr %i.onn, ptr %1614, align 8, !tbaa !61, !alias.scope !941
  store i64 0, ptr %i.ono, align 8, !tbaa !64, !alias.scope !941
  store i8 0, ptr %i.onn, align 8, !tbaa !46, !alias.scope !941
  %i.ovw = add i64 %i.ovv, 4                      ; 3 uses
  %.not.i10517 = icmp ugt i64 %i.ovw, 15
  br i1 %.not.i10517, label %bb.fyi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10529

bb.fyi:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10525
  %i.ovx = icmp slt i64 %i.ovw, 0
  br i1 %i.ovx, label %.invoke.i10233.invoke, label %bb.fyj

bb.fyj:                                           ; preds = %bb.fyi
  %.0.i10519 = call i64 @llvm.umax.i64(i64 %i.ovw, i64 30) ; 4 uses
  %i.ovy = add nuw i64 %.0.i10519, 1              ; 2 uses
  %i.ovz = icmp slt i64 %i.ovy, 0
  br i1 %i.ovz, label %.invoke15165, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10520, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10520: ; preds = %bb.fyj
  %i.owa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ovy) #32
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10220.thread unwind label %.loopexit11314 ; 5 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10220.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10520
  store i8 0, ptr %i.owa, align 1, !tbaa !46
  store ptr %i.owa, ptr %1614, align 8, !tbaa !65
  store i64 %.0.i10519, ptr %i.onn, align 8, !tbaa !46
  %.not.i.i.i1022311239 = icmp ugt i64 %i.ovv, %.0.i10519
  br i1 %.not.i.i.i1022311239, label %bb.fym, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10529: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10525
  %i.owb = icmp slt i64 %i.ovv, 0
  br i1 %i.owb, label %.invoke.i10233.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10529, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10220.thread
  %i.owc = phi ptr [ %i.owa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10220.thread ], [ %i.onn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10529 ] ; 5 uses
  switch i64 %i.ovv, label %bb.fyl [
    i64 0, label %bb.fyp
    i64 1, label %bb.fyk
  ]

bb.fyk:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10222
  %i.owd = load i8, ptr %i.ovu, align 1, !tbaa !46, !noalias !941
  store i8 %i.owd, ptr %i.owc, align 1, !tbaa !46
  br label %bb.fyp

bb.fyl:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10222
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.owc, ptr align 1 %i.ovu, i64 %i.ovv, i1 false)
  br label %bb.fyp

bb.fym:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10220.thread
  %i.owe = shl nuw i64 %.0.i10519, 1              ; 2 uses
  %i.owf = icmp ult i64 %i.ovv, %i.owe
  %spec.store.select.i.i10509 = call i64 @llvm.umin.i64(i64 %i.owe, i64 9223372036854775807)
  %.0.i10497 = select i1 %i.owf, i64 %spec.store.select.i.i10509, i64 %i.ovv ; 2 uses
  %i.owg = add nuw i64 %.0.i10497, 1              ; 2 uses
  %i.owh = icmp slt i64 %i.owg, 0
  br i1 %i.owh, label %.invoke15165, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10498, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10498: ; preds = %bb.fym
  %i.owi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.owg) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10499 unwind label %.loopexit11314 ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10499: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10498
  %.not15181 = icmp eq ptr %i.ovu, null
  br i1 %.not15181, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10514, label %bb.fyn

bb.fyn:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10499
  %cond.i10508 = icmp eq i64 %i.ovv, 1
  br i1 %cond.i10508, label %1733, label %bb.fyo

1733:                                             ; preds = %bb.fyn
  %1734 = load i8, ptr %i.ovu, align 1, !tbaa !46
  store i8 %1734, ptr %i.owi, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10514

bb.fyo:                                           ; preds = %bb.fyn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.owi, ptr nonnull align 1 %i.ovu, i64 %i.ovv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10514: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10499, %1733, %bb.fyo
  %i.owj = load i64, ptr %i.onn, align 8, !tbaa !46
  %i.owk = add i64 %i.owj, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.owa, i64 noundef %i.owk) #33
  store ptr %i.owi, ptr %1614, align 8, !tbaa !65
  store i64 %.0.i10497, ptr %i.onn, align 8, !tbaa !46
  br label %bb.fyp

bb.fyp:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10514, %bb.fyl, %bb.fyk
  %i.owl = phi ptr [ %i.owi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10514 ], [ %i.owc, %bb.fyl ], [ %i.owc, %bb.fyk ], [ %i.owc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10222 ]
  store i64 %i.ovv, ptr %i.ono, align 8, !tbaa !64, !alias.scope !941
  %i.owm = getelementptr inbounds nuw i8, ptr %i.owl, i64 %i.ovv
  store i8 0, ptr %i.owm, align 1, !tbaa !46
  %i.own = load i64, ptr %i.ono, align 8, !tbaa !64, !alias.scope !941 ; 10 uses
  %i.owo = and i64 %i.own, -4
  %i.owp = icmp eq i64 %i.owo, 9223372036854775804
  br i1 %i.owp, label %.invoke.i10233.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10226

.invoke.i10233.invoke:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10476, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10529, %bb.fyp, %bb.fyi
  %i.owq = phi ptr [ @.str.278, %bb.fyi ], [ @.str.279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10529 ], [ @.str.279, %bb.fyp ], [ @.str.278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10476 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.owq) #35
          to label %.invoke.i10233.cont unwind label %.loopexit.split-lp11315

.invoke.i10233.cont:                              ; preds = %.invoke.i10233.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10226: ; preds = %bb.fyp
  %i.owr = add nsw i64 %i.own, 4                  ; 7 uses
  %i.ows = load ptr, ptr %1614, align 8, !tbaa !65, !alias.scope !941 ; 6 uses
  %i.owt = icmp eq ptr %i.ows, %i.onn             ; 2 uses
  br i1 %i.owt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10226
  %i.owu = icmp ult i64 %i.own, 16
  call void @llvm.assume(i1 %i.owu)
  %.not.i.i13.i10229 = icmp samesign ugt i64 %i.own, 11
  br i1 %.not.i.i13.i10229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10476, label %bb.fyq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10226
  %i.owv = load i64, ptr %i.onn, align 8, !tbaa !46, !alias.scope !941 ; 2 uses
  %.not.i.i13.i1022911241 = icmp ugt i64 %i.owr, %i.owv
  br i1 %.not.i.i13.i1022911241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10476, label %bb.fyq

bb.fyq:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228
  %i.oww = getelementptr inbounds nuw i8, ptr %i.ows, i64 %i.own
  store i32 1819047278, ptr %i.oww, align 1
  %.pre12492 = load ptr, ptr %1614, align 8, !tbaa !65, !alias.scope !941
  br label %bb.fyy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10476: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228
  %i.owx = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228 ], [ %i.owv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10228.thread ] ; 2 uses
  %i.owy = icmp slt i64 %i.own, -4
  br i1 %i.owy, label %.invoke.i10233.invoke, label %bb.fyr

bb.fyr:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10476
  %i.owz = icmp ugt i64 %i.owr, %i.owx
  br i1 %i.owz, label %bb.fys, label %bb.fyu

bb.fys:                                           ; preds = %bb.fyr
  %i.oxa = shl nuw i64 %i.owx, 1                  ; 2 uses
  %i.oxb = icmp ult i64 %i.owr, %i.oxa
  br i1 %i.oxb, label %bb.fyt, label %bb.fyu

bb.fyt:                                           ; preds = %bb.fys
  %spec.store.select.i.i10489 = call i64 @llvm.umin.i64(i64 %i.oxa, i64 9223372036854775807)
  br label %bb.fyu

bb.fyu:                                           ; preds = %bb.fyt, %bb.fys, %bb.fyr
  %.0.i10477 = phi i64 [ %spec.store.select.i.i10489, %bb.fyt ], [ %i.owr, %bb.fys ], [ %i.owr, %bb.fyr ] ; 2 uses
  %i.oxc = add nuw i64 %.0.i10477, 1              ; 2 uses
  %i.oxd = icmp slt i64 %i.oxc, 0
  br i1 %i.oxd, label %.invoke15165, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10478, !prof !117

.invoke15165:                                     ; preds = %bb.fyu, %bb.fym, %bb.fyj
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.cont15166 unwind label %.loopexit.split-lp11315

.cont15166:                                       ; preds = %.invoke15165
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10478: ; preds = %bb.fyu
  %i.oxe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oxc) #32
          to label %.noexc10493 unwind label %.loopexit11314 ; 5 uses

.noexc10493:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10478
  switch i64 %i.own, label %bb.fyw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10479
    i64 1, label %bb.fyv
  ]

bb.fyv:                                           ; preds = %.noexc10493
  %i.oxf = load i8, ptr %i.ows, align 1, !tbaa !46
  store i8 %i.oxf, ptr %i.oxe, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10479

bb.fyw:                                           ; preds = %.noexc10493
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oxe, ptr align 1 %i.ows, i64 %i.own, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10479

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10479: ; preds = %bb.fyw, %bb.fyv, %.noexc10493
  %i.oxg = getelementptr inbounds nuw i8, ptr %i.oxe, i64 %i.own
  store i32 1819047278, ptr %i.oxg, align 1
  br i1 %i.owt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10487, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10485

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10487: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10479
  %i.oxh = icmp ult i64 %i.own, 16
  call void @llvm.assume(i1 %i.oxh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10494

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10485: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10479
  %i.oxi = load i64, ptr %i.onn, align 8, !tbaa !46
  %i.oxj = add i64 %i.oxi, 1
  call void @_ZdlPvm(ptr noundef %i.ows, i64 noundef %i.oxj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10494: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10487, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10485
  store ptr %i.oxe, ptr %1614, align 8, !tbaa !65
  store i64 %.0.i10477, ptr %i.onn, align 8, !tbaa !46
  br label %bb.fyy

.loopexit11314:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10478, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10498, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10520
  %i.oxk = phi ptr [ %i.ows, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10478 ], [ %i.owa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10498 ], [ %i.onn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10520 ]
  %lpad.loopexit11316 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fyx

.loopexit.split-lp11315:                          ; preds = %.invoke15165, %.invoke.i10233.invoke
  %lpad.loopexit.split-lp11317 = landingpad { ptr, i32 }
          cleanup
  %.pre12495 = load ptr, ptr %1614, align 8, !tbaa !65, !alias.scope !941
  br label %bb.fyx

bb.fyx:                                           ; preds = %.loopexit.split-lp11315, %.loopexit11314
  %i.oxl = phi ptr [ %i.oxk, %.loopexit11314 ], [ %.pre12495, %.loopexit.split-lp11315 ] ; 2 uses
  %lpad.phi11318 = phi { ptr, i32 } [ %lpad.loopexit11316, %.loopexit11314 ], [ %lpad.loopexit.split-lp11317, %.loopexit.split-lp11315 ] ; 2 uses
  %i.oxm = icmp eq ptr %i.oxl, %i.onn
  br i1 %i.oxm, label %.body10236, label %.body10236.sink.split

bb.fyy:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10494, %bb.fyq
  %i.oxn = phi ptr [ %i.oxe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10494 ], [ %.pre12492, %bb.fyq ]
  store i64 %i.owr, ptr %i.ono, align 8, !tbaa !64, !alias.scope !941
  %i.oxo = getelementptr inbounds nuw i8, ptr %i.oxn, i64 %i.owr
  store i8 0, ptr %i.oxo, align 1, !tbaa !46
  %.val4408 = load ptr, ptr %1614, align 8, !tbaa !65
  %.val4409 = load i64, ptr %i.ono, align 8, !tbaa !64
  %i.oxp = invoke fastcc noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9sax_parseIS9_N12_GLOBAL__N_114SaxEventLoggerEEEbOT_PT0_NS0_6detail14input_format_tEbb(ptr %.val4408, i64 %.val4409, ptr noundef %1610)
          to label %bb.fyz unwind label %bb.gag

bb.fyz:                                           ; preds = %bb.fyy
  %i.oxq = load i32, ptr %1613, align 4, !tbaa !41
  %.sroa.22.0.insert.ext.i8399 = zext i32 %i.oxq to i64
  %.sroa.22.0.insert.shift.i8400 = shl nuw i64 %.sroa.22.0.insert.ext.i8399, 32
  %.sroa.0.0.insert.ext.i8401 = zext i1 %i.oxp to i64
  %.sroa.0.0.insert.insert.i8402 = or disjoint i64 %.sroa.22.0.insert.shift.i8400, %.sroa.0.0.insert.ext.i8401
  store i64 %.sroa.0.0.insert.insert.i8402, ptr %1612, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %1611, ptr noundef nonnull align 4 dereferenceable(8) %1612)
          to label %bb.fza unwind label %bb.gag

bb.fza:                                           ; preds = %bb.fyz
  %i.oxr = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 993, ptr noundef nonnull @.str.185, ptr noundef nonnull align 8 dereferenceable(32) %1611)
          to label %bb.fzb unwind label %bb.gah   ; 0 uses

bb.fzb:                                           ; preds = %bb.fza
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.onp) #29
  %i.oxs = load ptr, ptr %1614, align 8, !tbaa !65 ; 2 uses
  %i.oxt = icmp eq ptr %i.oxs, %i.onn
  br i1 %i.oxt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8403: ; preds = %bb.fzb
  %i.oxu = load i64, ptr %i.onn, align 8, !tbaa !46
  %i.oxv = add i64 %i.oxu, 1
  call void @_ZdlPvm(ptr noundef %i.oxs, i64 noundef %i.oxv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8405: ; preds = %bb.fzb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8403
  call void @llvm.lifetime.end.p0(ptr nonnull %1614) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1613) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1612) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1611) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1615) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1616) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1617) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %1617, i32 noundef 10)
          to label %bb.fzc unwind label %bb.gak

bb.fzc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8405
  %i.oxw = load ptr, ptr %i.onq, align 8, !tbaa !56
  %i.oxx = load ptr, ptr %i.onm, align 8, !tbaa !57
  %i.oxy = ptrtoint ptr %i.oxw to i64
  %i.oxz = ptrtoint ptr %i.oxx to i64
  %i.oya = sub i64 %i.oxy, %i.oxz
  %i.oyb = ashr exact i64 %i.oya, 5
  %i.oyc = load i32, ptr %1617, align 4, !tbaa !41
  store i64 %i.oyb, ptr %1616, align 8
  store i32 %i.oyc, ptr %.sroa.2310.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #29
  store i32 1, ptr %i.bo, align 4, !tbaa !58
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %1615, ptr noundef nonnull align 8 dereferenceable(12) %1616, ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %bb.fzd unwind label %bb.gal

bb.fzd:                                           ; preds = %bb.fzc
end_hunk_0
begin_hunk_1_@_ZL19DOCTEST_ANON_FUNC_2v:bb.a
  %.pn4357.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi11313, %bb.fxt ], [ %.pn4357.pn.pn.pn, %.body8384 ], [ %.pn4357.pn.pn.pn.pn.ph, %.body10208.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1607) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1606) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1605) #29
  br label %bb.gae

bb.gae:                                           ; preds = %.body10208, %bb.fzw
  %.pn4357.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4357.pn.pn.pn.pn, %.body10208 ], [ %i.paf, %bb.fzw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1604) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1603) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1602) #29
  br label %bb.ghn

bb.gaf:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8396
  %i.par = landingpad { ptr, i32 }
          cleanup
  br label %bb.gaj

bb.gag:                                           ; preds = %bb.fyy, %bb.fyz
  %i.pas = landingpad { ptr, i32 }
          cleanup
  br label %bb.gai

bb.gah:                                           ; preds = %bb.fza
  %i.pat = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.onp) #29
  br label %bb.gai

bb.gai:                                           ; preds = %bb.gah, %bb.gag
  %.pn4364 = phi { ptr, i32 } [ %i.pat, %bb.gah ], [ %i.pas, %bb.gag ] ; 2 uses
  %i.pau = load ptr, ptr %1614, align 8, !tbaa !65 ; 2 uses
  %i.pav = icmp eq ptr %i.pau, %i.onn
  br i1 %i.pav, label %.body10236, label %.body10236.sink.split

.body10236.sink.split:                            ; preds = %bb.gai, %bb.fyx
  %.sink15192 = phi ptr [ %i.oxl, %bb.fyx ], [ %i.pau, %bb.gai ]
  %.pn4364.pn.ph = phi { ptr, i32 } [ %lpad.phi11318, %bb.fyx ], [ %.pn4364, %bb.gai ]
  %i.paw = load i64, ptr %i.onn, align 8, !tbaa !46
  %i.pax = add i64 %i.paw, 1
  call void @_ZdlPvm(ptr noundef %.sink15192, i64 noundef %i.pax) #33
  br label %.body10236

.body10236:                                       ; preds = %.body10236.sink.split, %bb.gai, %bb.fyx
  %.pn4364.pn = phi { ptr, i32 } [ %lpad.phi11318, %bb.fyx ], [ %.pn4364, %bb.gai ], [ %.pn4364.pn.ph, %.body10236.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1614) #29
  br label %bb.gaj

bb.gaj:                                           ; preds = %.body10236, %bb.gaf
  %.pn4364.pn.pn = phi { ptr, i32 } [ %.pn4364.pn, %.body10236 ], [ %i.par, %bb.gaf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1613) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1612) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1611) #29
  br label %bb.gat

bb.gak:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8405
  %i.pay = landingpad { ptr, i32 }
          cleanup
  br label %bb.gao

bb.gal:                                           ; preds = %bb.fzc
  %i.paz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gan

bb.gam:                                           ; preds = %bb.fzd
  %i.pba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.onr) #29
  br label %bb.gan

bb.gan:                                           ; preds = %bb.gam, %bb.gal
  %.pn4368 = phi { ptr, i32 } [ %i.pba, %bb.gam ], [ %i.paz, %bb.gal ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #29
  br label %bb.gao

bb.gao:                                           ; preds = %bb.gan, %bb.gak
  %.pn4368.pn.pn = phi { ptr, i32 } [ %i.pay, %bb.gak ], [ %.pn4368, %bb.gan ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1617) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1616) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1615) #29
  br label %bb.gat

bb.gap:                                           ; preds = %bb.fze
  %i.pbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gas

bb.gaq:                                           ; preds = %bb.fzf
  %i.pbc = landingpad { ptr, i32 }
          cleanup
  br label %.body8421

bb.gar:                                           ; preds = %bb.fzg
  %i.pbd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.onx) #29
  br label %.body8421

.body8421:                                        ; preds = %bb.gaq, %bb.gar
  %.pn4372 = phi { ptr, i32 } [ %i.pbd, %bb.gar ], [ %i.pbc, %bb.gaq ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1621) #29
  %.pre12494 = load ptr, ptr %1622, align 8, !tbaa !65 ; 2 uses
  %i.pbe = getelementptr inbounds nuw i8, ptr %1622, i64 16 ; 2 uses
  %i.pbf = icmp eq ptr %.pre12494, %i.pbe
  br i1 %i.pbf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8467, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8465

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8465: ; preds = %.body8421
  %i.pbg = load i64, ptr %i.pbe, align 8, !tbaa !46
  %i.pbh = add i64 %i.pbg, 1
  call void @_ZdlPvm(ptr noundef %.pre12494, i64 noundef %i.pbh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8467

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8467: ; preds = %.body8421, %.body8421.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8465
  %.pn4372.pn15152 = phi { ptr, i32 } [ %.pn4372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8465 ], [ %i.oyk, %.body8421.thread ], [ %.pn4372, %.body8421 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1622) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1621) #29
  br label %bb.gas

bb.gas:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8467, %bb.gap
  %.pn4372.pn.pn.pn = phi { ptr, i32 } [ %.pn4372.pn15152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8467 ], [ %i.pbb, %bb.gap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1620) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1619) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1618) #29
  br label %bb.gat

bb.gat:                                           ; preds = %bb.gas, %bb.gao, %bb.gaj
  %.pn4372.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4372.pn.pn.pn, %bb.gas ], [ %.pn4368.pn.pn, %bb.gao ], [ %.pn4364.pn.pn, %bb.gaj ]
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN12_GLOBAL__N_114SaxEventLoggerE, i64 16), ptr %1610, align 8, !tbaa !53
  %i.pbi = load ptr, ptr %i.onm, align 8, !tbaa !57 ; 3 uses
  %i.pbj = load ptr, ptr %i.onq, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i8468 = icmp eq ptr %i.pbi, %i.pbj
  br i1 %.not4.i.i.i.i8468, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i8476, label %.lr.ph.i.i.i.i8469

.lr.ph.i.i.i.i8469:                               ; preds = %bb.gat, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i8472
  %.05.i.i.i.i8470 = phi ptr [ %i.pbp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i8472 ], [ %i.pbi, %bb.gat ] ; 3 uses
  %i.pbk = load ptr, ptr %.05.i.i.i.i8470, align 8, !tbaa !65 ; 2 uses
  %i.pbl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8470, i64 16 ; 2 uses
  %i.pbm = icmp eq ptr %i.pbk, %i.pbl
  br i1 %i.pbm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i8472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8471

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8471: ; preds = %.lr.ph.i.i.i.i8469
  %i.pbn = load i64, ptr %i.pbl, align 8, !tbaa !46
  %i.pbo = add i64 %i.pbn, 1
  call void @_ZdlPvm(ptr noundef %i.pbk, i64 noundef %i.pbo) #33, !inline_history !68
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i8472

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i8472: ; preds = %.lr.ph.i.i.i.i8469, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8471
  %i.pbp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8470, i64 32 ; 2 uses
  %.not.i.i.i.i8473 = icmp eq ptr %i.pbp, %i.pbj
  br i1 %.not.i.i.i.i8473, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i8474, label %.lr.ph.i.i.i.i8469, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i8474: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i8472
  %.pr.i.i8475 = load ptr, ptr %i.onm, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i8476

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i8476: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i8474, %bb.gat
  %i.pbq = phi ptr [ %.pr.i.i8475, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i8474 ], [ %i.pbi, %bb.gat ] ; 3 uses
  %.not.i.i1.i.i8477 = icmp eq ptr %i.pbq, null
  br i1 %.not.i.i1.i.i8477, label %_ZN12_GLOBAL__N_114SaxEventLoggerD2Ev.exit8479, label %bb.gau

bb.gau:                                           ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i8476
  %i.pbr = load ptr, ptr %i.ony, align 8, !tbaa !66
  %i.pbs = ptrtoint ptr %i.pbr to i64
  %i.pbt = ptrtoint ptr %i.pbq to i64
  %i.pbu = sub i64 %i.pbs, %i.pbt
  call void @_ZdlPvm(ptr noundef nonnull %i.pbq, i64 noundef %i.pbu) #33, !inline_history !68
  br label %_ZN12_GLOBAL__N_114SaxEventLoggerD2Ev.exit8479

_ZN12_GLOBAL__N_114SaxEventLoggerD2Ev.exit8479:   ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i8476, %bb.gau
  call void @llvm.lifetime.end.p0(ptr nonnull %1610) #29
  br label %bb.ghn

bb.gav:                                           ; preds = %bb.fwd
  call void @llvm.lifetime.start.p0(ptr nonnull %1623) #29
  store i8 0, ptr %1623, align 8, !tbaa !50
  store ptr null, ptr %i.oka, align 8, !tbaa !46
  %i.pbv = invoke noundef ptr @_ZN7doctest17getContextOptionsEv()
          to label %bb.gaw unwind label %bb.gbu

bb.gaw:                                           ; preds = %bb.gav
  %i.pbw = getelementptr inbounds nuw i8, ptr %i.pbv, i64 114
  %i.pbx = load i8, ptr %i.pbw, align 2, !tbaa !827, !range !82, !noundef !83
  %i.pby = trunc nuw i8 %i.pbx to i1
  br i1 %i.pby, label %bb.gcq, label %bb.gax

bb.gax:                                           ; preds = %bb.gaw
  call void @llvm.lifetime.start.p0(ptr nonnull %1624) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1625) #29
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1625, ptr noundef nonnull @.str)
          to label %bb.gay unwind label %bb.gbv

bb.gay:                                           ; preds = %bb.gax
  invoke void @_ZN7doctest6detail13ResultBuilderC1ENS_10assertType4EnumEPKciS5_S5_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %1624, i32 noundef 34, ptr noundef nonnull @.str.2, i32 noundef 1004, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(24) %1625)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10581 unwind label %bb.gbw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10581: ; preds = %bb.gay
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1625) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1625) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1627) #29
  %i.pbz = load ptr, ptr %1594, align 8, !tbaa !65, !noalias !942 ; 5 uses
  %i.pca = load i64, ptr %i.ojz, align 8, !tbaa !64, !noalias !942 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  store ptr %i.okb, ptr %1627, align 8, !tbaa !61, !alias.scope !943
  store i64 0, ptr %i.okc, align 8, !tbaa !64, !alias.scope !943
  store i8 0, ptr %i.okb, align 8, !tbaa !46, !alias.scope !943
  %i.pcb = add i64 %i.pca, 4                      ; 3 uses
  %.not.i10573 = icmp ugt i64 %i.pcb, 15
  br i1 %.not.i10573, label %bb.gaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10585

bb.gaz:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10581
  %i.pcc = icmp slt i64 %i.pcb, 0
  br i1 %i.pcc, label %.invoke15169, label %bb.gba

.invoke15169:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10532, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10585, %bb.gbg, %bb.gaz
  %i.pcd = phi ptr [ @.str.278, %bb.gaz ], [ @.str.279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10585 ], [ @.str.279, %bb.gbg ], [ @.str.278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10532 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.pcd) #35
          to label %.cont15170 unwind label %bb.gbo

.cont15170:                                       ; preds = %.invoke15169
  unreachable

bb.gba:                                           ; preds = %bb.gaz
  %.0.i10575 = call i64 @llvm.umax.i64(i64 %i.pcb, i64 30) ; 4 uses
  %i.pce = add nuw i64 %.0.i10575, 1              ; 2 uses
  %i.pcf = icmp slt i64 %i.pce, 0
  br i1 %i.pcf, label %.invoke15167, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10576, !prof !117

.invoke15167:                                     ; preds = %bb.gbl, %bb.gbd, %bb.gba
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.cont15168 unwind label %bb.gbo

.cont15168:                                       ; preds = %.invoke15167
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10576: ; preds = %bb.gba
  %i.pcg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pce) #32
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10247.thread unwind label %bb.gbo ; 4 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10247.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10576
  store i8 0, ptr %i.pcg, align 1, !tbaa !46
  store ptr %i.pcg, ptr %1627, align 8, !tbaa !65
  store i64 %.0.i10575, ptr %i.okb, align 8, !tbaa !46
  %.not.i.i.i1025011243 = icmp ugt i64 %i.pca, %.0.i10575
  br i1 %.not.i.i.i1025011243, label %bb.gbd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10585: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10581
  %i.pch = icmp slt i64 %i.pca, 0
  br i1 %i.pch, label %.invoke15169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10585, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10247.thread
  %i.pci = phi ptr [ %i.pcg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10247.thread ], [ %i.okb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10585 ] ; 5 uses
  switch i64 %i.pca, label %bb.gbc [
    i64 0, label %bb.gbg
    i64 1, label %bb.gbb
  ]

bb.gbb:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10249
  %i.pcj = load i8, ptr %i.pbz, align 1, !tbaa !46, !noalias !943
  store i8 %i.pcj, ptr %i.pci, align 1, !tbaa !46
  br label %bb.gbg

bb.gbc:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10249
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pci, ptr align 1 %i.pbz, i64 %i.pca, i1 false)
  br label %bb.gbg

bb.gbd:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10247.thread
  %i.pck = shl nuw i64 %.0.i10575, 1              ; 2 uses
  %i.pcl = icmp ult i64 %i.pca, %i.pck
  %spec.store.select.i.i10565 = call i64 @llvm.umin.i64(i64 %i.pck, i64 9223372036854775807)
  %.0.i10553 = select i1 %i.pcl, i64 %spec.store.select.i.i10565, i64 %i.pca ; 2 uses
  %i.pcm = add nuw i64 %.0.i10553, 1              ; 2 uses
  %i.pcn = icmp slt i64 %i.pcm, 0
  br i1 %i.pcn, label %.invoke15167, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10554, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10554: ; preds = %bb.gbd
  %i.pco = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pcm) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10555 unwind label %bb.gbo ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10555: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10554
  %.not = icmp eq ptr %i.pbz, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10570, label %bb.gbe

bb.gbe:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10555
  %cond.i10564 = icmp eq i64 %i.pca, 1
  br i1 %cond.i10564, label %1735, label %bb.gbf

1735:                                             ; preds = %bb.gbe
  %1736 = load i8, ptr %i.pbz, align 1, !tbaa !46
  store i8 %1736, ptr %i.pco, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10570

bb.gbf:                                           ; preds = %bb.gbe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pco, ptr nonnull align 1 %i.pbz, i64 %i.pca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10570: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10555, %1735, %bb.gbf
  %i.pcp = load i64, ptr %i.okb, align 8, !tbaa !46
  %i.pcq = add i64 %i.pcp, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.pcg, i64 noundef %i.pcq) #33
  store ptr %i.pco, ptr %1627, align 8, !tbaa !65
  store i64 %.0.i10553, ptr %i.okb, align 8, !tbaa !46
  br label %bb.gbg

bb.gbg:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10570, %bb.gbc, %bb.gbb
  %i.pcr = phi ptr [ %i.pco, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10570 ], [ %i.pci, %bb.gbc ], [ %i.pci, %bb.gbb ], [ %i.pci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10249 ]
  store i64 %i.pca, ptr %i.okc, align 8, !tbaa !64, !alias.scope !943
  %i.pcs = getelementptr inbounds nuw i8, ptr %i.pcr, i64 %i.pca
  store i8 0, ptr %i.pcs, align 1, !tbaa !46
  %i.pct = load i64, ptr %i.okc, align 8, !tbaa !64, !alias.scope !943 ; 10 uses
  %i.pcu = and i64 %i.pct, -4
  %i.pcv = icmp eq i64 %i.pcu, 9223372036854775804
  br i1 %i.pcv, label %.invoke15169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10253: ; preds = %bb.gbg
  %i.pcw = add nsw i64 %i.pct, 4                  ; 7 uses
  %i.pcx = load ptr, ptr %1627, align 8, !tbaa !65, !alias.scope !943 ; 5 uses
  %i.pcy = icmp eq ptr %i.pcx, %i.okb             ; 2 uses
  br i1 %i.pcy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10253
  %i.pcz = icmp ult i64 %i.pct, 16
  call void @llvm.assume(i1 %i.pcz)
  %.not.i.i13.i10256 = icmp samesign ugt i64 %i.pct, 11
  br i1 %.not.i.i13.i10256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10532, label %bb.gbh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10253
  %i.pda = load i64, ptr %i.okb, align 8, !tbaa !46, !alias.scope !943 ; 2 uses
  %.not.i.i13.i1025611245 = icmp ugt i64 %i.pcw, %i.pda
  br i1 %.not.i.i13.i1025611245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10532, label %bb.gbh

bb.gbh:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255
  %i.pdb = getelementptr inbounds nuw i8, ptr %i.pcx, i64 %i.pct
  store i32 1819047278, ptr %i.pdb, align 1
  %.pre12479 = load ptr, ptr %1627, align 8, !tbaa !65, !alias.scope !943
  br label %bb.gbp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10532: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255
  %i.pdc = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255 ], [ %i.pda, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10255.thread ] ; 2 uses
  %i.pdd = icmp slt i64 %i.pct, -4
  br i1 %i.pdd, label %.invoke15169, label %bb.gbi

bb.gbi:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10532
  %i.pde = icmp ugt i64 %i.pcw, %i.pdc
  br i1 %i.pde, label %bb.gbj, label %bb.gbl

bb.gbj:                                           ; preds = %bb.gbi
  %i.pdf = shl nuw i64 %i.pdc, 1                  ; 2 uses
  %i.pdg = icmp ult i64 %i.pcw, %i.pdf
  br i1 %i.pdg, label %bb.gbk, label %bb.gbl

bb.gbk:                                           ; preds = %bb.gbj
  %spec.store.select.i.i10545 = call i64 @llvm.umin.i64(i64 %i.pdf, i64 9223372036854775807)
  br label %bb.gbl

bb.gbl:                                           ; preds = %bb.gbk, %bb.gbj, %bb.gbi
  %.0.i10533 = phi i64 [ %spec.store.select.i.i10545, %bb.gbk ], [ %i.pcw, %bb.gbj ], [ %i.pcw, %bb.gbi ] ; 2 uses
  %i.pdh = add nuw i64 %.0.i10533, 1              ; 2 uses
  %i.pdi = icmp slt i64 %i.pdh, 0
  br i1 %i.pdi, label %.invoke15167, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10534, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10534: ; preds = %bb.gbl
  %i.pdj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pdh) #32
          to label %.noexc10549 unwind label %bb.gbo ; 5 uses

.noexc10549:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10534
  switch i64 %i.pct, label %bb.gbn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10535
    i64 1, label %bb.gbm
  ]

bb.gbm:                                           ; preds = %.noexc10549
  %i.pdk = load i8, ptr %i.pcx, align 1, !tbaa !46
  store i8 %i.pdk, ptr %i.pdj, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10535

bb.gbn:                                           ; preds = %.noexc10549
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pdj, ptr align 1 %i.pcx, i64 %i.pct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10535: ; preds = %bb.gbn, %bb.gbm, %.noexc10549
  %i.pdl = getelementptr inbounds nuw i8, ptr %i.pdj, i64 %i.pct
  store i32 1819047278, ptr %i.pdl, align 1
  br i1 %i.pcy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10543: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10535
  %i.pdm = icmp ult i64 %i.pct, 16
  call void @llvm.assume(i1 %i.pdm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10550

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10535
  %i.pdn = load i64, ptr %i.okb, align 8, !tbaa !46
  %i.pdo = add i64 %i.pdn, 1
  call void @_ZdlPvm(ptr noundef %i.pcx, i64 noundef %i.pdo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10550: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10543, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10541
  store ptr %i.pdj, ptr %1627, align 8, !tbaa !65
  store i64 %.0.i10533, ptr %i.okb, align 8, !tbaa !46
  br label %bb.gbp

bb.gbo:                                           ; preds = %.invoke15169, %.invoke15167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10576, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10534
  %i.pdp = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE
          catch ptr null                          ; 2 uses
  %i.pdq = load ptr, ptr %1627, align 8, !tbaa !65, !alias.scope !943 ; 2 uses
  %i.pdr = icmp eq ptr %i.pdq, %i.okb
  br i1 %i.pdr, label %.body10263, label %.body10263.sink.split

bb.gbp:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10550, %bb.gbh
  %i.pds = phi ptr [ %i.pdj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10550 ], [ %.pre12479, %bb.gbh ]
  store i64 %i.pcw, ptr %i.okc, align 8, !tbaa !64, !alias.scope !943
  %i.pdt = getelementptr inbounds nuw i8, ptr %i.pds, i64 %i.pcw
  store i8 0, ptr %i.pdt, align 1, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1628, i8 0, i64 32, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5parseIS9_EESD_OT_St8functionIFbiNS0_6detail13parse_event_tERSD_EEbb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %1626, ptr noundef nonnull align 8 dereferenceable(32) %1627, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %1628, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.gbq unwind label %bb.gby

bb.gbq:                                           ; preds = %bb.gbp
  %i.pdu = load i8, ptr %1623, align 8, !tbaa !73 ; 2 uses
  %i.pdv = load i8, ptr %1626, align 8, !tbaa !73
  store i8 %i.pdv, ptr %1623, align 8, !tbaa !73
  store i8 %i.pdu, ptr %1626, align 8, !tbaa !73
  %.sroa.0.0.copyload.i.i8482 = load ptr, ptr %i.oka, align 8, !tbaa !46
  %i.pdw = load i64, ptr %i.oke, align 8, !tbaa !46
  store i64 %i.pdw, ptr %i.oka, align 8, !tbaa !46
  store ptr %.sroa.0.0.copyload.i.i8482, ptr %i.oke, align 8, !tbaa !46
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.oke, i8 noundef zeroext %i.pdu) #31
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8483 unwind label %bb.gbr, !inline_history !51

bb.gbr:                                           ; preds = %bb.gbq
  %i.pdx = landingpad { ptr, i32 }
          catch ptr null
  %i.pdy = extractvalue { ptr, i32 } %i.pdx, 0
  call void @__clang_call_terminate(ptr %i.pdy) #30, !inline_history !51
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8483: ; preds = %bb.gbq
  %i.pdz = load ptr, ptr %i.okd, align 8, !tbaa !38 ; 2 uses
  %.not.i8484 = icmp eq ptr %i.pdz, null
  br i1 %.not.i8484, label %_ZNSt14_Function_baseD2Ev.exit8485, label %bb.gbs

bb.gbs:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8483
  %i.pea = invoke noundef zeroext i1 %i.pdz(ptr noundef nonnull align 8 dereferenceable(32) %1628, ptr noundef nonnull align 8 dereferenceable(32) %1628, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8485 unwind label %bb.gbt ; 0 uses

bb.gbt:                                           ; preds = %bb.gbs
  %i.peb = landingpad { ptr, i32 }
          catch ptr null
  %i.pec = extractvalue { ptr, i32 } %i.peb, 0
  call void @__clang_call_terminate(ptr %i.pec) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit8485:               ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8483, %bb.gbs
  %i.ped = load ptr, ptr %1627, align 8, !tbaa !65 ; 2 uses
  %i.pee = icmp eq ptr %i.ped, %i.okb
  br i1 %i.pee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8486: ; preds = %_ZNSt14_Function_baseD2Ev.exit8485
  %i.pef = load i64, ptr %i.okb, align 8, !tbaa !46
  %i.peg = add i64 %i.pef, 1
  call void @_ZdlPvm(ptr noundef %i.ped, i64 noundef %i.peg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8488

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8488: ; preds = %_ZNSt14_Function_baseD2Ev.exit8485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8486
  call void @llvm.lifetime.end.p0(ptr nonnull %1627) #29
  br label %bb.gcd

bb.gbu:                                           ; preds = %bb.gcq, %bb.gav
  %i.peh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ghe

bb.gbv:                                           ; preds = %bb.gax
  %i.pei = landingpad { ptr, i32 }
          cleanup
  br label %bb.gbx

bb.gbw:                                           ; preds = %bb.gay
  %i.pej = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1625) #29
  br label %bb.gbx

bb.gbx:                                           ; preds = %bb.gbw, %bb.gbv
  %.pn4305 = phi { ptr, i32 } [ %i.pej, %bb.gbw ], [ %i.pei, %bb.gbv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1625) #29
  br label %bb.gcp

bb.gby:                                           ; preds = %bb.gbp
  %i.pek = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE
          catch ptr null                          ; 2 uses
  %i.pel = load ptr, ptr %i.okd, align 8, !tbaa !38 ; 2 uses
  %.not.i8489 = icmp eq ptr %i.pel, null
  br i1 %.not.i8489, label %_ZNSt14_Function_baseD2Ev.exit8490, label %bb.gbz

bb.gbz:                                           ; preds = %bb.gby
  %i.pem = invoke noundef zeroext i1 %i.pel(ptr noundef nonnull align 8 dereferenceable(32) %1628, ptr noundef nonnull align 8 dereferenceable(32) %1628, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8490 unwind label %bb.gca ; 0 uses

bb.gca:                                           ; preds = %bb.gbz
  %i.pen = landingpad { ptr, i32 }
          catch ptr null
  %i.peo = extractvalue { ptr, i32 } %i.pen, 0
  call void @__clang_call_terminate(ptr %i.peo) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit8490:               ; preds = %bb.gby, %bb.gbz
  %i.pep = load ptr, ptr %1627, align 8, !tbaa !65 ; 2 uses
  %i.peq = icmp eq ptr %i.pep, %i.okb
  br i1 %i.peq, label %.body10263, label %.body10263.sink.split

.body10263.sink.split:                            ; preds = %_ZNSt14_Function_baseD2Ev.exit8490, %bb.gbo
  %.sink15195 = phi ptr [ %i.pdq, %bb.gbo ], [ %i.pep, %_ZNSt14_Function_baseD2Ev.exit8490 ]
  %.pn4307.ph = phi { ptr, i32 } [ %i.pdp, %bb.gbo ], [ %i.pek, %_ZNSt14_Function_baseD2Ev.exit8490 ]
  %i.per = load i64, ptr %i.okb, align 8, !tbaa !46
  %i.pes = add i64 %i.per, 1
  call void @_ZdlPvm(ptr noundef %.sink15195, i64 noundef %i.pes) #33
  br label %.body10263

.body10263:                                       ; preds = %.body10263.sink.split, %_ZNSt14_Function_baseD2Ev.exit8490, %bb.gbo
  %.pn4307 = phi { ptr, i32 } [ %i.pdp, %bb.gbo ], [ %i.pek, %_ZNSt14_Function_baseD2Ev.exit8490 ], [ %.pn4307.ph, %.body10263.sink.split ] ; 2 uses
  %.1152 = extractvalue { ptr, i32 } %.pn4307, 0
  %.11522279 = extractvalue { ptr, i32 } %.pn4307, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1627) #29
  %i.pet = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE) #29
  %i.peu = icmp eq i32 %.11522279, %i.pet
  %i.pev = call ptr @__cxa_begin_catch(ptr %.1152) #29 ; 0 uses
  br i1 %i.peu, label %bb.gcb, label %bb.gcg

bb.gcb:                                           ; preds = %.body10263
  invoke void @_ZN7doctest6detail13ResultBuilder18translateExceptionEv(ptr noundef nonnull align 8 dereferenceable(144) %1624)
          to label %bb.gcc unwind label %bb.gck

bb.gcc:                                           ; preds = %bb.gcb
  store i8 1, ptr %i.okf, align 8, !tbaa !832
  invoke void @__cxa_end_catch()
          to label %bb.gcd unwind label %bb.gcl

bb.gcd:                                           ; preds = %bb.gcc, %bb.gch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8488
  %i.pew = invoke noundef zeroext i1 @_ZN7doctest6detail13ResultBuilder3logEv(ptr noundef nonnull align 8 dereferenceable(144) %1624)
          to label %bb.gce unwind label %bb.gcj

bb.gce:                                           ; preds = %bb.gcd
  br i1 %i.pew, label %bb.gcf, label %bb.gcm

bb.gcf:                                           ; preds = %bb.gce
  call void asm sideeffect "int $$3\0A", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !944
  br label %bb.gcm

bb.gcg:                                           ; preds = %.body10263
  invoke void @_ZN7doctest6detail13ResultBuilder18translateExceptionEv(ptr noundef nonnull align 8 dereferenceable(144) %1624)
          to label %bb.gch unwind label %bb.gci

bb.gch:                                           ; preds = %bb.gcg
  invoke void @__cxa_end_catch()
          to label %bb.gcd unwind label %bb.gcj

bb.gci:                                           ; preds = %bb.gcg
  %i.pex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gco unwind label %bb.hpl

bb.gcj:                                           ; preds = %bb.gcm, %bb.gch, %bb.gcd
  %i.pey = landingpad { ptr, i32 }
          cleanup
  br label %bb.gco

bb.gck:                                           ; preds = %bb.gcb
  %i.pez = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gco unwind label %bb.hpl

bb.gcl:                                           ; preds = %bb.gcc
  %i.pfa = landingpad { ptr, i32 }
          cleanup
  br label %bb.gco

bb.gcm:                                           ; preds = %bb.gcf, %bb.gce
  invoke void @_ZNK7doctest6detail13ResultBuilder5reactEv(ptr noundef nonnull align 8 dereferenceable(144) %1624)
          to label %bb.gcn unwind label %bb.gcj

bb.gcn:                                           ; preds = %bb.gcm
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %i.okg) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.okh) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oki) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1624) #29
  br label %bb.gcq

bb.gco:                                           ; preds = %bb.gcl, %bb.gck, %bb.gci, %bb.gcj
  %.pn4311 = phi { ptr, i32 } [ %i.pey, %bb.gcj ], [ %i.pex, %bb.gci ], [ %i.pfa, %bb.gcl ], [ %i.pez, %bb.gck ]
  call void @_ZN7doctest10AssertDataD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %1624) #29
  br label %bb.gcp

bb.gcp:                                           ; preds = %bb.gco, %bb.gbx
  %.pn4311.pn = phi { ptr, i32 } [ %.pn4311, %bb.gco ], [ %.pn4305, %bb.gbx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1624) #29
  br label %bb.ghe

bb.gcq:                                           ; preds = %bb.gcn, %bb.gaw
  %i.pfb = invoke noundef ptr @_ZN7doctest17getContextOptionsEv()
          to label %bb.gcr unwind label %bb.gbu

bb.gcr:                                           ; preds = %bb.gcq
  %i.pfc = getelementptr inbounds nuw i8, ptr %i.pfb, i64 114
  %i.pfd = load i8, ptr %i.pfc, align 2, !tbaa !827, !range !82, !noundef !83
  %i.pfe = trunc nuw i8 %i.pfd to i1
  br i1 %i.pfe, label %bb.gep, label %bb.gcs

bb.gcs:                                           ; preds = %bb.gcr
  call void @llvm.lifetime.start.p0(ptr nonnull %1629) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1630) #29
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1630, ptr noundef nonnull @.str)
          to label %bb.gct unwind label %bb.gdu

bb.gct:                                           ; preds = %bb.gcs
  invoke void @_ZN7doctest6detail13ResultBuilderC1ENS_10assertType4EnumEPKciS5_S5_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %1629, i32 noundef 34, ptr noundef nonnull @.str.2, i32 noundef 1005, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(24) %1630)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10636 unwind label %bb.gdv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10636: ; preds = %bb.gct
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1630) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1630) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1632) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1633) #29
  %i.pff = load ptr, ptr %1594, align 8, !tbaa !65, !noalias !945 ; 5 uses
  %i.pfg = load i64, ptr %i.ojz, align 8, !tbaa !64, !noalias !945 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  store ptr %i.okj, ptr %1633, align 8, !tbaa !61, !alias.scope !946
  store i64 0, ptr %i.okk, align 8, !tbaa !64, !alias.scope !946
  store i8 0, ptr %i.okj, align 8, !tbaa !46, !alias.scope !946
  %i.pfh = add i64 %i.pfg, 4                      ; 3 uses
  %.not.i10628 = icmp ugt i64 %i.pfh, 15
  br i1 %.not.i10628, label %bb.gcu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10640

bb.gcu:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10636
  %i.pfi = icmp slt i64 %i.pfh, 0
  br i1 %i.pfi, label %.invoke15173, label %bb.gcv

.invoke15173:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10587, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10640, %bb.gdb, %bb.gcu
  %i.pfj = phi ptr [ @.str.278, %bb.gcu ], [ @.str.279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10640 ], [ @.str.279, %bb.gdb ], [ @.str.278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10587 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.pfj) #35
          to label %.cont15174 unwind label %bb.gdj

.cont15174:                                       ; preds = %.invoke15173
  unreachable

bb.gcv:                                           ; preds = %bb.gcu
  %.0.i10630 = call i64 @llvm.umax.i64(i64 %i.pfh, i64 30) ; 4 uses
  %i.pfk = add nuw i64 %.0.i10630, 1              ; 2 uses
  %i.pfl = icmp slt i64 %i.pfk, 0
  br i1 %i.pfl, label %.invoke15171, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10631, !prof !117

.invoke15171:                                     ; preds = %bb.gdg, %bb.gcy, %bb.gcv
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.cont15172 unwind label %bb.gdj

.cont15172:                                       ; preds = %.invoke15171
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10631: ; preds = %bb.gcv
  %i.pfm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pfk) #32
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10269.thread unwind label %bb.gdj ; 4 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10269.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10631
  store i8 0, ptr %i.pfm, align 1, !tbaa !46
  store ptr %i.pfm, ptr %1633, align 8, !tbaa !65
  store i64 %.0.i10630, ptr %i.okj, align 8, !tbaa !46
  %.not.i.i.i1027211247 = icmp ugt i64 %i.pfg, %.0.i10630
  br i1 %.not.i.i.i1027211247, label %bb.gcy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10640: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10636
  %i.pfn = icmp slt i64 %i.pfg, 0
  br i1 %i.pfn, label %.invoke15173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10640, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10269.thread
  %i.pfo = phi ptr [ %i.pfm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10269.thread ], [ %i.okj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10640 ] ; 5 uses
  switch i64 %i.pfg, label %bb.gcx [
    i64 0, label %bb.gdb
    i64 1, label %bb.gcw
  ]

bb.gcw:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10271
  %i.pfp = load i8, ptr %i.pff, align 1, !tbaa !46, !noalias !946
  store i8 %i.pfp, ptr %i.pfo, align 1, !tbaa !46
  br label %bb.gdb

bb.gcx:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10271
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pfo, ptr align 1 %i.pff, i64 %i.pfg, i1 false)
  br label %bb.gdb

bb.gcy:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10269.thread
  %i.pfq = shl nuw i64 %.0.i10630, 1              ; 2 uses
  %i.pfr = icmp ult i64 %i.pfg, %i.pfq
  %spec.store.select.i.i10620 = call i64 @llvm.umin.i64(i64 %i.pfq, i64 9223372036854775807)
  %.0.i10608 = select i1 %i.pfr, i64 %spec.store.select.i.i10620, i64 %i.pfg ; 2 uses
  %i.pfs = add nuw i64 %.0.i10608, 1              ; 2 uses
  %i.pft = icmp slt i64 %i.pfs, 0
  br i1 %i.pft, label %.invoke15171, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10609, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10609: ; preds = %bb.gcy
  %i.pfu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pfs) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10610 unwind label %bb.gdj ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10610: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10609
  %.not15177 = icmp eq ptr %i.pff, null
  br i1 %.not15177, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10625, label %bb.gcz

bb.gcz:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10610
  %cond.i10619 = icmp eq i64 %i.pfg, 1
  br i1 %cond.i10619, label %1737, label %bb.gda

1737:                                             ; preds = %bb.gcz
  %1738 = load i8, ptr %i.pff, align 1, !tbaa !46
  store i8 %1738, ptr %i.pfu, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10625

bb.gda:                                           ; preds = %bb.gcz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pfu, ptr nonnull align 1 %i.pff, i64 %i.pfg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10625

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10625: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10610, %1737, %bb.gda
  %i.pfv = load i64, ptr %i.okj, align 8, !tbaa !46
  %i.pfw = add i64 %i.pfv, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.pfm, i64 noundef %i.pfw) #33
  store ptr %i.pfu, ptr %1633, align 8, !tbaa !65
  store i64 %.0.i10608, ptr %i.okj, align 8, !tbaa !46
  br label %bb.gdb

bb.gdb:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10625, %bb.gcx, %bb.gcw
  %i.pfx = phi ptr [ %i.pfu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10625 ], [ %i.pfo, %bb.gcx ], [ %i.pfo, %bb.gcw ], [ %i.pfo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10271 ]
  store i64 %i.pfg, ptr %i.okk, align 8, !tbaa !64, !alias.scope !946
  %i.pfy = getelementptr inbounds nuw i8, ptr %i.pfx, i64 %i.pfg
  store i8 0, ptr %i.pfy, align 1, !tbaa !46
  %i.pfz = load i64, ptr %i.okk, align 8, !tbaa !64, !alias.scope !946 ; 10 uses
  %i.pga = and i64 %i.pfz, -4
  %i.pgb = icmp eq i64 %i.pga, 9223372036854775804
  br i1 %i.pgb, label %.invoke15173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10275: ; preds = %bb.gdb
  %i.pgc = add nsw i64 %i.pfz, 4                  ; 7 uses
  %i.pgd = load ptr, ptr %1633, align 8, !tbaa !65, !alias.scope !946 ; 5 uses
  %i.pge = icmp eq ptr %i.pgd, %i.okj             ; 2 uses
  br i1 %i.pge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10275
  %i.pgf = icmp ult i64 %i.pfz, 16
  call void @llvm.assume(i1 %i.pgf)
  %.not.i.i13.i10278 = icmp samesign ugt i64 %i.pfz, 11
  br i1 %.not.i.i13.i10278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10587, label %bb.gdc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10275
  %i.pgg = load i64, ptr %i.okj, align 8, !tbaa !46, !alias.scope !946 ; 2 uses
  %.not.i.i13.i1027811249 = icmp ugt i64 %i.pgc, %i.pgg
  br i1 %.not.i.i13.i1027811249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10587, label %bb.gdc

bb.gdc:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277
  %i.pgh = getelementptr inbounds nuw i8, ptr %i.pgd, i64 %i.pfz
  store i32 1819047278, ptr %i.pgh, align 1
  %.pre12480 = load ptr, ptr %1633, align 8, !tbaa !65, !alias.scope !946
  br label %bb.gdk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10587: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277
  %i.pgi = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277 ], [ %i.pgg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10277.thread ] ; 2 uses
  %i.pgj = icmp slt i64 %i.pfz, -4
  br i1 %i.pgj, label %.invoke15173, label %bb.gdd

bb.gdd:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10587
  %i.pgk = icmp ugt i64 %i.pgc, %i.pgi
  br i1 %i.pgk, label %bb.gde, label %bb.gdg

bb.gde:                                           ; preds = %bb.gdd
  %i.pgl = shl nuw i64 %i.pgi, 1                  ; 2 uses
  %i.pgm = icmp ult i64 %i.pgc, %i.pgl
  br i1 %i.pgm, label %bb.gdf, label %bb.gdg

bb.gdf:                                           ; preds = %bb.gde
  %spec.store.select.i.i10600 = call i64 @llvm.umin.i64(i64 %i.pgl, i64 9223372036854775807)
  br label %bb.gdg

bb.gdg:                                           ; preds = %bb.gdf, %bb.gde, %bb.gdd
  %.0.i10588 = phi i64 [ %spec.store.select.i.i10600, %bb.gdf ], [ %i.pgc, %bb.gde ], [ %i.pgc, %bb.gdd ] ; 2 uses
  %i.pgn = add nuw i64 %.0.i10588, 1              ; 2 uses
  %i.pgo = icmp slt i64 %i.pgn, 0
  br i1 %i.pgo, label %.invoke15171, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10589, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10589: ; preds = %bb.gdg
  %i.pgp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pgn) #32
          to label %.noexc10604 unwind label %bb.gdj ; 5 uses

.noexc10604:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10589
  switch i64 %i.pfz, label %bb.gdi [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10590
    i64 1, label %bb.gdh
  ]

bb.gdh:                                           ; preds = %.noexc10604
  %i.pgq = load i8, ptr %i.pgd, align 1, !tbaa !46
  store i8 %i.pgq, ptr %i.pgp, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10590

bb.gdi:                                           ; preds = %.noexc10604
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pgp, ptr align 1 %i.pgd, i64 %i.pfz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10590: ; preds = %bb.gdi, %bb.gdh, %.noexc10604
  %i.pgr = getelementptr inbounds nuw i8, ptr %i.pgp, i64 %i.pfz
  store i32 1819047278, ptr %i.pgr, align 1
  br i1 %i.pge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10598: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10590
  %i.pgs = icmp ult i64 %i.pfz, 16
  call void @llvm.assume(i1 %i.pgs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10605

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10596: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10590
  %i.pgt = load i64, ptr %i.okj, align 8, !tbaa !46
  %i.pgu = add i64 %i.pgt, 1
  call void @_ZdlPvm(ptr noundef %i.pgd, i64 noundef %i.pgu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10605

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10605: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10598, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10596
  store ptr %i.pgp, ptr %1633, align 8, !tbaa !65
  store i64 %.0.i10588, ptr %i.okj, align 8, !tbaa !46
  br label %bb.gdk

bb.gdj:                                           ; preds = %.invoke15173, %.invoke15171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10631, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10609, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10589
  %i.pgv = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE
          catch ptr null                          ; 2 uses
  %i.pgw = load ptr, ptr %1633, align 8, !tbaa !65, !alias.scope !946 ; 2 uses
  %i.pgx = icmp eq ptr %i.pgw, %i.okj
  br i1 %i.pgx, label %.body10285, label %.body10285.sink.split

bb.gdk:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10605, %bb.gdc
  %i.pgy = phi ptr [ %i.pgp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10605 ], [ %.pre12480, %bb.gdc ]
  store i64 %i.pgc, ptr %i.okk, align 8, !tbaa !64, !alias.scope !946
  %i.pgz = getelementptr inbounds nuw i8, ptr %i.pgy, i64 %i.pgc
  store i8 0, ptr %i.pgz, align 1, !tbaa !46
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.okl) #29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.okl, align 8, !tbaa !53
  store ptr null, ptr %i.okm, align 8, !tbaa !935
  store i8 0, ptr %i.okn, align 8, !tbaa !178
  store i8 0, ptr %i.oko, align 1, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.okp, i8 0, i64 32, i1 false)
  store ptr %i.okq, ptr %1632, align 8, !tbaa !53
  %i.pha = load i64, ptr %i.oks, align 8
  %i.phb = getelementptr inbounds i8, ptr %1632, i64 %i.pha
  store ptr %i.okr, ptr %i.phb, align 8, !tbaa !53
  store i64 0, ptr %i.okt, align 8, !tbaa !823
  %i.phc = load ptr, ptr %1632, align 8, !tbaa !53
  %i.phd = getelementptr i8, ptr %i.phc, i64 -24
  %i.phe = load i64, ptr %i.phd, align 8
  %i.phf = getelementptr inbounds i8, ptr %1632, i64 %i.phe
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.phf, ptr noundef null)
          to label %_ZNSiC2Ev.exit.i8497 unwind label %bb.gdn

_ZNSiC2Ev.exit.i8497:                             ; preds = %bb.gdk
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %1632, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.okl, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.oku, align 8, !tbaa !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.okv, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.okw) #29
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.oku, align 8, !tbaa !53
  store ptr %i.okz, ptr %i.oky, align 8, !tbaa !61
  %i.phg = load ptr, ptr %1633, align 8, !tbaa !65 ; 3 uses
  %i.phh = icmp eq ptr %i.phg, %i.okj
  br i1 %i.phh, label %bb.gdl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10288

bb.gdl:                                           ; preds = %_ZNSiC2Ev.exit.i8497
  %i.phi = load i64, ptr %i.okk, align 8, !tbaa !64 ; 3 uses
  %i.phj = icmp ult i64 %i.phi, 16
  call void @llvm.assume(i1 %i.phj)
  %i.phk = add nuw nsw i64 %i.phi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.okz, ptr noundef nonnull align 8 dereferenceable(1) %i.okj, i64 %i.phk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i10289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10288: ; preds = %_ZNSiC2Ev.exit.i8497
  store ptr %i.phg, ptr %i.oky, align 8, !tbaa !65
  %i.phl = load i64, ptr %i.okj, align 8, !tbaa !46
  store i64 %i.phl, ptr %i.okz, align 8, !tbaa !46
  %.pre12481 = load i64, ptr %i.okk, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i10289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i10289: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10288, %bb.gdl
  %i.phm = phi ptr [ %i.phg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10288 ], [ %i.okz, %bb.gdl ]
  %i.phn = phi i64 [ %.pre12481, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10288 ], [ %i.phi, %bb.gdl ]
  store i64 %i.phn, ptr %i.ola, align 8, !tbaa !64
  store ptr %i.okj, ptr %1633, align 8, !tbaa !65
  store i64 0, ptr %i.okk, align 8, !tbaa !64
  store i8 0, ptr %i.okj, align 8, !tbaa !46
  store i32 8, ptr %i.okx, align 8, !tbaa !938
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.oku, ptr noundef %i.phm, i64 noundef 0, i64 noundef 0)
          to label %_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit10295 unwind label %bb.gdm

bb.gdm:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i10289
  %i.pho = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE
          catch ptr null
  %i.php = load ptr, ptr %i.oky, align 8, !tbaa !65 ; 2 uses
  %i.phq = icmp eq ptr %i.php, %i.okz
  br i1 %i.phq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10290: ; preds = %bb.gdm
  %i.phr = load i64, ptr %i.okz, align 8, !tbaa !46
  %i.phs = add i64 %i.phr, 1
  call void @_ZdlPvm(ptr noundef %i.php, i64 noundef %i.phs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10291: ; preds = %bb.gdm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10290
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.oku, align 8, !tbaa !53
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.okw) #29
  br label %.body10293

_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit10295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i10289
  %i.pht = load ptr, ptr %1632, align 8, !tbaa !53
  %i.phu = getelementptr i8, ptr %i.pht, i64 -24
  %i.phv = load i64, ptr %i.phu, align 8
  %i.phw = getelementptr inbounds i8, ptr %1632, i64 %i.phv
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.phw, ptr noundef nonnull %i.oku)
          to label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit8501 unwind label %bb.gdo

end_hunk_1
begin_hunk_2_@_ZL19DOCTEST_ANON_FUNC_2v:bb.a
  br i1 %.not.i8504, label %_ZNSt14_Function_baseD2Ev.exit8505, label %bb.gds

bb.gds:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8503
  %i.pih = invoke noundef zeroext i1 %i.pig(ptr noundef nonnull align 8 dereferenceable(32) %1634, ptr noundef nonnull align 8 dereferenceable(32) %1634, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8505 unwind label %bb.gdt ; 0 uses

bb.gdt:                                           ; preds = %bb.gds
  %i.pii = landingpad { ptr, i32 }
          catch ptr null
  %i.pij = extractvalue { ptr, i32 } %i.pii, 0
  call void @__clang_call_terminate(ptr %i.pij) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit8505:               ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8503, %bb.gds
  store ptr %i.old, ptr %1632, align 8, !tbaa !53
  %i.pik = load i64, ptr %i.olf, align 8
  %i.pil = getelementptr inbounds i8, ptr %1632, i64 %i.pik
  store ptr %i.ole, ptr %i.pil, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.oku, align 8, !tbaa !53
  %i.pim = load ptr, ptr %i.oky, align 8, !tbaa !65 ; 2 uses
  %i.pin = icmp eq ptr %i.pim, %i.okz
  br i1 %i.pin, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8508, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8506

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8506: ; preds = %_ZNSt14_Function_baseD2Ev.exit8505
  %i.pio = load i64, ptr %i.okz, align 8, !tbaa !46
  %i.pip = add i64 %i.pio, 1
  call void @_ZdlPvm(ptr noundef %i.pim, i64 noundef %i.pip) #33
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8508

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8508: ; preds = %_ZNSt14_Function_baseD2Ev.exit8505, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8506
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.oku, align 8, !tbaa !53
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.okw) #29
  store ptr %i.okq, ptr %1632, align 8, !tbaa !53
  %i.piq = load i64, ptr %i.oks, align 8
  %i.pir = getelementptr inbounds i8, ptr %1632, i64 %i.piq
  store ptr %i.okr, ptr %i.pir, align 8, !tbaa !53
  store i64 0, ptr %i.okt, align 8, !tbaa !823
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.okl) #29
  %i.pis = load ptr, ptr %1633, align 8, !tbaa !65 ; 2 uses
  %i.pit = icmp eq ptr %i.pis, %i.okj
  br i1 %i.pit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8509: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8508
  %i.piu = load i64, ptr %i.okj, align 8, !tbaa !46
  %i.piv = add i64 %i.piu, 1
  call void @_ZdlPvm(ptr noundef %i.pis, i64 noundef %i.piv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8511: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit8508, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8509
  call void @llvm.lifetime.end.p0(ptr nonnull %1633) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1632) #29
  br label %bb.gec

bb.gdu:                                           ; preds = %bb.gcs
  %i.piw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gdw

bb.gdv:                                           ; preds = %bb.gct
  %i.pix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1630) #29
  br label %bb.gdw

bb.gdw:                                           ; preds = %bb.gdv, %bb.gdu
  %.pn4314 = phi { ptr, i32 } [ %i.pix, %bb.gdv ], [ %i.piw, %bb.gdu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1630) #29
  br label %bb.geo

bb.gdx:                                           ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode.exit8501
  %i.piy = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE
          catch ptr null
  %i.piz = load ptr, ptr %i.olb, align 8, !tbaa !38 ; 2 uses
  %.not.i8512 = icmp eq ptr %i.piz, null
  br i1 %.not.i8512, label %_ZNSt14_Function_baseD2Ev.exit8513, label %bb.gdy

bb.gdy:                                           ; preds = %bb.gdx
  %i.pja = invoke noundef zeroext i1 %i.piz(ptr noundef nonnull align 8 dereferenceable(32) %1634, ptr noundef nonnull align 8 dereferenceable(32) %1634, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8513 unwind label %bb.gdz ; 0 uses

bb.gdz:                                           ; preds = %bb.gdy
  %i.pjb = landingpad { ptr, i32 }
          catch ptr null
  %i.pjc = extractvalue { ptr, i32 } %i.pjb, 0
  call void @__clang_call_terminate(ptr %i.pjc) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit8513:               ; preds = %bb.gdx, %bb.gdy
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %1632) #29
  br label %.body8499

.body8499:                                        ; preds = %bb.gdp, %_ZNSt14_Function_baseD2Ev.exit8513
  %.pn4316 = phi { ptr, i32 } [ %i.piy, %_ZNSt14_Function_baseD2Ev.exit8513 ], [ %.pn.pn.i8496, %bb.gdp ] ; 2 uses
  %i.pjd = load ptr, ptr %1633, align 8, !tbaa !65 ; 2 uses
  %i.pje = icmp eq ptr %i.pjd, %i.okj
  br i1 %i.pje, label %.body10285, label %.body10285.sink.split

.body10285.sink.split:                            ; preds = %.body8499, %bb.gdj
  %.sink15198 = phi ptr [ %i.pgw, %bb.gdj ], [ %i.pjd, %.body8499 ]
  %.pn4316.pn.ph = phi { ptr, i32 } [ %i.pgv, %bb.gdj ], [ %.pn4316, %.body8499 ]
  %i.pjf = load i64, ptr %i.okj, align 8, !tbaa !46
  %i.pjg = add i64 %i.pjf, 1
  call void @_ZdlPvm(ptr noundef %.sink15198, i64 noundef %i.pjg) #33
  br label %.body10285

.body10285:                                       ; preds = %.body10285.sink.split, %.body8499, %bb.gdj
  %.pn4316.pn = phi { ptr, i32 } [ %i.pgv, %bb.gdj ], [ %.pn4316, %.body8499 ], [ %.pn4316.pn.ph, %.body10285.sink.split ] ; 2 uses
  %.1158 = extractvalue { ptr, i32 } %.pn4316.pn, 0
  %.11582285 = extractvalue { ptr, i32 } %.pn4316.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1633) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1632) #29
  %i.pjh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE) #29
  %i.pji = icmp eq i32 %.11582285, %i.pjh
  %i.pjj = call ptr @__cxa_begin_catch(ptr %.1158) #29 ; 0 uses
  br i1 %i.pji, label %bb.gea, label %bb.gef

bb.gea:                                           ; preds = %.body10285
  invoke void @_ZN7doctest6detail13ResultBuilder18translateExceptionEv(ptr noundef nonnull align 8 dereferenceable(144) %1629)
          to label %bb.geb unwind label %bb.gej

bb.geb:                                           ; preds = %bb.gea
  store i8 1, ptr %i.olg, align 8, !tbaa !832
  invoke void @__cxa_end_catch()
          to label %bb.gec unwind label %bb.gek

bb.gec:                                           ; preds = %bb.geb, %bb.geg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8511
  %i.pjk = invoke noundef zeroext i1 @_ZN7doctest6detail13ResultBuilder3logEv(ptr noundef nonnull align 8 dereferenceable(144) %1629)
          to label %bb.ged unwind label %bb.gei

bb.ged:                                           ; preds = %bb.gec
  br i1 %i.pjk, label %bb.gee, label %bb.gel

bb.gee:                                           ; preds = %bb.ged
  call void asm sideeffect "int $$3\0A", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !947
  br label %bb.gel

bb.gef:                                           ; preds = %.body10285
  invoke void @_ZN7doctest6detail13ResultBuilder18translateExceptionEv(ptr noundef nonnull align 8 dereferenceable(144) %1629)
          to label %bb.geg unwind label %bb.geh

bb.geg:                                           ; preds = %bb.gef
  invoke void @__cxa_end_catch()
          to label %bb.gec unwind label %bb.gei

bb.geh:                                           ; preds = %bb.gef
  %i.pjl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gen unwind label %bb.hpl

bb.gei:                                           ; preds = %bb.gel, %bb.geg, %bb.gec
  %i.pjm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gen

bb.gej:                                           ; preds = %bb.gea
  %i.pjn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gen unwind label %bb.hpl

bb.gek:                                           ; preds = %bb.geb
  %i.pjo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gen

bb.gel:                                           ; preds = %bb.gee, %bb.ged
  invoke void @_ZNK7doctest6detail13ResultBuilder5reactEv(ptr noundef nonnull align 8 dereferenceable(144) %1629)
          to label %bb.gem unwind label %bb.gei

bb.gem:                                           ; preds = %bb.gel
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %i.olh) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oli) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.olj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1629) #29
  br label %bb.gep

bb.gen:                                           ; preds = %bb.gek, %bb.gej, %bb.geh, %bb.gei
  %.pn4321 = phi { ptr, i32 } [ %i.pjm, %bb.gei ], [ %i.pjl, %bb.geh ], [ %i.pjo, %bb.gek ], [ %i.pjn, %bb.gej ]
  call void @_ZN7doctest10AssertDataD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %1629) #29
  br label %bb.geo

bb.geo:                                           ; preds = %bb.gen, %bb.gdw
  %.pn4321.pn = phi { ptr, i32 } [ %.pn4321, %bb.gen ], [ %.pn4314, %bb.gdw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1629) #29
  br label %bb.ghe

bb.gep:                                           ; preds = %bb.gcr, %bb.gem
  call void @llvm.lifetime.start.p0(ptr nonnull %1635) #29
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN12_GLOBAL__N_114SaxEventLoggerE, i64 16), ptr %1635, align 8, !tbaa !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.olk, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1636) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1637) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1638) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %1638, i32 noundef 10)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10691 unwind label %bb.gfs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10691: ; preds = %bb.gep
  call void @llvm.lifetime.start.p0(ptr nonnull %1639) #29
  %i.pjp = load ptr, ptr %1594, align 8, !tbaa !65, !noalias !948 ; 5 uses
  %i.pjq = load i64, ptr %i.ojz, align 8, !tbaa !64, !noalias !948 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  store ptr %i.oll, ptr %1639, align 8, !tbaa !61, !alias.scope !949
  store i64 0, ptr %i.olm, align 8, !tbaa !64, !alias.scope !949
  store i8 0, ptr %i.oll, align 8, !tbaa !46, !alias.scope !949
  %i.pjr = add i64 %i.pjq, 4                      ; 3 uses
  %.not.i10683 = icmp ugt i64 %i.pjr, 15
  br i1 %.not.i10683, label %bb.geq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10695

bb.geq:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10691
  %i.pjs = icmp slt i64 %i.pjr, 0
  br i1 %i.pjs, label %.invoke.i10312.invoke, label %bb.ger

bb.ger:                                           ; preds = %bb.geq
  %.0.i10685 = call i64 @llvm.umax.i64(i64 %i.pjr, i64 30) ; 4 uses
  %i.pjt = add nuw i64 %.0.i10685, 1              ; 2 uses
  %i.pju = icmp slt i64 %i.pjt, 0
  br i1 %i.pju, label %.invoke15175, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10686, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10686: ; preds = %bb.ger
  %i.pjv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pjt) #32
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10299.thread unwind label %.loopexit11299 ; 5 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10299.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10686
  store i8 0, ptr %i.pjv, align 1, !tbaa !46
  store ptr %i.pjv, ptr %1639, align 8, !tbaa !65
  store i64 %.0.i10685, ptr %i.oll, align 8, !tbaa !46
  %.not.i.i.i1030211251 = icmp ugt i64 %i.pjq, %.0.i10685
  br i1 %.not.i.i.i1030211251, label %bb.geu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10695: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10691
  %i.pjw = icmp slt i64 %i.pjq, 0
  br i1 %i.pjw, label %.invoke.i10312.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10695, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10299.thread
  %i.pjx = phi ptr [ %i.pjv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10299.thread ], [ %i.oll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10695 ] ; 5 uses
  switch i64 %i.pjq, label %bb.get [
    i64 0, label %bb.gex
    i64 1, label %bb.ges
  ]

bb.ges:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10301
  %i.pjy = load i8, ptr %i.pjp, align 1, !tbaa !46, !noalias !949
  store i8 %i.pjy, ptr %i.pjx, align 1, !tbaa !46
  br label %bb.gex

bb.get:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10301
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pjx, ptr align 1 %i.pjp, i64 %i.pjq, i1 false)
  br label %bb.gex

bb.geu:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i10299.thread
  %i.pjz = shl nuw i64 %.0.i10685, 1              ; 2 uses
  %i.pka = icmp ult i64 %i.pjq, %i.pjz
  %spec.store.select.i.i10675 = call i64 @llvm.umin.i64(i64 %i.pjz, i64 9223372036854775807)
  %.0.i10663 = select i1 %i.pka, i64 %spec.store.select.i.i10675, i64 %i.pjq ; 2 uses
  %i.pkb = add nuw i64 %.0.i10663, 1              ; 2 uses
  %i.pkc = icmp slt i64 %i.pkb, 0
  br i1 %i.pkc, label %.invoke15175, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10664, !prof !117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10664: ; preds = %bb.geu
  %i.pkd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pkb) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10665 unwind label %.loopexit11299 ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10665: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10664
  %.not15178 = icmp eq ptr %i.pjp, null
  br i1 %.not15178, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10680, label %bb.gev

bb.gev:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10665
  %cond.i10674 = icmp eq i64 %i.pjq, 1
  br i1 %cond.i10674, label %1739, label %bb.gew

1739:                                             ; preds = %bb.gev
  %1740 = load i8, ptr %i.pjp, align 1, !tbaa !46
  store i8 %1740, ptr %i.pkd, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10680

bb.gew:                                           ; preds = %bb.gev
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pkd, ptr nonnull align 1 %i.pjp, i64 %i.pjq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10680: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10665, %1739, %bb.gew
  %i.pke = load i64, ptr %i.oll, align 8, !tbaa !46
  %i.pkf = add i64 %i.pke, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.pjv, i64 noundef %i.pkf) #33
  store ptr %i.pkd, ptr %1639, align 8, !tbaa !65
  store i64 %.0.i10663, ptr %i.oll, align 8, !tbaa !46
  br label %bb.gex

bb.gex:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10680, %bb.get, %bb.ges
  %i.pkg = phi ptr [ %i.pkd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10680 ], [ %i.pjx, %bb.get ], [ %i.pjx, %bb.ges ], [ %i.pjx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10301 ]
  store i64 %i.pjq, ptr %i.olm, align 8, !tbaa !64, !alias.scope !949
  %i.pkh = getelementptr inbounds nuw i8, ptr %i.pkg, i64 %i.pjq
  store i8 0, ptr %i.pkh, align 1, !tbaa !46
  %i.pki = load i64, ptr %i.olm, align 8, !tbaa !64, !alias.scope !949 ; 10 uses
  %i.pkj = and i64 %i.pki, -4
  %i.pkk = icmp eq i64 %i.pkj, 9223372036854775804
  br i1 %i.pkk, label %.invoke.i10312.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10305

.invoke.i10312.invoke:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10695, %bb.gex, %bb.geq
  %i.pkl = phi ptr [ @.str.278, %bb.geq ], [ @.str.279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit10695 ], [ @.str.279, %bb.gex ], [ @.str.278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10642 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.pkl) #35
          to label %.invoke.i10312.cont unwind label %.loopexit.split-lp11300

.invoke.i10312.cont:                              ; preds = %.invoke.i10312.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10305: ; preds = %bb.gex
  %i.pkm = add nsw i64 %i.pki, 4                  ; 7 uses
  %i.pkn = load ptr, ptr %1639, align 8, !tbaa !65, !alias.scope !949 ; 6 uses
  %i.pko = icmp eq ptr %i.pkn, %i.oll             ; 2 uses
  br i1 %i.pko, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10305
  %i.pkp = icmp ult i64 %i.pki, 16
  call void @llvm.assume(i1 %i.pkp)
  %.not.i.i13.i10308 = icmp samesign ugt i64 %i.pki, 11
  br i1 %.not.i.i13.i10308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10642, label %bb.gey

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i10305
  %i.pkq = load i64, ptr %i.oll, align 8, !tbaa !46, !alias.scope !949 ; 2 uses
  %.not.i.i13.i1030811253 = icmp ugt i64 %i.pkm, %i.pkq
  br i1 %.not.i.i13.i1030811253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10642, label %bb.gey

bb.gey:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307
  %i.pkr = getelementptr inbounds nuw i8, ptr %i.pkn, i64 %i.pki
  store i32 1819047278, ptr %i.pkr, align 1
  %.pre12482 = load ptr, ptr %1639, align 8, !tbaa !65, !alias.scope !949
  br label %bb.gfg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10642: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307
  %i.pks = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307 ], [ %i.pkq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i10307.thread ] ; 2 uses
  %i.pkt = icmp slt i64 %i.pki, -4
  br i1 %i.pkt, label %.invoke.i10312.invoke, label %bb.gez

bb.gez:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10642
  %i.pku = icmp ugt i64 %i.pkm, %i.pks
  br i1 %i.pku, label %bb.gfa, label %bb.gfc

bb.gfa:                                           ; preds = %bb.gez
  %i.pkv = shl nuw i64 %i.pks, 1                  ; 2 uses
  %i.pkw = icmp ult i64 %i.pkm, %i.pkv
  br i1 %i.pkw, label %bb.gfb, label %bb.gfc

bb.gfb:                                           ; preds = %bb.gfa
  %spec.store.select.i.i10655 = call i64 @llvm.umin.i64(i64 %i.pkv, i64 9223372036854775807)
  br label %bb.gfc

bb.gfc:                                           ; preds = %bb.gfb, %bb.gfa, %bb.gez
  %.0.i10643 = phi i64 [ %spec.store.select.i.i10655, %bb.gfb ], [ %i.pkm, %bb.gfa ], [ %i.pkm, %bb.gez ] ; 2 uses
  %i.pkx = add nuw i64 %.0.i10643, 1              ; 2 uses
  %i.pky = icmp slt i64 %i.pkx, 0
  br i1 %i.pky, label %.invoke15175, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10644, !prof !117

.invoke15175:                                     ; preds = %bb.gfc, %bb.geu, %bb.ger
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.cont15176 unwind label %.loopexit.split-lp11300

.cont15176:                                       ; preds = %.invoke15175
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10644: ; preds = %bb.gfc
  %i.pkz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pkx) #32
          to label %.noexc10659 unwind label %.loopexit11299 ; 5 uses

.noexc10659:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10644
  switch i64 %i.pki, label %bb.gfe [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10645
    i64 1, label %bb.gfd
  ]

bb.gfd:                                           ; preds = %.noexc10659
  %i.pla = load i8, ptr %i.pkn, align 1, !tbaa !46
  store i8 %i.pla, ptr %i.pkz, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10645

bb.gfe:                                           ; preds = %.noexc10659
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pkz, ptr align 1 %i.pkn, i64 %i.pki, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10645

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10645: ; preds = %bb.gfe, %bb.gfd, %.noexc10659
  %i.plb = getelementptr inbounds nuw i8, ptr %i.pkz, i64 %i.pki
  store i32 1819047278, ptr %i.plb, align 1
  br i1 %i.pko, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10653, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10651

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10653: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10645
  %i.plc = icmp ult i64 %i.pki, 16
  call void @llvm.assume(i1 %i.plc)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10660

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10651: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10645
  %i.pld = load i64, ptr %i.oll, align 8, !tbaa !46
  %i.ple = add i64 %i.pld, 1
  call void @_ZdlPvm(ptr noundef %i.pkn, i64 noundef %i.ple) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10660: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i10653, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i10651
  store ptr %i.pkz, ptr %1639, align 8, !tbaa !65
  store i64 %.0.i10643, ptr %i.oll, align 8, !tbaa !46
  br label %bb.gfg

.loopexit11299:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10644, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10686
  %i.plf = phi ptr [ %i.pkn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10644 ], [ %i.pjv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10664 ], [ %i.oll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i10686 ]
  %lpad.loopexit11301 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gff

.loopexit.split-lp11300:                          ; preds = %.invoke15175, %.invoke.i10312.invoke
  %lpad.loopexit.split-lp11302 = landingpad { ptr, i32 }
          cleanup
  %.pre12488 = load ptr, ptr %1639, align 8, !tbaa !65, !alias.scope !949
  br label %bb.gff

bb.gff:                                           ; preds = %.loopexit.split-lp11300, %.loopexit11299
  %i.plg = phi ptr [ %i.plf, %.loopexit11299 ], [ %.pre12488, %.loopexit.split-lp11300 ] ; 2 uses
  %lpad.phi11303 = phi { ptr, i32 } [ %lpad.loopexit11301, %.loopexit11299 ], [ %lpad.loopexit.split-lp11302, %.loopexit.split-lp11300 ] ; 2 uses
  %i.plh = icmp eq ptr %i.plg, %i.oll
  br i1 %i.plh, label %.body10315, label %.body10315.sink.split

bb.gfg:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10660, %bb.gey
  %i.pli = phi ptr [ %i.pkz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit10660 ], [ %.pre12482, %bb.gey ]
  store i64 %i.pkm, ptr %i.olm, align 8, !tbaa !64, !alias.scope !949
  %i.plj = getelementptr inbounds nuw i8, ptr %i.pli, i64 %i.pkm
  store i8 0, ptr %i.plj, align 1, !tbaa !46
  %.val4406 = load ptr, ptr %1639, align 8, !tbaa !65
  %.val4407 = load i64, ptr %i.olm, align 8, !tbaa !64
  %i.plk = invoke fastcc noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9sax_parseIS9_N12_GLOBAL__N_114SaxEventLoggerEEEbOT_PT0_NS0_6detail14input_format_tEbb(ptr %.val4406, i64 %.val4407, ptr noundef %1635)
          to label %bb.gfh unwind label %bb.gft

bb.gfh:                                           ; preds = %bb.gfg
  %i.pll = xor i1 %i.plk, true
  %i.plm = load i32, ptr %1638, align 4, !tbaa !41
  %.sroa.22.0.insert.ext.i8519 = zext i32 %i.plm to i64
  %.sroa.22.0.insert.shift.i8520 = shl nuw i64 %.sroa.22.0.insert.ext.i8519, 32
  %.sroa.0.0.insert.ext.i8521 = zext i1 %i.pll to i64
  %.sroa.0.0.insert.insert.i8522 = or disjoint i64 %.sroa.22.0.insert.shift.i8520, %.sroa.0.0.insert.ext.i8521
  store i64 %.sroa.0.0.insert.insert.i8522, ptr %1637, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %1636, ptr noundef nonnull align 4 dereferenceable(8) %1637)
          to label %bb.gfi unwind label %bb.gft

bb.gfi:                                           ; preds = %bb.gfh
  %i.pln = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 1008, ptr noundef nonnull @.str.190, ptr noundef nonnull align 8 dereferenceable(32) %1636)
          to label %bb.gfj unwind label %bb.gfu   ; 0 uses

bb.gfj:                                           ; preds = %bb.gfi
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oln) #29
  %i.plo = load ptr, ptr %1639, align 8, !tbaa !65 ; 2 uses
  %i.plp = icmp eq ptr %i.plo, %i.oll
  br i1 %i.plp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8525, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8523

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8523: ; preds = %bb.gfj
  %i.plq = load i64, ptr %i.oll, align 8, !tbaa !46
  %i.plr = add i64 %i.plq, 1
  call void @_ZdlPvm(ptr noundef %i.plo, i64 noundef %i.plr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8525

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8525: ; preds = %bb.gfj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8523
  call void @llvm.lifetime.end.p0(ptr nonnull %1639) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1638) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1637) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1636) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1640) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1641) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1642) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %1642, i32 noundef 10)
          to label %bb.gfk unwind label %bb.gfx

bb.gfk:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8525
  %i.pls = load ptr, ptr %i.olo, align 8, !tbaa !56
  %i.plt = load ptr, ptr %i.olk, align 8, !tbaa !57
  %i.plu = ptrtoint ptr %i.pls to i64
  %i.plv = ptrtoint ptr %i.plt to i64
  %i.plw = sub i64 %i.plu, %i.plv
  %i.plx = ashr exact i64 %i.plw, 5
  %i.ply = load i32, ptr %1642, align 4, !tbaa !41
  store i64 %i.plx, ptr %1641, align 8
  store i32 %i.ply, ptr %.sroa.2298.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp) #29
  store i32 1, ptr %i.bp, align 4, !tbaa !58
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %1640, ptr noundef nonnull align 8 dereferenceable(12) %1641, ptr noundef nonnull align 4 dereferenceable(4) %i.bp)
          to label %bb.gfl unwind label %bb.gfy

end_hunk_2
