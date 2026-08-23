Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/face_detection_mtcnn?download=true
inline.NumInlined: 6845
inline.NumDeleted: 3012
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 45
begin_hunk_0_@main:bb.a
  store i8 0, ptr %i.emh, align 1, !tbaa !17
  %i.emi = getelementptr inbounds nuw i8, ptr %165, i64 32 ; 3 uses
  %i.emj = getelementptr inbounds nuw i8, ptr %165, i64 48 ; 4 uses
  store ptr %i.emj, ptr %i.emi, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.emj, ptr noundef nonnull align 1 dereferenceable(5) @.str.20, i64 5, i1 false)
  %i.emk = getelementptr inbounds nuw i8, ptr %165, i64 40 ; 2 uses
  store i64 5, ptr %i.emk, align 8, !tbaa !18
  %i.eml = getelementptr inbounds nuw i8, ptr %165, i64 53
  store i8 0, ptr %i.eml, align 1, !tbaa !17
  %i.emm = getelementptr inbounds nuw i8, ptr %163, i64 128 ; 3 uses
  %i.emn = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i.i unwind label %bb.avc ; 9 uses

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.emo = getelementptr inbounds nuw i8, ptr %163, i64 120
  %i.emp = getelementptr inbounds nuw i8, ptr %163, i64 136
  store ptr %i.emn, ptr %i.emo, align 8, !tbaa !438
  %i.emq = getelementptr inbounds nuw i8, ptr %i.emn, i64 64
  store ptr %i.emq, ptr %i.emp, align 8, !tbaa !439
  %i.emr = getelementptr inbounds nuw i8, ptr %i.emn, i64 16 ; 2 uses
  store ptr %i.emr, ptr %i.emn, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.emr, ptr noundef nonnull align 1 dereferenceable(7) @.str.19, i64 7, i1 false)
  %i.ems = getelementptr inbounds nuw i8, ptr %i.emn, i64 8
  store i64 7, ptr %i.ems, align 8, !tbaa !18
  %i.emt = getelementptr inbounds nuw i8, ptr %i.emn, i64 23
  store i8 0, ptr %i.emt, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  %i.emu = getelementptr inbounds nuw i8, ptr %i.emn, i64 32 ; 5 uses
  store ptr %i.emu, ptr %i.emm, align 8, !tbaa !440
  %i.emv = getelementptr inbounds nuw i8, ptr %i.emn, i64 48 ; 3 uses
  store ptr %i.emv, ptr %i.emu, align 8, !tbaa !9
  %i.emw = load ptr, ptr %i.emi, align 8, !tbaa !15 ; 2 uses
  %i.emx = load i64, ptr %i.emk, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #35
  store i64 %i.emx, ptr %i.i, align 8, !tbaa !13
  %i.emy = icmp ugt i64 %i.emx, 15
  br i1 %i.emy, label %.noexc.i.i.i.i.i.i.i.i.1.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.1.i

.noexc.i.i.i.i.i.i.i.i.1.i:                       ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i.i
  %i.emz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.emu, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc1472 unwind label %bb.avc ; 2 uses

.noexc1472:                                       ; preds = %.noexc.i.i.i.i.i.i.i.i.1.i
  store ptr %i.emz, ptr %i.emu, align 8, !tbaa !15
  %i.ena = load i64, ptr %i.i, align 8, !tbaa !13
  store i64 %i.ena, ptr %i.emv, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.1.i

