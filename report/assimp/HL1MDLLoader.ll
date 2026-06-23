inline.NumInlined: 2805
inline.NumDeleted: 972
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  %i.beg = landingpad { ptr, i32 }
          catch ptr null
  %i.beh = extractvalue { ptr, i32 } %i.beg, 0
  call void @__clang_call_terminate(ptr %i.beh) #27
  unreachable

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEED2Ev.exit596: ; preds = %.body661
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.bei = load ptr, ptr %i.uj, align 8
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.bei)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEED2Ev.exit597 unwind label %bb.ho

bb.ho:                                            ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEED2Ev.exit596
  %i.bej = landingpad { ptr, i32 }
          catch ptr null
  %i.bek = extractvalue { ptr, i32 } %i.bej, 0
  call void @__clang_call_terminate(ptr %i.bek) #27
  unreachable

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEED2Ev.exit597: ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEED2Ev.exit596
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %.not.i.i.i598 = icmp eq ptr %.sroa.0729.8, null
  br i1 %.not.i.i.i598, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EED2Ev.exit599, label %bb.hp

bb.hp:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEED2Ev.exit597
  %i.bel = ptrtoint ptr %.sroa.36.8 to i64
  %i.bem = ptrtoint ptr %.sroa.0729.8 to i64
  %i.ben = sub i64 %i.bel, %i.bem
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0729.8, i64 noundef %i.ben) #24
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EED2Ev.exit599

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EED2Ev.exit599: ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEED2Ev.exit597, %bb.hp
  %i.beo = load ptr, ptr %22, align 8             ; 3 uses
  %.not.i.i.i600 = icmp eq ptr %i.beo, null
  br i1 %.not.i.i.i600, label %_ZNSt6vectorIsSaIsEED2Ev.exit601, label %bb.hq

bb.hq:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EED2Ev.exit599
  %i.bep = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.beq = load ptr, ptr %i.bep, align 8
  %i.ber = ptrtoint ptr %i.beq to i64
  %i.bes = ptrtoint ptr %i.beo to i64
  %i.bet = sub i64 %i.ber, %i.bes
  call void @_ZdlPvm(ptr noundef nonnull %i.beo, i64 noundef %i.bet) #24
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit601

_ZNSt6vectorIsSaIsEED2Ev.exit601:                 ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EED2Ev.exit599, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.beu = load ptr, ptr %21, align 8             ; 3 uses
  %.not.i.i.i602 = icmp eq ptr %i.beu, null
  br i1 %.not.i.i.i602, label %_ZNSt6vectorIsSaIsEED2Ev.exit603, label %bb.hr

bb.hr:                                            ; preds = %_ZNSt6vectorIsSaIsEED2Ev.exit601
  %i.bev = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bew = load ptr, ptr %i.bev, align 8
  %i.bex = ptrtoint ptr %i.bew to i64
  %i.bey = ptrtoint ptr %i.beu to i64
  %i.bez = sub i64 %i.bex, %i.bey
  call void @_ZdlPvm(ptr noundef nonnull %i.beu, i64 noundef %i.bez) #24
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit603

_ZNSt6vectorIsSaIsEED2Ev.exit603:                 ; preds = %_ZNSt6vectorIsSaIsEED2Ev.exit601, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.bfa = load ptr, ptr %20, align 8             ; 3 uses
  %.not.i.i.i604 = icmp eq ptr %i.bfa, null
  br i1 %.not.i.i.i604, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EED2Ev.exit605, label %bb.hs

bb.hs:                                            ; preds = %_ZNSt6vectorIsSaIsEED2Ev.exit603
  %i.bfb = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bfc = load ptr, ptr %i.bfb, align 8
  %i.bfd = ptrtoint ptr %i.bfc to i64
  %i.bfe = ptrtoint ptr %i.bfa to i64
  %i.bff = sub i64 %i.bfd, %i.bfe
  call void @_ZdlPvm(ptr noundef nonnull %i.bfa, i64 noundef %i.bff) #24
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EED2Ev.exit605

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EED2Ev.exit605: ; preds = %_ZNSt6vectorIsSaIsEED2Ev.exit603, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %.not.i.i.i606 = icmp eq ptr %.sroa.0753.2, null
  br i1 %.not.i.i.i606, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit607, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EED2Ev.exit605
  %i.bfg = ptrtoint ptr %.sroa.18.2 to i64
  %i.bfh = ptrtoint ptr %.sroa.0753.2 to i64
  %i.bfi = sub i64 %i.bfg, %i.bfh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0753.2, i64 noundef %i.bfi) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit607

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit607: ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EED2Ev.exit605, %bb.ht
  %.not.i.i.i608 = icmp eq ptr %.sroa.0765.3, null
  br i1 %.not.i.i.i608, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609, label %bb.hu

