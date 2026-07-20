inline.NumInlined: 2834
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Assimp11XGLImporter20ReadDirectionalLightERN4pugi8xml_nodeE:.noexc.i

bb.af:                                            ; preds = %.noexc64
  %i.eo = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc65 unwind label %bb.ah

.noexc65:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !40
  store ptr @.str, ptr %i.a, align 8, !noalias !40
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA36_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(36) @.str.84)
          to label %.noexc66 unwind label %bb.ah

.noexc66:                                         ; preds = %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !40
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc66, %.noexc64, %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 1092
  store <2 x float> %.fca.0.extract.i55, ptr %i.ep, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread98.sink.split

bb.ah:                                            ; preds = %.noexc65, %bb.af, %bb.ae, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread98.sink.split: ; preds = %bb.t, %bb.ag, %bb.ab
  %.sink123 = phi i64 [ 1088, %bb.ab ], [ 1100, %bb.ag ], [ 1052, %bb.t ]
  %.fca.1.extract.i.sink = phi float [ %.fca.1.extract.i, %bb.ab ], [ %.fca.1.extract.i56, %bb.ag ], [ %.fca.1.extract, %bb.t ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink123
  store float %.fca.1.extract.i.sink, ptr %i.er, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread98

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread98: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread98.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54
  %i.es = load ptr, ptr %6, align 8               ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bv
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread98
  %i.eu = load i64, ptr %i.bv, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54.thread98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ac, %bb.x
  %.pn20 = phi { ptr, i32 } [ %i.dq, %bb.x ], [ %i.ed, %bb.ac ], [ %i.eq, %bb.ah ]
  %i.ew = load ptr, ptr %6, align 8               ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.bv
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ai
  %i.ey = load i64, ptr %i.bv, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit32

bb.aj:                                            ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.sroa.089.0 = phi ptr [ %i.g, %bb.f ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ] ; 2 uses
  %.0 = phi ptr [ null, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fa = load ptr, ptr %2, align 8               ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.r
  br i1 %i.fb, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %bb.aj
  %i.fc = load i64, ptr %i.r, align 8
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #27
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit76

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit76: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.not.i77 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not.i77, label %_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI7aiLightEclEPS0_.exit.i

_ZNKSt14default_deleteI7aiLightEclEPS0_.exit.i:   ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit76
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.089.0, i64 noundef 1132) #27
  br label %_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit76, %_ZNKSt14default_deleteI7aiLightEclEPS0_.exit.i
  ret ptr %.0

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit32: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.j
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bh, %bb.j ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ %i.bc, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fe = load ptr, ptr %2, align 8               ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.r
  br i1 %i.ff, label %_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit32
  %i.fg = load i64, ptr %i.r, align 8
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #27
  br label %_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrI7aiLightSt14default_deleteIS0_EED2Ev.exit83: ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn20.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78 ], [ %.pn20.pn.pn, %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 1132) #27
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK4pugi8xml_node10find_childIN6Assimp27find_node_by_name_predicateEEES0_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 9 uses
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZNK4pugi8xml_node11first_childEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr %i.b, ptr %3, align 8
  %i.c = call noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.not24 = icmp eq ptr %i.c, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.01.0.copyload = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.01.0.copyload, ptr %2, align 8
  %i.e = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 3 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #26
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.e, label %_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit.thread3

_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit.thread3: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit.thread, label %_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit

_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.loopexit

_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit: ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.j, ptr nonnull %i.e, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit.thread3, %_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit
  %i.l = call ptr @_ZNK4pugi8xml_node12next_siblingEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr %i.l, ptr %3, align 8
  %i.m = call noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.not2 = icmp eq ptr %i.m, null
  br i1 %.not2, label %._crit_edge, label %bb.d, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.f, %bb.c
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit, %_ZNK6Assimp27find_node_by_name_predicateclEN4pugi8xml_nodeE.exit.thread, %._crit_edge, %bb.b
  %i.n = load ptr, ptr %3, align 8
  ret ptr %i.n
}

declare noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca float, align 4                    ; 15 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = load i64, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 8 uses
  %3 = ptrtoaddr ptr %i.i to i64                  ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.d:                                             ; preds = %bb.f, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.f ] ; 4 uses
  %i.k = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.k, label %.critedge.i.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i.i = icmp eq ptr %.0.i.i, %i.i
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.d, !llvm.loop !44

.critedge.i.ithread-pre-split:                    ; preds = %bb.e
  %.pr = load i8, ptr %i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.d, %.critedge.i.ithread-pre-split
  %i.m = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.k, %bb.d ]
  %.0.lcssa.i.i = phi ptr [ %i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.d ]
  switch i8 %i.m, label %bb.h [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i.2, %.critedge.i.i.2, %.critedge.i.i.2, %.critedge.i.i.2, %.critedge.i.i.1, %.critedge.i.i.1, %.critedge.i.i.1, %.critedge.i.i.1, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert, %.critedge.i.i.2 ], [ %.sroa.0.4.vec.insert, %.critedge.i.i.2 ], [ %.sroa.0.4.vec.insert, %.critedge.i.i.2 ], [ %.sroa.0.4.vec.insert, %.critedge.i.i.2 ], [ %.sroa.0.0.vec.insert, %.critedge.i.i.1 ], [ %.sroa.0.0.vec.insert, %.critedge.i.i.1 ], [ %.sroa.0.0.vec.insert, %.critedge.i.i.1 ], [ %.sroa.0.0.vec.insert, %.critedge.i.i.1 ], [ zeroinitializer, %.critedge.i.i ], [ zeroinitializer, %.critedge.i.i ], [ zeroinitializer, %.critedge.i.i ], [ zeroinitializer, %.critedge.i.i ] ; 2 uses
  %i.n = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br i1 %i.n, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.o = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(37) @.str.82)
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit

.loopexit:                                        ; preds = %bb.z, %bb.r, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %bb.g, %.noexc14, %bb.l, %bb.m, %.noexc24
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.h:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.p = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
          to label %_ZN10aiVector3tIfEixEj.exit unwind label %.loopexit ; 3 uses

