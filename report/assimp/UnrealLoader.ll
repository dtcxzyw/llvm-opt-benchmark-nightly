inline.NumInlined: 880
inline.NumDeleted: 400
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.aak = load i8, ptr %i.aaj, align 1
  %i.aal = icmp eq i8 %i.aak, 61
  br i1 %i.aal, label %.invoke1212, label %.thread783

.thread783:                                       ; preds = %.invoke1212, %bb.hp, %bb.hq, %bb.hr, %bb.hs
  %.6 = phi ptr [ %.5, %bb.hp ], [ %i.aaf, %.invoke1212 ], [ %.5, %bb.hr ], [ %.5, %bb.hs ], [ %.5, %bb.hq ]
  %i.aam = getelementptr inbounds nuw i8, ptr %.6, i64 1
  br label %bb.hp, !llvm.loop !42

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE8pop_backEv.exit: ; preds = %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.hp, %bb.hp, %bb.hp, %bb.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i550, %bb.ho, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i510, %bb.gm, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i465, %bb.ey, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i, %bb.gk
  %.7 = phi ptr [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i ], [ %.1, %bb.gk ], [ %.0766877, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ %.0.lcssa.i.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i510 ], [ %.0.lcssa.i.i515, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i550 ], [ %.0.lcssa.i.i515, %bb.ho ], [ %.0.lcssa.i.i461, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i465 ], [ %.5, %bb.hp ], [ %.0766877, %bb.eo ], [ %.0.lcssa.i.i461, %bb.ey ], [ %.0.lcssa.i.i, %bb.gm ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.5, %bb.hp ], [ %.5, %bb.hp ], [ %.5, %bb.hp ], [ %.3, %bb.gv ], [ %.3, %bb.gv ], [ %.3, %bb.gv ], [ %.3, %bb.gv ]
  %i.aan = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.aao = load i8, ptr %i.aan, align 1
  %.not210 = icmp eq i8 %i.aao, 0
  br i1 %.not210, label %._crit_edge880, label %bb.eo, !llvm.loop !43

._crit_edge880:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE8pop_backEv.exit
  %.pre951 = load ptr, ptr %22, align 8           ; 3 uses
  %.pre953 = load ptr, ptr %i.qx, align 8         ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre951, %.pre953
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge880, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aba, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %.pre951, %._crit_edge880 ] ; 5 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.aaq = load ptr, ptr %i.aap, align 8          ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.aas = icmp eq ptr %i.aaq, %i.aar
  br i1 %i.aas, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aat = load i64, ptr %i.aar, align 8
  %i.aau = add i64 %i.aat, 1
  call void @_ZdlPvm(ptr noundef %i.aaq, i64 noundef %i.aau) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aav = load ptr, ptr %.05.i.i.i, align 8      ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aax = icmp eq ptr %i.aav, %i.aaw
  br i1 %i.aax, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aay = load i64, ptr %i.aaw, align 8
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aaz) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aba, %.pre953
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %22, align 8
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %._crit_edge880
  %i.abb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %.pre951, %._crit_edge880 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.abb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.ht

bb.ht:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.abc = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.abd = load ptr, ptr %i.abc, align 8
  %i.abe = ptrtoint ptr %i.abd to i64
  %i.abf = ptrtoint ptr %i.abb to i64
  %i.abg = sub i64 %i.abe, %i.abf
  call void @_ZdlPvm(ptr noundef nonnull %i.abb, i64 noundef %i.abg) #27
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.en, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.abh = load ptr, ptr %21, align 8             ; 3 uses
  %.not.i.i.i553 = icmp eq ptr %i.abh, null
  br i1 %.not.i.i.i553, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.hu

bb.hu:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.abi = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = ptrtoint ptr %i.abj to i64
  %i.abl = ptrtoint ptr %i.abh to i64
  %i.abm = sub i64 %i.abk, %i.abl
  call void @_ZdlPvm(ptr noundef nonnull %i.abh, i64 noundef %i.abm) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.ia