bb.hu:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit607
  %i.bfj = ptrtoint ptr %.sroa.18775.3 to i64
  %i.bfk = ptrtoint ptr %.sroa.0765.3 to i64
  %i.bfl = sub i64 %i.bfj, %i.bfk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0765.3, i64 noundef %i.bfl) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609: ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit607, %bb.hu, %bb.bx, %bb.bn, %bb.bm, %bb.by, %bb.bl
  %.pn362.pn.pn = phi { ptr, i32 } [ %i.rg, %bb.bl ], [ %i.vo, %bb.bx ], [ %i.ru, %bb.bm ], [ %i.sh, %bb.bn ], [ %i.vp, %bb.by ], [ %i.vr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ], [ %i.vq, %bb.bz ], [ %.pn351.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit607 ], [ %.pn351.pn.pn.pn.pn.pn.pn.pn, %bb.hu ]
  %i.bfm = load ptr, ptr %18, align 8             ; 3 uses
  %i.bfn = load ptr, ptr %i.qy, align 8           ; 2 uses
  %.not4.i.i.i610 = icmp eq ptr %i.bfm, %i.bfn
  br i1 %.not4.i.i.i610, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i618, label %.lr.ph.i.i.i611

.lr.ph.i.i.i611:                                  ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i614
  %.05.i.i.i612 = phi ptr [ %i.bft, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i614 ], [ %i.bfm, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609 ] ; 3 uses
  %i.bfo = load ptr, ptr %.05.i.i.i612, align 8   ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %.05.i.i.i612, i64 16 ; 2 uses
  %i.bfq = icmp eq ptr %i.bfo, %i.bfp
  br i1 %i.bfq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i613

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i613: ; preds = %.lr.ph.i.i.i611
  %i.bfr = load i64, ptr %i.bfp, align 8
  %i.bfs = add i64 %i.bfr, 1
  call void @_ZdlPvm(ptr noundef %i.bfo, i64 noundef %i.bfs) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i614

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i614: ; preds = %.lr.ph.i.i.i611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i613
  %i.bft = getelementptr inbounds nuw i8, ptr %.05.i.i.i612, i64 32 ; 2 uses
  %.not.i.i.i615 = icmp eq ptr %i.bft, %i.bfn
  br i1 %.not.i.i.i615, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i616, label %.lr.ph.i.i.i611, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i616: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i614
  %.pr.i617 = load ptr, ptr %18, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i618

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i618: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i616, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609
  %i.bfu = phi ptr [ %.pr.i617, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i616 ], [ %i.bfm, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609 ] ; 3 uses
  %.not.i.i1.i619 = icmp eq ptr %i.bfu, null
  br i1 %.not.i.i1.i619, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit621, label %bb.hv

bb.hv:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i618
  %i.bfv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bfw = load ptr, ptr %i.bfv, align 8
  %i.bfx = ptrtoint ptr %i.bfw to i64
  %i.bfy = ptrtoint ptr %i.bfu to i64
  %i.bfz = sub i64 %i.bfx, %i.bfy
  call void @_ZdlPvm(ptr noundef nonnull %i.bfu, i64 noundef %i.bfz) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit621

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit621: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i618, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.hw

bb.hw:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit621, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %bb.e, %bb.d
  %.pn366 = phi { ptr, i32 } [ %i.bd, %bb.e ], [ %.pn362.pn.pn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit621 ], [ %i.ah, %bb.d ], [ %i.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ], [ %eh.lpad-body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373 ]
  %i.bga = load ptr, ptr %14, align 8             ; 3 uses
  %i.bgb = load ptr, ptr %i.ad, align 8           ; 2 uses
  %.not4.i.i.i622 = icmp eq ptr %i.bga, %i.bgb
  br i1 %.not4.i.i.i622, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i630, label %.lr.ph.i.i.i623