_ZN10aiVector3tIfEixEj.exit:                      ; preds = %bb.h
  %i.q = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.q, i64 0 ; 6 uses
  %4 = ptrtoaddr ptr %i.p to i64
  %i.r = sub i64 %3, %4
  %scevgep.i.i17 = getelementptr i8, ptr %i.p, i64 %i.r ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_ZN10aiVector3tIfEixEj.exit
  %.0.i.i18 = phi ptr [ %i.p, %_ZN10aiVector3tIfEixEj.exit ], [ %i.t, %bb.k ] ; 4 uses
  %i.s = load i8, ptr %.0.i.i18, align 1          ; 2 uses
  switch i8 %i.s, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22 [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not.i.i19 = icmp eq ptr %.0.i.i18, %i.i
  br i1 %.not.i.i19, label %.critedge.i.i20thread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i18, i64 1
  br label %bb.i, !llvm.loop !44

.critedge.i.i20thread-pre-split:                  ; preds = %bb.j
  %.pr37 = load i8, ptr %scevgep.i.i17, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22:       ; preds = %bb.i, %.critedge.i.i20thread-pre-split
  %i.u = phi i8 [ %.pr37, %.critedge.i.i20thread-pre-split ], [ %i.s, %bb.i ]
  %.0.lcssa.i.i21 = phi ptr [ %scevgep.i.i17, %.critedge.i.i20thread-pre-split ], [ %.0.i.i18, %bb.i ]
  %.not12 = icmp eq i8 %i.u, 44
  br i1 %.not12, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22.1, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22
  %.sroa.0.1 = phi <2 x float> [ %.sroa.0.4.vec.insert, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22.1 ], [ %.sroa.0.0.vec.insert, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22 ] ; 2 uses
  %i.v = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.l
  br i1 %i.v, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %.noexc23
  %i.w = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.83)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit

bb.n:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i21, i64 1 ; 3 uses
  %5 = ptrtoaddr ptr %i.x to i64
  %i.y = sub i64 %3, %5
  %scevgep.i.i.1 = getelementptr i8, ptr %i.x, i64 %i.y ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.0.i.i.1 = phi ptr [ %i.x, %bb.n ], [ %i.aa, %bb.q ] ; 4 uses
  %i.z = load i8, ptr %.0.i.i.1, align 1          ; 2 uses
  switch i8 %i.z, label %.critedge.i.i.1 [
    i8 32, label %bb.p
    i8 9, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %.not.i.i.1 = icmp eq ptr %.0.i.i.1, %i.i
  br i1 %.not.i.i.1, label %.critedge.i.ithread-pre-split.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 1
  br label %bb.o, !llvm.loop !44

.critedge.i.ithread-pre-split.1:                  ; preds = %bb.p
  %.pr.1 = load i8, ptr %scevgep.i.i.1, align 1
  br label %.critedge.i.i.1

.critedge.i.i.1:                                  ; preds = %bb.o, %.critedge.i.ithread-pre-split.1
  %i.ab = phi i8 [ %.pr.1, %.critedge.i.ithread-pre-split.1 ], [ %i.z, %bb.o ]
  %.0.lcssa.i.i.1 = phi ptr [ %scevgep.i.i.1, %.critedge.i.ithread-pre-split.1 ], [ %.0.i.i.1, %bb.o ]
  switch i8 %i.ab, label %bb.r [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

bb.r:                                             ; preds = %.critedge.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.ac = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
          to label %_ZN10aiVector3tIfEixEj.exit.1 unwind label %.loopexit ; 3 uses

_ZN10aiVector3tIfEixEj.exit.1:                    ; preds = %bb.r
  %i.ad = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ad, i64 1 ; 6 uses
  %6 = ptrtoaddr ptr %i.ac to i64
  %i.ae = sub i64 %3, %6
  %scevgep.i.i17.1 = getelementptr i8, ptr %i.ac, i64 %i.ae ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %_ZN10aiVector3tIfEixEj.exit.1
  %.0.i.i18.1 = phi ptr [ %i.ac, %_ZN10aiVector3tIfEixEj.exit.1 ], [ %i.ag, %bb.u ] ; 4 uses
  %i.af = load i8, ptr %.0.i.i18.1, align 1       ; 2 uses
  switch i8 %i.af, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22.1 [
    i8 32, label %bb.t
    i8 9, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %.not.i.i19.1 = icmp eq ptr %.0.i.i18.1, %i.i
  br i1 %.not.i.i19.1, label %.critedge.i.i20thread-pre-split.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i18.1, i64 1
  br label %bb.s, !llvm.loop !44

.critedge.i.i20thread-pre-split.1:                ; preds = %bb.t
  %.pr37.1 = load i8, ptr %scevgep.i.i17.1, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22.1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22.1:     ; preds = %bb.s, %.critedge.i.i20thread-pre-split.1
  %i.ah = phi i8 [ %.pr37.1, %.critedge.i.i20thread-pre-split.1 ], [ %i.af, %bb.s ]
  %.0.lcssa.i.i21.1 = phi ptr [ %scevgep.i.i17.1, %.critedge.i.i20thread-pre-split.1 ], [ %.0.i.i18.1, %bb.s ]
  %.not12.1 = icmp eq i8 %i.ah, 44
  br i1 %.not12.1, label %bb.v, label %bb.l

bb.v:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22.1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i21.1, i64 1 ; 3 uses
  %7 = ptrtoaddr ptr %i.ai to i64
  %i.aj = sub i64 %3, %7
  %scevgep.i.i.2 = getelementptr i8, ptr %i.ai, i64 %i.aj ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.0.i.i.2 = phi ptr [ %i.ai, %bb.v ], [ %i.al, %bb.y ] ; 4 uses
  %i.ak = load i8, ptr %.0.i.i.2, align 1         ; 2 uses
  switch i8 %i.ak, label %.critedge.i.i.2 [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %.not.i.i.2 = icmp eq ptr %.0.i.i.2, %i.i
  br i1 %.not.i.i.2, label %.critedge.i.ithread-pre-split.2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.2, i64 1
  br label %bb.w, !llvm.loop !44

.critedge.i.ithread-pre-split.2:                  ; preds = %bb.x
  %.pr.2 = load i8, ptr %scevgep.i.i.2, align 1
  br label %.critedge.i.i.2

.critedge.i.i.2:                                  ; preds = %bb.w, %.critedge.i.ithread-pre-split.2
  %i.am = phi i8 [ %.pr.2, %.critedge.i.ithread-pre-split.2 ], [ %i.ak, %bb.w ]
  %.0.lcssa.i.i.2 = phi ptr [ %scevgep.i.i.2, %.critedge.i.ithread-pre-split.2 ], [ %.0.i.i.2, %bb.w ]
  switch i8 %i.am, label %bb.z [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

bb.z:                                             ; preds = %.critedge.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.an = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
          to label %_ZN10aiVector3tIfEixEj.exit.2 unwind label %.loopexit ; 0 uses

_ZN10aiVector3tIfEixEj.exit.2:                    ; preds = %bb.z
  %i.ao = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit: ; preds = %_ZN10aiVector3tIfEixEj.exit.2, %.noexc25, %.noexc23, %.noexc15, %.noexc
  %.sroa.0.2 = phi <2 x float> [ %.sroa.0.4.vec.insert, %_ZN10aiVector3tIfEixEj.exit.2 ], [ %.sroa.0.0, %.noexc ], [ %.sroa.0.0, %.noexc15 ], [ %.sroa.0.1, %.noexc23 ], [ %.sroa.0.1, %.noexc25 ]
  %.sroa.5.0 = phi float [ %i.ao, %_ZN10aiVector3tIfEixEj.exit.2 ], [ 0.000000e+00, %.noexc ], [ 0.000000e+00, %.noexc15 ], [ 0.000000e+00, %.noexc23 ], [ 0.000000e+00, %.noexc25 ]
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit
  %i.ar = load i64, ptr %i.d, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5.0, 1
  ret { <2 x float>, float } %.fca.1.insert

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = load ptr, ptr %2, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.aa
  %i.av = load i64, ptr %i.d, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.aiColor3D) align 4 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.b, 0 ; 3 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.b, 1 ; 3 uses
  %.sroa.0.0.vec.extract14 = extractelement <2 x float> %.fca.0.extract, i64 0 ; 2 uses
  %i.c = fcmp olt float %.sroa.0.0.vec.extract14, 0.000000e+00
  %i.d = fcmp ogt float %.sroa.0.0.vec.extract14, 1.000000e+00
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.4.vec.extract18 = extractelement <2 x float> %.fca.0.extract, i64 1 ; 2 uses
  %i.e = fcmp olt float %.sroa.0.4.vec.extract18, 0.000000e+00
  %i.f = fcmp ogt float %.sroa.0.4.vec.extract18, 1.000000e+00
  %or.cond21 = or i1 %i.e, %i.f
  %i.g = fcmp olt float %.fca.1.extract, 0.000000e+00
  %i.h = fcmp ogt float %.fca.1.extract, 1.000000e+00
  %i.i = or i1 %i.g, %i.h
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %i.i
  br i1 %or.cond23, label %bb.c, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.j, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA36_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(36) @.str.84)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit: ; preds = %bb.d, %bb.c, %bb.b
  store <2 x float> %.fca.0.extract, ptr %0, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.fca.1.extract, ptr %i.l, align 4
  ret void
}

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp11XGLImporter8ReadMeshERN4pugi8xml_nodeERNS0_9TempScopeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, Assimp::XGLImporter::TempMaterialMesh>, std::_Select1st<std::pair<const unsigned int, Assimp::XGLImporter::TempMaterialMesh>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::tuple.139", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.142", align 1    ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::tuple.139", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.142", align 1    ; 3 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.Assimp::XGLImporter::TempMesh", align 8 ; 24 uses
  %9 = alloca %"class.std::map.78", align 8       ; 12 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %10 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %11 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %12 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %18 = alloca [3 x %"struct.Assimp::XGLImporter::TempFace"], align 16 ; 10 uses
  %i.m = alloca [3 x i8], align 1                 ; 6 uses
  %19 = alloca %"struct.Assimp::XGLImporter::TempMesh", align 8 ; 9 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %20 = alloca %"class.std::map.78", align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.o, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 6 uses
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 72
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 3 uses
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 120
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 128
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.ae, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11XGLImporter8ReadMeshERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
  %i.im = shl nuw nsw i64 %i.il, 2
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #29
          to label %.noexc193 unwind label %.loopexit265 ; 4 uses

.noexc193:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 %i.if ; 2 uses
  store i32 %i.fv, ptr %i.io, align 4
  %i.ip = icmp sgt i64 %i.if, 0
  br i1 %i.ip, label %bb.cn, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.cn:                                            ; preds = %.noexc193
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.in, ptr align 4 %i.ic, i64 %i.if, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.cn, %.noexc193
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.if) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.co, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.in, ptr %i.hv, align 8
  store ptr %i.iq, ptr %i.hw, align 8
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.il
  store ptr %i.ir, ptr %i.hy, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit265:                                     ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA64_KcEEEvDpOT_.exit, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit.split-lp266:                            ; preds = %bb.cm
  %lpad.loopexit.split-lp268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cp:                                            ; preds = %bb.ci, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit
  %indvars.iv533 = phi i64 [ 0, %bb.ci ], [ %indvars.iv.next534, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw [36 x i8], ptr %18, i64 %indvars.iv533 ; 4 uses
  %i.it = load ptr, ptr %i.hk, align 8            ; 5 uses
  %i.iu = load ptr, ptr %i.hl, align 8
  %.not.i194 = icmp eq ptr %i.it, %i.iu
  br i1 %.not.i194, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.it, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  %i.iv = load ptr, ptr %i.hk, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store ptr %i.iw, ptr %i.hk, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.cr:                                            ; preds = %bb.cp
  %i.ix = load ptr, ptr %i.hi, align 8            ; 5 uses
  %i.iy = ptrtoint ptr %i.it to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 4 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.cv, %bb.cr, %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #30
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cr
  %i.jc = sdiv exact i64 %i.ja, 12                ; 3 uses
  %.sroa.speculated.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i195, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 768614336404564650)
  %i.jg = select i1 %i.je, i64 768614336404564650, i64 %i.jf ; 3 uses
  %.not.i.i.i196 = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i.i196)
  %i.jh = mul nuw nsw i64 %i.jg, 12
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #29
          to label %.noexc198 unwind label %.loopexit ; 5 uses