bb.hv:                                            ; preds = %.loopexit823, %.loopexit.split-lp824, %bb.hk, %bb.hn, %bb.ft, %bb.gh
  %.pn241.pn.pn = phi { ptr, i32 } [ %i.zk, %bb.hk ], [ %i.vw, %bb.gh ], [ %i.zs, %bb.hn ], [ %i.um, %bb.ft ], [ %lpad.loopexit825, %.loopexit823 ], [ %lpad.loopexit.split-lp826, %.loopexit.split-lp824 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.fi
  %.pn241.pn.pn.pn = phi { ptr, i32 } [ %.pn241.pn.pn, %bb.hv ], [ %i.tg, %bb.fi ]
  %i.abn = load ptr, ptr %21, align 8             ; 3 uses
  %.not.i.i.i554 = icmp eq ptr %i.abn, null
  br i1 %.not.i.i.i554, label %_ZNSt6vectorIcSaIcEED2Ev.exit555, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.abo = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.abp = load ptr, ptr %i.abo, align 8
  %i.abq = ptrtoint ptr %i.abp to i64
  %i.abr = ptrtoint ptr %i.abn to i64
  %i.abs = sub i64 %i.abq, %i.abr
  call void @_ZdlPvm(ptr noundef nonnull %i.abn, i64 noundef %i.abs) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit555

_ZNSt6vectorIcSaIcEED2Ev.exit555:                 ; preds = %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607

bb.hy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451
  %i.abt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hz unwind label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607.thread

bb.hz:                                            ; preds = %bb.hy
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.abt, ptr noundef nonnull @.str.30)
          to label %bb.ia unwind label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607.thread

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607.thread: ; preds = %bb.hy, %bb.hz
  %i.abu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit610

bb.ia:                                            ; preds = %bb.hz, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.abv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.abw = load ptr, ptr %i.abv, align 8
  %i.abx = load ptr, ptr %19, align 8
  %i.aby = ptrtoint ptr %i.abw to i64
  %i.abz = ptrtoint ptr %i.abx to i64
  %i.aca = sub i64 %i.aby, %i.abz
  %i.acb = sdiv exact i64 %i.aca, 40
  %i.acc = shl nsw i64 %i.acb, 1
  %i.acd = add nsw i64 %i.acc, 5                  ; 3 uses
  %i.ace = icmp ugt i64 %i.acd, 768614336404564650
  br i1 %i.ace, label %bb.ib, label %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i

bb.ib:                                            ; preds = %bb.ia
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc557 unwind label %bb.ic

.noexc557:                                        ; preds = %bb.ib
  unreachable

_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.ia
  %i.acf = mul nuw nsw i64 %i.acd, 12
  %i.acg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acf) #28
          to label %.lr.ph887 unwind label %bb.ic ; 3 uses

.lr.ph887:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i
  %i.ach = getelementptr inbounds nuw [12 x i8], ptr %i.acg, i64 %i.acd
  %i.aci = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.acj = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.id

._crit_edge888:                                   ; preds = %bb.ik
  %i.acl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.acm = load i32, ptr %i.acl, align 8          ; 4 uses
  %.not211 = icmp eq i32 %i.acm, 0
  br i1 %.not211, label %bb.il, label %bb.io