._crit_edge.i.i.i.i.i.i.i.i.i.1.i:                ; preds = %.noexc1472, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i.i
  %i.enb = phi ptr [ %i.emz, %.noexc1472 ], [ %i.emv, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.emx, label %bb.ask [
    i64 1, label %bb.asj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i
  ]

bb.asj:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.1.i
  %i.enc = load i8, ptr %i.emw, align 1, !tbaa !17
  store i8 %i.enc, ptr %i.enb, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i

bb.ask:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.enb, ptr align 1 %i.emw, i64 %i.emx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i: ; preds = %bb.ask, %bb.asj, %._crit_edge.i.i.i.i.i.i.i.i.i.1.i
  %i.end = load i64, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.ene = getelementptr inbounds nuw i8, ptr %i.emn, i64 40
  store i64 %i.end, ptr %i.ene, align 8, !tbaa !18
  %i.enf = load ptr, ptr %i.emu, align 8, !tbaa !15
  %i.eng = getelementptr inbounds nuw i8, ptr %i.enf, i64 %i.end
  store i8 0, ptr %i.eng, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  %i.enh = load ptr, ptr %i.emm, align 8, !tbaa !440
  %i.eni = getelementptr inbounds nuw i8, ptr %i.enh, i64 32
  store ptr %i.eni, ptr %i.emm, align 8, !tbaa !440
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #35
  %i.enj = getelementptr inbounds nuw i8, ptr %166, i64 16 ; 6 uses
  store ptr %i.enj, ptr %166, align 8, !tbaa !9
  store i32 1635017060, ptr %i.enj, align 8
  %i.enk = getelementptr inbounds nuw i8, ptr %166, i64 8 ; 2 uses
  store i64 4, ptr %i.enk, align 8, !tbaa !18
  %i.enl = getelementptr inbounds nuw i8, ptr %166, i64 20
  store i8 0, ptr %i.enl, align 4, !tbaa !17
  %i.enm = load ptr, ptr %i.ekw, align 8, !tbaa !438 ; 5 uses
  %i.enn = getelementptr inbounds nuw i8, ptr %163, i64 104 ; 5 uses
  %i.eno = load ptr, ptr %i.enn, align 8, !tbaa !440 ; 3 uses
  %.not.i.i.i1478 = icmp eq ptr %i.eno, %i.enm
  br i1 %.not.i.i.i1478, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1486, label %.lr.ph.i.i.i.i.i1479

.lr.ph.i.i.i.i.i1479:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1482
  %.05.i.i.i.i.i1480 = phi ptr [ %i.enu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1482 ], [ %i.enm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i ] ; 3 uses
  %i.enp = load ptr, ptr %.05.i.i.i.i.i1480, align 8, !tbaa !15 ; 2 uses
  %i.enq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i1480, i64 16 ; 2 uses
  %i.enr = icmp eq ptr %i.enp, %i.enq
  br i1 %i.enr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1481: ; preds = %.lr.ph.i.i.i.i.i1479
  %i.ens = load i64, ptr %i.enq, align 8, !tbaa !17
  %i.ent = add i64 %i.ens, 1
  call void @_ZdlPvm(ptr noundef %i.enp, i64 noundef %i.ent) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1482

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1482: ; preds = %.lr.ph.i.i.i.i.i1479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1481
  %i.enu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i1480, i64 32 ; 2 uses
  %.not.i.i.i.i.i1483 = icmp eq ptr %i.enu, %i.eno
  br i1 %.not.i.i.i.i.i1483, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1484, label %.lr.ph.i.i.i.i.i1479, !llvm.loop !441

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1484: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1482
  store ptr %i.enm, ptr %i.enn, align 8, !tbaa !440
  %.pre.i1485 = load ptr, ptr %i.ekw, align 8, !tbaa !438
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1486

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1486: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i
  %i.env = phi ptr [ %i.eno, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i ], [ %i.enm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1484 ] ; 4 uses
  %i.enw = phi ptr [ %i.enm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i ], [ %.pre.i1485, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1484 ] ; 5 uses
  %i.enx = getelementptr inbounds nuw i8, ptr %163, i64 112 ; 3 uses
  %i.eny = load ptr, ptr %i.enx, align 8, !tbaa !439 ; 2 uses
  %i.enz = icmp eq ptr %i.eny, %i.enw
  br i1 %i.enz, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1493, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1487

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1493: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1486
  %i.eoa = ptrtoint ptr %i.enw to i64
  %i.eob = ptrtoint ptr %i.env to i64
  %i.eoc = sub i64 %i.eob, %i.eoa
  %i.eod = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %.noexc1509 unwind label %bb.avd ; 4 uses

.noexc1509:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1493
  %.not10.i.i.i.i.i1494 = icmp eq ptr %i.enw, %i.env
  br i1 %.not10.i.i.i.i.i1494, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1505, label %.lr.ph.i.i.i.i5.i1495

.lr.ph.i.i.i.i5.i1495:                            ; preds = %.noexc1509, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1501
  %.012.i.i.i.i.i1496 = phi ptr [ %i.eor, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1501 ], [ %i.eod, %.noexc1509 ] ; 5 uses
  %.0911.i.i.i.i.i1497 = phi ptr [ %i.eoq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1501 ], [ %i.enw, %.noexc1509 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.eoe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1496, i64 16 ; 3 uses
  store ptr %i.eoe, ptr %.012.i.i.i.i.i1496, align 8, !tbaa !9, !alias.scope !442, !noalias !445
  %i.eof = load ptr, ptr %.0911.i.i.i.i.i1497, align 8, !tbaa !15, !alias.scope !445, !noalias !442 ; 2 uses
  %i.eog = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1497, i64 16 ; 5 uses
  %i.eoh = icmp eq ptr %i.eof, %i.eog
  br i1 %i.eoh, label %bb.asl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1498

bb.asl:                                           ; preds = %.lr.ph.i.i.i.i5.i1495
  %i.eoi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1497, i64 8
  %i.eoj = load i64, ptr %i.eoi, align 8, !tbaa !18, !alias.scope !445, !noalias !442 ; 3 uses
  %i.eok = icmp ult i64 %i.eoj, 16
  call void @llvm.assume(i1 %i.eok)
  %i.eol = add nuw nsw i64 %i.eoj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eoe, ptr noundef nonnull align 8 dereferenceable(1) %i.eog, i64 %i.eol, i1 false), !alias.scope !447
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1498: ; preds = %.lr.ph.i.i.i.i5.i1495
  store ptr %i.eof, ptr %.012.i.i.i.i.i1496, align 8, !tbaa !15, !alias.scope !442, !noalias !445
  %i.eom = load i64, ptr %i.eog, align 8, !tbaa !17, !alias.scope !445, !noalias !442
  store i64 %i.eom, ptr %i.eoe, align 8, !tbaa !17, !alias.scope !442, !noalias !445
  %.phi.trans.insert.i.i.i.i.i.i1499 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1497, i64 8
  %.pre.i.i.i.i.i.i1500 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i1499, align 8, !tbaa !18, !alias.scope !445, !noalias !442
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1501

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1501: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1498, %bb.asl
  %i.eon = phi i64 [ %i.eoj, %bb.asl ], [ %.pre.i.i.i.i.i.i1500, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1498 ]
  %i.eoo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1497, i64 8
  %i.eop = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1496, i64 8
  store i64 %i.eon, ptr %i.eop, align 8, !tbaa !18, !alias.scope !442, !noalias !445
  store ptr %i.eog, ptr %.0911.i.i.i.i.i1497, align 8, !tbaa !15, !alias.scope !445, !noalias !442
  store i64 0, ptr %i.eoo, align 8, !tbaa !18, !alias.scope !445, !noalias !442
  store i8 0, ptr %i.eog, align 8, !tbaa !17, !alias.scope !445, !noalias !442
  %i.eoq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1497, i64 32 ; 2 uses
  %i.eor = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1496, i64 32
  %.not.i.i.i.i6.i1502 = icmp eq ptr %i.eoq, %i.env
  br i1 %.not.i.i.i.i6.i1502, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1503, label %.lr.ph.i.i.i.i5.i1495, !llvm.loop !448

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1503: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1501
  %.pre.i.i1504 = load ptr, ptr %i.ekw, align 8, !tbaa !438
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1505

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1505: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1503, %.noexc1509
  %i.eos = phi ptr [ %.pre.i.i1504, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1503 ], [ %i.enw, %.noexc1509 ] ; 3 uses
  %.not.i8.i.i1506 = icmp eq ptr %i.eos, null
  br i1 %.not.i8.i.i1506, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1507, label %bb.asm

bb.asm:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1505
  %i.eot = load ptr, ptr %i.enx, align 8, !tbaa !439
  %i.eou = ptrtoint ptr %i.eot to i64
  %i.eov = ptrtoint ptr %i.eos to i64
  %i.eow = sub i64 %i.eou, %i.eov
  call void @_ZdlPvm(ptr noundef nonnull %i.eos, i64 noundef %i.eow) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1507

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1507: ; preds = %bb.asm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1505
  store ptr %i.eod, ptr %i.ekw, align 8, !tbaa !438
  %i.eox = getelementptr inbounds nuw i8, ptr %i.eod, i64 %i.eoc ; 2 uses
  store ptr %i.eox, ptr %i.enn, align 8, !tbaa !440
  %i.eoy = getelementptr inbounds nuw i8, ptr %i.eod, i64 32 ; 2 uses
  store ptr %i.eoy, ptr %i.enx, align 8, !tbaa !439
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1487

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1487: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1507, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1486
  %i.eoz = phi ptr [ %i.eny, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1486 ], [ %i.eoy, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1507 ]
  %i.epa = phi ptr [ %i.env, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1486 ], [ %i.eox, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1507 ] ; 8 uses
  %.not.i.i.i.i.i.i.i.i1488 = icmp eq ptr %i.epa, %i.eoz
  br i1 %.not.i.i.i.i.i.i.i.i1488, label %bb.asq, label %bb.asn

bb.asn:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1487
  %i.epb = getelementptr inbounds nuw i8, ptr %i.epa, i64 16 ; 3 uses
  store ptr %i.epb, ptr %i.epa, align 8, !tbaa !9
  %i.epc = load ptr, ptr %166, align 8, !tbaa !15 ; 2 uses
  %i.epd = load i64, ptr %i.enk, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #35
  store i64 %i.epd, ptr %i.h, align 8, !tbaa !13
  %i.epe = icmp ugt i64 %i.epd, 15
  br i1 %i.epe, label %.noexc.i.i.i.i.i.i.i.i.i1492, label %._crit_edge.i.i.i.i.i.i.i.i.i.i1489

.noexc.i.i.i.i.i.i.i.i.i1492:                     ; preds = %bb.asn
  %i.epf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.epa, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc1510 unwind label %bb.avd ; 2 uses

.noexc1510:                                       ; preds = %.noexc.i.i.i.i.i.i.i.i.i1492
  store ptr %i.epf, ptr %i.epa, align 8, !tbaa !15
  %i.epg = load i64, ptr %i.h, align 8, !tbaa !13
  store i64 %i.epg, ptr %i.epb, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i1489

._crit_edge.i.i.i.i.i.i.i.i.i.i1489:              ; preds = %.noexc1510, %bb.asn
  %i.eph = phi ptr [ %i.epf, %.noexc1510 ], [ %i.epb, %bb.asn ] ; 2 uses
  switch i64 %i.epd, label %bb.asp [
    i64 1, label %bb.aso
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1490
  ]

bb.aso:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i1489
  %i.epi = load i8, ptr %i.epc, align 1, !tbaa !17
  store i8 %i.epi, ptr %i.eph, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1490

bb.asp:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i1489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eph, ptr align 1 %i.epc, i64 %i.epd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1490

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1490: ; preds = %bb.asp, %bb.aso, %._crit_edge.i.i.i.i.i.i.i.i.i.i1489
  %i.epj = load i64, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %i.epk = getelementptr inbounds nuw i8, ptr %i.epa, i64 8
  store i64 %i.epj, ptr %i.epk, align 8, !tbaa !18
  %i.epl = load ptr, ptr %i.epa, align 8, !tbaa !15
  %i.epm = getelementptr inbounds nuw i8, ptr %i.epl, i64 %i.epj
  store i8 0, ptr %i.epm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #35
  %i.epn = load ptr, ptr %i.enn, align 8, !tbaa !440
  %i.epo = getelementptr inbounds nuw i8, ptr %i.epn, i64 32
  store ptr %i.epo, ptr %i.enn, align 8, !tbaa !440
  br label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit

bb.asq:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1487
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ekw, ptr %i.epa, ptr noundef nonnull align 8 dereferenceable(32) %166)
          to label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit unwind label %bb.avd

