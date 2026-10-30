Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/UnrealLoader?download=true
inline.NumInlined: 880
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %.pr.i = load ptr, ptr %22, align 8
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %._crit_edge890
  %i.aav = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %.pre969, %._crit_edge890 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aav, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.hg

bb.hg:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aax = load ptr, ptr %i.aaw, align 8
  %i.aay = ptrtoint ptr %i.aax to i64
  %i.aaz = ptrtoint ptr %i.aav to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  call void @_ZdlPvm(ptr noundef nonnull %i.aav, i64 noundef %i.aba) #27
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.ec, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.abb = load ptr, ptr %21, align 8             ; 3 uses
  %.not.i.i.i553 = icmp eq ptr %i.abb, null
  br i1 %.not.i.i.i553, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.hh

bb.hh:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.abc = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.abd = load ptr, ptr %i.abc, align 8
  %i.abe = ptrtoint ptr %i.abd to i64
  %i.abf = ptrtoint ptr %i.abb to i64
  %i.abg = sub i64 %i.abe, %i.abf
  call void @_ZdlPvm(ptr noundef nonnull %i.abb, i64 noundef %i.abg) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.hm

.loopexit.split-lp832.loopexit.split-lp:          ; preds = %.loopexit.split-lp832.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gy, %bb.fh, %bb.fv
  %.pn241.pn.pn = phi { ptr, i32 } [ %i.uh, %bb.fh ], [ %i.vr, %bb.fv ], [ %i.zf, %bb.gy ], [ %lpad.loopexit.split-lp1276, %.loopexit.split-lp832.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.hi

bb.hi:                                            ; preds = %.loopexit.split-lp832.loopexit.split-lp, %bb.ew
  %.pn241.pn.pn.pn = phi { ptr, i32 } [ %.pn241.pn.pn, %.loopexit.split-lp832.loopexit.split-lp ], [ %i.tb, %bb.ew ]
  %i.abh = load ptr, ptr %21, align 8             ; 3 uses
  %.not.i.i.i554 = icmp eq ptr %i.abh, null
  br i1 %.not.i.i.i554, label %_ZNSt6vectorIcSaIcEED2Ev.exit555, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.abi = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = ptrtoint ptr %i.abj to i64
  %i.abl = ptrtoint ptr %i.abh to i64
  %i.abm = sub i64 %i.abk, %i.abl
  call void @_ZdlPvm(ptr noundef nonnull %i.abh, i64 noundef %i.abm) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit555

_ZNSt6vectorIcSaIcEED2Ev.exit555:                 ; preds = %bb.hi, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451
  %i.abn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hl unwind label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607.thread

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.abn, ptr noundef nonnull @.str.30)
          to label %bb.hm unwind label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607.thread

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607.thread: ; preds = %._crit_edge, %bb.hk, %bb.hl
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit610

bb.hm:                                            ; preds = %bb.hl, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.abp = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.abq = load ptr, ptr %i.abp, align 8
  %i.abr = load ptr, ptr %19, align 8
  %i.abs = ptrtoint ptr %i.abq to i64
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = sub i64 %i.abs, %i.abt
  %i.abv = sdiv exact i64 %i.abu, 40
  %i.abw = shl nsw i64 %i.abv, 1
  %i.abx = add nsw i64 %i.abw, 5                  ; 3 uses
  %i.aby = icmp ugt i64 %i.abx, 768614336404564650
  br i1 %i.aby, label %bb.hn, label %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc557 unwind label %.loopexit.split-lp

.noexc557:                                        ; preds = %bb.hn
  unreachable

_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.hm
  %i.abz = mul nuw nsw i64 %i.abx, 12
  %i.aca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abz) #28
          to label %.lr.ph897 unwind label %.loopexit.split-lp ; 3 uses

.lr.ph897:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i
  %i.acb = getelementptr inbounds nuw [12 x i8], ptr %i.aca, i64 %i.abx
  %i.acc = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.acd = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ho