bb.ic:                                            ; preds = %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i, %bb.ib, %bb.iq, %bb.ip, %bb.io, %bb.im
  %.sroa.31.1 = phi ptr [ null, %bb.ib ], [ %.sroa.31.2, %bb.im ], [ %.sroa.31.2, %bb.iq ], [ %.sroa.31.2, %bb.ip ], [ %.sroa.31.2, %bb.io ], [ null, %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i ]
  %.sroa.0657.1 = phi ptr [ null, %bb.ib ], [ %.sroa.0657.2, %bb.im ], [ %.sroa.0657.2, %bb.iq ], [ %.sroa.0657.2, %bb.ip ], [ %.sroa.0657.2, %bb.io ], [ null, %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i ]
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.id:                                            ; preds = %.lr.ph887, %bb.ik
  %.sroa.0657.0885 = phi ptr [ %i.acg, %.lr.ph887 ], [ %.sroa.0657.2, %bb.ik ] ; 8 uses
  %.sroa.21.0884 = phi ptr [ %i.acg, %.lr.ph887 ], [ %.sroa.21.1, %bb.ik ] ; 11 uses
  %.sroa.0654.0883 = phi ptr [ %i.jj, %.lr.ph887 ], [ %i.adu, %bb.ik ] ; 4 uses
  %.sroa.31.0882 = phi ptr [ %i.ach, %.lr.ph887 ], [ %.sroa.31.2, %bb.ik ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.0654.0883, i64 6
  %i.acp = load i8, ptr %i.aco, align 2
  %i.acq = sext i8 %i.acp to i32
  store i32 %i.acq, ptr %26, align 4
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.0654.0883, i64 14
  %i.acs = load i8, ptr %i.acr, align 2
  %i.act = zext i8 %i.acs to i32
  store i32 %i.act, ptr %i.aci, align 4
  store i32 0, ptr %i.acj, align 4
  %i.acu = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %.sroa.0657.0885, ptr %.sroa.21.0884, ptr nonnull align 4 dereferenceable(12) %26)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit unwind label %.loopexit822 ; 3 uses

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit: ; preds = %bb.id
  %i.acv = icmp eq ptr %i.acu, %.sroa.21.0884
  %i.acw = ptrtoint ptr %.sroa.0657.0885 to i64   ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.0654.0883, i64 16 ; 2 uses
  br i1 %i.acv, label %bb.ie, label %bb.ij

bb.ie:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.acy = ptrtoint ptr %.sroa.21.0884 to i64
  %i.acz = sub i64 %i.acy, %i.acw                 ; 4 uses
  %i.ada = sdiv exact i64 %i.acz, 12              ; 3 uses
  %i.adb = trunc i64 %i.ada to i32
  store i32 %i.adb, ptr %i.acx, align 4
  store i32 1, ptr %i.acj, align 4
  %.not.i560 = icmp eq ptr %.sroa.21.0884, %.sroa.31.0882
  br i1 %.not.i560, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.21.0884, ptr noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit

bb.ig:                                            ; preds = %bb.ie
  %i.adc = icmp eq i64 %i.acz, 9223372036854775800
  br i1 %i.adc, label %bb.ih, label %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ih:                                            ; preds = %bb.ig
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc563 unwind label %.loopexit.split-lp

.noexc563:                                        ; preds = %bb.ih
  unreachable

_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ig
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ada, i64 1)
  %i.add = add nsw i64 %.sroa.speculated.i.i.i, %i.ada ; 2 uses
  %i.ade = call i64 @llvm.umin.i64(i64 %i.add, i64 768614336404564650) ; 2 uses
  %.not.i.i.i561 = icmp ne i64 %i.add, 0
  call void @llvm.assume(i1 %.not.i.i.i561)
  %i.adf = mul nuw nsw i64 %i.ade, 12
  %i.adg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adf) #28
          to label %.noexc564 unwind label %.loopexit822 ; 5 uses

