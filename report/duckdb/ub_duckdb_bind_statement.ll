inline.NumInlined: 16320
inline.NumDeleted: 7419
begin_hunk_0_@_ZN6duckdb6Binder10BindCopyToERNS_13CopyStatementERKNS_12CopyFunctionENS_10CopyToTypeE:bb.a
bb.lq:                                            ; preds = %bb.lg
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17LogicalCopyToFileESt14default_deleteIS1_EED2Ev.exit662

bb.lr:                                            ; preds = %bb.md, %bb.mc, %bb.lm, %bb.ll, %bb.li, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit572, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit570, %_ZN6duckdb15FilenamePatternaSERKS0_.exit, %bb.lk, %bb.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit567, %bb.lh
  %i.acw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit580

bb.ls:                                            ; preds = %bb.lp, %bb.ln
  %i.acx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.lt unwind label %bb.lr

bb.lt:                                            ; preds = %bb.ls
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 1120
  store i8 %i.abb, ptr %i.acy, align 8, !tbaa !425
  %i.acz = load ptr, ptr %13, align 16, !tbaa !314
  %i.ada = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !314
  %i.adc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.lu unwind label %bb.lr

bb.lu:                                            ; preds = %bb.lt
  %i.add = icmp ne ptr %i.acz, %i.adb
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 1122
  %i.adf = zext i1 %i.add to i8
  store i8 %i.adf, ptr %i.ade, align 2, !tbaa !426
  %i.adg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.lv unwind label %bb.lr

bb.lv:                                            ; preds = %bb.lu
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 1123
  store i8 %.0226.lcssa1303132413431361, ptr %i.adh, align 1, !tbaa !427
  %i.adi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.lw unwind label %bb.lr     ; 2 uses

bb.lw:                                            ; preds = %bb.lv
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 1128 ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !311 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 1144
  %i.adm = load <2 x ptr>, ptr %13, align 16, !tbaa !314
  store <2 x ptr> %i.adm, ptr %i.adj, align 8, !tbaa !314
  %i.adn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ado = load ptr, ptr %i.adn, align 16, !tbaa !315
  store ptr %i.ado, ptr %i.adl, align 8, !tbaa !315
  %.not.i.i.i.i.i.i571 = icmp eq ptr %i.adk, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i571, label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit572, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @_ZdlPv(ptr noundef nonnull %i.adk) #29
  br label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit572

_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit572:     ; preds = %bb.lw, %bb.lx
  %i.adp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ly unwind label %bb.lr

bb.ly:                                            ; preds = %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit572
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 1124
  store i8 %.0228.lcssa1302132513421362, ptr %i.adq, align 4, !tbaa !428
  %i.adr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.lz unwind label %bb.lr

bb.lz:                                            ; preds = %bb.ly
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 1121
  store i8 %.0258.lcssa1299132813391365, ptr %i.ads, align 1, !tbaa !429
  %i.adt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ma unwind label %bb.lr

bb.ma:                                            ; preds = %bb.lz
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 1126
  store i8 %.0256.lcssa1300132713401364, ptr %i.adu, align 2, !tbaa !430
  %i.adv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.mb unwind label %bb.lr

bb.mb:                                            ; preds = %bb.ma
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 1125
  store i8 %.0252.lcssa1301132613411363, ptr %i.adw, align 1, !tbaa !431
  %i.adx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.mc unwind label %bb.lr

bb.mc:                                            ; preds = %bb.mb
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 1152
  %i.adz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ady, ptr noundef nonnull align 8 dereferenceable(24) %60)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.lr ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit: ; preds = %bb.mc
  %i.aea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.md unwind label %bb.lr

bb.md:                                            ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 1176
  %i.aec = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aeb, ptr noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.lr ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.md
  %i.aed = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.me unwind label %bb.lr

bb.me:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.aee = load i64, ptr %8, align 8, !tbaa !139
  store i64 %i.aee, ptr %78, align 8, !tbaa !139
  store ptr null, ptr %8, align 8, !tbaa !139
  invoke void @_ZN6duckdb15LogicalOperator8AddChildENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(97) %i.aed, ptr noundef nonnull %78)
          to label %bb.mf unwind label %bb.mi

bb.mf:                                            ; preds = %bb.me
  %i.aef = load ptr, ptr %78, align 8, !tbaa !139 ; 3 uses
  %.not.i575 = icmp eq ptr %i.aef, null
  br i1 %.not.i575, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit577, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i576

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i576: ; preds = %bb.mf
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !119
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aei = load ptr, ptr %i.aeh, align 8
  call void %i.aei(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aef) #25, !inline_history !182
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit577

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit577: ; preds = %bb.mf, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i576
  %i.aej = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.mg unwind label %bb.mj