.noexc198:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jj, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ix, %i.it
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc198, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i ], [ %i.ji, %.noexc198 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i ], [ %i.ix, %.noexc198 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !58
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jk, %i.it
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc198
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ji, %.noexc198 ], [ %i.jl, %.lr.ph.i.i.i.i.i ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.ja) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cs, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ji, ptr %i.hi, align 8
  store ptr %i.jm, ptr %i.hk, align 8
  %i.jn = getelementptr inbounds nuw [12 x i8], ptr %i.ji, i64 %i.jg
  store ptr %i.jn, ptr %i.hl, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cq
  br i1 %i.gv, label %bb.ct, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214

bb.ct:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.is, i64 12 ; 2 uses
  %i.jp = load ptr, ptr %i.hn, align 8            ; 5 uses
  %i.jq = load ptr, ptr %i.ho, align 8
  %.not.i199 = icmp eq ptr %i.jp, %i.jq
  br i1 %.not.i199, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jp, ptr noundef nonnull align 4 dereferenceable(12) %i.jo, i64 12, i1 false)
  %i.jr = load ptr, ptr %i.hn, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store ptr %i.js, ptr %i.hn, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214

bb.cv:                                            ; preds = %bb.ct
  %i.jt = load ptr, ptr %i.hm, align 8            ; 5 uses
  %i.ju = ptrtoint ptr %i.jp to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv                    ; 4 uses
  %i.jx = icmp eq i64 %i.jw, 9223372036854775800
  br i1 %i.jx, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200: ; preds = %bb.cv
  %i.jy = sdiv exact i64 %i.jw, 12                ; 3 uses
  %.sroa.speculated.i.i.i201 = call i64 @llvm.umax.i64(i64 %i.jy, i64 1)
  %i.jz = add nsw i64 %.sroa.speculated.i.i.i201, %i.jy ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jy
  %i.kb = call i64 @llvm.umin.i64(i64 %i.jz, i64 768614336404564650)
  %i.kc = select i1 %i.ka, i64 768614336404564650, i64 %i.kb ; 3 uses
  %.not.i.i.i202 = icmp ne i64 %i.kc, 0
  call void @llvm.assume(i1 %.not.i.i.i202)
  %i.kd = mul nuw nsw i64 %i.kc, 12
  %i.ke = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kd) #29
          to label %.noexc213 unwind label %.loopexit ; 5 uses

.noexc213:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kf, ptr noundef nonnull align 4 dereferenceable(12) %i.jo, i64 12, i1 false)
  %.not10.i.i.i.i.i203 = icmp eq ptr %i.jt, %i.jp
  br i1 %.not10.i.i.i.i.i203, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208, label %.lr.ph.i.i.i.i.i204

.lr.ph.i.i.i.i.i204:                              ; preds = %.noexc213, %.lr.ph.i.i.i.i.i204
  %.012.i.i.i.i.i205 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i204 ], [ %i.ke, %.noexc213 ] ; 2 uses
  %.0911.i.i.i.i.i206 = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i204 ], [ %i.jt, %.noexc213 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i205, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i206, i64 12, i1 false), !alias.scope !63
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i206, i64 12 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i205, i64 12 ; 2 uses
  %.not.i.i.i.i.i207 = icmp eq ptr %i.kg, %i.jp
  br i1 %.not.i.i.i.i.i207, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208, label %.lr.ph.i.i.i.i.i204, !llvm.loop !62

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208: ; preds = %.lr.ph.i.i.i.i.i204, %.noexc213
  %.0.lcssa.i.i.i.i.i209 = phi ptr [ %i.ke, %.noexc213 ], [ %i.kh, %.lr.ph.i.i.i.i.i204 ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i209, i64 12
  %.not.i23.i.i210 = icmp eq ptr %i.jt, null
  br i1 %.not.i23.i.i210, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jw) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211: ; preds = %bb.cw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208
  store ptr %i.ke, ptr %i.hm, align 8
  store ptr %i.ki, ptr %i.hn, align 8
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.kc
  store ptr %i.kj, ptr %i.ho, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i200, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211, %bb.cu, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  br i1 %i.ha, label %bb.cx, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214
  %i.kk = getelementptr inbounds nuw i8, ptr %i.is, i64 24 ; 2 uses
  %i.kl = load ptr, ptr %i.hq, align 8            ; 6 uses
  %i.km = load ptr, ptr %i.hr, align 8
  %.not.i215 = icmp eq ptr %i.kl, %i.km
  br i1 %.not.i215, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kn = load i64, ptr %i.kk, align 4
  store i64 %i.kn, ptr %i.kl, align 4
  %i.ko = load ptr, ptr %i.hq, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kp, ptr %i.hq, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.cz:                                            ; preds = %bb.cx
  %i.kq = load ptr, ptr %i.hp, align 8            ; 8 uses
  %i.kr = ptrtoint ptr %i.kl to i64
  %i.ks = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 4 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775800
  br i1 %i.ku, label %.invoke, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cz
  %i.kv = ashr exact i64 %i.kt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i216 = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i.i216, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 1152921504606846975)
  %i.kz = select i1 %i.kx, i64 1152921504606846975, i64 %i.ky ; 3 uses
  %.not.i.i.i217 = icmp ne i64 %i.kz, 0
  call void @llvm.assume(i1 %.not.i.i.i217)
  %i.la = shl nuw nsw i64 %i.kz, 3
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #29
          to label %.noexc226 unwind label %.loopexit ; 8 uses