_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1490, %bb.asq
  invoke void @_ZN2cv4gapi2ie6detail9ParamDescC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(728) %162, ptr noundef nonnull align 8 dereferenceable(728) %163)
          to label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEEC2ERKS6_.exit unwind label %bb.avd

_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEEC2ERKS6_.exit: ; preds = %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit
  %i.epp = load ptr, ptr %166, align 8, !tbaa !15 ; 2 uses
  %i.epq = icmp eq ptr %i.epp, %i.enj
  br i1 %i.epq, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1513

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1513: ; preds = %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEEC2ERKS6_.exit
  %i.epr = load i64, ptr %i.enj, align 8, !tbaa !17
  %i.eps = add i64 %i.epr, 1
  call void @_ZdlPvm(ptr noundef %i.epp, i64 noundef %i.eps) #36
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit: ; preds = %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEEC2ERKS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1513
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #35
  %i.ept = load ptr, ptr %i.emi, align 8, !tbaa !15 ; 2 uses
  %i.epu = icmp eq ptr %i.ept, %i.emj
  br i1 %i.epu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1516: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit
  %i.epv = load i64, ptr %i.emj, align 8, !tbaa !17
  %i.epw = add i64 %i.epv, 1
  call void @_ZdlPvm(ptr noundef %i.ept, i64 noundef %i.epw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1517: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1516
  %i.epx = load ptr, ptr %165, align 8, !tbaa !15 ; 2 uses
  %i.epy = icmp eq ptr %i.epx, %i.emf
  br i1 %i.epy, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1517
  %i.epz = load i64, ptr %i.emf, align 8, !tbaa !17
  %i.eqa = add i64 %i.epz, 1
  call void @_ZdlPvm(ptr noundef %i.epx, i64 noundef %i.eqa) #36
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1517, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #35
  call void @_ZN2cv4gapi2ie6detail9ParamDescD2Ev(ptr noundef nonnull align 8 dead_on_return(728) dereferenceable(728) %163) #35
  %i.eqb = load ptr, ptr %164, align 8, !tbaa !15 ; 2 uses
  %i.eqc = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 2 uses
  %i.eqd = icmp eq ptr %i.eqb, %i.eqc
  br i1 %i.eqd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1519: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit
  %i.eqe = load i64, ptr %i.eqc, align 8, !tbaa !17
  %i.eqf = add i64 %i.eqe, 1
  call void @_ZdlPvm(ptr noundef %i.eqb, i64 noundef %i.eqf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1521: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1519
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #35
  invoke fastcc void @_ZN12_GLOBAL__N_112weights_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %169, ptr noundef nonnull align 8 dereferenceable(32) %71)
          to label %bb.asr unwind label %bb.ave

bb.asr:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1521
  %i.eqg = getelementptr inbounds nuw i8, ptr %168, i64 16 ; 5 uses
  store ptr %i.eqg, ptr %168, align 8, !tbaa !9
  %i.eqh = load ptr, ptr %71, align 8, !tbaa !15  ; 2 uses
  %i.eqi = load i64, ptr %i.dz, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #35
  store i64 %i.eqi, ptr %i.g, align 8, !tbaa !13
  %i.eqj = icmp ugt i64 %i.eqi, 15
  br i1 %i.eqj, label %.noexc.i.i1537, label %._crit_edge.i.i.i1522

.noexc.i.i1537:                                   ; preds = %bb.asr
  %i.eqk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(728) %168, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc1538 unwind label %bb.avf ; 2 uses

.noexc1538:                                       ; preds = %.noexc.i.i1537
  store ptr %i.eqk, ptr %168, align 8, !tbaa !15
  %i.eql = load i64, ptr %i.g, align 8, !tbaa !13
  store i64 %i.eql, ptr %i.eqg, align 8, !tbaa !17
  br label %._crit_edge.i.i.i1522

._crit_edge.i.i.i1522:                            ; preds = %.noexc1538, %bb.asr
  %i.eqm = phi ptr [ %i.eqk, %.noexc1538 ], [ %i.eqg, %bb.asr ] ; 2 uses
  switch i64 %i.eqi, label %bb.ast [
    i64 1, label %bb.ass
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i1523
  ]

bb.ass:                                           ; preds = %._crit_edge.i.i.i1522
  %i.eqn = load i8, ptr %i.eqh, align 1, !tbaa !17
  store i8 %i.eqn, ptr %i.eqm, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i1523

bb.ast:                                           ; preds = %._crit_edge.i.i.i1522
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eqm, ptr align 1 %i.eqh, i64 %i.eqi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i1523

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i1523: ; preds = %bb.ast, %bb.ass, %._crit_edge.i.i.i1522
  %i.eqo = load i64, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.eqp = getelementptr inbounds nuw i8, ptr %168, i64 8
  store i64 %i.eqo, ptr %i.eqp, align 8, !tbaa !18
  %i.eqq = load ptr, ptr %168, align 8, !tbaa !15
  %i.eqr = getelementptr inbounds nuw i8, ptr %i.eqq, i64 %i.eqo
  store i8 0, ptr %i.eqr, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  %i.eqs = getelementptr inbounds nuw i8, ptr %168, i64 32 ; 5 uses
  %i.eqt = getelementptr inbounds nuw i8, ptr %168, i64 48 ; 5 uses
  store ptr %i.eqt, ptr %i.eqs, align 8, !tbaa !9
  %i.equ = load ptr, ptr %169, align 8, !tbaa !15 ; 2 uses
  %i.eqv = getelementptr inbounds nuw i8, ptr %169, i64 8
  %i.eqw = load i64, ptr %i.eqv, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 %i.eqw, ptr %i.f, align 8, !tbaa !13
  %i.eqx = icmp ugt i64 %i.eqw, 15
  br i1 %i.eqx, label %.noexc.i8.i1535, label %._crit_edge.i.i7.i1524

.noexc.i8.i1535:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i1523
  %i.eqy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.eqs, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc.i1536 unwind label %bb.asz ; 2 uses

.noexc.i1536:                                     ; preds = %.noexc.i8.i1535
  store ptr %i.eqy, ptr %i.eqs, align 8, !tbaa !15
  %i.eqz = load i64, ptr %i.f, align 8, !tbaa !13
  store i64 %i.eqz, ptr %i.eqt, align 8, !tbaa !17
  br label %._crit_edge.i.i7.i1524

._crit_edge.i.i7.i1524:                           ; preds = %.noexc.i1536, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i1523
  %i.era = phi ptr [ %i.eqy, %.noexc.i1536 ], [ %i.eqt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i1523 ] ; 2 uses
  switch i64 %i.eqw, label %bb.asv [
    i64 1, label %bb.asu
    i64 0, label %bb.asw
  ]

bb.asu:                                           ; preds = %._crit_edge.i.i7.i1524
  %i.erb = load i8, ptr %i.equ, align 1, !tbaa !17
  store i8 %i.erb, ptr %i.era, align 1, !tbaa !17
  br label %bb.asw

bb.asv:                                           ; preds = %._crit_edge.i.i7.i1524
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.era, ptr align 1 %i.equ, i64 %i.eqw, i1 false)
  br label %bb.asw

