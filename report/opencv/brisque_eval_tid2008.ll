inline.NumInlined: 602
inline.NumDeleted: 274
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25, !noalias !54
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330.i
  %.pn91.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.i, %bb.eh ], [ %i.zy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330.i ] ; 2 uses
  %i.adq = load ptr, ptr %18, align 8, !tbaa !43, !noalias !54 ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.jp
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i: ; preds = %bb.ei
  %i.ads = load i64, ptr %i.jp, align 8, !tbaa !38, !noalias !54
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327.i
  %.pn91.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327.i ], [ %.pn91.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i ], [ %.pn91.pn.pn.pn.i, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !54
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i
  %.pn91.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i ], [ %.pn74.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %11) #25
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ar
  %.pn91.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.i, %bb.ej ], [ %i.fo, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !54
  %i.adu = load ptr, ptr %10, align 8, !tbaa !97, !noalias !54 ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !93, !noalias !54 ; 2 uses
  %.not4.i.i.i359.i = icmp eq ptr %i.adu, %i.adw
  br i1 %.not4.i.i.i359.i, label %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i, label %.lr.ph.i.i.i360.i

.lr.ph.i.i.i360.i:                                ; preds = %bb.ek, %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i
  %.05.i.i.i361.i = phi ptr [ %i.aed, %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i ], [ %i.adu, %bb.ek ] ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.05.i.i.i361.i, i64 8
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !43 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.05.i.i.i361.i, i64 24 ; 2 uses
  %i.aea = icmp eq ptr %i.ady, %i.adz
  br i1 %i.aea, label %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i: ; preds = %.lr.ph.i.i.i360.i
  %i.aeb = load i64, ptr %i.adz, align 8, !tbaa !38
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.ady, i64 noundef %i.aec) #27
  br label %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i

_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i: ; preds = %.lr.ph.i.i.i360.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i
  %i.aed = getelementptr inbounds nuw i8, ptr %.05.i.i.i361.i, i64 40 ; 2 uses
  %.not.i.i.i364.i = icmp eq ptr %i.aed, %i.adw
  br i1 %.not.i.i.i364.i, label %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i, label %.lr.ph.i.i.i360.i, !llvm.loop !98

_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i: ; preds = %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i
  %.pr.i366.i = load ptr, ptr %10, align 8, !tbaa !97, !noalias !54
  br label %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i

_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i: ; preds = %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i, %bb.ek
  %i.aee = phi ptr [ %.pr.i366.i, %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i ], [ %i.adu, %bb.ek ] ; 3 uses
  %.not.i.i1.i368.i = icmp eq ptr %i.aee, null
  br i1 %.not.i.i1.i368.i, label %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i, label %bb.el

bb.el:                                            ; preds = %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i
  %i.aef = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !96, !noalias !54
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %i.aee to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %i.aee, i64 noundef %i.aej) #27
  br label %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i

_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i: ; preds = %bb.el, %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !54
  br label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i, %bb.aq
  %.pn91.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i ], [ %i.fn, %bb.aq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #25
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ap
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn.pn.i, %bb.em ], [ %i.fm, %bb.ap ] ; 2 uses
  %i.aek = load ptr, ptr %9, align 8, !tbaa !43, !noalias !54 ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.dp
  br i1 %i.ael, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.en, %bb.ae
  %.sink385 = phi ptr [ %i.eb, %bb.ae ], [ %i.aek, %bb.en ]
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %i.ea, %bb.ae ], [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.en ]
  %i.aem = load i64, ptr %i.dp, align 8, !tbaa !38, !noalias !54
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %.sink385, i64 noundef %i.aen) #27
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.en, %bb.ae
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ea, %bb.ae ], [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.en ], [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !54
  %i.aeo = load ptr, ptr %8, align 8, !tbaa !43, !noalias !54 ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.cx
  br i1 %i.aep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374.i: ; preds = %.body.i
  %i.aeq = load i64, ptr %i.cx, align 8, !tbaa !38, !noalias !54
  %i.aer = add i64 %i.aeq, 1
  call void @_ZdlPvm(ptr noundef %i.aeo, i64 noundef %i.aer) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !54
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i151.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !54
  %i.aes = load ptr, ptr %40, align 8, !tbaa !43  ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.ci
  br i1 %i.aet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i151.i
  %i.aeu = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i151.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.aew = load ptr, ptr %41, align 8, !tbaa !43  ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.bt
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.aey = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !175
  store i64 9223372034707292160, ptr %6, align 8, !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !175
  store i32 1, ptr %7, align 4, !tbaa !178, !noalias !175
  %i.afa = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 2, ptr %i.afa, align 4, !tbaa !180, !noalias !175
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.eo unwind label %bb.fm

bb.eo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !175
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %42, ptr noundef nonnull align 8 dereferenceable(208) %43)
          to label %bb.ep unwind label %bb.fn

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !181
  store i64 9223372034707292160, ptr %4, align 8, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !181
  store i32 2, ptr %5, align 4, !tbaa !178, !noalias !181
  %i.afb = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 3, ptr %i.afb, align 4, !tbaa !180, !noalias !181
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %45, ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.eq unwind label %bb.fp

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !181
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %44, ptr noundef nonnull align 8 dereferenceable(208) %45)
          to label %bb.er unwind label %bb.fq