._crit_edge898:                                   ; preds = %bb.hu
  %i.acf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.acg = load i32, ptr %i.acf, align 8          ; 2 uses
  %.not211 = icmp eq i32 %i.acg, 0
  br i1 %.not211, label %bb.hv, label %bb.hy

bb.ho:                                            ; preds = %.lr.ph897, %bb.hu
  %.sroa.0654.0895 = phi ptr [ %i.jh, %.lr.ph897 ], [ %i.adr, %bb.hu ] ; 4 uses
  %.sroa.33.0894 = phi ptr [ %i.acb, %.lr.ph897 ], [ %.sroa.33.1, %bb.hu ] ; 7 uses
  %.sroa.22.0893 = phi ptr [ %i.aca, %.lr.ph897 ], [ %.sroa.22.1, %bb.hu ] ; 7 uses
  %.sroa.0657.0892 = phi ptr [ %i.aca, %.lr.ph897 ], [ %.sroa.0657.1, %bb.hu ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.0654.0895, i64 6
  %i.aci = load i8, ptr %i.ach, align 2
  %i.acj = sext i8 %i.aci to i32
  store i32 %i.acj, ptr %26, align 4
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.0654.0895, i64 14
  %i.acl = load i8, ptr %i.ack, align 2
  %i.acm = zext i8 %i.acl to i32
  store i32 %i.acm, ptr %i.acc, align 4
  store i32 0, ptr %i.acd, align 4
  %i.acn = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %.sroa.0657.0892, ptr %.sroa.22.0893, ptr nonnull align 4 dereferenceable(12) %26)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit unwind label %.loopexit.split-lp827.loopexit.split-lp ; 3 uses

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit: ; preds = %bb.ho
  %i.aco = icmp eq ptr %i.acn, %.sroa.22.0893
  %i.acp = ptrtoint ptr %.sroa.0657.0892 to i64   ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.0654.0895, i64 16 ; 2 uses
  br i1 %i.aco, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.acr = ptrtoint ptr %.sroa.22.0893 to i64
  %i.acs = sub i64 %i.acr, %i.acp                 ; 3 uses
  %i.act = sdiv exact i64 %i.acs, 12              ; 4 uses
  %i.acu = trunc i64 %i.act to i32
  store i32 %i.acu, ptr %i.acq, align 4
  store i32 1, ptr %i.acd, align 4
  %.not.i560 = icmp eq ptr %.sroa.22.0893, %.sroa.33.0894
  br i1 %.not.i560, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.22.0893, ptr noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit

bb.hr:                                            ; preds = %bb.hp
  %i.acv = icmp eq i64 %i.acs, 9223372036854775800
  br i1 %i.acv, label %bb.hs, label %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc563 unwind label %.loopexit.split-lp827.loopexit.split-lp

.noexc563:                                        ; preds = %bb.hs
  unreachable

_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.hr
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.act, i64 1)
  %i.acw = add nsw i64 %.sroa.speculated.i.i.i, %i.act ; 2 uses
  %i.acx = icmp ult i64 %i.acw, %i.act
  %i.acy = call i64 @llvm.umin.i64(i64 %i.acw, i64 768614336404564650)
  %i.acz = select i1 %i.acx, i64 768614336404564650, i64 %i.acy ; 3 uses
  %.not.i.i.i561 = icmp ne i64 %i.acz, 0
  call void @llvm.assume(i1 %.not.i.i.i561)
  %i.ada = mul nuw nsw i64 %i.acz, 12
  %i.adb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ada) #28
          to label %.noexc564 unwind label %.loopexit.split-lp827.loopexit.split-lp ; 5 uses

