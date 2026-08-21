inline.NumInlined: 1425
inline.NumDeleted: 613
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK17cmGeneratorTarget21ResolveHeaderLanguageER12cmSourceFileRSt8optionalIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:bb.a
  store i8 0, ptr %i.ch, align 8, !tbaa !265
  br i1 %i.hg, label %bb.ax, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.ax:                                            ; preds = %_ZNSt8optionalIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIRS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS7_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS6_ESC_IS6_NSt5decayISF_E4typeEEEEESt16is_constructibleIS6_JSF_EESt13is_assignableIS9_SF_EEERS7_E4typeEOSF_.exit
  %i.hh = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i271: ; preds = %bb.ax
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !17
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.ax, %_ZNSt8optionalIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIRS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS7_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS6_ESC_IS6_NSt5decayISF_E4typeEEEEESt16is_constructibleIS6_JSF_EESt13is_assignableIS9_SF_EEERS7_E4typeEOSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.hm = load ptr, ptr %i.am, align 8, !tbaa !25
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.hm)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #26
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bc

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %bb.ag
  %.pn74 = phi { ptr, i32 } [ %i.em, %bb.ag ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ]
  %i.hp = load i8, ptr %i.ch, align 8, !tbaa !265, !range !262, !noundef !263
  %i.hq = trunc nuw i8 %i.hp to i1
  store i8 0, ptr %i.ch, align 8, !tbaa !265
  br i1 %i.hq, label %bb.ba, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit275

bb.ba:                                            ; preds = %bb.az
  %i.hr = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i273: ; preds = %bb.ba
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !17
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit275

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit275: ; preds = %bb.ba, %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bb