bb.er:                                            ; preds = %bb.eq
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  %i.afc = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !163
  %i.afe = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !163
  %i.afg = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !184 ; 2 uses
  %i.afi = sext i32 %i.afh to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke fastcc void @_ZN12_GLOBAL__N_112rank_ordinalIfSt8equal_toIfESt4lessIfEEESt6vectorIfSaIfEEPKT_mOT0_OT1_(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef readonly %i.afd, i64 noundef range(i64 -2147483648, 2147483648) %i.afi)
          to label %.noexc64 unwind label %bb.fs

.noexc64:                                         ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke fastcc void @_ZN12_GLOBAL__N_112rank_ordinalIfSt8equal_toIfESt4lessIfEEESt6vectorIfSaIfEEPKT_mOT0_OT1_(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef readonly %i.aff, i64 noundef range(i64 -2147483648, 2147483648) %i.afi)
          to label %bb.es unwind label %bb.ev

bb.es:                                            ; preds = %.noexc64
  %i.afj = load ptr, ptr %2, align 8, !tbaa !185  ; 2 uses
  %i.afk = load ptr, ptr %3, align 8, !tbaa !185  ; 4 uses
  %.not.i.i61 = icmp eq i32 %i.afh, 0
  br i1 %.not.i.i61, label %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.es, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.es ] ; 3 uses
  %.049.i.i = phi double [ %i.afp, %.lr.ph.i.i ], [ 0.000000e+00, %bb.es ]
  %i.afl = phi <4 x double> [ %i.afy, %.lr.ph.i.i ], [ zeroinitializer, %bb.es ]
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv.i.i
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !164 ; 2 uses
  %i.afo = fpext float %i.afn to double
  %i.afp = fadd double %.049.i.i, %i.afo          ; 2 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %indvars.iv.i.i
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !164
  %i.afs = insertelement <4 x float> poison, float %i.afn, i64 0
  %i.aft = insertelement <4 x float> %i.afs, float %i.afr, i64 1 ; 2 uses
  %i.afu = shufflevector <4 x float> %i.aft, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.afv = shufflevector <4 x float> %i.aft, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.afw = fmul <4 x float> %i.afu, %i.afv
  %i.afx = fpext <4 x float> %i.afw to <4 x double>
  %i.afy = fadd <4 x double> %i.afl, %i.afx       ; 2 uses
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %46 = and i64 %indvars.iv.next.i.i, 4294967295
  %47 = icmp ult i64 %46, %i.afi
  br i1 %47, label %.lr.ph.i.i, label %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i, !llvm.loop !188

_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i:    ; preds = %.lr.ph.i.i, %bb.es
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.es ], [ %i.afp, %.lr.ph.i.i ] ; 2 uses
  %i.afz = phi <4 x double> [ zeroinitializer, %bb.es ], [ %i.afy, %.lr.ph.i.i ] ; 4 uses
  %i.aga = uitofp nneg i64 %i.afi to double       ; 2 uses
  %i.agb = extractelement <4 x double> %i.afz, i64 3
  %i.agc = shufflevector <4 x double> %i.afz, <4 x double> poison, <2 x i32> <i32 poison, i32 3>
  %i.agd = insertelement <2 x double> %i.agc, double %.0.lcssa.i.i, i64 0 ; 2 uses
  %i.age = fneg <2 x double> %i.agd
  %i.agf = fneg double %i.agb
  %i.agg = fmul <2 x double> %i.agd, %i.age
  %i.agh = insertelement <2 x double> poison, double %i.aga, i64 0
  %i.agi = shufflevector <2 x double> %i.agh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agj = shufflevector <4 x double> %i.afz, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.agk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agi, <2 x double> %i.agj, <2 x double> %i.agg) ; 2 uses
  %shift = shufflevector <2 x double> %i.agk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.agk
  %i.agl = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.agm = call double @sqrt(double noundef %i.agl) #25
  %.not.i.i.i.i62 = icmp eq ptr %i.afk, null
  br i1 %.not.i.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.et