.noexc564:                                        ; preds = %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.acs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.adc, ptr noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0657.0892, %.sroa.33.0894
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc564, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ade, %.lr.ph.i.i.i.i.i ], [ %i.adb, %.noexc564 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.add, %.lr.ph.i.i.i.i.i ], [ %.sroa.0657.0892, %.noexc564 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !55
  %i.add = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.add, %.sroa.33.0894
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc564
  %.0.lcssa.i.i.i.i.i562 = phi ptr [ %i.adb, %.noexc564 ], [ %i.ade, %.lr.ph.i.i.i.i.i ]
  %i.adf = ptrtoint ptr %.sroa.33.0894 to i64
  %i.adg = sub i64 %i.adf, %i.acp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.0892, i64 noundef %i.adg) #27
  %i.adh = getelementptr inbounds nuw [12 x i8], ptr %i.adb, i64 %i.acz
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.hq
  %.sroa.0657.5 = phi ptr [ %i.adb, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0657.0892, %bb.hq ]
  %.0.lcssa.i.i.i.i.i562.pn = phi ptr [ %.0.lcssa.i.i.i.i.i562, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.22.0893, %bb.hq ]
  %.sroa.33.5 = phi ptr [ %i.adh, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.33.0894, %bb.hq ]
  %.sroa.22.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i562.pn, i64 12
  %i.adi = load i32, ptr %i.ace, align 8
  %i.adj = add i32 %i.adi, 1
  store i32 %i.adj, ptr %i.ace, align 8
  br label %bb.hu

.loopexit.split-lp827.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.ho, %bb.hs
  %lpad.loopexit.split-lp1263 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.jy

bb.ht:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.adk = ptrtoint ptr %i.acn to i64
  %i.adl = sub i64 %i.adk, %i.acp
  %i.adm = sdiv exact i64 %i.adl, 12
  %i.adn = trunc i64 %i.adm to i32
  store i32 %i.adn, ptr %i.acq, align 4
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acn, i64 8 ; 2 uses
  %i.adp = load i32, ptr %i.ado, align 4
  %i.adq = add i32 %i.adp, 1
  store i32 %i.adq, ptr %i.ado, align 4
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit
  %.sroa.0657.1 = phi ptr [ %.sroa.0657.5, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0657.0892, %bb.ht ] ; 16 uses
  %.sroa.22.1 = phi ptr [ %.sroa.22.3, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.22.0893, %bb.ht ] ; 2 uses
  %.sroa.33.1 = phi ptr [ %.sroa.33.5, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.33.0894, %bb.ht ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.0654.0895, i64 20 ; 2 uses
  %.not818 = icmp eq ptr %i.adr, %.0.i.i.i.i.i1194
  br i1 %.not818, label %._crit_edge898, label %bb.ho

bb.hv:                                            ; preds = %._crit_edge898
  %i.ads = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ads, ptr noundef nonnull @.str.31)
          to label %bb.hw unwind label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  invoke void @__cxa_throw(ptr nonnull %i.ads, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.kk unwind label %.loopexit.split-lp

bb.hx:                                            ; preds = %bb.hv
  %i.adt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ads) #25
  br label %bb.jy

bb.hy:                                            ; preds = %._crit_edge898
  %i.adu = zext i32 %i.acg to i64
  %i.adv = shl nuw nsw i64 %i.adu, 3
  %i.adw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adv) #28
          to label %bb.hz unwind label %.loopexit.split-lp

bb.hz:                                            ; preds = %bb.hy
  %i.adx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.adw, ptr %i.adx, align 8
  %i.ady = load i32, ptr %i.acf, align 8          ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ady, ptr %i.adz, align 8
  %i.aea = zext i32 %i.ady to i64
  %i.aeb = shl nuw nsw i64 %i.aea, 3
  %i.aec = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aeb) #28
          to label %bb.ia unwind label %.loopexit.split-lp

bb.ia:                                            ; preds = %bb.hz
  %i.aed = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.aec, ptr %i.aed, align 8
  %i.aee = load i32, ptr %i.acf, align 8          ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.pf, i64 1120
  store i32 %i.aee, ptr %i.aef, align 8
  %i.aeg = zext i32 %i.aee to i64
  %i.aeh = shl nuw nsw i64 %i.aeg, 2
  %i.aei = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aeh) #28
          to label %bb.ib unwind label %.loopexit.split-lp

