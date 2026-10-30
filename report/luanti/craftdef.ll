Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/craftdef?download=true
inline.NumInlined: 3083
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16CCraftDefManager14getCraftResultER10CraftInputR11CraftOutputRSt6vectorI9ItemStackSaIS5_EEbP8IGameDef:bb.a
  br i1 %i.ey, label %_ZN9ItemStackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.ez = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #25
  br label %_ZN9ItemStackD2Ev.exit

_ZN9ItemStackD2Ev.exit:                           ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fb = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.aw
  br i1 %i.fc, label %_ZN11CraftOutputD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93: ; preds = %_ZN9ItemStackD2Ev.exit
  %i.fd = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #25
  br label %_ZN11CraftOutputD2Ev.exit

_ZN11CraftOutputD2Ev.exit:                        ; preds = %_ZN9ItemStackD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ff = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.fg) #25
  br label %_ZN11CraftOutputD2Ev.exit97

_ZN11CraftOutputD2Ev.exit97:                      ; preds = %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.et, %bb.aj ], [ %lpad.loopexit.split-lp233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95 ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit.split-lp

bb.al:                                            ; preds = %_ZN11CraftOutputD2Ev.exit, %.lr.ph, %bb.r
  %.445 = phi i32 [ %.142156, %.lr.ph ], [ %.243, %_ZN11CraftOutputD2Ev.exit ], [ %.142156, %bb.r ] ; 2 uses
  %.4 = phi ptr [ %.1157, %.lr.ph ], [ %.2, %_ZN11CraftOutputD2Ev.exit ], [ %.1157, %bb.r ] ; 2 uses
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %_ZNKSt13unordered_mapImSt6vectorIP15CraftDefinitionSaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %.lr.ph, !llvm.loop !507

_ZNKSt13unordered_mapImSt6vectorIP15CraftDefinitionSaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i76, %bb.k, %bb.al, %_ZNKSt13unordered_mapImSt6vectorIP15CraftDefinitionSaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, %bb.m, %..loopexit_crit_edge21.i.i.i.i
  %.546 = phi i32 [ %.445, %bb.al ], [ %.041160, %..loopexit_crit_edge21.i.i.i.i ], [ %.041160, %bb.k ], [ %.041160, %bb.m ], [ %.041160, %_ZNKSt13unordered_mapImSt6vectorIP15CraftDefinitionSaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit ], [ %.041160, %.lr.ph.i.i.i.i76 ] ; 2 uses
  %.5 = phi ptr [ %.4, %bb.al ], [ %.040161, %..loopexit_crit_edge21.i.i.i.i ], [ %.040161, %bb.k ], [ %.040161, %bb.m ], [ %.040161, %_ZNKSt13unordered_mapImSt6vectorIP15CraftDefinitionSaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit ], [ %.040161, %.lr.ph.i.i.i.i76 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.f, label %bb.h, !llvm.loop !508

bb.am:                                            ; preds = %bb.f
  %i.fh = load ptr, ptr %.5, align 8, !tbaa !36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %.5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.am
  %.pre180 = load ptr, ptr %6, align 8, !tbaa !112
  %.pre181 = load ptr, ptr %i.k, align 8, !tbaa !111
  br label %bb.an

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.q, %.lr.ph.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.an:                                            ; preds = %._crit_edge, %bb.f
  %i.fk = phi ptr [ %.pre181, %._crit_edge ], [ %i.p, %bb.f ] ; 2 uses
  %.pr.i105 = phi ptr [ %.pre180, %._crit_edge ], [ %i.m, %bb.f ] ; 5 uses
  %.not4.i.i.i98 = icmp eq ptr %.pr.i105, %i.fk
  br i1 %.not4.i.i.i98, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i106, label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %bb.an, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i102
  %.05.i.i.i100 = phi ptr [ %i.fq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i102 ], [ %.pr.i105, %bb.an ] ; 3 uses
  %i.fl = load ptr, ptr %.05.i.i.i100, align 8, !tbaa !50 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i101: ; preds = %.lr.ph.i.i.i99
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !34
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i102

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i102: ; preds = %.lr.ph.i.i.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i101
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 32 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.fq, %i.fk
  br i1 %.not.i.i.i103, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i106, label %.lr.ph.i.i.i99, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i106: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i102, %bb.an
  %.not.i.i1.i107 = icmp eq ptr %.pr.i105, null
  br i1 %.not.i.i1.i107, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit109, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i106
  %i.fr = load ptr, ptr %i.l, align 8, !tbaa !113
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %.pr.i105 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i105, i64 noundef %i.fu) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit109

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit109: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i106, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNK10CraftInput5emptyEv.exit.thread

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN11CraftOutputD2Ev.exit97, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %.pn.pn, %_ZN11CraftOutputD2Ev.exit97 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

_ZNK10CraftInput5emptyEv.exit.thread:             ; preds = %bb.b, %bb.a, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit109
  %.148 = phi i1 [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit109 ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.148
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK16CCraftDefManager15getCraftRecipesER11CraftOutputP8IGameDefj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.170") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIP15CraftDefinitionSaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIP15CraftDefinitionSaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit unwind label %.loopexit.split-lp ; 5 uses

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIP15CraftDefinitionSaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit: ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIP15CraftDefinitionSaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %4 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !274  ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !268  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !274  ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !268  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp ugt i64 %i.s, 1152921504606846975
  br i1 %i.t, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

.thread:                                          ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.h, %bb.c ]
  %i.v = phi ptr [ %i.n, %bb.d ], [ %i.g, %bb.c ]
  %i.w = phi i64 [ %i.s, %bb.d ], [ %spec.select, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not93 = icmp eq i64 %i.w, 0
  br i1 %.not93, label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP15CraftDefinitionSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP15CraftDefinitionSaIS1_EE11_M_allocateEm.exit.i: ; preds = %.thread
  %i.y = shl nuw nsw i64 %i.w, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc30 unwind label %.loopexit.split-lp ; 4 uses

.noexc30:                                         ; preds = %_ZNSt12_Vector_baseIP15CraftDefinitionSaIS1_EE11_M_allocateEm.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %0, align 8, !tbaa !268
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !274
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !269
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !274
  %.pre71 = load ptr, ptr %i.d, align 8, !tbaa !268
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP15CraftDefinitionSaIS1_EE7reserveEm.exit: ; preds = %.noexc30, %.thread
  %.promoted39 = phi ptr [ %i.ab, %.noexc30 ], [ null, %.thread ] ; 3 uses
  %.promoted = phi ptr [ %i.z, %.noexc30 ], [ null, %.thread ] ; 5 uses
  %i.ac = phi ptr [ %.pre71, %.noexc30 ], [ %i.u, %.thread ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %.noexc30 ], [ %i.v, %.thread ] ; 2 uses
  %.not2643 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not2643, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE7reserveEm.exit
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = zext i32 %4 to i64
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us
  %i.ak = phi ptr [ %i.bf, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us ], [ %.promoted, %.lr.ph ] ; 4 uses
  %.044.us = phi i64 [ %i.an, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us ], [ %i.ah, %.lr.ph ]
  %i.al = phi ptr [ %i.bh, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us ], [ %.promoted, %.lr.ph ] ; 7 uses
  %i.am = phi ptr [ %i.bg, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us ], [ %.promoted39, %.lr.ph ] ; 4 uses
  %i.an = add i64 %.044.us, -1                    ; 3 uses
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !268
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !276
  %5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %5, ptr %i.ai, align 8, !tbaa !274
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %.split.us, label %_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.g
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.us, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #27
          to label %.noexc32.us unwind label %.loopexit.split.us ; 4 uses

.noexc32.us:                                      ; preds = %_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store ptr %i.aq, ptr %i.bc, align 8, !tbaa !276
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.h, label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.us

bb.h:                                             ; preds = %.noexc32.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.al, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.us

_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.us: ; preds = %bb.h, %.noexc32.us
  %6 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %.not.i17.i.i.us = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.us
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.at) #25
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us

_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us: ; preds = %bb.i, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.us
  store ptr %6, ptr %i.ai, align 8, !tbaa !274
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us

_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us: ; preds = %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, %bb.f
  %i.bf = phi ptr [ %6, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %5, %bb.f ]
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.am, %bb.f ] ; 2 uses
  %i.bh = phi ptr [ %i.bb, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.al, %bb.f ] ; 2 uses
  %.not26.us = icmp eq i64 %i.an, 0
  br i1 %.not26.us, label %.critedge.loopexit, label %.lr.ph.split.us, !llvm.loop !509

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit
  %i.bi = phi ptr [ %i.cb, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit ], [ %.promoted, %.lr.ph ] ; 4 uses
  %.044 = phi i64 [ %i.bl, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit ], [ %i.ah, %.lr.ph ]
  %i.bj = phi ptr [ %i.cd, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit ], [ %.promoted, %.lr.ph ] ; 8 uses
  %i.bk = phi ptr [ %i.cc, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit ], [ %.promoted39, %.lr.ph ] ; 5 uses
  %i.bl = add i64 %.044, -1                       ; 3 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !268
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !276 ; 2 uses
  %i.bp = ptrtoint ptr %i.bi to i64
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %.not27 = icmp ult i64 %i.bs, %i.aj
  br i1 %.not27, label %bb.j, label %.critedge.loopexit