bb.asw:                                           ; preds = %bb.asv, %bb.asu, %._crit_edge.i.i7.i1524
  %i.erc = load i64, ptr %i.f, align 8, !tbaa !13 ; 2 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  store i8 %i.eun, ptr %i.eum, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i1569

bb.atc:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.1.i1568
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eum, ptr align 1 %i.euh, i64 %i.eui, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i1569

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i1569: ; preds = %bb.atc, %bb.atb, %._crit_edge.i.i.i.i.i.i.i.i.i.1.i1568
  %i.euo = load i64, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.eup = getelementptr inbounds nuw i8, ptr %i.eua, i64 40
  store i64 %i.euo, ptr %i.eup, align 8, !tbaa !18
  %i.euq = load ptr, ptr %i.euf, align 8, !tbaa !15
  %i.eur = getelementptr inbounds nuw i8, ptr %i.euq, i64 %i.euo
  store i8 0, ptr %i.eur, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.eus = load ptr, ptr %i.ety, align 8, !tbaa !440 ; 3 uses
  %i.eut = getelementptr inbounds nuw i8, ptr %i.eus, i64 32 ; 7 uses
  store ptr %i.eut, ptr %i.ety, align 8, !tbaa !440
  %i.euu = load ptr, ptr %i.etz, align 8, !tbaa !439
  %.not.i.i.i.i.i.i.i.2.i = icmp eq ptr %i.eut, %i.euu
  br i1 %.not.i.i.i.i.i.i.i.2.i, label %bb.atg, label %bb.atd