.lr.ph.i.i.i623:                                  ; preds = %bb.hw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i626
  %.05.i.i.i624 = phi ptr [ %i.bgh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i626 ], [ %i.bga, %bb.hw ] ; 3 uses
  %i.bgc = load ptr, ptr %.05.i.i.i624, align 8   ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %.05.i.i.i624, i64 16 ; 2 uses
  %i.bge = icmp eq ptr %i.bgc, %i.bgd
  br i1 %i.bge, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i625: ; preds = %.lr.ph.i.i.i623
  %i.bgf = load i64, ptr %i.bgd, align 8
  %i.bgg = add i64 %i.bgf, 1
  call void @_ZdlPvm(ptr noundef %i.bgc, i64 noundef %i.bgg) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i626

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i626: ; preds = %.lr.ph.i.i.i623, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i625
  %i.bgh = getelementptr inbounds nuw i8, ptr %.05.i.i.i624, i64 32 ; 2 uses
  %.not.i.i.i627 = icmp eq ptr %i.bgh, %i.bgb
  br i1 %.not.i.i.i627, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i628, label %.lr.ph.i.i.i623, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i628: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i626
  %.pr.i629 = load ptr, ptr %14, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i630

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i630: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i628, %bb.hw
  %i.bgi = phi ptr [ %.pr.i629, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i628 ], [ %i.bga, %bb.hw ] ; 3 uses
  %.not.i.i1.i631 = icmp eq ptr %i.bgi, null
  br i1 %.not.i.i1.i631, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit633, label %bb.hx

bb.hx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i630
  %i.bgj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bgk = load ptr, ptr %i.bgj, align 8
  %i.bgl = ptrtoint ptr %i.bgk to i64
  %i.bgm = ptrtoint ptr %i.bgi to i64
  %i.bgn = sub i64 %i.bgl, %i.bgm
  call void @_ZdlPvm(ptr noundef nonnull %i.bgi, i64 noundef %i.bgn) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit633

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit633: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i630, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  resume { ptr, i32 } %.pn366
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader25read_sequence_groups_infoEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %struct.aiString, align 4           ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %struct.aiString, align 4           ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.h, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 21, ptr %i.b, align 8
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %1, align 8
  %i.j = load i64, ptr %i.b, align 8              ; 3 uses
  store i64 %i.j, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.i, ptr noundef nonnull align 1 dereferenceable(21) @.str.28, i64 21, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.h, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.g, ptr %i.t, align 8
  %i.w = load ptr, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.s, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.e, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store ptr %i.g, ptr %i.ak, align 8
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.f, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.not.i17.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.aj, ptr %i.r, align 8
  store ptr %i.am, ptr %i.s, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.an, ptr %i.u, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ao = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 172 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 1104
  store i32 %i.aq, ptr %i.ar, align 8
  %i.as = zext i32 %i.aq to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #26
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 1112 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = load i32, ptr %i.ap, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_17SequenceGroup_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i32 noundef %i.ax, i32 noundef %i.ay) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 172
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sext i32 %i.be to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 5                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.bf
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.bo = sub nuw nsw i64 %i.bf, %i.bm
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bo)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.bp = icmp ugt i64 %i.bm, %i.bf
  br i1 %i.bp, label %bb.j, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bf ; 3 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bq, %bb.j ] ; 3 uses
  %i.br = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bu = load i64, ptr %i.bs, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, %i.bh
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.bq, ptr %i.bg, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bx = load ptr, ptr %i.c, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 172
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 noundef 0, i64 noundef %i.cd, ptr noundef nonnull @.str.29, i64 noundef 13) ; 0 uses
  call void @_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
  %i.cf = load ptr, ptr %i.c, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 172
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.l:                                             ; preds = %.noexc
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %1, align 8               ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.h
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.l
  %i.cy = load i64, ptr %i.h, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.k ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.cv, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 1144) #24
  br label %bb.aa

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 3 uses
  %i.da = getelementptr inbounds nuw [104 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.db = load ptr, ptr %i.bb, align 8
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #23
  %i.dg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 noundef 0, i64 noundef %i.de, ptr noundef nonnull %i.da, i64 noundef %i.df) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = load ptr, ptr %i.c, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 172
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %.lr.ph, label %._crit_edge, !llvm.loop !222

bb.m:                                             ; preds = %.lr.ph110, %bb.z
  %indvars.iv116 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next117, %bb.z ] ; 4 uses
  %.028107 = phi ptr [ %i.ba, %.lr.ph110 ], [ %i.gq, %bb.z ] ; 2 uses
  %i.dm = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26 ; 5 uses
  %i.dn = load ptr, ptr %i.bb, align 8
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %indvars.iv116
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %_ZN10aiMetadata5AllocEj.exit unwind label %bb.n