bb.mg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit577
  %i.aek = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.mh unwind label %bb.mj

bb.mh:                                            ; preds = %bb.mg
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 1121
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !429 ; 2 uses
  %i.aen = icmp ult i8 %i.aem, 3
  br i1 %i.aen, label %switch.lookup, label %bb.mk

bb.mi:                                            ; preds = %bb.me
  %i.aeo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aep = load ptr, ptr %78, align 8, !tbaa !139 ; 3 uses
  %.not.i578 = icmp eq ptr %i.aep, null
  br i1 %.not.i578, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit580, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i579

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i579: ; preds = %bb.mi
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !119
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  %i.aes = load ptr, ptr %i.aer, align 8
  call void %i.aes(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aep) #25, !inline_history !182
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit580

bb.mj:                                            ; preds = %bb.mg, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit577
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit580

bb.mk:                                            ; preds = %bb.mh
  %i.aeu = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %80)
          to label %bb.ml unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583.thread

bb.ml:                                            ; preds = %bb.mk
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aeu, ptr noundef nonnull align 8 dereferenceable(32) %79)
          to label %bb.mm unwind label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  invoke void @__cxa_throw(ptr nonnull %i.aeu, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ny unwind label %bb.mn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583.thread: ; preds = %bb.mk
  %i.aev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #25
  br label %bb.mo

bb.mn:                                            ; preds = %bb.mm, %bb.ml
  %.0 = phi i1 [ false, %bb.mm ], [ true, %bb.ml ] ; 2 uses
  %i.aew = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aex = load ptr, ptr %79, align 8, !tbaa !25  ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.aez = icmp eq ptr %i.aex, %i.aey
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581: ; preds = %bb.mn
  call void @_ZdlPv(ptr noundef %i.aex) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #25
  br i1 %.0, label %bb.mo, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit580

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583: ; preds = %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #25
  br i1 %.0, label %bb.mo, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit580

bb.mo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583
  %.pn302766 = phi { ptr, i32 } [ %i.aev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583.thread ], [ %i.aew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583 ], [ %i.aew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581 ]
  call void @__cxa_free_exception(ptr %i.aeu) #25
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit580

switch.lookup:                                    ; preds = %bb.mh
  %83 = icmp eq i8 %i.aem, 0
  %switch.masked = zext i1 %83 to i8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aej, i64 115
  store i8 %switch.masked, ptr %i.afa, align 1, !tbaa !150
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.afb, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 57, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #25
  %i.afc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.mp unwind label %bb.ni

bb.mp:                                            ; preds = %switch.lookup
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 1121
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !429
  invoke void @_ZN6duckdb26GetCopyFunctionReturnNamesB5cxx11ENS_22CopyFunctionReturnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.2") align 8 %81, i8 noundef zeroext %i.afe)
          to label %bb.mq unwind label %bb.ni

bb.mq:                                            ; preds = %bb.mp
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !20 ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !23 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.afk = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.afl = load <2 x ptr>, ptr %81, align 16, !tbaa !274
  store <2 x ptr> %i.afl, ptr %i.aff, align 8, !tbaa !274
  %i.afm = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.afn = load ptr, ptr %i.afm, align 16, !tbaa !24
  store ptr %i.afn, ptr %i.afj, align 8, !tbaa !24
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.afg, %i.afi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %81, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.mq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.afr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.afg, %bb.mq ] ; 3 uses
  %i.afo = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.afq = icmp eq ptr %i.afo, %i.afp
  br i1 %i.afq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.afo) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.afr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i584 = icmp eq ptr %i.afr, %i.afi
  br i1 %.not.i.i.i.i.i.i584, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !154

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %bb.mq
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.afg, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.mr

bb.mr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.afg) #29
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.mr
  %i.afs = load ptr, ptr %81, align 16, !tbaa !20 ; 3 uses
  %i.aft = load ptr, ptr %i.afk, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i585 = icmp eq ptr %i.afs, %i.aft
  br i1 %.not4.i.i.i585, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i586

.lr.ph.i.i.i586:                                  ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i587 = phi ptr [ %i.afx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.afs, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 3 uses
  %i.afu = load ptr, ptr %.05.i.i.i587, align 8, !tbaa !25 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.05.i.i.i587, i64 16
  %i.afw = icmp eq ptr %i.afu, %i.afv
  br i1 %i.afw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i586
  call void @_ZdlPv(ptr noundef %i.afu) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i586, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.afx = getelementptr inbounds nuw i8, ptr %.05.i.i.i587, i64 32 ; 2 uses
  %.not.i.i.i588 = icmp eq ptr %i.afx, %i.aft
  br i1 %.not.i.i.i588, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i586, !llvm.loop !154

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i589 = load ptr, ptr %81, align 16, !tbaa !20
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.afy = phi ptr [ %.pr.i589, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.afs, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %.not.i.i1.i590 = icmp eq ptr %i.afy, null
  br i1 %.not.i.i1.i590, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ms

bb.ms:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.afy) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #25
  %i.afz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalCopyToFileESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.mt unwind label %bb.nj

bb.mt:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 1121
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !429
  invoke void @_ZN6duckdb33GetCopyFunctionReturnLogicalTypesENS_22CopyFunctionReturnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %82, i8 noundef zeroext %i.agb)
          to label %bb.mu unwind label %bb.nj