bb.atd:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i1569
  %i.euv = getelementptr inbounds nuw i8, ptr %i.eus, i64 48 ; 3 uses
  store ptr %i.euv, ptr %i.eut, align 8, !tbaa !9
  %i.euw = load ptr, ptr %i.ett, align 8, !tbaa !15 ; 2 uses
  %i.eux = load i64, ptr %i.etv, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i64 %i.eux, ptr %i.d, align 8, !tbaa !13
  %i.euy = icmp ugt i64 %i.eux, 15
  br i1 %i.euy, label %.noexc.i.i.i.i.i.i.i.i.2.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.2.i

.noexc.i.i.i.i.i.i.i.i.2.i:                       ; preds = %bb.atd
  %i.euz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.eut, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc1594 unwind label %bb.avg ; 2 uses

.noexc1594:                                       ; preds = %.noexc.i.i.i.i.i.i.i.i.2.i
  store ptr %i.euz, ptr %i.eut, align 8, !tbaa !15
  %i.eva = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.eva, ptr %i.euv, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.2.i

._crit_edge.i.i.i.i.i.i.i.i.i.2.i:                ; preds = %.noexc1594, %bb.atd
  %i.evb = phi ptr [ %i.euz, %.noexc1594 ], [ %i.euv, %bb.atd ] ; 2 uses
  switch i64 %i.eux, label %bb.atf [
    i64 1, label %bb.ate
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.2.i
  ]

bb.ate:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.2.i
  %i.evc = load i8, ptr %i.euw, align 1, !tbaa !17
  store i8 %i.evc, ptr %i.evb, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.2.i

bb.atf:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.2.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.evb, ptr align 1 %i.euw, i64 %i.eux, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.2.i: ; preds = %bb.atf, %bb.ate, %._crit_edge.i.i.i.i.i.i.i.i.i.2.i
  %i.evd = load i64, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.eve = getelementptr inbounds nuw i8, ptr %i.eus, i64 40
  store i64 %i.evd, ptr %i.eve, align 8, !tbaa !18
  %i.evf = load ptr, ptr %i.eut, align 8, !tbaa !15
  %i.evg = getelementptr inbounds nuw i8, ptr %i.evf, i64 %i.evd
  store i8 0, ptr %i.evg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.evh = load ptr, ptr %i.ety, align 8, !tbaa !440
  %i.evi = getelementptr inbounds nuw i8, ptr %i.evh, i64 32
  store ptr %i.evi, ptr %i.ety, align 8, !tbaa !440
  br label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit

bb.atg:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.1.i1569
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.etx, ptr nonnull %i.eut, ptr noundef nonnull align 8 dereferenceable(32) %i.ett)
          to label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit unwind label %bb.avg

_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.2.i, %bb.atg
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #35
  %i.evj = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 6 uses
  store ptr %i.evj, ptr %171, align 8, !tbaa !9
  store i32 1635017060, ptr %i.evj, align 8
  %i.evk = getelementptr inbounds nuw i8, ptr %171, i64 8 ; 2 uses
  store i64 4, ptr %i.evk, align 8, !tbaa !18
  %i.evl = getelementptr inbounds nuw i8, ptr %171, i64 20
  store i8 0, ptr %i.evl, align 4, !tbaa !17
  %i.evm = load ptr, ptr %i.esd, align 8, !tbaa !438 ; 5 uses
  %i.evn = getelementptr inbounds nuw i8, ptr %168, i64 104 ; 5 uses
  %i.evo = load ptr, ptr %i.evn, align 8, !tbaa !440 ; 3 uses
  %.not.i.i.i1600 = icmp eq ptr %i.evo, %i.evm
  br i1 %.not.i.i.i1600, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1608, label %.lr.ph.i.i.i.i.i1601