_ZN10aiMetadata5AllocEj.exit:                     ; preds = %bb.m
  %i.dp = load ptr, ptr %i.av, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv116
  store ptr %i.dm, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 1096
  store ptr %i.g, ptr %i.dr, align 8
  %i.ds = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  store i32 1, ptr %i.ds, align 8
  %i.du = call noalias noundef nonnull dereferenceable(1028) ptr @_Znam(i64 noundef 1028) #26 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %i.du, i8 0, i64 1028, i1 false)
  store ptr %i.du, ptr %i.dt, align 8
  %i.dv = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #26 ; 4 uses
  store i32 10, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  store ptr null, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 3 uses
  store ptr %i.dv, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 1136
  store ptr %i.ds, ptr %i.dy, align 8
  %i.dz = icmp eq i64 %indvars.iv116, 0
  br i1 %i.dz, label %.thread29.i, label %._crit_edge.i.i54

.thread29.i:                                      ; preds = %_ZN10aiMetadata5AllocEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.co, ptr %2, align 8
  store i32 1701603654, ptr %i.co, align 8
  store i64 4, ptr %i.cp, align 8
  store i8 0, ptr %i.ct, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ea = load ptr, ptr %i.cq, align 8, !nonnull !6, !align !114 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8            ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cr, i8 0, i64 1024, i1 false)
  %i.ee = and i64 %i.ec, 4294966272
  %.not.i45 = icmp eq i64 %i.ee, 0
  %spec.select.i = select i1 %.not.i45, i32 %i.ed, i32 1023 ; 3 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.ef = load ptr, ptr %i.ea, align 8
  %i.eg = zext i32 %spec.select.i to i64          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 1 %i.ef, i64 %i.eg, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.eg
  store i8 0, ptr %i.eh, align 1
  store i32 4, ptr %i.du, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.ej = load i32, ptr %i.co, align 8
  store i32 %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 0, ptr %i.ek, align 4
  store i32 5, ptr %i.dv, align 8
  %i.el = call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #26 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.em, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i, ptr %i.el, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.em, ptr nonnull align 4 %i.cr, i64 %i.eg, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eg
  store i8 0, ptr %i.en, align 1
  store ptr %i.el, ptr %i.dw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 1144) #24
  br label %bb.aa

._crit_edge.i.i54:                                ; preds = %_ZN10aiMetadata5AllocEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.cj, ptr %4, align 8
  store i32 1701603654, ptr %i.cj, align 8
  store i64 4, ptr %i.ck, align 8
  store i8 0, ptr %i.cs, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ep = getelementptr inbounds nuw i8, ptr %.028107, i64 32 ; 3 uses
  store ptr %i.cl, ptr %6, align 8
  %i.eq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.eq, ptr %i.a, align 8
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %.noexc.i59, label %._crit_edge.i.i58

.noexc.i59:                                       ; preds = %._crit_edge.i.i54
  %i.es = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc60 unwind label %bb.x   ; 2 uses

.noexc60:                                         ; preds = %.noexc.i59
  store ptr %i.es, ptr %6, align 8
  %i.et = load i64, ptr %i.a, align 8
  store i64 %i.et, ptr %i.cl, align 8
  br label %._crit_edge.i.i58

._crit_edge.i.i58:                                ; preds = %.noexc60, %._crit_edge.i.i54
  %i.eu = phi ptr [ %i.es, %.noexc60 ], [ %i.cl, %._crit_edge.i.i54 ] ; 2 uses
  switch i64 %i.eq, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i58
  %i.ev = load i8, ptr %i.ep, align 1
  store i8 %i.ev, ptr %i.eu, align 1
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr nonnull align 1 %i.ep, i64 %i.eq, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i58
  %i.ew = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ew, ptr %i.cm, align 8
  %i.ex = load ptr, ptr %6, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ez = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cn, i8 0, i64 1024, i1 false)
  %i.fb = and i64 %i.ez, 4294966272
  %.not.i62 = icmp eq i64 %i.fb, 0
  %spec.select.i63 = select i1 %.not.i62, i32 %i.fa, i32 1023 ; 4 uses
  store i32 %spec.select.i63, ptr %5, align 4
  %i.fc = load ptr, ptr %6, align 8
  %i.fd = zext i32 %spec.select.i63 to i64        ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr align 1 %i.fc, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.fd
  store i8 0, ptr %i.fe, align 1
  %i.ff = load i32, ptr %i.ds, align 8
  %.not.i64.not = icmp eq i32 %i.ff, 0
  br i1 %.not.i64.not, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = load i64, ptr %i.ck, align 8            ; 5 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fi = icmp ugt i64 %i.fg, 1023
  br i1 %i.fi, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.fk = trunc nuw nsw i64 %i.fg to i32
  store i32 %i.fk, ptr %i.fj, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fm = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fl, ptr align 1 %i.fm, i64 %i.fg, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fg
  store i8 0, ptr %i.fn, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66: ; preds = %bb.t, %bb.s
  %i.fo = load ptr, ptr %i.dx, align 8
  store i32 5, ptr %i.fo, align 8
  %i.fp = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8            ; 4 uses
  %.not24.i67 = icmp eq ptr %i.fr, null
  br i1 %.not24.i67, label %.thread29.i70, label %bb.u