bb.ib:                                            ; preds = %bb.ia
  %i.aej = getelementptr inbounds nuw i8, ptr %i.pf, i64 1128 ; 2 uses
  store ptr %i.aei, ptr %i.aej, align 8
  %i.aek = load i32, ptr %i.acf, align 8
  %.not913 = icmp eq i32 %i.aek, 0
  br i1 %.not913, label %.lr.ph911, label %.lr.ph907

.lr.ph907:                                        ; preds = %bb.ib
  %i.ael = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 13 uses
  br label %bb.ic

.lr.ph911:                                        ; preds = %.loopexit, %bb.ib
  %i.aen = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.aeo = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.aep = ptrtoint ptr %.sroa.0657.1 to i64
  br label %bb.ja

bb.ic:                                            ; preds = %.lr.ph907, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph907 ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %i.aeq = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28
          to label %bb.id unwind label %.loopexit825 ; 10 uses

bb.id:                                            ; preds = %bb.ic
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 4
  store i32 0, ptr %i.aer, align 4
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  store i32 0, ptr %i.aes, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeq, i64 224
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeq, i64 1272
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeq, i64 1312
  store ptr null, ptr %i.aew, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.aet, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aeu, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aev, i8 0, i64 36, i1 false)
  %i.aex = load ptr, ptr %i.adx, align 8
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %indvars.iv
  store ptr %i.aeq, ptr %i.aey, align 8
  store i32 4, ptr %i.aeq, align 8
  %i.aez = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0657.1, i64 %indvars.iv ; 5 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.afb = load i32, ptr %i.afa, align 4          ; 3 uses
  %i.afc = zext i32 %i.afb to i64                 ; 5 uses
  %i.afd = shl nuw nsw i64 %i.afc, 4
  %i.afe = or disjoint i64 %i.afd, 8
  %i.aff = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afe) #28
          to label %bb.ie unwind label %.loopexit825 ; 2 uses

bb.ie:                                            ; preds = %bb.id
  store i64 %i.afc, ptr %i.aff, align 16
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 8 ; 4 uses
  %i.afh = icmp eq i32 %i.afb, 0                  ; 3 uses
  br i1 %i.afh, label %.loopexit824, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.afi = getelementptr inbounds nuw [16 x i8], ptr %i.afg, i64 %i.afc
  %i.afj = add nuw nsw i64 %i.afc, 1152921504606846975
  %i.afk = and i64 %i.afj, 1152921504606846975
  %xtraiter = and i64 %i.afc, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.if, %.prol.preheader
  %i.afl = phi ptr [ %i.afn, %.prol.preheader ], [ %i.afg, %bb.if ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.if ]
  store i32 0, ptr %i.afl, align 8
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  store ptr null, ptr %i.afm, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !40

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.if
  %.unr = phi ptr [ %i.afg, %bb.if ], [ %i.afn, %.prol.preheader ]
  %i.afo = icmp samesign ult i64 %i.afk, 7
  br i1 %i.afo, label %.loopexit824, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.afp = phi ptr [ %i.agf, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.afp, align 8
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  store ptr null, ptr %i.afq, align 8
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  store i32 0, ptr %i.afr, align 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afp, i64 24
  store ptr null, ptr %i.afs, align 8
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afp, i64 32
  store i32 0, ptr %i.aft, align 8
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 40
  store ptr null, ptr %i.afu, align 8
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afp, i64 48
  store i32 0, ptr %i.afv, align 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afp, i64 56
  store ptr null, ptr %i.afw, align 8
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afp, i64 64
  store i32 0, ptr %i.afx, align 8
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afp, i64 72
  store ptr null, ptr %i.afy, align 8
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afp, i64 80
  store i32 0, ptr %i.afz, align 8
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afp, i64 88
  store ptr null, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afp, i64 96
  store i32 0, ptr %i.agb, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afp, i64 104
  store ptr null, ptr %i.agc, align 8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afp, i64 112
  store i32 0, ptr %i.agd, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %i.afp, i64 120
  store ptr null, ptr %i.age, align 8
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afp, i64 128 ; 2 uses
  %i.agg = icmp eq ptr %i.agf, %i.afi
  br i1 %i.agg, label %.loopexit824, label %.new

.loopexit824:                                     ; preds = %.prol.loopexit, %.new, %bb.ie
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aeq, i64 208
  store ptr %i.afg, ptr %i.agh, align 8
  %i.agi = mul i32 %i.afb, 3
  %i.agj = zext i32 %i.agi to i64
  %i.agk = mul nuw nsw i64 %i.agj, 12             ; 4 uses
  %i.agl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agk) #28
          to label %bb.ig unwind label %.loopexit825 ; 2 uses