bb.j:                                             ; preds = %.lr.ph.split
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !276
  %7 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %7, ptr %i.ai, align 8, !tbaa !274
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.bt = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bt, label %.split.us, label %_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i

.split.us:                                        ; preds = %bb.l, %bb.g
  %.us-phi.a = phi ptr [ %i.am, %bb.g ], [ %i.bk, %bb.l ] ; 2 uses
  %.us-phi49 = phi ptr [ %i.al, %bb.g ], [ %i.bj, %bb.l ] ; 2 uses
  store ptr %.us-phi49, ptr %0, align 8
  store ptr %.us-phi.a, ptr %i.x, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #26
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %.split.us
  unreachable

_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bu = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975) ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #27
          to label %.noexc32 unwind label %.loopexit.split ; 4 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.br ; 2 uses
  store ptr %i.bo, ptr %i.by, align 8, !tbaa !276
  %i.bz = icmp sgt i64 %i.br, 0
  br i1 %i.bz, label %bb.m, label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.m:                                             ; preds = %.noexc32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.bj, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.m, %.noexc32
  %8 = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.br) #25
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %8, ptr %i.ai, align 8, !tbaa !274
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.k
  %i.cb = phi ptr [ %8, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %7, %bb.k ]
  %i.cc = phi ptr [ %i.ca, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.cd = phi ptr [ %i.bx, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.bj, %bb.k ] ; 2 uses
  %.not26 = icmp eq i64 %i.bl, 0
  br i1 %.not26, label %.critedge.loopexit, label %.lr.ph.split, !llvm.loop !509

.loopexit.split:                                  ; preds = %_ZNKSt6vectorIP15CraftDefinitionSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split.us, %.loopexit.split
  %.us-phi50 = phi ptr [ %i.bk, %.loopexit.split ], [ %i.am, %.loopexit.split.us ] ; 2 uses
  %.us-phi51 = phi ptr [ %i.bj, %.loopexit.split ], [ %i.al, %.loopexit.split.us ] ; 2 uses
  %.us-phi52 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  store ptr %.us-phi51, ptr %0, align 8
  store ptr %.us-phi50, ptr %i.x, align 8
  br label %bb.o

.loopexit.split-lp:                               ; preds = %.split.us, %_ZNSt12_Vector_baseIP15CraftDefinitionSaIS1_EE11_M_allocateEm.exit.i, %bb.e, %bb.a
  %i.ce = phi ptr [ %.us-phi.a, %.split.us ], [ null, %_ZNSt12_Vector_baseIP15CraftDefinitionSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.e ], [ null, %bb.a ]
  %i.cf = phi ptr [ %.us-phi49, %.split.us ], [ null, %_ZNSt12_Vector_baseIP15CraftDefinitionSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.e ], [ null, %bb.a ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.cg = phi ptr [ %.us-phi50, %.loopexit ], [ %i.ce, %.loopexit.split-lp ]
  %i.ch = phi ptr [ %.us-phi51, %.loopexit ], [ %i.cf, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %.us-phi52, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i33 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EED2Ev.exit, label %bb.p

.critedge.loopexit:                               ; preds = %.lr.ph.split, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE7reserveEm.exit
  %.lcssa40 = phi ptr [ %.promoted39, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us ], [ %i.bk, %.lr.ph.split ], [ %i.cc, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit.us ], [ %i.bj, %.lr.ph.split ], [ %i.cd, %_ZNSt6vectorIP15CraftDefinitionSaIS1_EE9push_backERKS1_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  store ptr %.lcssa40, ptr %i.x, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIP15CraftDefinitionSaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  ret void

bb.p:                                             ; preds = %bb.o
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ck) #25
  br label %_ZNSt6vectorIP15CraftDefinitionSaIS1_EED2Ev.exit

_ZNSt6vectorIP15CraftDefinitionSaIS1_EED2Ev.exit: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK16CCraftDefManager4dumpB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 29 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.44, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !263  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.028.035 = load ptr, ptr %i.f, align 8, !tbaa !201 ; 2 uses
  %.not36 = icmp eq ptr %.sroa.028.035, null
  br i1 %.not36, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %.preheader

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56, !noalias !516 ; 2 uses
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.k)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !50, !alias.scope !516 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.cp
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.cp, align 8, !tbaa !34, !alias.scope !516
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #25
  br label %.body

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.preheader
  %.sroa.028.0 = load ptr, ptr %.sroa.028.037, align 8, !tbaa !201 ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit, label %.preheader, !llvm.loop !514

.preheader:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader, %.loopexit
  %.sroa.028.037 = phi ptr [ %.sroa.028.0, %.loopexit ], [ %.sroa.028.035, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !274
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !268
  %.not39 = icmp eq ptr %i.v, %i.w
  br i1 %.not39, label %.loopexit, label %.lr.ph

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit: ; preds = %.loopexit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !263
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.x = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit ], [ %i.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.028.035.1 = load ptr, ptr %i.y, align 8, !tbaa !201 ; 2 uses
  %.not36.1 = icmp eq ptr %.sroa.028.035.1, null
  br i1 %.not36.1, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1, label %.preheader.1

.preheader.1:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.loopexit.1
  %.sroa.028.037.1 = phi ptr [ %.sroa.028.0.1, %.loopexit.1 ], [ %.sroa.028.035.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.028.037.1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.028.037.1, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.028.037.1, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !274
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !268
  %.not39.1 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not39.1, label %.loopexit.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %.034.1 = phi i64 [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1 ], [ 0, %.preheader.1 ] ; 2 uses
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.45, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1: ; preds = %.lr.ph.1
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.46, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.1: ; preds = %bb.e
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.ah)
          to label %_ZNSolsEm.exit.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEm.exit.1:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.1
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.47, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20.1: ; preds = %_ZNSolsEm.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !268
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.034.1
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !276 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.f unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20.1
  %i.aq = load ptr, ptr %3, align 8, !tbaa !50
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !51
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.1 unwind label %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.1: ; preds = %bb.f
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21.1 unwind label %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21.1: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.1
  %i.au = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.d
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21.1
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !34
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ay = add nuw i64 %.034.1, 1                  ; 2 uses
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !274
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !268
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = icmp ult i64 %i.ay, %i.be
  br i1 %i.bf, label %.lr.ph.1, label %.loopexit.1, !llvm.loop !515

.loopexit.1:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %.preheader.1
  %.sroa.028.0.1 = load ptr, ptr %.sroa.028.037.1, align 8, !tbaa !201 ; 2 uses
  %.not.1 = icmp eq ptr %.sroa.028.0.1, null
  br i1 %.not.1, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit.1, label %.preheader.1, !llvm.loop !514

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit.1: ; preds = %.loopexit.1
  %.pre61 = load ptr, ptr %i.b, align 8, !tbaa !263
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bg = phi ptr [ %.pre61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.loopexit.1 ], [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %.sroa.028.035.2 = load ptr, ptr %i.bh, align 8, !tbaa !201 ; 2 uses
  %.not36.2 = icmp eq ptr %.sroa.028.035.2, null
  br i1 %.not36.2, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2, label %.preheader.2

.preheader.2:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1, %.loopexit.2
  %.sroa.028.037.2 = phi ptr [ %.sroa.028.0.2, %.loopexit.2 ], [ %.sroa.028.035.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.028.037.2, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.028.037.2, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.028.037.2, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !274
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !268
  %.not39.2 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not39.2, label %.loopexit.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %.034.2 = phi i64 [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2 ], [ 0, %.preheader.2 ] ; 2 uses
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.45, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.2: ; preds = %.lr.ph.2
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 2)
end_hunk_0