.lr.ph.i.i.i.i.i1601:                             ; preds = %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1604
  %.05.i.i.i.i.i1602 = phi ptr [ %i.evu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1604 ], [ %i.evm, %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit ] ; 3 uses
  %i.evp = load ptr, ptr %.05.i.i.i.i.i1602, align 8, !tbaa !15 ; 2 uses
  %i.evq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i1602, i64 16 ; 2 uses
  %i.evr = icmp eq ptr %i.evp, %i.evq
  br i1 %i.evr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1604, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1603

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1603: ; preds = %.lr.ph.i.i.i.i.i1601
  %i.evs = load i64, ptr %i.evq, align 8, !tbaa !17
  %i.evt = add i64 %i.evs, 1
  call void @_ZdlPvm(ptr noundef %i.evp, i64 noundef %i.evt) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1604

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1604: ; preds = %.lr.ph.i.i.i.i.i1601, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1603
  %i.evu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i1602, i64 32 ; 2 uses
  %.not.i.i.i.i.i1605 = icmp eq ptr %i.evu, %i.evo
  br i1 %.not.i.i.i.i.i1605, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1606, label %.lr.ph.i.i.i.i.i1601, !llvm.loop !441

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1606: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i1604
  store ptr %i.evm, ptr %i.evn, align 8, !tbaa !440
  %.pre.i1607 = load ptr, ptr %i.esd, align 8, !tbaa !438
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1608

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1608: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1606, %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit
  %i.evv = phi ptr [ %i.evo, %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit ], [ %i.evm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1606 ] ; 4 uses
  %i.evw = phi ptr [ %i.evm, %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE15cfgOutputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE.exit ], [ %.pre.i1607, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i1606 ] ; 5 uses
  %i.evx = getelementptr inbounds nuw i8, ptr %168, i64 112 ; 3 uses
  %i.evy = load ptr, ptr %i.evx, align 8, !tbaa !439 ; 2 uses
  %i.evz = icmp eq ptr %i.evy, %i.evw
  br i1 %i.evz, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1615, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1609

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1615: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1608
  %i.ewa = ptrtoint ptr %i.evw to i64
  %i.ewb = ptrtoint ptr %i.evv to i64
  %i.ewc = sub i64 %i.ewb, %i.ewa
  %i.ewd = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %.noexc1631 unwind label %bb.avh ; 4 uses

.noexc1631:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1615
  %.not10.i.i.i.i.i1616 = icmp eq ptr %i.evw, %i.evv
  br i1 %.not10.i.i.i.i.i1616, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1627, label %.lr.ph.i.i.i.i5.i1617

.lr.ph.i.i.i.i5.i1617:                            ; preds = %.noexc1631, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1623
  %.012.i.i.i.i.i1618 = phi ptr [ %i.ewr, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1623 ], [ %i.ewd, %.noexc1631 ] ; 5 uses
  %.0911.i.i.i.i.i1619 = phi ptr [ %i.ewq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1623 ], [ %i.evw, %.noexc1631 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.ewe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1618, i64 16 ; 3 uses
  store ptr %i.ewe, ptr %.012.i.i.i.i.i1618, align 8, !tbaa !9, !alias.scope !449, !noalias !452
  %i.ewf = load ptr, ptr %.0911.i.i.i.i.i1619, align 8, !tbaa !15, !alias.scope !452, !noalias !449 ; 2 uses
  %i.ewg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1619, i64 16 ; 5 uses
  %i.ewh = icmp eq ptr %i.ewf, %i.ewg
  br i1 %i.ewh, label %bb.ath, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1620

bb.ath:                                           ; preds = %.lr.ph.i.i.i.i5.i1617
  %i.ewi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1619, i64 8
  %i.ewj = load i64, ptr %i.ewi, align 8, !tbaa !18, !alias.scope !452, !noalias !449 ; 3 uses
  %i.ewk = icmp ult i64 %i.ewj, 16
  call void @llvm.assume(i1 %i.ewk)
  %i.ewl = add nuw nsw i64 %i.ewj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ewe, ptr noundef nonnull align 8 dereferenceable(1) %i.ewg, i64 %i.ewl, i1 false), !alias.scope !454
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1623

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1620: ; preds = %.lr.ph.i.i.i.i5.i1617
  store ptr %i.ewf, ptr %.012.i.i.i.i.i1618, align 8, !tbaa !15, !alias.scope !449, !noalias !452
  %i.ewm = load i64, ptr %i.ewg, align 8, !tbaa !17, !alias.scope !452, !noalias !449
  store i64 %i.ewm, ptr %i.ewe, align 8, !tbaa !17, !alias.scope !449, !noalias !452
  %.phi.trans.insert.i.i.i.i.i.i1621 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1619, i64 8
  %.pre.i.i.i.i.i.i1622 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i1621, align 8, !tbaa !18, !alias.scope !452, !noalias !449
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1623

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1623: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1620, %bb.ath
  %i.ewn = phi i64 [ %i.ewj, %bb.ath ], [ %.pre.i.i.i.i.i.i1622, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1620 ]
  %i.ewo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1619, i64 8
  %i.ewp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1618, i64 8
  store i64 %i.ewn, ptr %i.ewp, align 8, !tbaa !18, !alias.scope !449, !noalias !452
  store ptr %i.ewg, ptr %.0911.i.i.i.i.i1619, align 8, !tbaa !15, !alias.scope !452, !noalias !449
  store i64 0, ptr %i.ewo, align 8, !tbaa !18, !alias.scope !452, !noalias !449
  store i8 0, ptr %i.ewg, align 8, !tbaa !17, !alias.scope !452, !noalias !449
  %i.ewq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1619, i64 32 ; 2 uses
  %i.ewr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1618, i64 32
  %.not.i.i.i.i6.i1624 = icmp eq ptr %i.ewq, %i.evv
  br i1 %.not.i.i.i.i6.i1624, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1625, label %.lr.ph.i.i.i.i5.i1617, !llvm.loop !448

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1625: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i1623
  %.pre.i.i1626 = load ptr, ptr %i.esd, align 8, !tbaa !438
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1627

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1627: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1625, %.noexc1631
  %i.ews = phi ptr [ %.pre.i.i1626, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit.i.i1625 ], [ %i.evw, %.noexc1631 ] ; 3 uses
  %.not.i8.i.i1628 = icmp eq ptr %i.ews, null
  br i1 %.not.i8.i.i1628, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1629, label %bb.ati