bb.ig:                                            ; preds = %.loopexit824
  br i1 %i.afh, label %.loopexit823, label %.loopexit823.loopexit

.loopexit823.loopexit:                            ; preds = %bb.ig
  %i.agm = add nsw i64 %i.agk, -12                ; 2 uses
  %i.agn = urem i64 %i.agm, 12
  %i.ago = sub nuw nsw i64 %i.agm, %i.agn
  %i.agp = add nsw i64 %i.ago, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.agl, i8 0, i64 %i.agp, i1 false)
  br label %.loopexit823

.loopexit823:                                     ; preds = %.loopexit823.loopexit, %bb.ig
  store ptr %i.agl, ptr %i.aet, align 8
  %i.agq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agk) #28
          to label %bb.ih unwind label %.loopexit825 ; 2 uses

bb.ih:                                            ; preds = %.loopexit823
  br i1 %i.afh, label %.loopexit822, label %.loopexit822.loopexit

.loopexit822.loopexit:                            ; preds = %bb.ih
  %i.agr = add nsw i64 %i.agk, -12                ; 2 uses
  %i.ags = urem i64 %i.agr, 12
  %i.agt = sub nuw nsw i64 %i.agr, %i.ags
  %i.agu = add nsw i64 %i.agt, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.agq, i8 0, i64 %i.agu, i1 false)
  br label %.loopexit822

.loopexit822:                                     ; preds = %.loopexit822.loopexit, %bb.ih
  %i.agv = getelementptr inbounds nuw i8, ptr %i.aeq, i64 112
  store ptr %i.agq, ptr %i.agv, align 8
  %i.agw = load ptr, ptr %i.aej, align 8
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv
  %i.agy = trunc nuw i64 %indvars.iv to i32       ; 2 uses
  store i32 %i.agy, ptr %i.agx, align 4
  %i.agz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.ii unwind label %.loopexit825 ; 8 uses

bb.ii:                                            ; preds = %.loopexit822
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.agz)
          to label %bb.ij unwind label %.thread788

bb.ij:                                            ; preds = %bb.ii
  %i.aha = load ptr, ptr %i.aed, align 8
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %indvars.iv
  store ptr %i.agz, ptr %i.ahb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store <2 x float> splat (float 1.000000e+00), ptr %27, align 8
  store float 1.000000e+00, ptr %i.ael, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %28, i8 0, i64 1028, i1 false)
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aez, i64 4 ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 4
  %i.ahe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aem, i64 noundef 1024, ptr noundef nonnull @.str.32, i32 noundef %i.agy, i32 noundef %i.ahd) #25 ; 0 uses
  %i.ahf = load i32, ptr %i.aez, align 4
  %i.ahg = icmp eq i32 %i.ahf, 1
  br i1 %i.ahg, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 1, ptr %i.f, align 4
  %i.ahh = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.agz, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.il ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %bb.ik
  %strlen216 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aem)
  %endptr217 = getelementptr inbounds i8, ptr %i.aem, i64 %strlen216
  store i32 6255476, ptr %endptr217, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.in

.loopexit825:                                     ; preds = %.loopexit822, %bb.ic, %.loopexit823, %.loopexit824, %bb.id
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

