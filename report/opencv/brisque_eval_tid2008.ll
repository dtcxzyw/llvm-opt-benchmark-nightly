Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/brisque_eval_tid2008?download=true
inline.NumInlined: 601
inline.NumDeleted: 273
begin_hunk_0_@main:bb.a
  %.pn91.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.i, %bb.ee ], [ %i.zy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330.i ] ; 2 uses
  %i.adq = load ptr, ptr %19, align 8, !tbaa !42, !noalias !135 ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.jo
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i: ; preds = %bb.ef
  %i.ads = load i64, ptr %i.jo, align 8, !tbaa !37, !noalias !135
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327.i
  %.pn91.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327.i ], [ %.pn91.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356.i ], [ %.pn91.pn.pn.pn.i, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !135
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i
  %.pn91.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.i ], [ %.pn74.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %12) #25
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ar
  %.pn91.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.i, %bb.eg ], [ %i.fn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !135
  %i.adu = load ptr, ptr %11, align 8, !tbaa !57, !noalias !135 ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !52, !noalias !135 ; 2 uses
  %.not4.i.i.i359.i = icmp eq ptr %i.adu, %i.adw
  br i1 %.not4.i.i.i359.i, label %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i, label %.lr.ph.i.i.i360.i

.lr.ph.i.i.i360.i:                                ; preds = %bb.eh, %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i
  %.05.i.i.i361.i = phi ptr [ %i.aed, %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i ], [ %i.adu, %bb.eh ] ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.05.i.i.i361.i, i64 8
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !42 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.05.i.i.i361.i, i64 24 ; 2 uses
  %i.aea = icmp eq ptr %i.ady, %i.adz
  br i1 %i.aea, label %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i: ; preds = %.lr.ph.i.i.i360.i
  %i.aeb = load i64, ptr %i.adz, align 8, !tbaa !37
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.ady, i64 noundef %i.aec) #27
  br label %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i

_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i: ; preds = %.lr.ph.i.i.i360.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i
  %i.aed = getelementptr inbounds nuw i8, ptr %.05.i.i.i361.i, i64 40 ; 2 uses
  %.not.i.i.i364.i = icmp eq ptr %i.aed, %i.adw
  br i1 %.not.i.i.i364.i, label %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i, label %.lr.ph.i.i.i360.i, !llvm.loop !90

_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i: ; preds = %_ZSt8_DestroyISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i363.i
  %.pr.i366.i = load ptr, ptr %11, align 8, !tbaa !57, !noalias !135
  br label %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i

_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i: ; preds = %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i, %bb.eh
  %i.aee = phi ptr [ %.pr.i366.i, %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i365.i ], [ %i.adu, %bb.eh ] ; 3 uses
  %.not.i.i1.i368.i = icmp eq ptr %i.aee, null
  br i1 %.not.i.i1.i368.i, label %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i
  %i.aef = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !53, !noalias !135
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %i.aee to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %i.aee, i64 noundef %i.aej) #27
  br label %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i

_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i: ; preds = %bb.ei, %_ZSt8_DestroyIPSt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i367.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !135
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i, %bb.aq
  %.pn91.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorISt4pairIfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit370.i ], [ %i.fm, %bb.aq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #25
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ap
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn.pn.i, %bb.ej ], [ %i.fl, %bb.ap ] ; 2 uses
  %i.aek = load ptr, ptr %9, align 8, !tbaa !42, !noalias !135 ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.dq
  br i1 %i.ael, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.ek, %bb.ae
  %.sink466 = phi ptr [ %i.ec, %bb.ae ], [ %i.aek, %bb.ek ]
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %i.eb, %bb.ae ], [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ek ]
  %i.aem = load i64, ptr %i.dq, align 8, !tbaa !37, !noalias !135
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %.sink466, i64 noundef %i.aen) #27
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.ek, %bb.ae
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.eb, %bb.ae ], [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ek ], [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !135
  %i.aeo = load ptr, ptr %8, align 8, !tbaa !42, !noalias !135 ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.cy
  br i1 %i.aep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374.i: ; preds = %.body.i
  %i.aeq = load i64, ptr %i.cy, align 8, !tbaa !37, !noalias !135
  %i.aer = add i64 %i.aeq, 1
  call void @_ZdlPvm(ptr noundef %i.aeo, i64 noundef %i.aer) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !135
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i151.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !135
  %i.aes = load ptr, ptr %41, align 8, !tbaa !42  ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.cj
  br i1 %i.aet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i151.i
  %i.aeu = load i64, ptr %i.cj, align 8, !tbaa !37
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i151.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.aew = load ptr, ptr %42, align 8, !tbaa !42  ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.bu
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.aey = load i64, ptr %i.bu, align 8, !tbaa !37
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !191
  store i64 9223372034707292160, ptr %6, align 8, !noalias !191
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !191
  store i32 1, ptr %7, align 4, !tbaa !193, !noalias !191
  %i.afa = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 2, ptr %i.afa, align 4, !tbaa !194, !noalias !191
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.el unwind label %bb.fj

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !191
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %43, ptr noundef nonnull align 8 dereferenceable(208) %44)
          to label %bb.em unwind label %bb.fk