bb.bb:                                            ; preds = %bb.m, %bb.r, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit275, %bb.aa
  %.pn78.pn = phi { ptr, i32 } [ %.pn74, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit275 ], [ %.pn76, %bb.aa ], [ %i.bf, %bb.r ], [ %i.ax, %bb.m ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bg

bb.bc:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.j
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.hx, align 8, !tbaa !265
  %i.hy = load i8, ptr %i.hw, align 8, !tbaa !265, !range !262, !noundef !263
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.bd, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ia, ptr %0, align 8, !tbaa !9
  %i.ib = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.id, ptr %i.a, align 8, !tbaa !13
  %i.ie = icmp ugt i64 %i.id, 15
  br i1 %i.ie, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.bd
  %i.if = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc276 unwind label %bb.g  ; 2 uses

.noexc276:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.if, ptr %0, align 8, !tbaa !15
  %i.ig = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.ig, ptr %i.ia, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc276, %bb.bd
  %i.ih = phi ptr [ %i.if, %.noexc276 ], [ %i.ia, %bb.bd ] ; 2 uses
  switch i64 %i.id, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ii = load i8, ptr %i.ib, align 1, !tbaa !17
  store i8 %i.ii, ptr %i.ih, align 1, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ib, i64 %i.id, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ij = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !18
  %i.il = load ptr, ptr %0, align 8, !tbaa !15
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ij
  store i8 0, ptr %i.im, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.hx, align 8, !tbaa !265
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %bb.bc, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit, %bb.f
  %i.in = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.e
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.ip = load i64, ptr %i.e, align 8, !tbaa !17
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.bg:                                            ; preds = %bb.bb, %bb.g
  %.pn81 = phi { ptr, i32 } [ %i.x, %bb.g ], [ %.pn78.pn, %bb.bb ]
  %i.ir = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.e
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.bg
  %i.it = load i64, ptr %i.e, align 8, !tbaa !17
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn81
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZNK12cmSourceFile11GetLocationEv(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_R12cmSourceFile(ptr dead_on_unwind noalias writable sret(%"class.std::optional.603") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3187) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(376) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [6 x %"struct.std::pair.762"], align 8 ; 21 uses
  %7 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %8 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %class.cmGeneratedFileStream, align 8 ; 13 uses
  %.val44.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !15 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val44.val47.i.i.i = load i64, ptr %i.a, align 8, !tbaa !18
  %.val44.val47.i.fr.i.i = freeze i64 %.val44.val47.i.i.i ; 3 uses
  switch i64 %.val44.val47.i.fr.i.i, label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit.thread" [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %rhsc = load i8, ptr %.val44.val.i.i.i, align 1
  %i.b = icmp eq i8 %rhsc, 67
  br i1 %i.b, label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit", label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit.thread"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i: ; preds = %bb.a
  %bcmp.i.i.i55.i.i.i = tail call i32 @bcmp(ptr nonnull readonly @.str.50, ptr readonly %.val44.val.i.i.i, i64 %.val44.val47.i.fr.i.i)
  %i.c = icmp eq i32 %bcmp.i.i.i55.i.i.i, 0
  br i1 %i.c, label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit", label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit.thread"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i: ; preds = %bb.a
  %i.d = load i32, ptr %.val44.val.i.i.i, align 1
  %i.e = icmp ne i32 1128940111, %i.d
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit", label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit.thread"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i: ; preds = %bb.a
  %bcmp.i.i.i63.i.i.i = tail call i32 @bcmp(ptr nonnull readonly @.str.52, ptr readonly %.val44.val.i.i.i, i64 %.val44.val47.i.fr.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i63.i.i.i, 0
  br i1 %i.h, label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit", label %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit.thread"

"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit.thread": ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.i, align 8, !tbaa !265
  br label %bb.q

"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i
  %.028.i.i.i.idx.ph73 = phi i64 [ 96, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i ], [ 64, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ 32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i ]
  %.028.i.i.i.ptr = getelementptr inbounds nuw i8, ptr @_ZZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_R12cmSourceFileE9langToExt, i64 %.028.i.i.i.idx.ph73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !230
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16cmLocalGenerator25GetCurrentBinaryDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(816) %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.028.i.i.i.ptr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !348
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !15, !noalias !348
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !348
  store i64 %i.p, ptr %6, align 8, !tbaa !13, !alias.scope !351, !noalias !348
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !19, !alias.scope !351, !noalias !348
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !46, !alias.scope !351, !noalias !348
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !348
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i64 0, ptr %7, align 8, !noalias !348
  store i8 47, ptr %i.t, align 8, !tbaa !17, !noalias !348
  store i64 1, ptr %i.s, align 8, !tbaa !13, !noalias !348
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !tbaa !19, !noalias !348
  store i64 1, ptr %i.r, align 8, !tbaa !13, !alias.scope !354, !noalias !348
  %.sroa.4.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i16.i, align 8, !tbaa !19, !alias.scope !354, !noalias !348
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !46, !alias.scope !354, !noalias !348
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.w = load ptr, ptr %4, align 8, !tbaa !15, !noalias !348
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18, !noalias !348
  store i64 %i.y, ptr %i.v, align 8, !tbaa !13, !alias.scope !357, !noalias !348
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i24.i, align 8, !tbaa !19, !alias.scope !357, !noalias !348
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr null, ptr %i.z, align 8, !tbaa !46, !alias.scope !357, !noalias !348
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !348
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i64 0, ptr %8, align 8, !noalias !348
  store i8 47, ptr %i.ac, align 8, !tbaa !17, !noalias !348
  store i64 1, ptr %i.ab, align 8, !tbaa !13, !noalias !348
  %.sroa.4.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i25.i, align 8, !tbaa !19, !noalias !348
  store i64 1, ptr %i.aa, align 8, !tbaa !13, !alias.scope !360, !noalias !348
  %.sroa.4.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i33.i, align 8, !tbaa !19, !alias.scope !360, !noalias !348
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr null, ptr %i.ad, align 8, !tbaa !46, !alias.scope !360, !noalias !348
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.af = load ptr, ptr %3, align 8, !tbaa !15, !noalias !348
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18, !noalias !348
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !13, !alias.scope !363, !noalias !348
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i41.i, align 8, !tbaa !19, !alias.scope !363, !noalias !348
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr null, ptr %i.ai, align 8, !tbaa !46, !alias.scope !363, !noalias !348
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 120
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !13, !noalias !348
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.ptr, i64 24
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19, !noalias !348
  store i64 %.sroa.0.0.copyload.i, ptr %i.aj, align 8, !tbaa !13, !alias.scope !366, !noalias !348
  %.sroa.4.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !tbaa !19, !alias.scope !366, !noalias !348
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 136
  store ptr null, ptr %i.ak, align 8, !tbaa !46, !alias.scope !366, !noalias !348
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %6, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !348
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !215
  %i.an = invoke noundef ptr @_ZN10cmMakefile17GetOrCreateSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %"_ZSt7find_ifIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EZNK17cmGeneratorTarget23GenerateStubForLanguageERKNSt7__cxx1112basic_stringIcS3_SaIcEEESE_SE_R12cmSourceFileE3$_0ET_SI_SI_T0_.exit"
  invoke void @_ZN12cmSourceFile20SetSpecialSourceTypeENS_17SpecialSourceTypeE(ptr noundef nonnull align 8 dereferenceable(376) %5, i32 noundef 6)
          to label %._crit_edge.i.i unwind label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ao, ptr %10, align 8, !tbaa !9
  store i64 4992030546487820620, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.ap, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.aq, align 8, !tbaa !17
  invoke void @_ZN12cmSourceFile11SetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7cmValue(ptr noundef nonnull align 8 dereferenceable(376) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull align 8 dereferenceable(32) %2)
          to label %_ZN12cmSourceFile11SetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %bb.j

_ZN12cmSourceFile11SetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %._crit_edge.i.i
  %i.ar = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ao
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12cmSourceFile11SetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12cmSourceFile11SetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN5cmsys11SystemTools15GetFilenamePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = invoke i64 @_ZN5cmsys11SystemTools13MakeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKj(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null)
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.d
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZN21cmGeneratedFileStreamC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb16codecvt_Encoding(ptr noundef nonnull align 8 dereferenceable(348) %12, ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  invoke void @_ZN21cmGeneratedFileStream18SetCopyIfDifferentEb(ptr noundef nonnull align 8 dereferenceable(348) %12, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.58, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.59, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = load ptr, ptr %3, align 8, !tbaa !15
  %i.be = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.bd, i64 noundef %i.be)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.60, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bi = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.bh)
          to label %.noexc33 unwind label %bb.n

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.g, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit

bb.g:                                             ; preds = %.noexc33
  %i.bj = load ptr, ptr %12, align 8, !tbaa !336
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %12, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !369
  %i.bp = or i32 %i.bo, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bm, i32 noundef %i.bp)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.n

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc33, %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !9
  %i.br = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  store ptr %i.br, ptr %0, align 8, !tbaa !15
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !17
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit
end_hunk_0