.noexc226:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kt
  %i.ld = load i64, ptr %i.kk, align 4
  store i64 %i.ld, ptr %i.lc, align 4
  %.not10.i.i.i.i.i218 = icmp eq ptr %i.kq, %i.kl
  br i1 %.not10.i.i.i.i.i218, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i219.preheader

.lr.ph.i.i.i.i.i219.preheader:                    ; preds = %.noexc226
  %i.le = ptrtoaddr ptr %i.lb to i64
  %21 = ptrtoaddr ptr %i.kl to i64
  %22 = ptrtoaddr ptr %i.kq to i64
  %i.lf = sub i64 %21, %22
  %i.lg = add i64 %i.lf, -8                       ; 2 uses
  %i.lh = lshr i64 %i.lg, 3
  %i.li = add nuw nsw i64 %i.lh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lg, 24
  %i.lj = sub i64 %i.ks, %i.le
  %diff.check = icmp ugt i64 %i.lj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i219.preheader722, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i219.preheader
  %n.vec = and i64 %i.li, 4611686018427387900     ; 3 uses
  %i.lk = shl i64 %n.vec, 3                       ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lb, i64 %i.lk  ; 2 uses
  %i.lm = getelementptr i8, ptr %i.kq, i64 %i.lk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ln = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lb, i64 %i.ln ; 2 uses
  %next.gep719 = getelementptr i8, ptr %i.kq, i64 %i.ln ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.lo = getelementptr i8, ptr %next.gep719, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep719, align 4, !alias.scope !70, !noalias !67
  %wide.load720 = load <2 x i64>, ptr %i.lo, align 4, !alias.scope !70, !noalias !67
  %i.lp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !67, !noalias !70
  store <2 x i64> %wide.load720, ptr %i.lp, align 4, !alias.scope !67, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.li, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i219.preheader722