bb.ati:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1627
  %i.ewt = load ptr, ptr %i.evx, align 8, !tbaa !439
  %i.ewu = ptrtoint ptr %i.ewt to i64
  %i.ewv = ptrtoint ptr %i.ews to i64
  %i.eww = sub i64 %i.ewu, %i.ewv
  call void @_ZdlPvm(ptr noundef nonnull %i.ews, i64 noundef %i.eww) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1629

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1629: ; preds = %bb.ati, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i1627
  store ptr %i.ewd, ptr %i.esd, align 8, !tbaa !438
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.ewd, i64 %i.ewc ; 2 uses
  store ptr %i.ewx, ptr %i.evn, align 8, !tbaa !440
  %i.ewy = getelementptr inbounds nuw i8, ptr %i.ewd, i64 32 ; 2 uses
  store ptr %i.ewy, ptr %i.evx, align 8, !tbaa !439
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1609

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1609: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1629, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1608
  %i.ewz = phi ptr [ %i.evy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1608 ], [ %i.ewy, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1629 ]
  %i.exa = phi ptr [ %i.evv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i1608 ], [ %i.ewx, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i1629 ] ; 8 uses
  %.not.i.i.i.i.i.i.i.i1610 = icmp eq ptr %i.exa, %i.ewz
  br i1 %.not.i.i.i.i.i.i.i.i1610, label %bb.atm, label %bb.atj

bb.atj:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1609
  %i.exb = getelementptr inbounds nuw i8, ptr %i.exa, i64 16 ; 3 uses
  store ptr %i.exb, ptr %i.exa, align 8, !tbaa !9
  %i.exc = load ptr, ptr %171, align 8, !tbaa !15 ; 2 uses
  %i.exd = load i64, ptr %i.evk, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store i64 %i.exd, ptr %i.c, align 8, !tbaa !13
  %i.exe = icmp ugt i64 %i.exd, 15
  br i1 %i.exe, label %.noexc.i.i.i.i.i.i.i.i.i1614, label %._crit_edge.i.i.i.i.i.i.i.i.i.i1611

.noexc.i.i.i.i.i.i.i.i.i1614:                     ; preds = %bb.atj
  %i.exf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.exa, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc1632 unwind label %bb.avh ; 2 uses

.noexc1632:                                       ; preds = %.noexc.i.i.i.i.i.i.i.i.i1614
  store ptr %i.exf, ptr %i.exa, align 8, !tbaa !15
  %i.exg = load i64, ptr %i.c, align 8, !tbaa !13
  store i64 %i.exg, ptr %i.exb, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i1611

._crit_edge.i.i.i.i.i.i.i.i.i.i1611:              ; preds = %.noexc1632, %bb.atj
  %i.exh = phi ptr [ %i.exf, %.noexc1632 ], [ %i.exb, %bb.atj ] ; 2 uses
  switch i64 %i.exd, label %bb.atl [
    i64 1, label %bb.atk
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1612
  ]

bb.atk:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i1611
  %i.exi = load i8, ptr %i.exc, align 1, !tbaa !17
  store i8 %i.exi, ptr %i.exh, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1612

bb.atl:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i1611
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.exh, ptr align 1 %i.exc, i64 %i.exd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1612: ; preds = %bb.atl, %bb.atk, %._crit_edge.i.i.i.i.i.i.i.i.i.i1611
  %i.exj = load i64, ptr %i.c, align 8, !tbaa !13 ; 2 uses
  %i.exk = getelementptr inbounds nuw i8, ptr %i.exa, i64 8
  store i64 %i.exj, ptr %i.exk, align 8, !tbaa !18
  %i.exl = load ptr, ptr %i.exa, align 8, !tbaa !15
  %i.exm = getelementptr inbounds nuw i8, ptr %i.exl, i64 %i.exj
  store i8 0, ptr %i.exm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %i.exn = load ptr, ptr %i.evn, align 8, !tbaa !440
  %i.exo = getelementptr inbounds nuw i8, ptr %i.exn, i64 32
  store ptr %i.exo, ptr %i.evn, align 8, !tbaa !440
  br label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit

bb.atm:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i1609
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.esd, ptr %i.exa, ptr noundef nonnull align 8 dereferenceable(32) %171)
          to label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit unwind label %bb.avh

_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i1612, %bb.atm
  invoke void @_ZN2cv4gapi2ie6detail9ParamDescC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(728) %167, ptr noundef nonnull align 8 dereferenceable(728) %168)
          to label %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEEC2ERKS6_.exit unwind label %bb.avh