.loopexit.split-lp:                               ; preds = %bb.hw, %bb.hy, %bb.hz, %bb.ia, %bb.hn, %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i
  %.sroa.0657.2.ph = phi ptr [ %.sroa.0657.1, %bb.hy ], [ %.sroa.0657.1, %bb.hz ], [ %.sroa.0657.1, %bb.ia ], [ null, %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.0657.1, %bb.hw ], [ null, %bb.hn ]
  %.sroa.33.2.ph = phi ptr [ %.sroa.33.1, %bb.hy ], [ %.sroa.33.1, %bb.hz ], [ %.sroa.33.1, %bb.ia ], [ null, %_ZNSt12_Vector_baseIN6Assimp6Unreal7TempMatESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.33.1, %bb.hw ], [ null, %bb.hn ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

.thread788:                                       ; preds = %bb.ii
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.agz, i64 noundef 16) #27
  br label %bb.jz

bb.il:                                            ; preds = %bb.ik
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.iz

bb.im:                                            ; preds = %bb.ij
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aem)
  %endptr = getelementptr inbounds i8, ptr %i.aem, i64 %strlen
  store i32 6255471, ptr %endptr, align 1
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %32 = load i32, ptr %i.aez, align 4
  %i.ahk = icmp eq i32 %32, 2
  br i1 %i.ahk, label %bb.io, label %bb.iq

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store float f0x3F666666, ptr %i.g, align 4
  %i.ahl = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.agz, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit unwind label %bb.ip ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %bb.io
  %strlen220 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aem)
  %endptr221 = getelementptr inbounds i8, ptr %i.aem, i64 %strlen220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr221, ptr noundef nonnull align 1 dereferenceable(6) @.str.37, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.ir

bb.ip:                                            ; preds = %bb.io
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.iz

bb.iq:                                            ; preds = %bb.in
  %strlen218 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aem)
  %endptr219 = getelementptr inbounds i8, ptr %i.aem, i64 %strlen218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr219, ptr noundef nonnull align 1 dereferenceable(6) @.str.38, i64 6, i1 false)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %33 = load i32, ptr %i.aez, align 4
  %i.ahn = icmp eq i32 %33, 8
  br i1 %i.ahn, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aem, ptr noundef nonnull align 1 dereferenceable(12) @.str.39, i64 12, i1 false)
  store i32 11, ptr %28, align 4
  store <2 x float> zeroinitializer, ptr %27, align 8
  store float 0.000000e+00, ptr %i.ael, align 8
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.aho = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.agz, ptr noundef nonnull %27, i32 noundef 12, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.ix ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %bb.it
  %i.ahp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aem) #29
  %i.ahq = trunc i64 %i.ahp to i32
  store i32 %i.ahq, ptr %28, align 4
  %i.ahr = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.agz, ptr noundef nonnull %28, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0)
          to label %bb.iu unwind label %bb.ix     ; 0 uses

bb.iu:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.ahs = load i32, ptr %i.ahc, align 4
  %i.aht = load ptr, ptr %19, align 8             ; 2 uses
  %i.ahu = load ptr, ptr %i.abp, align 8          ; 2 uses
  %.not820901 = icmp eq ptr %i.aht, %i.ahu
  br i1 %.not820901, label %.loopexit, label %.lr.ph904

.lr.ph904:                                        ; preds = %bb.iu, %bb.iy
  %.sroa.0642.0902 = phi ptr [ %i.aig, %bb.iy ], [ %i.aht, %bb.iu ] ; 4 uses
  %i.ahv = load i32, ptr %.sroa.0642.0902, align 8
  %i.ahw = icmp eq i32 %i.ahv, %i.ahs
  br i1 %i.ahw, label %bb.iv, label %bb.iy