.lr.ph.i.i.i.i.i219.preheader722:                 ; preds = %.lr.ph.i.i.i.i.i219.preheader, %middle.block
  %.012.i.i.i.i.i220.ph = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i219.preheader ], [ %i.ll, %middle.block ]
  %.0911.i.i.i.i.i221.ph = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i219.preheader ], [ %i.lm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i219

.lr.ph.i.i.i.i.i219:                              ; preds = %.lr.ph.i.i.i.i.i219.preheader722, %.lr.ph.i.i.i.i.i219
  %.012.i.i.i.i.i220 = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i219 ], [ %.012.i.i.i.i.i220.ph, %.lr.ph.i.i.i.i.i219.preheader722 ] ; 2 uses
  %.0911.i.i.i.i.i221 = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i219 ], [ %.0911.i.i.i.i.i221.ph, %.lr.ph.i.i.i.i.i219.preheader722 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.lr = load i64, ptr %.0911.i.i.i.i.i221, align 4, !alias.scope !70, !noalias !67
  store i64 %i.lr, ptr %.012.i.i.i.i.i220, align 4, !alias.scope !67, !noalias !70
  %i.ls = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i221, i64 8 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i220, i64 8 ; 2 uses
  %.not.i.i.i.i.i222 = icmp eq ptr %i.ls, %i.kl
  br i1 %.not.i.i.i.i.i222, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i219, !llvm.loop !75

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i219, %middle.block, %.noexc226
  %.0.lcssa.i.i.i.i.i223 = phi ptr [ %i.lb, %.noexc226 ], [ %i.ll, %middle.block ], [ %i.lt, %.lr.ph.i.i.i.i.i219 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i223, i64 8
  %.not.i23.i.i224 = icmp eq ptr %i.kq, null
  br i1 %.not.i23.i.i224, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.kt) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.da, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.lb, ptr %i.hp, align 8
  store ptr %i.lu, ptr %i.hq, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.kz
  store ptr %i.lv, ptr %i.hr, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cy, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit214
  %i.lw = load i32, ptr %i.hu, align 8
  %i.lx = or i32 %i.lw, %i.ht
  store i32 %i.lx, ptr %i.hu, align 8
  %indvars.iv.next534 = add nuw nsw i64 %indvars.iv533, 1 ; 2 uses
  %exitcond537.not = icmp eq i64 %indvars.iv.next534, %wide.trip.count
  br i1 %exitcond537.not, label %bb.cj, label %bb.cp, !llvm.loop !76

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249

bb.db:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit265, %.loopexit.split-lp266
  %.pn102 = phi { ptr, i32 } [ %lpad.loopexit.split-lp268, %.loopexit.split-lp266 ], [ %lpad.loopexit267, %.loopexit265 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  br label %.body

.body:                                            ; preds = %.loopexit260, %.loopexit.split-lp261, %bb.bz, %bb.by, %bb.bt, %bb.ch, %bb.db, %bb.bu
  %.pn104.pn = phi { ptr, i32 } [ %i.gj, %bb.bu ], [ %i.hd, %bb.ch ], [ %i.gi, %bb.bt ], [ %.pn102, %bb.db ], [ %i.gp, %bb.by ], [ %i.gq, %bb.bz ], [ %lpad.loopexit262, %.loopexit260 ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp261 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.dc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA34_KcEEEvDpOT_.exit, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit153
  %.170 = phi i1 [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179 ], [ %.069, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit ], [ %.069, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit153 ], [ %.069, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA34_KcEEEvDpOT_.exit ], [ true, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.069, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170 ], [ %.069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.1 = phi i32 [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179 ], [ %.0, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit ], [ %.0, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA33_KcEEEvDpOT_.exit153 ], [ %.0, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE7LogWarnIJRA34_KcEEEvDpOT_.exit ], [ %.0, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.cx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ly = load ptr, ptr %13, align 8              ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ao
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249
  %i.ma = load i64, ptr %i.ao, align 8
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit179.thread249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.mc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.dc:                                            ; preds = %.body, %bb.bl, %bb.ay, %bb.ak, %bb.w
  %.pn124 = phi { ptr, i32 } [ %i.df, %bb.w ], [ %.pn122, %bb.ak ], [ %.pn117, %bb.ay ], [ %.pn112, %bb.bl ], [ %.pn104.pn, %.body ]
  %i.md = load ptr, ptr %13, align 8              ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.ao
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.dc
  %i.mf = load i64, ptr %i.ao, align 8
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.dd

bb.dd:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.i
  %.pn128 = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %i.cy, %bb.t ], [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ds

bb.de:                                            ; preds = %bb.f
  %i.mh = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 100
  store i32 %.0, ptr %i.mi, align 4
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dh:                                            ; preds = %bb.df, %bb.f
  %i.mk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i32 0, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr null, ptr %i.ml, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  store ptr %i.mk, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  store ptr %i.mk, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  store i64 0, ptr %i.mo, align 8
  %i.mp = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i, label %_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEC2ERKS9_.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %20, ptr %3, align 8
  %i.mq = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull %i.mp, ptr noundef nonnull %i.mk, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i233 unwind label %bb.g ; 3 uses

.noexc.i.i233:                                    ; preds = %bb.di, %.noexc.i.i233
  %.0.i.i.i.i.i.i = phi ptr [ %i.ms, %.noexc.i.i233 ], [ %i.mq, %bb.di ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i233, !llvm.loop !77

_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i233
  store ptr %.0.i.i.i.i.i.i, ptr %i.mm, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.mq, %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.mu, %bb.dj ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.dk, label %bb.dj, !llvm.loop !78

bb.dk:                                            ; preds = %bb.dj
  store ptr %.0.i.i7.i.i.i.i, ptr %i.mn, align 8
  %i.mv = load i64, ptr %i.ah, align 8
  store i64 %i.mv, ptr %i.mo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr %i.mq, ptr %i.ml, align 8
  br label %_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEC2ERKS9_.exit

_ZNSt3mapIjN6Assimp11XGLImporter16TempMaterialMeshESt4lessIjESaISt4pairIKjS2_EEEC2ERKS9_.exit: ; preds = %bb.dk, %bb.dh
  %i.mw = load i32, ptr %i.i, align 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp11XGLImporter12ToOutputMeshERKNS0_16TempMaterialMeshE:bb.a
  store i32 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  store i32 0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  store ptr null, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  store i32 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  store ptr null, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  store i32 0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 120
  store ptr null, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 128 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ce
  br i1 %i.de, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  store ptr %i.cc, ptr %i.df, align 8
  %.not61 = icmp eq i32 %i.bv, 0
  br i1 %.not61, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph59

_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit: ; preds = %._crit_edge, %.loopexit
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dh = load i32, ptr %i.dg, align 8
  store i32 %i.dh, ptr %i.a, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 %i.dj, ptr %i.dk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %i.a

.lr.ph59:                                         ; preds = %.loopexit, %._crit_edge
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %._crit_edge ], [ 0, %.loopexit ] ; 3 uses
  %.03856 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.loopexit ] ; 2 uses
  %i.dl = load ptr, ptr %i.df, align 8
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %indvars.iv69 ; 4 uses
  %i.dn = load ptr, ptr %i.bn, align 8
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv69
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  store i32 %i.dp, ptr %i.dm, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dr) #29
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph59
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8
  %i.du = load i32, ptr %i.dm, align 8
  %.not62 = icmp eq i32 %i.du, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph55

._crit_edge:                                      ; preds = %.lr.ph55, %bb.p
  %.1.lcssa = phi i32 [ %.03856, %bb.p ], [ %i.dz, %.lr.ph55 ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.dv = load i32, ptr %i.c, align 8
  %i.dw = zext i32 %i.dv to i64
  %i.dx = icmp samesign ult i64 %indvars.iv.next70, %i.dw
  br i1 %i.dx, label %.lr.ph59, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !101

bb.q:                                             ; preds = %.lr.ph59
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph55:                                         ; preds = %bb.p, %.lr.ph55
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.lr.ph55 ], [ 0, %bb.p ] ; 2 uses
  %.153 = phi i32 [ %i.dz, %.lr.ph55 ], [ %.03856, %bb.p ] ; 2 uses
  %i.dz = add i32 %.153, 1                        ; 2 uses
  %i.ea = load ptr, ptr %i.dt, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv66
  store i32 %.153, ptr %i.eb, align 4
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ec = load i32, ptr %i.dm, align 8
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp samesign ult i64 %indvars.iv.next67, %i.ed
  br i1 %i.ee, label %.lr.ph55, label %._crit_edge, !llvm.loop !102

bb.r:                                             ; preds = %bb.q, %bb.k
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.q ], [ %i.ap, %bb.k ]
  call void @_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit

_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit:      ; preds = %bb.a
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1320) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp11XGLImporter10ReadIDAttrERN4pugi8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_object_range.96", align 16 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute_iterator", align 16 ; 7 uses
  %4 = alloca %"class.pugi::xml_attribute_iterator", align 16 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK4pugi8xml_node10attributesEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range.96") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.a, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <2 x ptr>, ptr %i.b, align 16
  store <2 x ptr> %i.c, ptr %4, align 16
  %i.d = call noundef zeroext i1 @_ZNK4pugi22xml_attribute_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi22xml_attribute_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %5, align 8
  %i.g = call noundef ptr @_ZNK4pugi13xml_attribute4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.06.i = phi ptr [ @.str.76, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.i = load i8, ptr %.0.i, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = call i32 @tolower(i32 noundef %i.j) #31  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.m = load i8, ptr %.06.i, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = call i32 @tolower(i32 noundef %i.n) #31
  %i.p = and i32 %i.k, 255
  %i.q = icmp ne i32 %i.p, 0
  %.unshifted = xor i32 %i.k, %i.o
  %.mask = and i32 %.unshifted, 255
  %i.r = icmp eq i32 %.mask, 0                    ; 2 uses
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.b, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, !llvm.loop !103

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit:           ; preds = %bb.b
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi22xml_attribute_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.u = call noundef zeroext i1 @_ZNK4pugi22xml_attribute_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.u, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  %i.v = call noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a, %bb.d
  %i.w = phi i32 [ %i.v, %bb.d ], [ -1, %bb.a ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %i.w
}

declare ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden <2 x float> @_ZN6Assimp11XGLImporter8ReadVec2ERN4pugi8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca float, align 4                    ; 10 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = load i64, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 6 uses
  %3 = ptrtoaddr ptr %i.i to i64                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.d:                                             ; preds = %bb.f, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.f ] ; 4 uses
  %i.k = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.k, label %.critedge.i.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i.i = icmp eq ptr %.0.i.i, %i.i
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.d, !llvm.loop !44

.critedge.i.ithread-pre-split:                    ; preds = %bb.e
  %.pr = load i8, ptr %i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.d, %.critedge.i.ithread-pre-split
  %i.m = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.k, %bb.d ]
  %.0.lcssa.i.i = phi ptr [ %i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.d ]
  switch i8 %i.m, label %bb.h [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i.1, %.critedge.i.i.1, %.critedge.i.i.1, %.critedge.i.i.1, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.n = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br i1 %i.n, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.o = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(37) @.str.80)
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit

.loopexit:                                        ; preds = %bb.s, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %bb.g, %.noexc14, %bb.m, %bb.n, %.noexc24
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.p = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
          to label %bb.i unwind label %.loopexit  ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.q = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %4 = ptrtoaddr ptr %i.p to i64
  %i.r = sub i64 %3, %4
  %scevgep.i.i17 = getelementptr i8, ptr %i.p, i64 %i.r ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0.i.i18 = phi ptr [ %i.p, %bb.i ], [ %i.t, %bb.l ] ; 4 uses
  %i.s = load i8, ptr %.0.i.i18, align 1          ; 2 uses
  switch i8 %i.s, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22 [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %.not.i.i19 = icmp eq ptr %.0.i.i18, %i.i
  br i1 %.not.i.i19, label %.critedge.i.i20thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i18, i64 1
  br label %bb.j, !llvm.loop !44

.critedge.i.i20thread-pre-split:                  ; preds = %bb.k
  %.pr39 = load i8, ptr %scevgep.i.i17, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22:       ; preds = %bb.j, %.critedge.i.i20thread-pre-split
  %i.u = phi i8 [ %.pr39, %.critedge.i.i20thread-pre-split ], [ %i.s, %bb.j ]
  %.0.lcssa.i.i21 = phi ptr [ %scevgep.i.i17, %.critedge.i.i20thread-pre-split ], [ %.0.i.i18, %bb.j ]
  %.not12 = icmp eq i8 %i.u, 44
  br i1 %.not12, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22
  %i.v = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.m
  br i1 %i.v, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %.noexc23
  %i.w = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.81)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit

bb.o:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit22
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i21, i64 1 ; 3 uses
  %5 = ptrtoaddr ptr %i.x to i64
  %i.y = sub i64 %3, %5
  %scevgep.i.i.1 = getelementptr i8, ptr %i.x, i64 %i.y ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.0.i.i.1 = phi ptr [ %i.x, %bb.o ], [ %i.aa, %bb.r ] ; 4 uses
  %i.z = load i8, ptr %.0.i.i.1, align 1          ; 2 uses
  switch i8 %i.z, label %.critedge.i.i.1 [
    i8 32, label %bb.q
    i8 9, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %.not.i.i.1 = icmp eq ptr %.0.i.i.1, %i.i
  br i1 %.not.i.i.1, label %.critedge.i.ithread-pre-split.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 1
  br label %bb.p, !llvm.loop !44

.critedge.i.ithread-pre-split.1:                  ; preds = %bb.q
  %.pr.1 = load i8, ptr %scevgep.i.i.1, align 1
  br label %.critedge.i.i.1

.critedge.i.i.1:                                  ; preds = %bb.p, %.critedge.i.ithread-pre-split.1
  %i.ab = phi i8 [ %.pr.1, %.critedge.i.ithread-pre-split.1 ], [ %i.z, %bb.p ]
  %.0.lcssa.i.i.1 = phi ptr [ %scevgep.i.i.1, %.critedge.i.ithread-pre-split.1 ], [ %.0.i.i.1, %bb.p ]
  switch i8 %i.ab, label %bb.s [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

bb.s:                                             ; preds = %.critedge.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.ac = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
          to label %.critedge unwind label %.loopexit ; 0 uses

.critedge:                                        ; preds = %bb.s
  %i.ad = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.q, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ad, i64 1
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit: ; preds = %.noexc, %.noexc15, %.noexc23, %.noexc25, %.critedge
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert, %.critedge ], [ zeroinitializer, %.noexc25 ], [ zeroinitializer, %.noexc23 ], [ zeroinitializer, %.noexc15 ], [ zeroinitializer, %.noexc ]
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret <2 x float> %.sroa.0.0

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.t
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3mapIj10aiVector2tIfESt4lessIjESaISt4pairIKjS1_EEEixEOj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ult i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIj10aiVector2tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !104

_ZNSt3mapIj10aiVector2tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIj10aiVector2tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ult i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIjSt4pairIKj10aiVector2tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIj10aiVector2tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIj10aiVector2tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store <2 x float> zeroinitializer, ptr %i.m, align 4
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKj10aiVector2tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIjSt4pairIKj10aiVector2tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 4
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp ult i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeIjSt4pairIKj10aiVector2tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt8_Rb_treeIjSt4pairIKj10aiVector2tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  br label %_ZNSt8_Rb_treeIjSt4pairIKj10aiVector2tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt8_Rb_treeIjSt4pairIKj10aiVector2tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp11XGLImporter12ReadVerticesERN4pugi8xml_nodeENS0_8TempMeshEPNS0_8TempFaceEPbjRNS0_9TempScopeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(152) %6) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %8 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %9 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.e = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.e, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = load <2 x ptr>, ptr %i.f, align 16
  store <2 x ptr> %i.g, ptr %9, align 16
  %i.h = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #30
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.n
  %.0.in = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !130