.noexc564:                                        ; preds = %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 %i.acz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.adh, ptr noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0657.0885, %.sroa.21.0884
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc564, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.adj, %.lr.ph.i.i.i.i.i ], [ %i.adg, %.noexc564 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.adi, %.lr.ph.i.i.i.i.i ], [ %.sroa.0657.0885, %.noexc564 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !45
  %i.adi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.adi, %.sroa.21.0884
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc564
  %.0.lcssa.i.i.i.i.i562 = phi ptr [ %i.adg, %.noexc564 ], [ %i.adj, %.lr.ph.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.0885, i64 noundef %i.acz) #27
  %i.adk = getelementptr inbounds nuw [12 x i8], ptr %i.adg, i64 %i.ade
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.if
  %.sroa.31.5 = phi ptr [ %i.adk, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.31.0882, %bb.if ]
  %.0.lcssa.i.i.i.i.i562.pn = phi ptr [ %.0.lcssa.i.i.i.i.i562, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.0884, %bb.if ]
  %.sroa.0657.5 = phi ptr [ %i.adg, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0657.0885, %bb.if ]
  %.sroa.21.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i562.pn, i64 12
  %i.adl = load i32, ptr %i.ack, align 8
  %i.adm = add i32 %i.adl, 1
  store i32 %i.adm, ptr %i.ack, align 8
  br label %bb.ik

.loopexit822:                                     ; preds = %bb.id, %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.31.0882.lcssa = phi ptr [ %.sroa.31.0882, %bb.id ], [ %.sroa.21.0884, %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

.loopexit.split-lp:                               ; preds = %bb.ih
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.ii:                                            ; preds = %.loopexit.split-lp, %.loopexit822
  %.sroa.31.0882916 = phi ptr [ %.sroa.31.0882.lcssa, %.loopexit822 ], [ %.sroa.21.0884, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit822 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.ku

bb.ij:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.adn = ptrtoint ptr %i.acu to i64
  %i.ado = sub i64 %i.adn, %i.acw
  %i.adp = sdiv exact i64 %i.ado, 12
  %i.adq = trunc i64 %i.adp to i32
  store i32 %i.adq, ptr %i.acx, align 4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acu, i64 8 ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 4
  %i.adt = add i32 %i.ads, 1
  store i32 %i.adt, ptr %i.adr, align 4
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit
  %.sroa.31.2 = phi ptr [ %.sroa.31.5, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.31.0882, %bb.ij ] ; 14 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.21.0884, %bb.ij ] ; 2 uses
  %.sroa.0657.2 = phi ptr [ %.sroa.0657.5, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0657.0885, %bb.ij ] ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.0654.0883, i64 20 ; 2 uses
  %.not815 = icmp eq ptr %i.adu, %.0.i.i.i.i.i1179
  br i1 %.not815, label %._crit_edge888, label %bb.id

bb.il:                                            ; preds = %._crit_edge888
  %i.adv = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.adv, ptr noundef nonnull @.str.31)
          to label %bb.im unwind label %bb.in

bb.im:                                            ; preds = %bb.il
  invoke void @__cxa_throw(ptr nonnull %i.adv, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.lf unwind label %bb.ic

bb.in:                                            ; preds = %bb.il
  %i.adw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.adv) #25
  br label %bb.ku

bb.io:                                            ; preds = %._crit_edge888
  %i.adx = zext i32 %i.acm to i64                 ; 2 uses
  %i.ady = shl nuw nsw i64 %i.adx, 3              ; 2 uses
  %i.adz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ady) #28
          to label %bb.ip unwind label %bb.ic

bb.ip:                                            ; preds = %bb.io
  %i.aea = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.adz, ptr %i.aea, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.acm, ptr %i.aeb, align 8
  %i.aec = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ady) #28
          to label %bb.iq unwind label %bb.ic

bb.iq:                                            ; preds = %bb.ip
  %i.aed = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.aec, ptr %i.aed, align 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.pl, i64 1120
  store i32 %i.acm, ptr %i.aee, align 8
  %i.aef = shl nuw nsw i64 %i.adx, 2
  %i.aeg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aef) #28
          to label %.lr.ph897 unwind label %bb.ic

.lr.ph897:                                        ; preds = %bb.iq
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.pl, i64 1128 ; 2 uses
  store ptr %i.aeg, ptr %i.aeh, align 8
  %i.aei = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 13 uses
  br label %bb.ir

.lr.ph901:                                        ; preds = %.loopexit
  %i.aek = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.ael = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.aem = ptrtoint ptr %.sroa.0657.2 to i64
  br label %bb.ju

bb.ir:                                            ; preds = %.lr.ph897, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph897 ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %i.aen = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28
          to label %bb.is unwind label %bb.ja     ; 10 uses

bb.is:                                            ; preds = %bb.ir
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 4
  store i32 0, ptr %i.aeo, align 4
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  store i32 0, ptr %i.aep, align 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aen, i64 16 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aen, i64 224
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aen, i64 1272
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aen, i64 1312
  store ptr null, ptr %i.aet, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.aeq, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aer, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aes, i8 0, i64 36, i1 false)
  %i.aeu = load ptr, ptr %i.aea, align 8
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %indvars.iv
  store ptr %i.aen, ptr %i.aev, align 8
  store i32 4, ptr %i.aen, align 8
  %i.aew = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0657.2, i64 %indvars.iv ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %i.aey = load i32, ptr %i.aex, align 4          ; 3 uses
  %i.aez = zext i32 %i.aey to i64                 ; 5 uses
  %i.afa = shl nuw nsw i64 %i.aez, 4
  %i.afb = or disjoint i64 %i.afa, 8
  %i.afc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afb) #28
          to label %bb.it unwind label %bb.jb     ; 2 uses