bb.mu:                                            ; preds = %bb.mt
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !7 ; 4 uses
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !11 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.agh = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.agi = load <2 x ptr>, ptr %82, align 16, !tbaa !432
  store <2 x ptr> %i.agi, ptr %i.agc, align 8, !tbaa !432
  %i.agj = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.agk = load ptr, ptr %i.agj, align 16, !tbaa !12
  store ptr %i.agk, ptr %i.agg, align 8, !tbaa !12
  %.not4.i.i.i.i.i.i591 = icmp eq ptr %i.agd, %i.agf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %82, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i591, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i592

.lr.ph.i.i.i.i.i.i592:                            ; preds = %bb.mu, %.lr.ph.i.i.i.i.i.i592
  %.05.i.i.i.i.i.i593 = phi ptr [ %i.agl, %.lr.ph.i.i.i.i.i.i592 ], [ %i.agd, %bb.mu ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i593) #25
  %i.agl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i593, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i594 = icmp eq ptr %i.agl, %i.agf
  br i1 %.not.i.i.i.i.i.i594, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i592, !llvm.loop !153

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i592, %bb.mu
  %.not.i.i1.i.i.i.i595 = icmp eq ptr %i.agd, null
  br i1 %.not.i.i1.i.i.i.i595, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, label %bb.mv

bb.mv:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.agd) #29
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.mv
  %i.agm = load ptr, ptr %82, align 16, !tbaa !7  ; 3 uses
  %i.agn = load ptr, ptr %i.agh, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i596 = icmp eq ptr %i.agm, %i.agn
  br i1 %.not4.i.i.i596, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i597

.lr.ph.i.i.i597:                                  ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i597
  %.05.i.i.i598 = phi ptr [ %i.ago, %.lr.ph.i.i.i597 ], [ %i.agm, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i598) #25
  %i.ago = getelementptr inbounds nuw i8, ptr %.05.i.i.i598, i64 24 ; 2 uses
  %.not.i.i.i599 = icmp eq ptr %i.ago, %i.agn
  br i1 %.not.i.i.i599, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i597, !llvm.loop !153

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i597
  %.pr.i600 = load ptr, ptr %82, align 16, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.agp = phi ptr [ %.pr.i600, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.agm, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %.not.i.i1.i601 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i1.i601, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.mw

bb.mw:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.agp) #29
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25
  %i.agq = load ptr, ptr %77, align 8, !tbaa !433
  store ptr null, ptr %77, align 8, !tbaa !433
  %i.agr = load ptr, ptr %0, align 8, !tbaa !139  ; 3 uses
  store ptr %i.agq, ptr %0, align 8, !tbaa !139
  %.not.i.i.i.i.i602 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i.i.i602, label %_ZNSt10unique_ptrIN6duckdb17LogicalCopyToFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit607

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit607: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !119
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8
  call void %i.agu(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.agr) #25, !inline_history !141
  %.pr767 = load ptr, ptr %77, align 8, !tbaa !433 ; 3 uses
  %.not.i608 = icmp eq ptr %.pr767, null
  br i1 %.not.i608, label %_ZNSt10unique_ptrIN6duckdb17LogicalCopyToFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17LogicalCopyToFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalCopyToFileEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit607
  %i.agv = load ptr, ptr %.pr767, align 8, !tbaa !119
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.agx = load ptr, ptr %i.agw, align 8
  call void %i.agx(ptr noundef nonnull align 8 dereferenceable(1200) %.pr767) #25, !inline_history !435
  br label %_ZNSt10unique_ptrIN6duckdb17LogicalCopyToFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17LogicalCopyToFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit607, %_ZNKSt14default_deleteIN6duckdb17LogicalCopyToFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #25
  %i.agy = load ptr, ptr %64, align 8, !tbaa !436 ; 3 uses
  %.not.i609 = icmp eq ptr %i.agy, null
  br i1 %.not.i609, label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalCopyToFileESt14default_deleteIS1_EED2Ev.exit
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !119
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahb = load ptr, ptr %i.aha, align 8
  call void %i.ahb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.agy) #25, !inline_history !437
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalCopyToFileESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25
  %i.ahc = load ptr, ptr %63, align 8, !tbaa !7   ; 3 uses
end_hunk_0