bb.t:                                             ; preds = %bb.r, %.body
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

._crit_edge:                                      ; preds = %bb.s, %bb.i
  ret ptr %i.b

bb.u:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #28
  unreachable

bb.v:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11XGLImporter16TempMaterialMeshC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = icmp ugt i64 %i.g, 768614336404564650
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i, !prof !6

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !132

_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i11, label %.noexc20, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = icmp ugt i64 %i.z, 768614336404564650
  br i1 %i.aa, label %.noexc.i.i19, label %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12, !prof !6

.noexc.i.i19:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i19
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.d
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #29
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12, %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit
  %i.ac = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EEC2ERKS3_.exit ], [ %i.ab, %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12 ] ; 5 uses
  store ptr %i.ac, ptr %i.r, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not7.i.i.i.i.i13 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not7.i.i.i.i.i13, label %.loopexit39, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i14
  %.09.i.i.i.i.i15 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i14 ], [ %i.ac, %.noexc20 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i16 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i14 ], [ %i.ag, %.noexc20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i15, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i16, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i16, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i15, i64 12 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i.i.i17, label %.loopexit39, label %.lr.ph.i.i.i.i.i14, !llvm.loop !132

.loopexit39:                                      ; preds = %.lr.ph.i.i.i.i.i14, %.noexc20
  %.0.lcssa.i.i.i.i.i18 = phi ptr [ %i.ac, %.noexc20 ], [ %i.aj, %.lr.ph.i.i.i.i.i14 ]
  store ptr %.0.lcssa.i.i.i.i.i18, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i.i.i22 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i22, label %.noexc31, label %bb.e

bb.e:                                             ; preds = %.loopexit39
  %i.as = icmp ugt i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %.noexc.i.i29, label %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i, !prof !6

.noexc.i.i29:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %.noexc.i.i29
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #29
          to label %.noexc31 unwind label %bb.l

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i, %.loopexit39
  %i.au = phi ptr [ null, %.loopexit39 ], [ %i.at, %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.au, ptr %i.ak, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.al, align 8            ; 6 uses
  %i.az = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not7.i.i.i.i.i23 = icmp eq ptr %i.ay, %i.az
  br i1 %.not7.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i24.preheader

.lr.ph.i.i.i.i.i24.preheader:                     ; preds = %.noexc31
  %i.ba = ptrtoaddr ptr %i.ay to i64
  %i.bb = ptrtoaddr ptr %i.au to i64
  %2 = ptrtoaddr ptr %i.az to i64
  %3 = ptrtoaddr ptr %i.ay to i64
  %i.bc = sub i64 %2, %3
  %i.bd = add i64 %i.bc, -8                       ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 72
  %i.bg = sub i64 %i.ba, %i.bb
  %diff.check = icmp ugt i64 %i.bg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i24.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i24.preheader
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.au, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bk ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.ay, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep59, align 4
  %wide.load60 = load <2 x i64>, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load60, ptr %i.bm, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i24.preheader62

.lr.ph.i.i.i.i.i24.preheader62:                   ; preds = %.lr.ph.i.i.i.i.i24.preheader, %middle.block
  %.09.i.i.i.i.i25.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.bi, %middle.block ]
  %.sroa.04.08.i.i.i.i.i26.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24.preheader62, %.lr.ph.i.i.i.i.i24
  %.09.i.i.i.i.i25 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i24 ], [ %.09.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i24.preheader62 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i26 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i24 ], [ %.sroa.04.08.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i24.preheader62 ] ; 2 uses
  %i.bo = load i64, ptr %.sroa.04.08.i.i.i.i.i26, align 4
  store i64 %i.bo, ptr %.09.i.i.i.i.i25, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i26, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i25, i64 8 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.bp, %i.az
  br i1 %.not.i.i.i.i.i27, label %.loopexit, label %.lr.ph.i.i.i.i.i24, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i24, %middle.block, %.noexc31
  %.0.lcssa.i.i.i.i.i28 = phi ptr [ %i.au, %.noexc31 ], [ %i.bi, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i24 ]
  store ptr %.0.lcssa.i.i.i.i.i28, ptr %i.av, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %.not.i.i.i.i32 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i32, label %.noexc35, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bz = icmp ugt i64 %i.by, 9223372036854775804
  br i1 %i.bz, label %.noexc.i.i33, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !6

.noexc.i.i33:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc34 unwind label %bb.m

.noexc34:                                         ; preds = %.noexc.i.i33
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #29
          to label %.noexc35 unwind label %bb.m

.noexc35:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.loopexit
  %i.cb = phi ptr [ null, %.loopexit ], [ %i.ca, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.cb, ptr %i.br, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.cg = load ptr, ptr %i.bt, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, 4
  br i1 %i.ck, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %.noexc35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cb, ptr align 4 %i.cf, i64 %i.cj, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc35
  %i.cl = icmp eq i64 %i.cj, 4
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cm = load i32, ptr %i.cf, align 4
  store i32 %i.cm, ptr %i.cb, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.cn = getelementptr inbounds i8, ptr %i.cb, i64 %i.cj
  store ptr %i.cn, ptr %i.cc, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cq = load i64, ptr %i.cp, align 8
  store i64 %i.cq, ptr %i.co, align 8
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i19
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i29
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i33
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = load ptr, ptr %i.ax, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit:    ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.l ], [ %i.ct, %bb.m ], [ %i.ct, %bb.n ] ; 2 uses
  %i.cz = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit
  %i.da = load ptr, ptr %i.af, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.o, %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.k ], [ %.pn, %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit ], [ %.pn, %bb.o ]
  %i.de = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.df = load ptr, ptr %i.m, align 8
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38:  ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.p
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i:              ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
end_hunk_3
