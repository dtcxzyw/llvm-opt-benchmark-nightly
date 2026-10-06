Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_physical_plan?download=true
inline.NumInlined: 7975
inline.NumDeleted: 3893
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb21PhysicalPlanGenerator10CreatePlanERNS_13LogicalWindowE:bb.a
bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.sx, ptr noundef nonnull align 8 dereferenceable(24) %i.sw)
          to label %.noexc336 unwind label %.loopexit

.noexc336:                                        ; preds = %bb.dz
  %i.sz = load ptr, ptr %i.aj, align 8, !tbaa !285
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  store ptr %i.ta, ptr %i.aj, align 8, !tbaa !285
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit

bb.ea:                                            ; preds = %bb.dy
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.sx, ptr noundef nonnull align 8 dereferenceable(24) %i.sw)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit unwind label %.loopexit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit: ; preds = %.noexc336, %bb.ea
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0505.0744, i64 8 ; 2 uses
  %.not564 = icmp eq ptr %i.tb, %i.py
  br i1 %.not564, label %._crit_edge747, label %.lr.ph746

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.dz, %bb.ea
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body318

.loopexit.split-lp:                               ; preds = %bb.ds
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body318

bb.eb:                                            ; preds = %._crit_edge747
  %i.tc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ej)
          to label %.noexc338 unwind label %bb.ee

.noexc338:                                        ; preds = %bb.eb
  %i.td = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_14PhysicalWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.tc, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_14PhysicalWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit unwind label %bb.ee ; 4 uses

_ZN6duckdb21PhysicalPlanGenerator4MakeINS_14PhysicalWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit: ; preds = %.noexc338
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.tg = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.tf, i64 noundef 16)
          to label %.noexc341 unwind label %bb.ee ; 4 uses

.noexc341:                                        ; preds = %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_14PhysicalWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit
  store ptr null, ptr %i.tg, align 8, !tbaa !121
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = ptrtoint ptr %.sroa.0542.0748 to i64
  store i64 %i.ti, ptr %i.th, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !122
  %.not.i340 = icmp eq ptr %i.tk, null
  br i1 %.not.i340, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.noexc341
  %i.tl = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !123
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.noexc341
  %i.tn = phi ptr [ %i.tm, %bb.ec ], [ %i.tj, %.noexc341 ]
  store ptr %i.tg, ptr %i.tn, align 8, !tbaa !124
  br label %bb.ej

bb.ee:                                            ; preds = %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_14PhysicalWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit, %.noexc338, %bb.eb
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %.body318

bb.ef:                                            ; preds = %._crit_edge747
  %i.tp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ej)
          to label %.noexc342 unwind label %bb.ei

.noexc342:                                        ; preds = %bb.ef
  %i.tq = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_23PhysicalStreamingWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.tp, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_23PhysicalStreamingWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit unwind label %bb.ei ; 4 uses

_ZN6duckdb21PhysicalPlanGenerator4MakeINS_23PhysicalStreamingWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit: ; preds = %.noexc342
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.tt = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ts, i64 noundef 16)
          to label %.noexc345 unwind label %bb.ei ; 4 uses

.noexc345:                                        ; preds = %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_23PhysicalStreamingWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit
  store ptr null, ptr %i.tt, align 8, !tbaa !121
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = ptrtoint ptr %.sroa.0542.0748 to i64
  store i64 %i.tv, ptr %i.tu, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !122
  %.not.i344 = icmp eq ptr %i.tx, null
  br i1 %.not.i344, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.noexc345
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !123
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.noexc345
  %i.ua = phi ptr [ %i.tz, %bb.eg ], [ %i.tw, %.noexc345 ]
  store ptr %i.tt, ptr %i.ua, align 8, !tbaa !124
  br label %bb.ej

bb.ei:                                            ; preds = %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_23PhysicalStreamingWindowEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit, %.noexc342, %bb.ef
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %.body318

bb.ej:                                            ; preds = %bb.eh, %bb.ed
  %.sink1051 = phi ptr [ %i.tq, %bb.eh ], [ %i.td, %bb.ed ] ; 4 uses
  %.sink = phi ptr [ %i.tt, %bb.eh ], [ %i.tg, %bb.ed ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.sink1051, i64 24
  store ptr %.sink, ptr %i.uc, align 8, !tbaa !123
  %i.ud = getelementptr inbounds nuw i8, ptr %.sink1051, i64 32 ; 2 uses
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !125
  %i.uf = add i64 %i.ue, 1
  store i64 %i.uf, ptr %i.ud, align 8, !tbaa !125
  %i.ug = load ptr, ptr %24, align 8, !tbaa !103  ; 3 uses
  %i.uh = load ptr, ptr %i.ef, align 8, !tbaa !102 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ug, %i.uh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ej, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.um, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.ug, %bb.ej ] ; 2 uses
  %i.ui = load ptr, ptr %.05.i.i.i, align 8, !tbaa !288 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !292
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8
  call void %i.ul(ptr noundef nonnull align 8 dereferenceable(88) %i.ui) #25, !inline_history !3
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i347 = icmp eq ptr %i.um, %i.uh
  br i1 %.not.i.i.i347, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %24, align 8, !tbaa !103
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ej
  %i.un = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ug, %bb.ej ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.un, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.un) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.uo = add nuw i64 %.0749, 1                   ; 2 uses
  %i.up = load ptr, ptr %i.by, align 8, !tbaa !660 ; 2 uses
  %i.uq = load ptr, ptr %22, align 8, !tbaa !661  ; 2 uses
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = ptrtoint ptr %i.uq to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = sdiv exact i64 %i.ut, 24
  %i.uv = icmp ult i64 %i.uo, %i.uu
  br i1 %i.uv, label %bb.di, label %._crit_edge751, !llvm.loop !1736