bb.u:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66
  %i.fs = load i32, ptr %i.fp, align 8
  %.not25.i68 = icmp eq i32 %i.fs, 7
  br i1 %.not25.i68, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.fr, ptr noundef nonnull align 4 dereferenceable(1028) %5, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74

bb.w:                                             ; preds = %bb.u
  store i32 %spec.select.i63, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ft, ptr nonnull align 4 %i.cn, i64 %i.fd, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fd
  store i8 0, ptr %i.fu, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74

.thread29.i70:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66
  %i.fv = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #26
          to label %.noexc73 unwind label %bb.y   ; 3 uses

.noexc73:                                         ; preds = %.thread29.i70
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fw, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i63, ptr %i.fv, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr nonnull align 4 %i.cn, i64 %i.fd, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fd
  store i8 0, ptr %i.fx, align 1
  store ptr %i.fv, ptr %i.fq, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74: ; preds = %.noexc73, %bb.w, %bb.v, %bb.r, %bb.q
  %i.fy = load ptr, ptr %6, align 8               ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.cl
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74
  %i.ga = load i64, ptr %i.cl, align 8
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.gc = load ptr, ptr %4, align 8               ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.cj
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.ge = load i64, ptr %i.cj, align 8
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.z

bb.x:                                             ; preds = %.noexc.i59
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.y:                                             ; preds = %.thread29.i70
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %6, align 8               ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.cl
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.y
  %i.gk = load i64, ptr %i.cl, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.ay, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i.i.i.i.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !465

_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !459

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %1, align 8
  store ptr %i.bd, ptr %.0.i.i.i.i.i, align 8
  br label %_ZSt22__uninitialized_move_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

_ZSt22__uninitialized_move_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit69
  %i.bg = sub i64 %i.f, %i.j
  %i.bh = add i64 %i.bg, -8                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x ptr> %broadcast.splatinsert116, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> %broadcast.splat117, ptr %next.gep120, align 8
  store <2 x ptr> %broadcast.splat117, ptr %i.bn, align 8
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !466

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i72, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !467

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 4 uses
  %i.bu = sub nsw i64 1152921504606846975, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #25
  unreachable

_ZNKSt6vectorIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 3
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load ptr, ptr %3, align 8               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ci, 24
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec143, 3
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert144 = insertelement <2 x ptr> poison, ptr %i.ch, i64 0
  %broadcast.splat145 = shufflevector <2 x ptr> %broadcast.splatinsert144, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cn = shl i64 %index147, 3
  %next.gep148 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x ptr> %broadcast.splat145, ptr %next.gep148, align 8
  store <2 x ptr> %broadcast.splat145, ptr %i.co, align 8
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cp, label %middle.block150, label %vector.body146, !llvm.loop !468

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ck, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store ptr %i.ch, ptr %.07.i.i.i.i.i.i.i77, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !469

_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cr = icmp sgt i64 %i.cb, 8
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !459

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ce, ptr align 8 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1EmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 8
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.bq, align 8
  store ptr %i.ct, ptr %i.ce, align 8
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 8
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !459

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 8
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %1, align 8
  store ptr %i.cy, ptr %i.cu, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #24
  br label %_ZNSt12_Vector_baseIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES5_EvT_S7_RKT0_.exit

_ZSt4fillIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES5_EvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ES6_SaIS5_EET0_T_S9_S8_RT1_.exit69, %_ZNSt12_Vector_baseIPKN6Assimp3MDL8HalfLife18SequenceHeader_HL1ESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA49_KcRiRA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(49) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRiRA2_KcERA49_S2_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(49) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRiRA2_KcERA49_S2_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(49) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(49) %2) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(49) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA2_KcERiEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA2_KcERiEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(376) %1, i32 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_11Texture_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
end_hunk_1