bb.em:                                            ; preds = %bb.el
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !195
  store i64 9223372034707292160, ptr %4, align 8, !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !195
  store i32 2, ptr %5, align 4, !tbaa !193, !noalias !195
  %i.afb = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 3, ptr %i.afb, align 4, !tbaa !194, !noalias !195
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.en unwind label %bb.fm

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !195
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %45, ptr noundef nonnull align 8 dereferenceable(208) %46)
          to label %bb.eo unwind label %bb.fn

bb.eo:                                            ; preds = %bb.en
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  %i.afc = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !181
  %i.afe = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !181
  %i.afg = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !196 ; 2 uses
  %i.afi = sext i32 %i.afh to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke fastcc void @_ZN12_GLOBAL__N_112rank_ordinalIfSt8equal_toIfESt4lessIfEEESt6vectorIfSaIfEEPKT_mOT0_OT1_(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef readonly %i.afd, i64 noundef range(i64 -2147483648, 2147483648) %i.afi)
          to label %.noexc64 unwind label %bb.fp

.noexc64:                                         ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke fastcc void @_ZN12_GLOBAL__N_112rank_ordinalIfSt8equal_toIfESt4lessIfEEESt6vectorIfSaIfEEPKT_mOT0_OT1_(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef readonly %i.aff, i64 noundef range(i64 -2147483648, 2147483648) %i.afi)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %.noexc64
  %i.afj = load ptr, ptr %2, align 8, !tbaa !62   ; 2 uses
  %i.afk = load ptr, ptr %3, align 8, !tbaa !62   ; 4 uses
  %.not.i.i61 = icmp eq i32 %i.afh, 0
  br i1 %.not.i.i61, label %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ep, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.ep ] ; 3 uses
  %.049.i.i = phi double [ %i.afp, %.lr.ph.i.i ], [ 0.000000e+00, %bb.ep ]
  %i.afl = phi <4 x double> [ %i.afv, %.lr.ph.i.i ], [ zeroinitializer, %bb.ep ]
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv.i.i
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !59 ; 2 uses
  %i.afo = fpext float %i.afn to double
  %i.afp = fadd double %.049.i.i, %i.afo          ; 2 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %indvars.iv.i.i
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !59
  %47 = insertelement <4 x float> poison, float %i.afn, i64 0
  %i.afs = insertelement <4 x float> %47, float %i.afr, i64 1 ; 2 uses
  %48 = shufflevector <4 x float> %i.afs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %49 = shufflevector <4 x float> %i.afs, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.aft = fmul <4 x float> %48, %49
  %i.afu = fpext <4 x float> %i.aft to <4 x double>
  %i.afv = fadd <4 x double> %i.afl, %i.afu       ; 2 uses
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.afw = and i64 %indvars.iv.next.i.i, 4294967295
  %i.afx = icmp ult i64 %i.afw, %i.afi
  br i1 %i.afx, label %.lr.ph.i.i, label %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i, !llvm.loop !126

_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i:    ; preds = %.lr.ph.i.i, %bb.ep
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.ep ], [ %i.afp, %.lr.ph.i.i ] ; 2 uses
  %i.afy = phi <4 x double> [ zeroinitializer, %bb.ep ], [ %i.afv, %.lr.ph.i.i ] ; 4 uses
  %i.afz = uitofp nneg i64 %i.afi to double       ; 2 uses
  %i.aga = extractelement <4 x double> %i.afy, i64 3
  %i.agb = shufflevector <4 x double> %i.afy, <4 x double> poison, <2 x i32> <i32 poison, i32 3>
  %i.agc = insertelement <2 x double> %i.agb, double %.0.lcssa.i.i, i64 0 ; 2 uses
  %i.agd = fneg <2 x double> %i.agc
  %i.age = fneg double %i.aga
  %i.agf = fmul <2 x double> %i.agc, %i.agd
  %i.agg = insertelement <2 x double> poison, double %i.afz, i64 0
  %i.agh = shufflevector <2 x double> %i.agg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agi = shufflevector <4 x double> %i.afy, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.agj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agh, <2 x double> %i.agi, <2 x double> %i.agf) ; 2 uses
  %shift = shufflevector <2 x double> %i.agj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.agj
  %i.agk = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.agl = call double @sqrt(double noundef %i.agk) #25
  %.not.i.i.i.i62 = icmp eq ptr %i.afk, null
  br i1 %.not.i.i.i.i62, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.eq