.body318:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i332, %bb.dw, %bb.ei, %bb.ee
  %.pn137 = phi { ptr, i32 } [ %i.ub, %bb.ei ], [ %i.to, %bb.ee ], [ %i.qo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i316 ], [ %i.qo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i317 ], [ %.pn8.i.i.i313, %bb.dn ], [ %i.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331 ], [ %i.st, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i332 ], [ %.pn8.i.i.i328, %bb.dw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.fq

bb.el:                                            ; preds = %._crit_edge751
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !285 ; 2 uses
  %i.uy = load ptr, ptr %i.ai, align 8, !tbaa !296 ; 2 uses
  %i.uz = ptrtoint ptr %i.ux to i64
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = sub i64 %i.uz, %i.va
  %i.vc = sdiv exact i64 %i.vb, 24                ; 3 uses
  %i.vd = icmp ugt i64 %i.vc, 1152921504606846975
  br i1 %i.vd, label %bb.em, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.em:                                            ; preds = %bb.el
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #28
          to label %.noexc350 unwind label %bb.en

.noexc350:                                        ; preds = %bb.em
  unreachable

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.el
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i348 = icmp eq ptr %i.ux, %i.uy
  br i1 %.not.i.i.i.i.i348, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EEC2EmRKS6_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ve = shl nuw nsw i64 %i.vc, 3                ; 3 uses
  %i.vf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ve) #26
          to label %.noexc351 unwind label %bb.en ; 4 uses

.noexc351:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  store ptr %i.vf, ptr %25, align 8, !tbaa !103
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.vc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.vf, i8 0, i64 %i.ve, i1 false), !tbaa !355
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.vf, i64 %i.ve
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EEC2EmRKS6_.exit.thread.i.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EEC2EmRKS6_.exit.thread.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i, %.noexc351
  %.sink.i.i = phi ptr [ %i.vg, %.noexc351 ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ]
  %.0.lcssa.i.i.i.i.i.i349 = phi ptr [ %scevgep.i.i.i.i.i.i, %.noexc351 ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ]
  %i.vh = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %.sink.i.i, ptr %i.vi, align 8, !tbaa !287
  store ptr %.0.lcssa.i.i.i.i.i.i349, ptr %i.vh, align 8, !tbaa !102
  %.not765 = icmp eq i64 %i.ay, 0
  br i1 %.not765, label %._crit_edge756, label %.lr.ph755

._crit_edge756:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EEC2EmRKS6_.exit.thread.i.i
  %i.vj = load ptr, ptr %i.br, align 8, !tbaa !521 ; 2 uses
  %.not563757 = icmp eq ptr %i.vj, null
  br i1 %.not563757, label %._crit_edge761, label %.lr.ph760

bb.en:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.em
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.lr.ph755:                                        ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EEC2EmRKS6_.exit.thread.i.i, %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit
  %storemerge131753 = phi i64 [ %i.vu, %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit ], [ 0, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EEC2EmRKS6_.exit.thread.i.i ] ; 4 uses
  %i.vl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %storemerge131753)
          to label %bb.eo unwind label %bb.ev

bb.eo:                                            ; preds = %.lr.ph755
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.vm = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc352 unwind label %bb.ev ; 5 uses

.noexc352:                                        ; preds = %bb.eo
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.vl)
          to label %bb.ep unwind label %bb.eq, !noalias !1747

bb.ep:                                            ; preds = %.noexc352
  invoke void @_ZN6duckdb24BoundReferenceExpressionC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.vm, ptr noundef nonnull %3, i64 noundef %storemerge131753)
          to label %bb.et unwind label %bb.er, !noalias !1747

bb.eq:                                            ; preds = %.noexc352
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.vo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25, !noalias !1747
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.pn.i = phi { ptr, i32 } [ %i.vo, %bb.er ], [ %i.vn, %bb.eq ]
  call void @_ZdlPv(ptr noundef nonnull %i.vm) #27, !noalias !1747
  br label %.body353