_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEEC2ERKS6_.exit: ; preds = %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEE14cfgInputLayersERKSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE.exit
  %i.exp = load ptr, ptr %171, align 8, !tbaa !15 ; 2 uses
  %i.exq = icmp eq ptr %i.exp, %i.evj
  br i1 %i.exq, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit1638, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1635

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1635: ; preds = %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEEC2ERKS6_.exit
  %i.exr = load i64, ptr %i.evj, align 8, !tbaa !17
  %i.exs = add i64 %i.exr, 1
  call void @_ZdlPvm(ptr noundef %i.exp, i64 noundef %i.exs) #36
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit1638

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit1638: ; preds = %_ZN2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_111MTCNNOutputEEC2ERKS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1635
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #35
  %i.ext = load ptr, ptr %i.ett, align 8, !tbaa !15 ; 2 uses
  %i.exu = icmp eq ptr %i.ext, %i.etu
  br i1 %i.exu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1640, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1639

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1639: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit1638
  %i.exv = load i64, ptr %i.etu, align 8, !tbaa !17
  %i.exw = add i64 %i.exv, 1
  call void @_ZdlPvm(ptr noundef %i.ext, i64 noundef %i.exw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1640

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1640: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit1638, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1639
  %i.exx = load ptr, ptr %i.etp, align 8, !tbaa !15 ; 2 uses
  %i.exy = icmp eq ptr %i.exx, %i.etq
  br i1 %i.exy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i1641

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i1641: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1640
  %i.exz = load i64, ptr %i.etq, align 8, !tbaa !17
  %i.eya = add i64 %i.exz, 1
  call void @_ZdlPvm(ptr noundef %i.exx, i64 noundef %i.eya) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1640, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i1641
  %i.eyb = load ptr, ptr %170, align 8, !tbaa !15 ; 2 uses
  %i.eyc = icmp eq ptr %i.eyb, %i.etm
  br i1 %i.eyc, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
  %i.eyd = load i64, ptr %i.etm, align 8, !tbaa !17
  %i.eye = add i64 %i.eyd, 1
  call void @_ZdlPvm(ptr noundef %i.eyb, i64 noundef %i.eye) #36
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #35
  call void @_ZN2cv4gapi2ie6detail9ParamDescD2Ev(ptr noundef nonnull align 8 dead_on_return(728) dereferenceable(728) %168) #35
  %i.eyf = load ptr, ptr %169, align 8, !tbaa !15 ; 2 uses
  %i.eyg = getelementptr inbounds nuw i8, ptr %169, i64 16 ; 2 uses
  %i.eyh = icmp eq ptr %i.eyf, %i.eyg
  br i1 %i.eyh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1646, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1644: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit
  %i.eyi = load i64, ptr %i.eyg, align 8, !tbaa !17
  %i.eyj = add i64 %i.eyi, 1
  call void @_ZdlPvm(ptr noundef %i.eyf, i64 noundef %i.eyj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1646

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1646: ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1644
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35, !noalias !455
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.eyk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.eyk, ptr %9, align 8, !tbaa !9, !alias.scope !464, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35, !noalias !465
  store i64 30, ptr %i.b, align 8, !tbaa !13, !noalias !465
  %i.eyl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc1661 unwind label %bb.avi ; 2 uses

.noexc1661:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1646
  store ptr %i.eyl, ptr %9, align 8, !tbaa !15, !alias.scope !464, !noalias !455
  %i.eym = load i64, ptr %i.b, align 8, !tbaa !13, !noalias !465 ; 3 uses
  store i64 %i.eym, ptr %i.eyk, align 8, !tbaa !17, !alias.scope !464, !noalias !455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.eyl, ptr noundef nonnull align 1 dereferenceable(30) @.str.93, i64 30, i1 false), !noalias !455
  %i.eyn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.eym, ptr %i.eyn, align 8, !tbaa !18, !alias.scope !464, !noalias !455
  %i.eyo = load ptr, ptr %9, align 8, !tbaa !15, !alias.scope !464, !noalias !455
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyo, i64 %i.eym
  store i8 0, ptr %i.eyp, align 1, !tbaa !17, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35, !noalias !465
  %i.eyq = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  invoke void @_ZN2cv4gapi2ie7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %i.eyq)
          to label %_ZNK2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE7backendEv.exit.i.i unwind label %bb.ato, !noalias !455

_ZNK2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE7backendEv.exit.i.i: ; preds = %.noexc1661
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.eyr = invoke noalias noundef nonnull dereferenceable(736) ptr @_Znwm(i64 noundef 736) #37
          to label %.noexc.i.i1654 unwind label %bb.atp, !noalias !455 ; 4 uses

.noexc.i.i1654:                                   ; preds = %_ZNK2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE7backendEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_4gapi2ie6detail9ParamDescEEE, i64 16), ptr %i.eyr, align 8, !tbaa !79, !noalias !469
  %i.eys = getelementptr inbounds nuw i8, ptr %i.eyr, i64 8
  invoke void @_ZN2cv4gapi2ie6detail9ParamDescC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.eys, ptr noundef nonnull align 8 dereferenceable(728) %162)
          to label %bb.atr unwind label %bb.atn, !noalias !469

bb.atn:                                           ; preds = %.noexc.i.i1654
  %i.eyt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eyr, i64 noundef 736) #36, !noalias !469
  br label %.body.i.i1652

bb.ato:                                           ; preds = %.noexc1661
  %i.eyu = landingpad { ptr, i32 }
          cleanup
  br label %bb.atq

bb.atp:                                           ; preds = %_ZNK2cv4gapi2ie6ParamsIN6custom12_GLOBAL__N_115MTCNNRefinementEE7backendEv.exit.i.i
  %i.eyv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i1652

.body.i.i1652:                                    ; preds = %bb.atp, %bb.atn
  %eh.lpad-body.i.i1653 = phi { ptr, i32 } [ %i.eyv, %bb.atp ], [ %i.eyt, %bb.atn ]
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.eyq) #35, !noalias !455
  br label %bb.atq

bb.atq:                                           ; preds = %.body.i.i1652, %bb.ato
  %.pn.i.i1648 = phi { ptr, i32 } [ %eh.lpad-body.i.i1653, %.body.i.i1652 ], [ %i.eyu, %bb.ato ] ; 2 uses
  %i.eyw = load ptr, ptr %9, align 8, !tbaa !15, !alias.scope !458, !noalias !455 ; 2 uses
  %i.eyx = icmp eq ptr %i.eyw, %i.eyk
  br i1 %i.eyx, label %.body.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1649: ; preds = %bb.atq
  %i.eyy = load i64, ptr %i.eyk, align 8, !tbaa !17, !alias.scope !458, !noalias !455
  %i.eyz = add i64 %i.eyy, 1
  call void @_ZdlPvm(ptr noundef %i.eyw, i64 noundef %i.eyz) #36, !noalias !455
  br label %.body.thread.i

bb.atr:                                           ; preds = %.noexc.i.i1654
  %i.eza = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.eyr, ptr %i.eza, align 8, !tbaa !147, !alias.scope !470, !noalias !455
  %i.ezb = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.ezc = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 6 uses
  store ptr %i.ezc, ptr %i.ezb, align 8, !tbaa !9, !alias.scope !477, !noalias !455
end_hunk_1