bb.iv:                                            ; preds = %.lr.ph904
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.0642.0902, i64 16
  %i.ahy = load i64, ptr %i.ahx, align 8          ; 4 uses
  %i.ahz = icmp ugt i64 %i.ahy, 1023
  br i1 %i.ahz, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.0642.0902, i64 8
  %i.aib = trunc nuw nsw i64 %i.ahy to i32
  store i32 %i.aib, ptr %28, align 4
  %i.aic = load ptr, ptr %i.aia, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aem, ptr align 1 %i.aic, i64 %i.ahy, i1 false)
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.ahy
  store i8 0, ptr %i.aid, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568: ; preds = %bb.iv, %bb.iw
  %i.aie = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.agz, ptr noundef nonnull %28, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef 0)
          to label %.loopexit unwind label %bb.ix ; 0 uses

bb.ix:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit, %bb.it, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  %i.aif = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.iy:                                            ; preds = %.lr.ph904
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.0642.0902, i64 40 ; 2 uses
  %.not820 = icmp eq ptr %i.aig, %i.ahu
  br i1 %.not820, label %.loopexit, label %.lr.ph904, !llvm.loop !41

.loopexit:                                        ; preds = %bb.iy, %bb.iu, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aih = load i32, ptr %i.acf, align 8
  %i.aii = zext i32 %i.aih to i64
  %i.aij = icmp samesign ult i64 %indvars.iv.next, %i.aii
  br i1 %i.aij, label %bb.ic, label %.lr.ph911, !llvm.loop !42

bb.iz:                                            ; preds = %bb.ix, %bb.ip, %bb.il
  %.pn222 = phi { ptr, i32 } [ %i.aif, %bb.ix ], [ %i.ahj, %bb.il ], [ %i.ahm, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.jy

._crit_edge912:                                   ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #25
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16), ptr %30, align 8
  invoke void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull %2)
          to label %bb.jd unwind label %bb.jv

bb.ja:                                            ; preds = %.lr.ph911, %bb.jb
  %.sroa.0638.0910 = phi ptr [ %i.jh, %.lr.ph911 ], [ %i.amd, %bb.jb ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 6
  %i.ail = load i8, ptr %i.aik, align 2
  %i.aim = sext i8 %i.ail to i32
  store i32 %i.aim, ptr %29, align 4
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 14
  %i.aio = load i8, ptr %i.ain, align 2
  %i.aip = zext i8 %i.aio to i32
  store i32 %i.aip, ptr %i.aen, align 4
  store i32 0, ptr %i.aeo, align 4
  %i.aiq = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %.sroa.0657.1, ptr %.sroa.22.1, ptr nonnull align 4 dereferenceable(12) %29)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570 unwind label %bb.jc

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570: ; preds = %bb.ja
  %i.air = load ptr, ptr %i.adx, align 8
  %i.ais = ptrtoint ptr %i.aiq to i64
  %i.ait = sub i64 %i.ais, %i.aep
  %i.aiu = sdiv exact i64 %i.ait, 12
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.air, i64 %i.aiu
  %i.aiw = load ptr, ptr %i.aiv, align 8          ; 5 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 208
  %i.aiy = load ptr, ptr %i.aix, align 8
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8 ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 8          ; 2 uses
  %i.ajb = add i32 %i.aja, 1
  store i32 %i.ajb, ptr %i.aiz, align 8
  %i.ajc = zext i32 %i.aja to i64
  %i.ajd = getelementptr inbounds nuw [16 x i8], ptr %i.aiy, i64 %i.ajc ; 2 uses
  store i32 3, ptr %i.ajd, align 8
  %i.aje = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #28
          to label %bb.jb unwind label %bb.jc     ; 2 uses