bb.et:                                            ; preds = %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i
  %i.agn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !189
  %i.agp = ptrtoint ptr %i.ago to i64
  %i.agq = ptrtoint ptr %i.afk to i64
  %i.agr = sub i64 %i.agp, %i.agq
  call void @_ZdlPvm(ptr noundef nonnull %i.afk, i64 noundef %i.agr) #27
  %.pre.i63 = load ptr, ptr %2, align 8, !tbaa !185
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.et, %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i
  %i.ags = phi ptr [ %i.afj, %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i ], [ %.pre.i63, %bb.et ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not.i.i.i6.i = icmp eq ptr %i.ags, null
  br i1 %.not.i.i.i6.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.agt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !189
  %i.agv = ptrtoint ptr %i.agu to i64
  %i.agw = ptrtoint ptr %i.ags to i64
  %i.agx = sub i64 %i.agv, %i.agw
  call void @_ZdlPvm(ptr noundef nonnull %i.ags, i64 noundef %i.agx) #27
  br label %bb.ex

bb.ev:                                            ; preds = %.noexc64
  %i.agy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.agz = load ptr, ptr %2, align 8, !tbaa !185  ; 3 uses
  %.not.i.i.i8.i = icmp eq ptr %i.agz, null
  br i1 %.not.i.i.i8.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit9.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aha = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !189
  %i.ahc = ptrtoint ptr %i.ahb to i64
  %i.ahd = ptrtoint ptr %i.agz to i64
  %i.ahe = sub i64 %i.ahc, %i.ahd
  call void @_ZdlPvm(ptr noundef nonnull %i.agz, i64 noundef %i.ahe) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit9.i

_ZNSt6vectorIfSaIfEED2Ev.exit9.i:                 ; preds = %bb.ew, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body65

bb.ex:                                            ; preds = %bb.eu, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ahf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.fs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %bb.ex
  %i.ahg = fmul double %.0.lcssa.i.i, %i.agf
  %i.ahh = extractelement <4 x double> %i.afz, i64 2
  %i.ahi = call double @llvm.fmuladd.f64(double %i.aga, double %i.ahh, double %i.ahg)
  %i.ahj = fdiv double %i.ahi, %i.agm
  %i.ahk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ahj)
          to label %_ZNSolsEd.exit unwind label %bb.fs ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !12
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 -24
  %i.ahn = load i64, ptr %i.ahm, align 8
  %i.aho = getelementptr inbounds i8, ptr %i.ahk, i64 %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 240
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !24 ; 6 uses
  %.not.i.i.i90 = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i.i90, label %bb.ey, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91

bb.ey:                                            ; preds = %_ZNSolsEd.exit
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc94 unwind label %bb.fs

.noexc94:                                         ; preds = %bb.ey
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91: ; preds = %_ZNSolsEd.exit
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 56
  %i.ahs = load i8, ptr %i.ahr, align 8, !tbaa !32
  %.not.i1.i.i92 = icmp eq i8 %i.ahs, 0
  br i1 %.not.i1.i.i92, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 67
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.fa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahq)
          to label %.noexc95 unwind label %bb.fs

.noexc95:                                         ; preds = %bb.fa
  %i.ahv = load ptr, ptr %i.ahq, align 8, !tbaa !12
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 48
  %i.ahx = load ptr, ptr %i.ahw, align 8
  %i.ahy = invoke noundef signext i8 %i.ahx(ptr noundef nonnull align 8 dereferenceable(570) %i.ahq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.fs, !inline_history !190

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc95, %bb.ez
  %.0.i.i.i93 = phi i8 [ %i.ahu, %bb.ez ], [ %i.ahy, %.noexc95 ]
  %i.ahz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahk, i8 noundef signext %.0.i.i.i93)
          to label %.noexc97 unwind label %bb.fs

.noexc97:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahz)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.fs ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc97
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  %i.aib = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !191 ; 8 uses
  %.not.i.i71 = icmp eq ptr %i.aic, null
  br i1 %.not.i.i71, label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8 ; 4 uses
  %i.aie = load atomic i64, ptr %i.aid acquire, align 8 ; 2 uses
  %i.aif = icmp eq i64 %i.aie, 4294967297
  %i.aig = trunc i64 %i.aie to i32                ; 2 uses
  br i1 %i.aif, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 0, ptr %i.aid, align 8, !tbaa !192
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aic, i64 12
  store i32 0, ptr %i.aih, align 4, !tbaa !194
  %i.aii = load ptr, ptr %i.aic, align 8, !tbaa !12
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 16
  %i.aik = load ptr, ptr %i.aij, align 8
  call void %i.aik(ptr noundef nonnull align 8 dereferenceable(16) %i.aic) #25, !inline_history !195
  %i.ail = load ptr, ptr %i.aic, align 8, !tbaa !12
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 24
  %i.ain = load ptr, ptr %i.aim, align 8
  call void %i.ain(ptr noundef nonnull align 8 dereferenceable(16) %i.aic) #25, !inline_history !195
  br label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fd:                                            ; preds = %bb.fb
  %i.aio = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.aio, 0
  br i1 %.not.i.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aip = add nsw i32 %i.aig, -1
  store i32 %i.aip, ptr %i.aid, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.aiq = atomicrmw volatile add ptr %i.aid, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ff, %bb.fe
  %.0.i.i.i.i72 = phi i32 [ %i.aig, %bb.fe ], [ %i.aiq, %bb.ff ]
  %i.air = icmp eq i32 %.0.i.i.i.i72, 1
  br i1 %i.air, label %bb.fg, label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !196

bb.fg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aic) #25
  br label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.fc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  ret i32 0

bb.fh:                                            ; preds = %.noexc.i, %bb.i
  %i.ais = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.fi:                                            ; preds = %.noexc.i34, %bb.n
  %i.ait = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.fj:                                            ; preds = %bb.r
end_hunk_0