bb.eq:                                            ; preds = %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i
  %i.agm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !63
  %i.ago = ptrtoint ptr %i.agn to i64
  %i.agp = ptrtoint ptr %i.afk to i64
  %i.agq = sub i64 %i.ago, %i.agp
  call void @_ZdlPvm(ptr noundef nonnull %i.afk, i64 noundef %i.agq) #27
  %.pre.i63 = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.eq, %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i
  %i.agr = phi ptr [ %i.afj, %_ZN12_GLOBAL__N_17pearsonIfEEdPKT_S3_m.exit.i ], [ %.pre.i63, %bb.eq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not.i.i.i6.i = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i6.i, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.ags = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !63
  %i.agu = ptrtoint ptr %i.agt to i64
  %i.agv = ptrtoint ptr %i.agr to i64
  %i.agw = sub i64 %i.agu, %i.agv
  call void @_ZdlPvm(ptr noundef nonnull %i.agr, i64 noundef %i.agw) #27
  br label %bb.eu

bb.es:                                            ; preds = %.noexc64
  %i.agx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.agy = load ptr, ptr %2, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i8.i = icmp eq ptr %i.agy, null
  br i1 %.not.i.i.i8.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit9.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.agz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !63
  %i.ahb = ptrtoint ptr %i.aha to i64
  %i.ahc = ptrtoint ptr %i.agy to i64
  %i.ahd = sub i64 %i.ahb, %i.ahc
  call void @_ZdlPvm(ptr noundef nonnull %i.agy, i64 noundef %i.ahd) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit9.i

_ZNSt6vectorIfSaIfEED2Ev.exit9.i:                 ; preds = %bb.et, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body65

bb.eu:                                            ; preds = %bb.er, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ahe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.fp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %bb.eu
  %i.ahf = fmul double %.0.lcssa.i.i, %i.age
  %i.ahg = extractelement <4 x double> %i.afy, i64 2
  %i.ahh = call double @llvm.fmuladd.f64(double %i.afz, double %i.ahg, double %i.ahf)
  %i.ahi = fdiv double %i.ahh, %i.agl
  %i.ahj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ahi)
          to label %_ZNSolsEd.exit unwind label %bb.fp ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !13
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 -24
  %i.ahm = load i64, ptr %i.ahl, align 8
  %i.ahn = getelementptr inbounds i8, ptr %i.ahj, i64 %i.ahm
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 240
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i90 = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i90, label %bb.ev, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91

bb.ev:                                            ; preds = %_ZNSolsEd.exit
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc94 unwind label %bb.fp

.noexc94:                                         ; preds = %bb.ev
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91: ; preds = %_ZNSolsEd.exit
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 56
  %i.ahr = load i8, ptr %i.ahq, align 8, !tbaa !36
  %.not.i1.i.i92 = icmp eq i8 %i.ahr, 0
  br i1 %.not.i1.i.i92, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahp, i64 67
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ex:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahp)
          to label %.noexc95 unwind label %bb.fp

.noexc95:                                         ; preds = %bb.ex
  %i.ahu = load ptr, ptr %i.ahp, align 8, !tbaa !13
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 48
  %i.ahw = load ptr, ptr %i.ahv, align 8
  %i.ahx = invoke noundef signext i8 %i.ahw(ptr noundef nonnull align 8 dereferenceable(570) %i.ahp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.fp, !inline_history !127

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc95, %bb.ew
  %.0.i.i.i93 = phi i8 [ %i.aht, %bb.ew ], [ %i.ahx, %.noexc95 ]
  %i.ahy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahj, i8 noundef signext %.0.i.i.i93)
          to label %.noexc97 unwind label %bb.fp

.noexc97:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ahz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahy)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.fp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc97
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  %i.aia = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !64 ; 8 uses
  %.not.i.i71 = icmp eq ptr %i.aib, null
  br i1 %.not.i.i71, label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8 ; 4 uses
  %i.aid = load atomic i64, ptr %i.aic acquire, align 8 ; 2 uses
  %i.aie = icmp eq i64 %i.aid, 4294967297
  %i.aif = trunc i64 %i.aid to i32                ; 2 uses
  br i1 %i.aie, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.aic, align 8, !tbaa !66
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aib, i64 12
  store i32 0, ptr %i.aig, align 4, !tbaa !67
  %i.aih = load ptr, ptr %i.aib, align 8, !tbaa !13
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  %i.aij = load ptr, ptr %i.aii, align 8
  call void %i.aij(ptr noundef nonnull align 8 dereferenceable(16) %i.aib) #25, !inline_history !128
  %i.aik = load ptr, ptr %i.aib, align 8, !tbaa !13
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 24
  %i.aim = load ptr, ptr %i.ail, align 8
  call void %i.aim(ptr noundef nonnull align 8 dereferenceable(16) %i.aib) #25, !inline_history !128
  br label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fa:                                            ; preds = %bb.ey
  %i.ain = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.ain, 0
  br i1 %.not.i.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aio = add nsw i32 %i.aif, -1
  store i32 %i.aio, ptr %i.aic, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.aip = atomicrmw volatile add ptr %i.aic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fc, %bb.fb
  %.0.i.i.i.i72 = phi i32 [ %i.aif, %bb.fb ], [ %i.aip, %bb.fc ]
  %i.aiq = icmp eq i32 %.0.i.i.i.i72, 1
  br i1 %i.aiq, label %bb.fd, label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.fd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aib) #25
  br label %_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv7quality14QualityBRISQUEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  ret i32 0

bb.fe:                                            ; preds = %.noexc.i, %bb.i
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.ff:                                            ; preds = %.noexc.i34, %bb.n
end_hunk_0
