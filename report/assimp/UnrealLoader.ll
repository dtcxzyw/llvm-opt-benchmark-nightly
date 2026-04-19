inline.NumInlined: 880
inline.NumDeleted: 400
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.ku

bb.id:                                            ; preds = %.lr.ph887, %bb.ik
  %.sroa.0657.0885 = phi ptr [ %i.acg, %.lr.ph887 ], [ %.sroa.0657.2, %bb.ik ] ; 8 uses
  %.sroa.21.0884 = phi ptr [ %i.acg, %.lr.ph887 ], [ %.sroa.21.1, %bb.ik ] ; 11 uses
  %.sroa.0654.0883 = phi ptr [ %i.jj, %.lr.ph887 ], [ %i.adw, %bb.ik ] ; 4 uses
  %.sroa.31.0882 = phi ptr [ %i.ach, %.lr.ph887 ], [ %.sroa.31.2.a, %bb.ik ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
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
  %i.ada = sdiv exact i64 %i.acz, 12              ; 4 uses
  %i.adb = trunc i64 %i.ada to i32
  store i32 %i.adb, ptr %i.acx, align 4
  store i32 1, ptr %i.acj, align 4
  %.not.i560 = icmp eq ptr %.sroa.21.0884, %.sroa.31.0882
  br i1 %.not.i560, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.21.0884, ptr noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit

bb.ig:                                            ; preds = %bb.ie
end_hunk_0
begin_hunk_1_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
.noexc564:                                        ; preds = %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.acz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.adj, ptr noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0657.0885, %.sroa.21.0884
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc564, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.adl, %.lr.ph.i.i.i.i.i ], [ %i.adi, %.noexc564 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.adk, %.lr.ph.i.i.i.i.i ], [ %.sroa.0657.0885, %.noexc564 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !45
  %i.adk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc564
  %.0.lcssa.i.i.i.i.i562 = phi ptr [ %i.adi, %.noexc564 ], [ %i.adl, %.lr.ph.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.0885, i64 noundef %i.acz) #28
  %i.adm = getelementptr inbounds nuw [12 x i8], ptr %i.adi, i64 %i.adg
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.if
  %.sroa.31.5.a = phi ptr [ %i.adm, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.31.0882, %bb.if ]
  %.0.lcssa.i.i.i.i.i562.pn = phi ptr [ %.0.lcssa.i.i.i.i.i562, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.0884, %bb.if ]
  %.sroa.0657.5 = phi ptr [ %i.adi, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0657.0885, %bb.if ]
  %.sroa.21.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i562.pn, i64 12
  %i.adn = load i32, ptr %i.ack, align 8
  %i.ado = add i32 %i.adn, 1
end_hunk_2
begin_hunk_3_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.ik

.loopexit822:                                     ; preds = %bb.id, %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.31.0882.lcssa = phi ptr [ %.sroa.31.0882, %bb.id ], [ %.sroa.21.0884, %_ZNKSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii
end_hunk_3
begin_hunk_4_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.ii

bb.ii:                                            ; preds = %.loopexit.split-lp, %.loopexit822
  %.sroa.31.0882916 = phi ptr [ %.sroa.31.0882.lcssa, %.loopexit822 ], [ %.sroa.21.0884, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit822 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.ku
end_hunk_4
begin_hunk_5_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit
  %.sroa.31.2.a = phi ptr [ %.sroa.31.5.a, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.31.0882, %bb.ij ] ; 14 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.21.0884, %bb.ij ] ; 2 uses
  %.sroa.0657.2 = phi ptr [ %.sroa.0657.5, %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0657.0885, %bb.ij ] ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.0654.0883, i64 20 ; 2 uses
  %.not815 = icmp eq ptr %i.adw, %.0.i.i.i.i.i1179
  br i1 %.not815, label %._crit_edge888, label %bb.id

end_hunk_5
begin_hunk_6_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
.lr.ph901:                                        ; preds = %.loopexit
  %i.aem = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.aen = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.aeo = ptrtoint ptr %.sroa.0657.2 to i64
  br label %bb.ju

bb.ir:                                            ; preds = %.lr.ph897, %.loopexit
end_hunk_6
begin_hunk_7_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv
  store ptr %i.aep, ptr %i.aex, align 8
  store i32 4, ptr %i.aep, align 8
  %i.aey = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0657.2, i64 %indvars.iv ; 5 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afa = load i32, ptr %i.aez, align 4          ; 3 uses
  %i.afb = zext i32 %i.afa to i64                 ; 5 uses
end_hunk_7
begin_hunk_8_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.aiu = zext i8 %i.ait to i32
  store i32 %i.aiu, ptr %i.aem, align 4
  store i32 0, ptr %i.aen, align 4
  %i.aiv = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %.sroa.0657.2, ptr %.sroa.21.1, ptr nonnull align 4 dereferenceable(12) %29)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570 unwind label %bb.jw

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570: ; preds = %bb.ju
end_hunk_8
begin_hunk_9_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit: ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.aml = ptrtoint ptr %.sroa.31.2.a to i64
  %i.amm = ptrtoint ptr %.sroa.0657.2 to i64
  %i.amn = sub i64 %i.aml, %i.amm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.2, i64 noundef %i.amn) #28
  br i1 %.not813, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit
end_hunk_9
begin_hunk_10_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ja, %bb.jt, %bb.kt, %bb.jy, %bb.in, %bb.ii, %bb.ic
  %.sroa.31.3.a = phi ptr [ %.sroa.31.1.a, %bb.ic ], [ %.sroa.31.0882916, %bb.ii ], [ %.sroa.31.2.a, %bb.in ], [ %.sroa.31.2.a, %bb.jt ], [ %.sroa.31.2.a, %bb.ja ], [ %.sroa.31.2.a, %bb.jy ], [ %.sroa.31.2.a, %bb.kt ]
  %.sroa.0657.3 = phi ptr [ %.sroa.0657.1, %bb.ic ], [ %.sroa.0657.0885, %bb.ii ], [ %.sroa.0657.2, %bb.in ], [ %.sroa.0657.2, %bb.jt ], [ %.sroa.0657.2, %bb.ja ], [ %.sroa.0657.2, %bb.jy ], [ %.sroa.0657.2, %bb.kt ] ; 2 uses
  %.pn227 = phi { ptr, i32 } [ %i.acn, %bb.ic ], [ %lpad.phi, %bb.ii ], [ %i.ady, %bb.in ], [ %.pn222, %bb.jt ], [ %i.ahh, %bb.ja ], [ %.pn214, %bb.jy ], [ %.pn212, %bb.kt ] ; 2 uses
  %.not.i.i.i606 = icmp eq ptr %.sroa.0657.3, null
  br i1 %.not.i.i.i606, label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607, label %.thread785

.thread785:                                       ; preds = %bb.jb, %bb.jc, %bb.jd, %bb.ku
  %.pn227792 = phi { ptr, i32 } [ %.pn227, %bb.ku ], [ %i.ahj, %bb.jc ], [ %i.ahk, %bb.jd ], [ %i.ahi, %bb.jb ]
  %.sroa.0657.3791 = phi ptr [ %.sroa.0657.3, %bb.ku ], [ %.sroa.0657.2, %bb.jc ], [ %.sroa.0657.2, %bb.jd ], [ %.sroa.0657.2, %bb.jb ] ; 2 uses
  %.sroa.31.3790 = phi ptr [ %.sroa.31.3.a, %bb.ku ], [ %.sroa.31.2.a, %bb.jc ], [ %.sroa.31.2.a, %bb.jd ], [ %.sroa.31.2.a, %bb.jb ]
  %i.apq = ptrtoint ptr %.sroa.31.3790 to i64
  %i.apr = ptrtoint ptr %.sroa.0657.3791 to i64
  %i.aps = sub i64 %i.apq, %i.apr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.3791, i64 noundef %i.aps) #28
  br label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit607: ; preds = %.thread785, %bb.ku, %_ZNSt6vectorIcSaIcEED2Ev.exit555
end_hunk_10