bb.et:                                            ; preds = %bb.ep
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25, !noalias !1747
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %storemerge131753)
          to label %bb.eu unwind label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit364 ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !288 ; 3 uses
  store ptr %i.vm, ptr %i.vp, align 8, !tbaa !288
  %.not.i.i.i.i.i355 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i.i.i.i355, label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i356

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i356: ; preds = %bb.eu
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !292
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(88) %i.vq) #25, !inline_history !0
  br label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.eu, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i356
  %i.vu = add nuw i64 %storemerge131753, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.vu, %i.ay
  br i1 %exitcond.not, label %._crit_edge756, label %.lr.ph755, !llvm.loop !1739

bb.ev:                                            ; preds = %bb.eo, %.lr.ph755
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %.body353

_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit364: ; preds = %bb.et
  %i.vw = landingpad { ptr, i32 }
          cleanup
  %i.vx = load ptr, ptr %i.vm, align 8, !tbaa !292
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8
  call void %i.vz(ptr noundef nonnull align 8 dereferenceable(88) %i.vm) #25, !inline_history !6
  br label %.body353

._crit_edge761:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit379, %._crit_edge756
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.wb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wa)
          to label %.noexc365 unwind label %bb.fh

.noexc365:                                        ; preds = %._crit_edge761
  %i.wc = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_18PhysicalProjectionEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.wb, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_18PhysicalProjectionEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit unwind label %bb.fh ; 6 uses

.lr.ph760:                                        ; preds = %._crit_edge756, %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit379
  %.sroa.0489.0758 = phi ptr [ %i.wr, %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit379 ], [ %i.vj, %._crit_edge756 ] ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0489.0758, i64 8 ; 2 uses
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !500
  %i.wf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.we)
          to label %bb.ew unwind label %bb.fd

bb.ew:                                            ; preds = %.lr.ph760
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0489.0758, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.wh = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc368 unwind label %bb.fd ; 5 uses

.noexc368:                                        ; preds = %bb.ew
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.wf)
          to label %bb.ex unwind label %bb.ey, !noalias !1748

bb.ex:                                            ; preds = %.noexc368
  %i.wi = load i64, ptr %i.wg, align 8, !tbaa !194, !noalias !1748
  invoke void @_ZN6duckdb24BoundReferenceExpressionC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.wh, ptr noundef nonnull %2, i64 noundef %i.wi)
          to label %bb.fb unwind label %bb.ez, !noalias !1748

bb.ey:                                            ; preds = %.noexc368
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25, !noalias !1748
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.pn.i367 = phi { ptr, i32 } [ %i.wk, %bb.ez ], [ %i.wj, %bb.ey ]
  call void @_ZdlPv(ptr noundef nonnull %i.wh) #27, !noalias !1748
  br label %.body353

bb.fb:                                            ; preds = %bb.ex
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25, !noalias !1748
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.wl = load i64, ptr %i.wd, align 8, !tbaa !500
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %i.wl)
          to label %bb.fc unwind label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit385 ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !288 ; 3 uses
  store ptr %i.wh, ptr %i.wm, align 8, !tbaa !288
  %.not.i.i.i.i.i371 = icmp eq ptr %i.wn, null
  br i1 %.not.i.i.i.i.i371, label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit379, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i372

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i372: ; preds = %bb.fc
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !292
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8
  call void %i.wq(ptr noundef nonnull align 8 dereferenceable(88) %i.wn) #25, !inline_history !0
  br label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit379

_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit379: ; preds = %bb.fc, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i372
  %i.wr = load ptr, ptr %.sroa.0489.0758, align 8, !tbaa !369 ; 2 uses
  %.not563 = icmp eq ptr %i.wr, null
  br i1 %.not563, label %._crit_edge761, label %.lr.ph760

bb.fd:                                            ; preds = %bb.ew, %.lr.ph760
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %.body353

_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit385: ; preds = %bb.fb
  %i.wt = landingpad { ptr, i32 }
          cleanup
  %i.wu = load ptr, ptr %i.wh, align 8, !tbaa !292
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8
  call void %i.ww(ptr noundef nonnull align 8 dereferenceable(88) %i.wh) #25, !inline_history !6
  br label %.body353

_ZN6duckdb21PhysicalPlanGenerator4MakeINS_18PhysicalProjectionEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit: ; preds = %.noexc365
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.wz = invoke noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.wy, i64 noundef 16)
          to label %.noexc387 unwind label %bb.fh ; 4 uses

.noexc387:                                        ; preds = %_ZN6duckdb21PhysicalPlanGenerator4MakeINS_18PhysicalProjectionEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERmEEERNS_16PhysicalOperatorEDpOT0_.exit
  store ptr null, ptr %i.wz, align 8, !tbaa !121
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xb = ptrtoint ptr %.sroa.0542.0.lcssa to i64
  store i64 %i.xb, ptr %i.xa, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wc, i64 16 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !122
  %.not.i386 = icmp eq ptr %i.xd, null
  br i1 %.not.i386, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.noexc387
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !123
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.noexc387
  %i.xg = phi ptr [ %i.xf, %bb.fe ], [ %i.xc, %.noexc387 ]
  store ptr %i.wz, ptr %i.xg, align 8, !tbaa !124
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
end_hunk_0