bb.jb:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8 ; 3 uses
  store ptr %i.aje, ptr %i.ajf, align 8
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4 ; 12 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aiw, i64 16 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aiw, i64 112 ; 3 uses
  %i.ajk = load i32, ptr %i.ajg, align 4          ; 2 uses
  store i32 %i.ajk, ptr %i.aje, align 4
  %i.ajl = load i16, ptr %.sroa.0638.0910, align 2
  %i.ajm = zext i16 %i.ajl to i64
  %i.ajn = getelementptr inbounds nuw [12 x i8], ptr %i.pd, i64 %i.ajm
  %i.ajo = load ptr, ptr %i.ajh, align 8
  %i.ajp = zext i32 %i.ajk to i64
  %i.ajq = getelementptr inbounds nuw [12 x i8], ptr %i.ajo, i64 %i.ajp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajq, ptr noundef nonnull align 4 dereferenceable(12) %i.ajn, i64 12, i1 false)
  %i.ajr = load i8, ptr %i.aji, align 2
  %i.ajs = uitofp i8 %i.ajr to float
  %i.ajt = fdiv float %i.ajs, 2.550000e+02
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 9
  %i.ajv = load i8, ptr %i.aju, align 1
  %i.ajw = uitofp i8 %i.ajv to float
  %i.ajx = fdiv float %i.ajw, 2.550000e+02
  %i.ajy = fsub float 1.000000e+00, %i.ajx
  %i.ajz = load ptr, ptr %i.ajj, align 8
  %i.aka = load i32, ptr %i.ajg, align 4
  %i.akb = zext i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [12 x i8], ptr %i.ajz, i64 %i.akb ; 3 uses
  store float %i.ajt, ptr %i.akc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akc, i64 4
  store float %i.ajy, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %i.akd = load i32, ptr %i.ajg, align 4
  %i.ake = add i32 %i.akd, 1                      ; 2 uses
  store i32 %i.ake, ptr %i.ajg, align 4
  %i.akf = load ptr, ptr %i.ajf, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 4
  store i32 %i.ake, ptr %i.akg, align 4
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 2
  %i.aki = load i16, ptr %i.akh, align 2
  %i.akj = zext i16 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [12 x i8], ptr %i.pd, i64 %i.akj
  %i.akl = load ptr, ptr %i.ajh, align 8
  %i.akm = load i32, ptr %i.ajg, align 4
  %i.akn = zext i32 %i.akm to i64
  %i.ako = getelementptr inbounds nuw [12 x i8], ptr %i.akl, i64 %i.akn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ako, ptr noundef nonnull align 4 dereferenceable(12) %i.akk, i64 12, i1 false)
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 10
  %i.akq = load i8, ptr %i.akp, align 2
  %i.akr = uitofp i8 %i.akq to float
  %i.aks = fdiv float %i.akr, 2.550000e+02
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 11
  %i.aku = load i8, ptr %i.akt, align 1
  %i.akv = uitofp i8 %i.aku to float
  %i.akw = fdiv float %i.akv, 2.550000e+02
  %i.akx = fsub float 1.000000e+00, %i.akw
  %i.aky = load ptr, ptr %i.ajj, align 8
  %i.akz = load i32, ptr %i.ajg, align 4
  %i.ala = zext i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [12 x i8], ptr %i.aky, i64 %i.ala ; 3 uses
  store float %i.aks, ptr %i.alb, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  store float %i.akx, ptr %.sroa.4.0..sroa_idx.1, align 4
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.1, align 4
  %i.alc = load i32, ptr %i.ajg, align 4
  %i.ald = add i32 %i.alc, 1                      ; 2 uses
  store i32 %i.ald, ptr %i.ajg, align 4
  %i.ale = load ptr, ptr %i.ajf, align 8
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store i32 %i.ald, ptr %i.alf, align 4
  %i.alg = getelementptr inbounds nuw i8, ptr %.sroa.0638.0910, i64 4
  %i.alh = load i16, ptr %i.alg, align 2
  %i.ali = zext i16 %i.alh to i64
  %i.alj = getelementptr inbounds nuw [12 x i8], ptr %i.pd, i64 %i.ali
  %i.alk = load ptr, ptr %i.ajh, align 8
  %i.all = load i32, ptr %i.ajg, align 4
  %i.alm = zext i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw [12 x i8], ptr %i.alk, i64 %i.alm
end_hunk_0