bb.it:                                            ; preds = %bb.is
  store i64 %i.aez, ptr %i.afc, align 16
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 8 ; 4 uses
  %i.afe = icmp eq i32 %i.aey, 0                  ; 3 uses
  br i1 %i.afe, label %.loopexit821, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aff = getelementptr inbounds nuw [16 x i8], ptr %i.afd, i64 %i.aez
  %i.afg = add nuw nsw i64 %i.aez, 1152921504606846975
  %i.afh = and i64 %i.afg, 1152921504606846975
  %xtraiter = and i64 %i.aez, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.iu, %.prol.preheader
  %i.afi = phi ptr [ %i.afk, %.prol.preheader ], [ %i.afd, %bb.iu ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.iu ]
  store i32 0, ptr %i.afi, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  store ptr null, ptr %i.afj, align 8
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afi, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !50

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.iu
  %.unr = phi ptr [ %i.afd, %bb.iu ], [ %i.afk, %.prol.preheader ]
  %i.afl = icmp samesign ult i64 %i.afh, 7
  br i1 %i.afl, label %.loopexit821, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.afm = phi ptr [ %i.agc, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.afm, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  store ptr null, ptr %i.afn, align 8
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  store i32 0, ptr %i.afo, align 8
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 24
  store ptr null, ptr %i.afp, align 8
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afm, i64 32
  store i32 0, ptr %i.afq, align 8
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afm, i64 40
  store ptr null, ptr %i.afr, align 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afm, i64 48
  store i32 0, ptr %i.afs, align 8
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afm, i64 56
  store ptr null, ptr %i.aft, align 8
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afm, i64 64
  store i32 0, ptr %i.afu, align 8
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afm, i64 72
  store ptr null, ptr %i.afv, align 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afm, i64 80
  store i32 0, ptr %i.afw, align 8
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afm, i64 88
  store ptr null, ptr %i.afx, align 8
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afm, i64 96
  store i32 0, ptr %i.afy, align 8
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afm, i64 104
  store ptr null, ptr %i.afz, align 8
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afm, i64 112
  store i32 0, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afm, i64 120
  store ptr null, ptr %i.agb, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afm, i64 128 ; 2 uses
  %i.agd = icmp eq ptr %i.agc, %i.aff
  br i1 %i.agd, label %.loopexit821, label %.new

.loopexit821:                                     ; preds = %.prol.loopexit, %.new, %bb.it
end_hunk_0
begin_hunk_1_@_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv:bb.a

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.p = sub i64 %i.g, %i.l                       ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #28 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef %i.p)
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.ab, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.n, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !82
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 6
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.s, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %.012.i.i.i, align 8, !alias.scope !84, !noalias !87
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !87, !noalias !84 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !87, !noalias !84 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %.012.i.i.i, align 8, !alias.scope !84, !noalias !87
  %i.ac = load i64, ptr %i.w, align 8, !alias.scope !87, !noalias !84
  store i64 %i.ac, ptr %i.u, align 8, !alias.scope !84, !noalias !87
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !87, !noalias !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ad = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.z, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !alias.scope !84, !noalias !87
  store ptr %i.w, ptr %.0911.i.i.i, align 8, !alias.scope !87, !noalias !84
  store i64 0, ptr %i.ae, align 8, !alias.scope !87, !noalias !84
  store i8 0, ptr %i.w, align 8, !alias.scope !87, !noalias !84
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !alias.scope !84, !noalias !87
  %i.aj = load ptr, ptr %i.ah, align 8, !alias.scope !87, !noalias !84 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !87, !noalias !84 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false), !alias.scope !89
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.aj, ptr %i.ag, align 8, !alias.scope !84, !noalias !87
  %i.aq = load i64, ptr %i.ak, align 8, !alias.scope !87, !noalias !84
  store i64 %i.aq, ptr %i.ai, align 8, !alias.scope !84, !noalias !87
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !alias.scope !87, !noalias !84
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.d
  %i.ar = phi i64 [ %i.an, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ar, ptr %i.at, align 8, !alias.scope !84, !noalias !87
  store ptr %i.ak, ptr %i.ah, align 8, !alias.scope !87, !noalias !84
  store i64 0, ptr %i.as, align 8, !alias.scope !87, !noalias !84
  store i8 0, ptr %i.ak, align 8, !alias.scope !87, !noalias !84
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !90

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.av, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i25, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit39, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36
  %.012.i.i.i27 = phi ptr [ %i.by, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %i.aw, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i28 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i27, align 8, !alias.scope !91, !noalias !94
  %i.ay = load ptr, ptr %.0911.i.i.i28, align 8, !alias.scope !94, !noalias !91 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29

bb.e:                                             ; preds = %.lr.ph.i.i.i26
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !94, !noalias !91 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false), !alias.scope !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i26
  store ptr %i.ay, ptr %.012.i.i.i27, align 8, !alias.scope !91, !noalias !94
  %i.bf = load i64, ptr %i.az, align 8, !alias.scope !94, !noalias !91
  store i64 %i.bf, ptr %i.ax, align 8, !alias.scope !91, !noalias !94
  %.phi.trans.insert.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 8
  %.pre.i.i.i.i31 = load i64, ptr %.phi.trans.insert.i.i.i.i30, align 8, !alias.scope !94, !noalias !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29, %bb.e
  %i.bg = phi i64 [ %.pre.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29 ], [ %i.bc, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !alias.scope !91, !noalias !94
  store ptr %i.az, ptr %.0911.i.i.i28, align 8, !alias.scope !94, !noalias !91
  store i64 0, ptr %i.bh, align 8, !alias.scope !94, !noalias !91
  store i8 0, ptr %i.az, align 8, !alias.scope !94, !noalias !91
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 48 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !alias.scope !91, !noalias !94
  %i.bm = load ptr, ptr %i.bk, align 8, !alias.scope !94, !noalias !91 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 48 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i33

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !94, !noalias !91 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false), !alias.scope !96
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i32
  store ptr %i.bm, ptr %i.bj, align 8, !alias.scope !91, !noalias !94
  %i.bt = load i64, ptr %i.bn, align 8, !alias.scope !94, !noalias !91
  store i64 %i.bt, ptr %i.bl, align 8, !alias.scope !91, !noalias !94
  %.phi.trans.insert5.i.i.i.i34 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 40
  %.pre6.i.i.i.i35 = load i64, ptr %.phi.trans.insert5.i.i.i.i34, align 8, !alias.scope !94, !noalias !91
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i33, %bb.f
  %i.bu = phi i64 [ %i.bq, %bb.f ], [ %.pre6.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i33 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 40
  store i64 %i.bu, ptr %i.bw, align 8, !alias.scope !91, !noalias !94
  store ptr %i.bn, ptr %i.bk, align 8, !alias.scope !94, !noalias !91
  store i64 0, ptr %i.bv, align 8, !alias.scope !94, !noalias !91
  store i8 0, ptr %i.bn, align 8, !alias.scope !94, !noalias !91
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 64 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit39, label %.lr.ph.i.i.i26, !llvm.loop !90

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit39: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.aw, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.by, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit39
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cc) #27
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit39, %bb.g
  store ptr %i.n, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.j
  store ptr %i.cd, ptr %i.bz, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
  unreachable

_ZNKSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 40
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 4 uses
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.r, align 8
  store i8 0, ptr %i.q, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNKSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.s = load i32, ptr %.0911.i.i.i, align 8, !alias.scope !100, !noalias !97
  store i32 %i.s, ptr %.012.i.i.i, align 8, !alias.scope !97, !noalias !100
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !alias.scope !97, !noalias !100
  %i.w = load ptr, ptr %i.u, align 8, !alias.scope !100, !noalias !97 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !100, !noalias !97 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false), !alias.scope !102
  br label %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.w, ptr %i.t, align 8, !alias.scope !97, !noalias !100
  %i.ad = load i64, ptr %i.x, align 8, !alias.scope !100, !noalias !97
  store i64 %i.ad, ptr %i.v, align 8, !alias.scope !97, !noalias !100
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !100, !noalias !97
  br label %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ae = phi i64 [ %i.aa, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ae, ptr %i.ag, align 8, !alias.scope !97, !noalias !100
  store ptr %i.x, ptr %i.u, align 8, !alias.scope !100, !noalias !97
  store i64 0, ptr %i.af, align 8, !alias.scope !100, !noalias !97
  store i8 0, ptr %i.x, align 8, !alias.scope !100, !noalias !97
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !103

_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i25, label %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit35, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32
  %.012.i.i.i27 = phi ptr [ %i.ba, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.aj, %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 5 uses
  %.0911.i.i.i28 = phi ptr [ %i.az, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ak = load i32, ptr %.0911.i.i.i28, align 8, !alias.scope !107, !noalias !104
  store i32 %i.ak, ptr %.012.i.i.i27, align 8, !alias.scope !104, !noalias !107
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 24 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !alias.scope !104, !noalias !107
  %i.ao = load ptr, ptr %i.am, align 8, !alias.scope !107, !noalias !104 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 24 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29

bb.d:                                             ; preds = %.lr.ph.i.i.i26
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !107, !noalias !104 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false), !alias.scope !109
  br label %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i26
  store ptr %i.ao, ptr %i.al, align 8, !alias.scope !104, !noalias !107
  %i.av = load i64, ptr %i.ap, align 8, !alias.scope !107, !noalias !104
  store i64 %i.av, ptr %i.an, align 8, !alias.scope !104, !noalias !107
  %.phi.trans.insert.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16
  %.pre.i.i.i.i31 = load i64, ptr %.phi.trans.insert.i.i.i.i30, align 8, !alias.scope !107, !noalias !104
  br label %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32

_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29, %bb.d
  %i.aw = phi i64 [ %i.as, %bb.d ], [ %.pre.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !alias.scope !104, !noalias !107
  store ptr %i.ap, ptr %i.am, align 8, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.ax, align 8, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.ap, align 8, !alias.scope !107, !noalias !104
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 40 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit35, label %.lr.ph.i.i.i26, !llvm.loop !103

_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit35: ; preds = %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.aj, %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.ba, %_ZSt19__relocate_object_aISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit35
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #27
  br label %_ZNSt12_Vector_baseISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit35, %bb.e
  store ptr %i.n, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.j
  store ptr %i.bf, ptr %i.bb, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = zext nneg i32 %2 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.f, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.e, ptr %i.b, align 8
  %i.g = icmp samesign ugt i32 %2, 15
  br i1 %i.g, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8
  %i.i = load i64, ptr %i.b, align 8
  store i64 %i.i, ptr %i.f, align 8
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.k = phi ptr [ %i.h, %._crit_edge.i.i.thread ], [ %i.f, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !110
  %i.q = load ptr, ptr %4, align 8, !noalias !110 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !noalias !110 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !110
  store i64 %i.r, ptr %i.a, align 8, !noalias !110
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %bb.h   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i
  store ptr %i.t, ptr %0, align 8, !alias.scope !110
  %i.u = load i64, ptr %i.a, align 8, !noalias !110
  store i64 %i.u, ptr %i.p, align 8, !alias.scope !110
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc26 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !noalias !110 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !alias.scope !110
  %i.z = load ptr, ptr %0, align 8, !alias.scope !110
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !110
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !110 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !110 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not7.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not7.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.04.09.i.i, align 1  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 @isprint(i32 noundef %i.af) #29
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not.i.i.i, i8 %3, i8 %i.ae
  store i8 %i.ah, ptr %.sroa.04.09.i.i, align 1
  %i.ai = getelementptr i8, ptr %.sroa.04.09.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !113

_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  br label %.critedge24

.critedge:                                        ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.an = load i64, ptr %i.f, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.critedge24

.critedge24:                                      ; preds = %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.h
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3)
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
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_1
