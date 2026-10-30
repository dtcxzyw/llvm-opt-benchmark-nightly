Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmDyndepCollation?download=true
inline.NumInlined: 2734
inline.NumDeleted: 1180
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17cmDyndepCollation23AddCollationInformationERN4Json5ValueEPK17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK26cmDyndepGeneratorCallbacks:bb.a
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %100) #24
  br label %.body73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i146.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.atd = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.5)
          to label %bb.pv unwind label %bb.qe

bb.pv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i146.i
  %i.ate = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.atd, ptr noundef nonnull align 8 dereferenceable(40) %100) #24 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %100) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #24
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %101, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.pw unwind label %bb.qf

bb.pw:                                            ; preds = %bb.pv
  %i.atf = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.6)
          to label %bb.px unwind label %bb.qg

bb.px:                                            ; preds = %bb.pw
  %i.atg = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.atf, ptr noundef nonnull align 8 dereferenceable(40) %101) #24 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %101) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #24
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ao) #24
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(80) %97) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #24
  ret void

bb.py:                                            ; preds = %bb.ht, %bb.hs, %bb.hr, %_ZN12_GLOBAL__N_127CollationInformationSourcesEPK17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK26cmDyndepGeneratorCallbacks.exit
  %i.ath = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.pz:                                            ; preds = %bb.hu
  %i.ati = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.qa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29.i
  %i.atj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %98) #24
  br label %.body

.body:                                            ; preds = %bb.pz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i, %bb.qa
  %.pn = phi { ptr, i32 } [ %i.atj, %bb.qa ], [ %i.ati, %bb.pz ], [ %.pn14.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #24
  br label %bb.qi

bb.qb:                                            ; preds = %._crit_edge.thread.i, %bb.iq
  %i.atk = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.qc:                                            ; preds = %_ZN12_GLOBAL__N_135CollationInformationBmiInstallationEPK17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.atl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %99) #24
  br label %.body43

.body43:                                          ; preds = %bb.qb, %bb.jq, %bb.qc
  %.pn22 = phi { ptr, i32 } [ %i.atl, %bb.qc ], [ %i.atk, %bb.qb ], [ %.pn39.pn.pn.pn.i, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #24
  br label %bb.qi

bb.qd:                                            ; preds = %bb.jr
  %i.atm = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.qe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i146.i
  %i.atn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %100) #24
  br label %.body73

.body73:                                          ; preds = %bb.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i, %bb.qe
  %.pn24 = phi { ptr, i32 } [ %i.atn, %bb.qe ], [ %i.atm, %bb.qd ], [ %.pn122.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #24
  br label %bb.qi

bb.qf:                                            ; preds = %bb.pv
  %i.ato = landingpad { ptr, i32 }
          cleanup
  br label %bb.qh

bb.qg:                                            ; preds = %bb.pw
  %i.atp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %101) #24
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qf
  %.pn26 = phi { ptr, i32 } [ %i.atp, %bb.qg ], [ %i.ato, %bb.qf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #24
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %.body73, %.body43, %.body, %bb.py
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.qh ], [ %.pn24, %.body73 ], [ %.pn22, %.body43 ], [ %.pn, %.body ], [ %i.ath, %bb.py ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ao) #24
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(80) %97) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #24
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #1

declare void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK28cmCxxModuleExportInfoDeleterclEP21cmCxxModuleExportInfo(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN21cmCxxModuleExportInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %1) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 400) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21cmCxxModuleExportInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !173
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !224  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !225  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  tail call void @_ZN15CxxModuleExportD2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(193) %.05.i.i.i) #24
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 200 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !457

_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !224
  br label %_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI15CxxModuleExportSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !226
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZNSt6vectorI15CxxModuleExportSaIS0_EED2Ev.exit

_ZNSt6vectorI15CxxModuleExportSaIS0_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIP15CxxModuleExportS0_EvT_S2_RSaIT0_E.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.s = load i8, ptr %i.r, align 8, !tbaa !228, !range !229, !noundef !230
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZNSt14_Optional_baseI19CxxModuleBmiInstallLb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZNSt6vectorI15CxxModuleExportSaIS0_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt22_Optional_payload_baseI19CxxModuleBmiInstallE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %i.u) #24
  br label %_ZNSt14_Optional_baseI19CxxModuleBmiInstallLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI19CxxModuleBmiInstallLb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorI15CxxModuleExportSaIS0_EED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !232, !range !229, !noundef !230
  %i.y = trunc nuw i8 %i.x to i1
  store i8 0, ptr %i.w, align 8, !tbaa !232
  br i1 %i.y, label %bb.d, label %_ZNSt14_Optional_baseI21CxxModuleDatabaseInfoLb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt14_Optional_baseI19CxxModuleBmiInstallLb0ELb0EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !170 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !173
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !170 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt14_Optional_baseI21CxxModuleDatabaseInfoLb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !173
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZNSt14_Optional_baseI21CxxModuleDatabaseInfoLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI21CxxModuleDatabaseInfoLb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNSt14_Optional_baseI19CxxModuleBmiInstallLb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef %i.am)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Optional_baseI21CxxModuleDatabaseInfoLb0ELb0EED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI21CxxModuleDatabaseInfoLb0ELb0EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.aq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10SourceInfoSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10SourceInfoSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmDyndepCollation15ParseExportInfoERKN4Json5ValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.25") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"struct.std::pair.625"], align 8 ; 9 uses
  %3 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.Json::ValueConstIterator", align 8 ; 8 uses
  %6 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %7 = alloca %struct.CxxModuleExport, align 8    ; 30 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %struct.CxxModuleDatabaseInfo, align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %struct.CxxModuleBmiInstall, align 8 ; 28 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %23 = alloca %"class.Json::ValueConstIterator", align 8 ; 9 uses
  %24 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.Json::Value", align 8      ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %34 = alloca %"class.Json::ValueConstIterator", align 8 ; 8 uses
  %35 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.Json::ValueConstIterator", align 8 ; 8 uses
  %38 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.Json::ValueConstIterator", align 8 ; 8 uses
  %41 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.Json::ValueConstIterator", align 8 ; 8 uses
  %44 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %46 = alloca %"class.Json::ValueConstIterator", align 8 ; 9 uses
  %47 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.Json::Value", align 8      ; 7 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #29 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !176
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !174
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.h, align 8, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.g, ptr %i.i, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.g, ptr %i.j, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %i.k, align 8, !tbaa !178
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.l, align 8, !tbaa !232
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i8 0, ptr %i.m, align 8, !tbaa !228
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !169
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !171
  store i8 0, ptr %i.p, align 8, !tbaa !173
  store ptr %i.a, ptr %0, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.r = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.6)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !170  ; 6 uses
  %i.t = icmp eq ptr %i.s, %i.p
  %i.u = load ptr, ptr %4, align 8, !tbaa !170    ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  br i1 %i.w, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !171  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  switch i64 %i.y, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !173
  store i8 %i.aa, ptr %i.s, align 1, !tbaa !173
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !171 ; 2 uses
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !171
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !170
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !173
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !170
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.u, ptr %i.o, align 8, !tbaa !170
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !173
  store <2 x i64> %i.af, ptr %i.q, align 8, !tbaa !173
end_hunk_0
begin_hunk_1_@_ZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacks:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.fb = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.eo, %bb.m ], [ %i.cs, %bb.n ]
  store i64 0, ptr %i.ct, align 8, !tbaa !171
  store i8 0, ptr %i.fb, align 1, !tbaa !173
  %i.fc = load ptr, ptr %42, align 8, !tbaa !170  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.cs
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.fe = load i64, ptr %i.cs, align 8, !tbaa !173
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  %i.fg = invoke noalias noundef nonnull dereferenceable(616) ptr @_Znwm(i64 noundef 616) #29
          to label %.noexc unwind label %bb.aa    ; 4 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  invoke void @_ZN21cmGeneratedFileStreamC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb16codecvt_Encoding(ptr noundef nonnull align 8 dereferenceable(348) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %41, i1 noundef zeroext false, i32 noundef 0)
          to label %_ZSt11make_uniqueI21cmGeneratedFileStreamJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.o, !noalias !734

bb.o:                                             ; preds = %.noexc
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 616) #25, !noalias !734
  br label %.body

_ZSt11make_uniqueI21cmGeneratedFileStreamJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc
  %i.fi = load ptr, ptr %i.at, align 8, !tbaa !261 ; 3 uses
  store ptr %i.fg, ptr %i.at, align 8, !tbaa !261
  %.not.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueI21cmGeneratedFileStreamJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !213
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(348) %i.fi) #24, !inline_history !544
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !261
  br label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i.i.i.i, %_ZSt11make_uniqueI21cmGeneratedFileStreamJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.fm = phi ptr [ %.pre, %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i.i.i.i ], [ %i.fg, %_ZSt11make_uniqueI21cmGeneratedFileStreamJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ] ; 2 uses
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.39, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.01123.01568, i64 160
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !170
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.01123.01568, i64 168
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !171
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.fp, i64 noundef %i.fr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aa

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ft = load ptr, ptr %.sroa.01123.01568, align 8, !tbaa !170
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.01123.01568, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !171
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef %i.ft, i64 noundef %i.fv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339 unwind label %bb.aa ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.40, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339
  %i.fy = load ptr, ptr %36, align 8, !tbaa !170
  %i.fz = load i64, ptr %i.cu, align 8, !tbaa !171
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef %i.fy, i64 noundef %i.fz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343 unwind label %bb.aa ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 10, ptr %i.h, align 1, !tbaa !173
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !213
  %i.gc = getelementptr i8, ptr %i.gb, i64 -24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds i8, ptr %i.ga, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !743
  %.not.i344 = icmp eq i64 %i.gg, 0
  br i1 %.not.i344, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %bb.r unwind label %bb.aa      ; 0 uses

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit343
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i8 noundef signext 10)
          to label %bb.r unwind label %bb.aa      ; 0 uses

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %.sroa.01123.01568, ptr %39, align 8, !tbaa !268
  %i.gj = load ptr, ptr %i.cv, align 8, !tbaa !271 ; 11 uses
  %i.gk = load ptr, ptr %i.cw, align 8, !tbaa !272
  %.not.i347 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not.i347, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.01123.01568, ptr %i.gj, align 8, !tbaa !268
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load i64, ptr %i.at, align 8, !tbaa !261
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !261
  store ptr null, ptr %i.at, align 8, !tbaa !261
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.go = load i64, ptr %i.au, align 8
  store i64 %i.go, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gq = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !273
  store <2 x ptr> %i.gq, ptr %i.gp, align 8, !tbaa !273
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gs = load ptr, ptr %i.cy, align 8, !tbaa !274
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 64 ; 3 uses
  store ptr %i.gu, ptr %i.gt, align 8, !tbaa !169
  %i.gv = load ptr, ptr %i.ax, align 8, !tbaa !170 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ay
  br i1 %i.gw, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.gx = load i64, ptr %i.az, align 8, !tbaa !171 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %i.gz = add nuw nsw i64 %i.gx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gu, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.gz, i1 false)
  br label %_ZN27CxxModuleExportOutputHelperC2EOS_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  store ptr %i.gv, ptr %i.gt, align 8, !tbaa !170
  %i.ha = load i64, ptr %i.ay, align 8, !tbaa !173
  store i64 %i.ha, ptr %i.gu, align 8, !tbaa !173
  %.pre1649.a = load i64, ptr %i.az, align 8, !tbaa !171
  br label %_ZN27CxxModuleExportOutputHelperC2EOS_.exit.i

_ZN27CxxModuleExportOutputHelperC2EOS_.exit.i:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.t
  %i.hb = phi i64 [ %.pre1649.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gx, %bb.t ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !171
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !170
  store i64 0, ptr %i.az, align 8, !tbaa !171
  store i8 0, ptr %i.ay, align 8, !tbaa !173
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gj, i64 80
  store ptr %i.hd, ptr %i.cv, align 8, !tbaa !271
  br label %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.u:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr %i.gj, ptr noundef nonnull align 8 dereferenceable(80) %39)
          to label %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit unwind label %bb.aa

_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.u, %_ZN27CxxModuleExportOutputHelperC2EOS_.exit.i
  %i.he = load ptr, ptr %41, align 8, !tbaa !170  ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.cz
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit
  %i.hg = load i64, ptr %i.cz, align 8, !tbaa !173
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %i.hi = load ptr, ptr %40, align 8, !tbaa !170  ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.da
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.hk = load i64, ptr %i.da, align 8, !tbaa !173
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %i.hm = load ptr, ptr %i.ax, align 8, !tbaa !170 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ay
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %i.ho = load i64, ptr %i.ay, align 8, !tbaa !173
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i356
  %i.hq = load ptr, ptr %i.aw, align 8, !tbaa !275 ; 3 uses
  %i.hr = load ptr, ptr %i.cx, align 8, !tbaa !276 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.hq, %i.hr
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ih, %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i.i ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 192 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !278, !range !229, !noundef !230
  %i.hu = trunc nuw i8 %i.ht to i1
  store i8 0, ptr %i.hs, align 8, !tbaa !278
  br i1 %i.hu, label %bb.v, label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72
  call void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(128) %i.hv) #24
  br label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !170 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !173
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ic = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !170 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.if = load i64, ptr %i.id, align 8, !tbaa !173
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #25
  br label %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 200 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ih, %i.hr
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ii = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i1.i.i.i, label %_ZN19cmCxxModuleMetadataD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ij = load ptr, ptr %i.cy, align 8, !tbaa !274
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.im) #25
  br label %_ZN19cmCxxModuleMetadataD2Ev.exit.i

_ZN19cmCxxModuleMetadataD2Ev.exit.i:              ; preds = %bb.w, %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.in = load ptr, ptr %i.at, align 8, !tbaa !261 ; 3 uses
  %.not.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i, label %_ZN27CxxModuleExportOutputHelperD2Ev.exit, label %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i.i

_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i.i: ; preds = %_ZN19cmCxxModuleMetadataD2Ev.exit.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !213
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(348) %i.in) #24, !inline_history !545
  br label %_ZN27CxxModuleExportOutputHelperD2Ev.exit

_ZN27CxxModuleExportOutputHelperD2Ev.exit:        ; preds = %_ZN19cmCxxModuleMetadataD2Ev.exit.i, %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01123.01568, i64 200 ; 2 uses
  %.not1139.a = icmp eq ptr %i.ir, %i.as
  br i1 %.not1139.a, label %._crit_edge, label %bb.f

bb.x:                                             ; preds = %bb.f
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

bb.y:                                             ; preds = %bb.g
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

bb.z:                                             ; preds = %bb.h
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %.body

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %bb.u, %bb.q, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.aa, %bb.z
  %.pn313 = phi { ptr, i32 } [ %i.iv, %bb.aa ], [ %i.iu, %bb.z ], [ %i.fh, %bb.o ] ; 2 uses
  %i.iw = load ptr, ptr %41, align 8, !tbaa !170  ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.cz
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %.body
  %i.iy = load i64, ptr %i.cz, align 8, !tbaa !173
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357, %bb.y
  %.pn313.pn = phi { ptr, i32 } [ %.pn313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357 ], [ %i.it, %bb.y ], [ %.pn313, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %i.ja = load ptr, ptr %40, align 8, !tbaa !170  ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.da
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  %i.jc = load i64, ptr %i.da, align 8, !tbaa !173
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360, %bb.x
  %.pn313.pn.pn = phi { ptr, i32 } [ %i.is, %bb.x ], [ %.pn313.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360 ], [ %.pn313.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @_ZN27CxxModuleExportOutputHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %39) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.jb

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  invoke void @_ZN15cmBuildDatabase4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.67") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %i.dg)
          to label %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit unwind label %bb.ah

_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.ab
  %i.je = load ptr, ptr %45, align 8, !tbaa !279  ; 3 uses
  store ptr %i.je, ptr %43, align 8, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  %.not1140.a = icmp eq ptr %i.je, null
  br i1 %.not1140.a, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  invoke void @_ZN15cmBuildDatabase19GenerateLookupTableB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.75") align 8 %46, ptr noundef nonnull align 8 dereferenceable(24) %i.je)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.jf = load ptr, ptr %i.dc, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef %i.jf)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5clearEv.exit.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #26
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5clearEv.exit.i.i.i: ; preds = %bb.ad
  store ptr null, ptr %i.dc, align 8, !tbaa !175
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !176
  store ptr %i.db, ptr %i.de, align 8, !tbaa !177
  store i64 0, ptr %i.df, align 8, !tbaa !178
  %i.ji = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEEaSEOSF_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5clearEv.exit.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !174
  store i32 %i.jl, ptr %i.db, align 8, !tbaa !174
  store ptr %i.jj, ptr %i.dc, align 8, !tbaa !175
  %i.jm = getelementptr inbounds nuw i8, ptr %46, i64 24 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.jo = load <2 x ptr>, ptr %i.jm, align 8, !tbaa !195
  store <2 x ptr> %i.jo, ptr %i.dd, align 8, !tbaa !195
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.db, ptr %i.jp, align 8, !tbaa !744
  %i.jq = getelementptr inbounds nuw i8, ptr %46, i64 40 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !178
  store i64 %i.jr, ptr %i.df, align 8, !tbaa !178
  store ptr null, ptr %i.ji, align 8, !tbaa !175
  store ptr %i.jk, ptr %i.jm, align 8, !tbaa !176
  store ptr %i.jk, ptr %i.jn, align 8, !tbaa !177
  store i64 0, ptr %i.jq, align 8, !tbaa !178
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEEaSEOSF_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEEaSEOSF_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5clearEv.exit.i.i.i, %bb.af
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEEaSEOSF_.exit
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEEaSEOSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ab
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit969
end_hunk_1
begin_hunk_2_@_ZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacks:bb.a
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i478

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i478: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i497, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i476
  %.0.i.i.i.i.i.i479 = phi i32 [ %i.yx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i476 ], [ %.0.i6.i.i.i.i.i.i500, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i497 ]
  %i.yz = icmp slt i32 %.0.i.i.i.i.i.i479, 0      ; 4 uses
  %.19.i.i.i480 = select i1 %i.yz, ptr %.0811.i.i.i474, ptr %.012.i.i.i473 ; 5 uses
  %.1.in.v.i.i.i481 = select i1 %i.yz, i64 24, i64 16
  %.1.in.i.i.i482 = getelementptr inbounds nuw i8, ptr %.012.i.i.i473, i64 %.1.in.v.i.i.i481
  %.1.i.i.i483 = load ptr, ptr %.1.in.i.i.i482, align 8, !tbaa !195 ; 2 uses
  %.not.i.i.i484 = icmp eq ptr %.1.i.i.i483, null
  br i1 %.not.i.i.i484, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i485, label %bb.bv, !llvm.loop !555

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i485: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i478
  %i.za = icmp eq ptr %.19.i.i.i480, %i.db
  br i1 %i.za, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i485
  %.19.i.i.i480.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.yz, ptr %.0811.i.i.i474, ptr %.012.i.i.i473
  %.19.i.i.i480.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i480.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.zb = load i64, ptr %.19.i.i.i480.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !171 ; 2 uses
  %.sroa.speculated.i.i.i.i.i486 = call i64 @llvm.umin.i64(i64 %i.zb, i64 %i.yq) ; 2 uses
  %i.zc = icmp eq i64 %.sroa.speculated.i.i.i.i.i486, 0
  br i1 %i.zc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i493, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i487

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i487: ; preds = %bb.bw
  %.19.i.i.i480.sroa.sel1106.v.sroa.sel.v.sroa.sel.v = select i1 %i.yz, ptr %.0811.i.i.i474, ptr %.012.i.i.i473
  %.19.i.i.i480.sroa.sel1106.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i480.sroa.sel1106.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.zd = load ptr, ptr %.19.i.i.i480.sroa.sel1106.v.sroa.sel.v.sroa.sel, align 8, !tbaa !170
  %i.ze = call i32 @memcmp(ptr noundef %i.yr, ptr noundef %i.zd, i64 noundef %.sroa.speculated.i.i.i.i.i486) #24 ; 2 uses
  %.not.i.i.i.i.i488 = icmp eq i32 %i.ze, 0
  br i1 %.not.i.i.i.i.i488, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i493, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i493: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i487, %bb.bw
  %i.zf = sub i64 %i.yq, %i.zb
  %spec.select7.i.i.i.i.i.i494 = call i64 @llvm.smax.i64(i64 %i.zf, i64 -2147483648)
  %.08.i.i.i.i.i.i495 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i494, i64 2147483647)
  %.0.i6.i.i.i.i.i496 = trunc nsw i64 %.08.i.i.i.i.i.i495 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i487, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i493
  %.0.i.i.i.i.i490 = phi i32 [ %i.ze, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i487 ], [ %.0.i6.i.i.i.i.i496, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i493 ]
  %i.zg = icmp slt i32 %.0.i.i.i.i.i490, 0
  br i1 %i.zg, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501
  br i1 %i.xw, label %._crit_edge1579, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.19.i.i.i480.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %.19.i.i.i480, i64 64
  %i.zh = load ptr, ptr %.19.i.i.i480.lcssa.sroa.gep, align 8, !tbaa !754 ; 6 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 128
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 144 ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.zi, ptr noundef %i.zk)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.zl = landingpad { ptr, i32 }
          catch ptr null
  %i.zm = extractvalue { ptr, i32 } %i.zl, 0
  call void @__clang_call_terminate(ptr %i.zm) #26
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zh, i64 136 ; 2 uses
  store ptr null, ptr %i.zj, align 8, !tbaa !175
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zh, i64 152
  store ptr %i.zn, ptr %i.zo, align 8, !tbaa !176
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zh, i64 160
  store ptr %i.zn, ptr %i.zp, align 8, !tbaa !177
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zh, i64 168
  store i64 0, ptr %i.zq, align 8, !tbaa !178
  %.pre1650.a = load ptr, ptr %i.xs, align 8, !tbaa !756 ; 2 uses
  %.pre1651.a = load ptr, ptr %i.xu, align 8, !tbaa !756 ; 2 uses
  %.not11471574 = icmp eq ptr %.pre1650.a, %.pre1651.a
  br i1 %.not11471574, label %._crit_edge1579, label %.lr.ph1578

.lr.ph1578:                                       ; preds = %bb.ca
  %.19.i.i.i480.lcssa.sroa.gep1647 = getelementptr inbounds nuw i8, ptr %.19.i.i.i480, i64 64
  br label %bb.cb

._crit_edge1579:                                  ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.bx, %bb.ca
  %.5.lcssa = phi i1 [ %.3, %bb.ca ], [ %.3, %bb.bx ], [ %.6, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.01076.01603, i64 80
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !756 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.01076.01603, i64 88
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !756 ; 2 uses
  %.not11481580 = icmp eq ptr %i.zs, %i.zu
  br i1 %.not11481580, label %.loopexit1174, label %.lr.ph1583

.lr.ph1583:                                       ; preds = %._crit_edge1579
  %.19.i.i.i480.lcssa.sroa.gep1644 = getelementptr inbounds nuw i8, ptr %.19.i.i.i480, i64 64
  br label %bb.cp

bb.cb:                                            ; preds = %.lr.ph1578, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %.51576 = phi i1 [ %.3, %.lr.ph1578 ], [ %.6, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ]
  %.sroa.01052.01575 = phi ptr [ %.pre1650.a, %.lr.ph1578 ], [ %i.aaw, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #24
  %i.zv = load ptr, ptr %i.lt, align 8, !tbaa !203, !noalias !768
  %.not.i.i502 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i502, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZSt25__throw_bad_function_callv() #28
          to label %.noexc503 unwind label %.loopexit.split-lp1179.loopexit.split-lp.loopexit.split-lp

.noexc503:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.zw = load ptr, ptr %i.lu, align 8, !tbaa !770, !noalias !768
  invoke void %i.zw(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.33") align 8 %53, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01052.01575)
          to label %_ZNKSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS6_EEclES9_.exit unwind label %.loopexit.split-lp1179.loopexit.split-lp.loopexit.split-lp, !inline_history !580

_ZNKSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS6_EEclES9_.exit: ; preds = %bb.cd
  %i.zx = load i8, ptr %i.lv, align 8, !tbaa !251, !range !229, !noundef !230
  %i.zy = trunc nuw i8 %i.zx to i1
  br i1 %i.zy, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %_ZNKSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS6_EEclES9_.exit
  %i.zz = load ptr, ptr %.19.i.i.i480.lcssa.sroa.gep1647, align 8, !tbaa !754
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 128
  %i.aab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.aaa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01052.01575)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aab, ptr noundef nonnull align 8 dereferenceable(32) %53)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.cg

.loopexit.split-lp1179.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cd, %bb.cc
  %lpad.loopexit.split-lp2045 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit517

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ch:                                            ; preds = %_ZNKSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS6_EEclES9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24, !noalias !771
  store i64 32, ptr %23, align 8, !tbaa !172, !alias.scope !772, !noalias !771
  store <2 x ptr> <ptr @.str.46, ptr null>, ptr %.sroa.4.0..sroa_idx.i.i506, align 8, !tbaa !197, !alias.scope !772, !noalias !771
  %i.aad = load ptr, ptr %.sroa.01052.01575, align 8, !tbaa !170, !noalias !771
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.01052.01575, i64 8
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !171, !noalias !771
  store i64 %i.aaf, ptr %i.lw, align 8, !tbaa !172, !alias.scope !773, !noalias !771
  store ptr %i.aad, ptr %.sroa.4.0..sroa_idx.i9.i507, align 8, !tbaa !185, !alias.scope !773, !noalias !771
  store ptr null, ptr %i.lx, align 8, !tbaa !200, !alias.scope !773, !noalias !771
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %54, ptr nonnull %23, i64 2)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !771
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.aag = load ptr, ptr %54, align 8, !tbaa !170 ; 2 uses
  %i.aah = icmp eq ptr %i.aag, %i.ly
  br i1 %i.aah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %bb.cj
  %i.aai = load i64, ptr %i.ly, align 8, !tbaa !173
  %i.aaj = add i64 %i.aai, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aaj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ck:                                            ; preds = %bb.ch
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

bb.cl:                                            ; preds = %bb.ci
  %i.aal = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aam = load ptr, ptr %54, align 8, !tbaa !170 ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.ly
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512: ; preds = %bb.cl
  %i.aao = load i64, ptr %i.ly, align 8, !tbaa !173
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512, %bb.ck
  %.pn291 = phi { ptr, i32 } [ %i.aak, %bb.ck ], [ %i.aal, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512 ], [ %i.aal, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511
  %.6 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511 ], [ %.51576, %bb.cf ] ; 2 uses
  %i.aaq = load i8, ptr %i.lv, align 8, !tbaa !251, !range !229, !noundef !230
  %i.aar = trunc nuw i8 %i.aaq to i1
  store i8 0, ptr %i.lv, align 8, !tbaa !251
  br i1 %i.aar, label %bb.cm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aas = load ptr, ptr %53, align 8, !tbaa !170 ; 2 uses
  %i.aat = icmp eq ptr %i.aas, %i.lz
  br i1 %i.aat, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cm
  %i.aau = load i64, ptr %i.lz, align 8, !tbaa !173
  %i.aav = add i64 %i.aau, 1
  call void @_ZdlPvm(ptr noundef %i.aas, i64 noundef %i.aav) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.01052.01575, i64 104 ; 2 uses
  %.not1147.a = icmp eq ptr %i.aaw, %.pre1651.a
  br i1 %.not1147.a, label %._crit_edge1579, label %bb.cb

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %bb.cg
  %.pn293 = phi { ptr, i32 } [ %i.aac, %bb.cg ], [ %.pn291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ] ; 3 uses
  %i.aax = load i8, ptr %i.lv, align 8, !tbaa !251, !range !229, !noundef !230
  %i.aay = trunc nuw i8 %i.aax to i1
  store i8 0, ptr %i.lv, align 8, !tbaa !251
  br i1 %i.aay, label %bb.co, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit517

bb.co:                                            ; preds = %bb.cn
  %i.aaz = load ptr, ptr %53, align 8, !tbaa !170 ; 2 uses
  %i.aba = icmp eq ptr %i.aaz, %i.lz
  br i1 %i.aba, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i515: ; preds = %bb.co
  %i.abb = load i64, ptr %i.lz, align 8, !tbaa !173
  %i.abc = add i64 %i.abb, 1
  call void @_ZdlPvm(ptr noundef %i.aaz, i64 noundef %i.abc) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit517

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit517: ; preds = %bb.co, %.loopexit.split-lp1179.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i515, %bb.cn
  %.pn293.pn = phi { ptr, i32 } [ %.pn293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i515 ], [ %.pn293, %bb.cn ], [ %lpad.loopexit.split-lp2045, %.loopexit.split-lp1179.loopexit.split-lp.loopexit.split-lp ], [ %.pn293, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  br label %.loopexit.split-lp1166

bb.cp:                                            ; preds = %.lr.ph1583, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit524
  %.sroa.01048.01581 = phi ptr [ %i.zs, %.lr.ph1583 ], [ %i.aby, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit524 ] ; 4 uses
  %i.abd = load ptr, ptr %.19.i.i.i480.lcssa.sroa.gep1644, align 8, !tbaa !754 ; 3 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 112 ; 3 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !248 ; 8 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 120
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !249
  %.not.i518 = icmp eq ptr %i.abf, %i.abh
  br i1 %.not.i518, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 16 ; 3 uses
  store ptr %i.abi, ptr %i.abf, align 8, !tbaa !169
  %i.abj = load ptr, ptr %.sroa.01048.01581, align 8, !tbaa !170 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.01048.01581, i64 8
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !171 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %i.abl, ptr %i.e, align 8, !tbaa !172
  %i.abm = icmp ugt i64 %i.abl, 15
  br i1 %i.abm, label %.noexc.i.i521, label %._crit_edge.i.i.i519

.noexc.i.i521:                                    ; preds = %bb.cq
  %i.abn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.abf, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc522 unwind label %.loopexit.split-lp1166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc522:                                        ; preds = %.noexc.i.i521
  store ptr %i.abn, ptr %i.abf, align 8, !tbaa !170
  %i.abo = load i64, ptr %i.e, align 8, !tbaa !172
  store i64 %i.abo, ptr %i.abi, align 8, !tbaa !173
  br label %._crit_edge.i.i.i519

._crit_edge.i.i.i519:                             ; preds = %.noexc522, %bb.cq
  %i.abp = phi ptr [ %i.abn, %.noexc522 ], [ %i.abi, %bb.cq ] ; 2 uses
  switch i64 %i.abl, label %bb.cs [
    i64 1, label %bb.cr
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i520
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i.i519
  %i.abq = load i8, ptr %i.abj, align 1, !tbaa !173
  store i8 %i.abq, ptr %i.abp, align 1, !tbaa !173
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i520

bb.cs:                                            ; preds = %._crit_edge.i.i.i519
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abp, ptr align 1 %i.abj, i64 %i.abl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i520

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i520: ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i.i519
  %i.abr = load i64, ptr %i.e, align 8, !tbaa !172 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store i64 %i.abr, ptr %i.abs, align 8, !tbaa !171
  %i.abt = load ptr, ptr %i.abf, align 8, !tbaa !170
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abr
  store i8 0, ptr %i.abu, align 1, !tbaa !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.abv = load ptr, ptr %i.abe, align 8, !tbaa !248
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  store ptr %i.abw, ptr %i.abe, align 8, !tbaa !248
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit524

bb.ct:                                            ; preds = %bb.cp
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abd, i64 104
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.abx, ptr %i.abf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01048.01581)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit524 unwind label %.loopexit.split-lp1166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit524: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i520, %bb.ct
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.01048.01581, i64 104 ; 2 uses
  %.not1148.a = icmp eq ptr %i.aby, %i.zu
  br i1 %.not1148.a, label %.loopexit1174, label %bb.cp

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i485, %bb.bu, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501
  %i.abz = load i8, ptr %i.dh, align 8, !tbaa !232, !range !229, !noundef !230
  %i.aca = trunc nuw i8 %i.abz to i1
  br i1 %i.aca, label %bb.cu, label %.loopexit1174

bb.cu:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !774
  store i64 41, ptr %22, align 8, !tbaa !172, !alias.scope !775, !noalias !774
  store ptr @.str.42, ptr %.sroa.4.0..sroa_idx.i.i525, align 8, !tbaa !185, !alias.scope !775, !noalias !774
  store ptr null, ptr %i.ma, align 8, !tbaa !200, !alias.scope !775, !noalias !774
  %i.acb = load ptr, ptr %i.yn, align 8, !tbaa !170, !noalias !774
  %i.acc = getelementptr inbounds nuw i8, ptr %.19.i.i.i441, i64 144
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !171, !noalias !774
  store i64 %i.acd, ptr %i.mb, align 8, !tbaa !172, !alias.scope !776, !noalias !774
  store ptr %i.acb, ptr %.sroa.4.0..sroa_idx.i9.i526, align 8, !tbaa !185, !alias.scope !776, !noalias !774
  store ptr null, ptr %i.mc, align 8, !tbaa !200, !alias.scope !776, !noalias !774
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, ptr nonnull %22, i64 2)
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !774
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %55)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.ace = load ptr, ptr %55, align 8, !tbaa !170 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, %i.md
  br i1 %i.acf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529: ; preds = %bb.cw
  %i.acg = load i64, ptr %i.md, align 8, !tbaa !173
  %i.ach = add i64 %i.acg, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.ach) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %.loopexit1174

bb.cx:                                            ; preds = %bb.cu
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534

bb.cy:                                            ; preds = %bb.cv
  %i.acj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ack = load ptr, ptr %55, align 8, !tbaa !170 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.md
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532: ; preds = %bb.cy
  %i.acm = load i64, ptr %i.md, align 8, !tbaa !173
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532, %bb.cx
  %.pn257 = phi { ptr, i32 } [ %i.aci, %bb.cx ], [ %i.acj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532 ], [ %i.acj, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %.loopexit.split-lp1166

.loopexit1174:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit524, %._crit_edge1579, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531
  %.7 = phi i1 [ %.3, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit501.thread ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531 ], [ %.5.lcssa, %._crit_edge1579 ], [ %.5.lcssa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit524 ] ; 5 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.19.i.i.i441, i64 168 ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !170 ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.19.i.i.i441, i64 176 ; 2 uses
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !171 ; 5 uses
  %.sroa.077.0.copyload = load i64, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, align 8, !tbaa !172 ; 2 uses
  %.sroa.278.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, i64 8), align 8, !tbaa !185 ; 3 uses
  %i.acs = icmp eq i64 %i.acr, %.sroa.077.0.copyload
  br i1 %i.acs, label %bb.cz, label %bb.df

bb.cz:                                            ; preds = %.loopexit1174
  %i.act = icmp eq i64 %i.acr, 0
  br i1 %i.act, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.cz
  %bcmp.i = call i32 @bcmp(ptr %i.acp, ptr %.sroa.278.0.copyload, i64 %i.acr)
  %i.acu = icmp eq i32 %bcmp.i, 0
  br i1 %i.acu, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %bb.df

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.cz
  br i1 %i.xw, label %bb.da, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit552

bb.da:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24, !noalias !777
  store i64 7, ptr %21, align 8, !tbaa !172, !alias.scope !778, !noalias !777
  store ptr @.str.43, ptr %.sroa.4.0..sroa_idx.i.i537, align 8, !tbaa !185, !alias.scope !778, !noalias !777
  store ptr null, ptr %i.qt, align 8, !tbaa !200, !alias.scope !778, !noalias !777
  %i.acv = load ptr, ptr %.sroa.01076.01603, align 8, !tbaa !170, !noalias !777
  %i.acw = load i64, ptr %i.st, align 8, !tbaa !171, !noalias !777
  store i64 %i.acw, ptr %i.qu, align 8, !tbaa !172, !alias.scope !779, !noalias !777
  store ptr %i.acv, ptr %.sroa.4.0..sroa_idx.i14.i, align 8, !tbaa !185, !alias.scope !779, !noalias !777
  store ptr null, ptr %i.qv, align 8, !tbaa !200, !alias.scope !779, !noalias !777
  store i64 13, ptr %i.qw, align 8, !tbaa !172, !alias.scope !780, !noalias !777
  store ptr @.str.47, ptr %.sroa.4.0..sroa_idx.i22.i, align 8, !tbaa !185, !alias.scope !780, !noalias !777
  store ptr null, ptr %i.qx, align 8, !tbaa !200, !alias.scope !780, !noalias !777
  store i64 %i.acr, ptr %i.qy, align 8, !tbaa !172, !alias.scope !781, !noalias !777
  store ptr %.sroa.278.0.copyload, ptr %.sroa.4.0..sroa_idx.i30.i, align 8, !tbaa !185, !alias.scope !781, !noalias !777
  store ptr null, ptr %i.qz, align 8, !tbaa !200, !alias.scope !781, !noalias !777
  store i64 59, ptr %i.ra, align 8, !tbaa !172, !alias.scope !782, !noalias !777
  store ptr @.str.48, ptr %.sroa.4.0..sroa_idx.i38.i, align 8, !tbaa !185, !alias.scope !782, !noalias !777
  store ptr null, ptr %i.rb, align 8, !tbaa !200, !alias.scope !782, !noalias !777
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr nonnull %21, i64 5)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !777
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
end_hunk_2
begin_hunk_3_@_ZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacks:bb.a
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.aqt, i64 1)
  %i.aqu = add nsw i64 %.sroa.speculated.i.i, %i.aqt ; 2 uses
  %i.aqv = icmp ult i64 %i.aqu, %i.aqt
  %i.aqw = call i64 @llvm.umin.i64(i64 %i.aqu, i64 46116860184273879)
  %i.aqx = select i1 %i.aqv, i64 46116860184273879, i64 %i.aqw ; 3 uses
  %.not.i.i973 = icmp ne i64 %i.aqx, 0
  call void @llvm.assume(i1 %.not.i.i973)
  %i.aqy = mul nuw nsw i64 %i.aqx, 200
  %i.aqz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqy) #29
          to label %.noexc983 unwind label %.loopexit1154.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc983:                                        ; preds = %_ZNKSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.aqr ; 18 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 16 ; 3 uses
  store ptr %i.arb, ptr %i.ara, align 8, !tbaa !169
  %i.arc = load ptr, ptr %68, align 8, !tbaa !170 ; 2 uses
  %i.ard = icmp eq ptr %i.arc, %i.oc
  br i1 %i.ard, label %bb.go, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i974

bb.go:                                            ; preds = %.noexc983
  %i.are = load i64, ptr %i.od, align 8, !tbaa !171 ; 3 uses
  %i.arf = icmp ult i64 %i.are, 16
  call void @llvm.assume(i1 %i.arf)
  %i.arg = add nuw nsw i64 %i.are, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.arb, ptr noundef nonnull align 8 dereferenceable(1) %i.oc, i64 %i.arg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i976

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i974: ; preds = %.noexc983
  store ptr %i.arc, ptr %i.ara, align 8, !tbaa !170
  %i.arh = load i64, ptr %i.oc, align 8, !tbaa !173
  store i64 %i.arh, ptr %i.arb, align 8, !tbaa !173
  %.pre.i975 = load i64, ptr %i.od, align 8, !tbaa !171
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i976

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i976: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i974, %bb.go
  %i.ari = phi i64 [ %.pre.i975, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i974 ], [ %i.are, %bb.go ]
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  store i64 %i.ari, ptr %i.arj, align 8, !tbaa !171
  store ptr %i.oc, ptr %68, align 8, !tbaa !170
  store i64 0, ptr %i.od, align 8, !tbaa !171
  store i8 0, ptr %i.oc, align 8, !tbaa !173
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ara, i64 32 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ara, i64 48 ; 3 uses
  store ptr %i.arl, ptr %i.ark, align 8, !tbaa !169
  %i.arm = load ptr, ptr %i.oe, align 8, !tbaa !170 ; 2 uses
  %i.arn = icmp eq ptr %i.arm, %i.of
  br i1 %i.arn, label %bb.gp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i977

bb.gp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i976
  %i.aro = load i64, ptr %i.og, align 8, !tbaa !171 ; 3 uses
  %i.arp = icmp ult i64 %i.aro, 16
  call void @llvm.assume(i1 %i.arp)
  %i.arq = add nuw nsw i64 %i.aro, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.arl, ptr noundef nonnull align 8 dereferenceable(1) %i.of, i64 %i.arq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i978

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i977: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i976
  store ptr %i.arm, ptr %i.ark, align 8, !tbaa !170
  %i.arr = load i64, ptr %i.of, align 8, !tbaa !173
  store i64 %i.arr, ptr %i.arl, align 8, !tbaa !173
  %.pre30.i = load i64, ptr %i.og, align 8, !tbaa !171
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i978

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i978: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i977, %bb.gp
  %i.ars = phi i64 [ %.pre30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i977 ], [ %i.aro, %bb.gp ]
  %i.art = getelementptr inbounds nuw i8, ptr %i.ara, i64 40
  store i64 %i.ars, ptr %i.art, align 8, !tbaa !171
  store ptr %i.of, ptr %i.oe, align 8, !tbaa !170
  store i64 0, ptr %i.og, align 8, !tbaa !171
  store i8 0, ptr %i.of, align 8, !tbaa !173
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ara, i64 64
  %i.arv = load i16, ptr %i.oh, align 8
  store i16 %i.arv, ptr %i.aru, align 8
  %i.arw = getelementptr inbounds nuw i8, ptr %i.ara, i64 192 ; 2 uses
  store i8 0, ptr %i.arw, align 8, !tbaa !278
  %i.arx = load i8, ptr %i.oj, align 8, !tbaa !278, !range !229, !noundef !230
  %i.ary = trunc nuw i8 %i.arx to i1
  br i1 %i.ary, label %bb.gq, label %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979

bb.gq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i978
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ara, i64 72
  %i.asa = load <2 x ptr>, ptr %i.pq, align 8, !tbaa !194
  store <2 x ptr> %i.asa, ptr %i.arz, align 8, !tbaa !194
  %i.asb = getelementptr inbounds nuw i8, ptr %i.ara, i64 88
  %i.asc = load ptr, ptr %i.pr, align 8, !tbaa !249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.pq, i8 0, i64 24, i1 false)
  %i.asd = load ptr, ptr %i.ps, align 8, !tbaa !250
  %i.ase = load <2 x ptr>, ptr %i.pt, align 8, !tbaa !194
  %i.asf = insertelement <4 x ptr> poison, ptr %i.asc, i64 0
  %i.asg = insertelement <4 x ptr> %i.asf, ptr %i.asd, i64 1
  %i.ash = shufflevector <2 x ptr> %i.ase, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asi = shufflevector <4 x ptr> %i.asg, <4 x ptr> %i.ash, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.asi, ptr %i.asb, align 8, !tbaa !194
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ps, i8 0, i64 24, i1 false)
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ara, i64 120
  %i.ask = load ptr, ptr %i.pv, align 8, !tbaa !285
  store ptr %i.ask, ptr %i.asj, align 8, !tbaa !285
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ara, i64 128
  %i.asm = load ptr, ptr %i.pw, align 8, !tbaa !286
  store ptr %i.asm, ptr %i.asl, align 8, !tbaa !286
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ara, i64 136
  %i.aso = load ptr, ptr %i.px, align 8, !tbaa !284
  store ptr %i.aso, ptr %i.asn, align 8, !tbaa !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pv, i8 0, i64 24, i1 false)
  %i.asp = getelementptr inbounds nuw i8, ptr %i.ara, i64 144
  %i.asq = load <2 x ptr>, ptr %i.py, align 8, !tbaa !194
  store <2 x ptr> %i.asq, ptr %i.asp, align 8, !tbaa !194
  %i.asr = getelementptr inbounds nuw i8, ptr %i.ara, i64 160
  %i.ass = load ptr, ptr %i.pz, align 8, !tbaa !249
  store ptr %i.ass, ptr %i.asr, align 8, !tbaa !249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i8 0, i64 24, i1 false)
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ara, i64 168
  %i.asu = load <2 x ptr>, ptr %i.qa, align 8, !tbaa !194
  store <2 x ptr> %i.asu, ptr %i.ast, align 8, !tbaa !194
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ara, i64 184
  %i.asw = load ptr, ptr %i.qb, align 8, !tbaa !249
  store ptr %i.asw, ptr %i.asv, align 8, !tbaa !249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qa, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.arw, align 8, !tbaa !278
  br label %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979

_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979: ; preds = %bb.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i978
  %.not10.i.i.i.i = icmp eq ptr %i.aqo, %i.aor
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i980

.lr.ph.i.i.i.i980:                                ; preds = %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979, %_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009
  %.012.i.i.i.i = phi ptr [ %i.avv, %_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009 ], [ %i.aqz, %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979 ] ; 19 uses
  %.0911.i.i.i.i = phi ptr [ %i.avu, %_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009 ], [ %i.aqo, %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979 ] ; 26 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.asx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.asx, ptr %.012.i.i.i.i, align 8, !tbaa !169, !alias.scope !835
  %i.asy = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !170, !alias.scope !836 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 7 uses
  %i.ata = icmp eq ptr %i.asy, %i.asz
  br i1 %i.ata, label %bb.gr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i993

bb.gr:                                            ; preds = %.lr.ph.i.i.i.i980
  %i.atb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !171, !alias.scope !836 ; 3 uses
  %i.atd = icmp ult i64 %i.atc, 16
  call void @llvm.assume(i1 %i.atd)
  %i.ate = add nuw nsw i64 %i.atc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.asx, ptr noundef nonnull align 8 dereferenceable(1) %i.asz, i64 %i.ate, i1 false), !alias.scope !837
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i996

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i993: ; preds = %.lr.ph.i.i.i.i980
  store ptr %i.asy, ptr %.012.i.i.i.i, align 8, !tbaa !170, !alias.scope !835
  %i.atf = load i64, ptr %i.asz, align 8, !tbaa !173, !alias.scope !836
  store i64 %i.atf, ptr %i.asx, align 8, !tbaa !173, !alias.scope !835
  %.phi.trans.insert.i994 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i995 = load i64, ptr %.phi.trans.insert.i994, align 8, !tbaa !171, !alias.scope !836
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i996

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i996: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i993, %bb.gr
  %i.atg = phi i64 [ %.pre.i995, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i993 ], [ %i.atc, %bb.gr ]
  %i.ath = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ati = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.atg, ptr %i.ati, align 8, !tbaa !171, !alias.scope !835
  store ptr %i.asz, ptr %.0911.i.i.i.i, align 8, !tbaa !170, !alias.scope !836
  store i64 0, ptr %i.ath, align 8, !tbaa !171, !alias.scope !836
  store i8 0, ptr %i.asz, align 8, !tbaa !173, !alias.scope !836
  %i.atj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 3 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.atl, ptr %i.atj, align 8, !tbaa !169, !alias.scope !835
  %i.atm = load ptr, ptr %i.atk, align 8, !tbaa !170, !alias.scope !836 ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 7 uses
  %i.ato = icmp eq ptr %i.atm, %i.atn
  br i1 %i.ato, label %bb.gs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i997

bb.gs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i996
  %i.atp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.atq = load i64, ptr %i.atp, align 8, !tbaa !171, !alias.scope !836 ; 3 uses
  %i.atr = icmp ult i64 %i.atq, 16
  call void @llvm.assume(i1 %i.atr)
  %i.ats = add nuw nsw i64 %i.atq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.atl, ptr noundef nonnull align 8 dereferenceable(1) %i.atn, i64 %i.ats, i1 false), !alias.scope !837
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i1000

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i997: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i996
  store ptr %i.atm, ptr %i.atj, align 8, !tbaa !170, !alias.scope !835
  %i.att = load i64, ptr %i.atn, align 8, !tbaa !173, !alias.scope !836
  store i64 %i.att, ptr %i.atl, align 8, !tbaa !173, !alias.scope !835
  %.phi.trans.insert5.i998 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre6.i999 = load i64, ptr %.phi.trans.insert5.i998, align 8, !tbaa !171, !alias.scope !836
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i1000

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i1000: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i997, %bb.gs
  %i.atu = phi i64 [ %.pre6.i999, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i997 ], [ %i.atq, %bb.gs ]
  %i.atv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.atw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.atu, ptr %i.atw, align 8, !tbaa !171, !alias.scope !835
  store ptr %i.atn, ptr %i.atk, align 8, !tbaa !170, !alias.scope !836
  store i64 0, ptr %i.atv, align 8, !tbaa !171, !alias.scope !836
  store i8 0, ptr %i.atn, align 8, !tbaa !173, !alias.scope !836
  %i.atx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %i.aty = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64
  %i.atz = load i16, ptr %i.aty, align 8, !alias.scope !836
  store i16 %i.atz, ptr %i.atx, align 8, !alias.scope !835
  %i.aua = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 192 ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 192 ; 2 uses
  store i8 0, ptr %i.aub, align 8, !tbaa !278, !alias.scope !835
  %i.auc = load i8, ptr %i.aua, align 8, !tbaa !278, !range !229, !alias.scope !836, !noundef !230
  %i.aud = trunc nuw i8 %i.auc to i1
  br i1 %i.aud, label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i1006, label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.thread.i1001

_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.thread.i1001: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i1000
  store i8 0, ptr %i.aua, align 8, !tbaa !278, !alias.scope !836
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1003

_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i1006: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i.i1000
  %i.aue = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %i.auf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72 ; 3 uses
  %i.aug = load <2 x ptr>, ptr %i.auf, align 8, !tbaa !194, !alias.scope !836
  store <2 x ptr> %i.aug, ptr %i.aue, align 8, !tbaa !194, !alias.scope !835
  %i.auh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 88
  %i.aui = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 88
  %i.auj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 96 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 104
  %i.aul = load ptr, ptr %i.aui, align 8, !tbaa !249, !alias.scope !836
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.auf, i8 0, i64 24, i1 false), !alias.scope !836
  %i.aum = load ptr, ptr %i.auj, align 8, !tbaa !250, !alias.scope !836
  %i.aun = load <2 x ptr>, ptr %i.auk, align 8, !tbaa !194, !alias.scope !836
  %i.auo = insertelement <4 x ptr> poison, ptr %i.aul, i64 0
  %i.aup = insertelement <4 x ptr> %i.auo, ptr %i.aum, i64 1
  %i.auq = shufflevector <2 x ptr> %i.aun, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aur = shufflevector <4 x ptr> %i.aup, <4 x ptr> %i.auq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.aur, ptr %i.auh, align 8, !tbaa !194, !alias.scope !835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.auj, i8 0, i64 24, i1 false), !alias.scope !836
  %i.aus = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 120
  %i.aut = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 120 ; 2 uses
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !285, !alias.scope !836
  store ptr %i.auu, ptr %i.aus, align 8, !tbaa !285, !alias.scope !835
  %i.auv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 128
  %i.auw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 128
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !286, !alias.scope !836
  store ptr %i.aux, ptr %i.auv, align 8, !tbaa !286, !alias.scope !835
  %i.auy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 136
  %i.auz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 136
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !284, !alias.scope !836
  store ptr %i.ava, ptr %i.auy, align 8, !tbaa !284, !alias.scope !835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aut, i8 0, i64 24, i1 false), !alias.scope !836
  %i.avb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 144
  %i.avc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 144 ; 2 uses
  %i.avd = load <2 x ptr>, ptr %i.avc, align 8, !tbaa !194, !alias.scope !836
  store <2 x ptr> %i.avd, ptr %i.avb, align 8, !tbaa !194, !alias.scope !835
  %i.ave = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 160
  %i.avf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 160
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !249, !alias.scope !836
  store ptr %i.avg, ptr %i.ave, align 8, !tbaa !249, !alias.scope !835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avc, i8 0, i64 24, i1 false), !alias.scope !836
  %i.avh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 168
  %i.avi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 168 ; 2 uses
  %i.avj = load <2 x ptr>, ptr %i.avi, align 8, !tbaa !194, !alias.scope !836
  store <2 x ptr> %i.avj, ptr %i.avh, align 8, !tbaa !194, !alias.scope !835
  %i.avk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 184
  %i.avl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 184
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !249, !alias.scope !836
  store ptr %i.avm, ptr %i.avk, align 8, !tbaa !249, !alias.scope !835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avi, i8 0, i64 24, i1 false), !alias.scope !836
  store i8 1, ptr %i.aub, align 8, !tbaa !278, !alias.scope !835
  store i8 0, ptr %i.aua, align 8, !tbaa !278, !alias.scope !836
  call void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(128) %i.auf) #24
  %.pre7.i1007 = load ptr, ptr %i.atk, align 8, !tbaa !170, !alias.scope !836 ; 2 uses
  %i.avn = icmp eq ptr %.pre7.i1007, %i.atn
  br i1 %i.avn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1003, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1008

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1008: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i1006
  %i.avo = load i64, ptr %i.atn, align 8, !tbaa !173, !alias.scope !836
  %i.avp = add i64 %i.avo, 1
  call void @_ZdlPvm(ptr noundef %.pre7.i1007, i64 noundef %i.avp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1003

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1003: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.thread.i1001, %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i1006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1008
  %i.avq = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !170, !alias.scope !836 ; 2 uses
  %i.avr = icmp eq ptr %i.avq, %i.asz
  br i1 %i.avr, label %_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i1004

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i1004: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1003
  %i.avs = load i64, ptr %i.asz, align 8, !tbaa !173, !alias.scope !836
  %i.avt = add i64 %i.avs, 1
  call void @_ZdlPvm(ptr noundef %i.avq, i64 noundef %i.avt) #25
  br label %_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009

_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1003, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i1004
  %i.avu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 200 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 200 ; 2 uses
  %.not.i.i.i.i981 = icmp eq ptr %i.avu, %i.aor
  br i1 %.not.i.i.i.i981, label %_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i980, !llvm.loop !674

_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009, %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aqz, %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i979 ], [ %i.avv, %_ZSt19__relocate_object_aIN19cmCxxModuleMetadata10ModuleDataES1_SaIS1_EEvPT_PT0_RT1_.exit1009 ]
  %i.avw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 200
  %.not.i23.i = icmp eq ptr %i.aqo, null
  br i1 %.not.i23.i, label %.noexc722, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.avx = load ptr, ptr %i.aos, align 8, !tbaa !274
  %i.avy = ptrtoint ptr %i.avx to i64
  %i.avz = sub i64 %i.avy, %i.aqq
  call void @_ZdlPvm(ptr noundef nonnull %i.aqo, i64 noundef %i.avz) #25
  br label %.noexc722

.noexc722:                                        ; preds = %bb.gt, %_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.aqz, ptr %i.aop, align 8, !tbaa !275
  store ptr %i.avw, ptr %i.aoq, align 8, !tbaa !276
  %i.awa = getelementptr inbounds nuw [200 x i8], ptr %i.aqz, i64 %i.aqx
  store ptr %i.awa, ptr %i.aos, align 8, !tbaa !274
  br label %_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %.noexc722, %_ZN19cmCxxModuleMetadata10ModuleDataC2EOS0_.exit.i
  %i.awb = getelementptr inbounds nuw i8, ptr %.sroa.01030.01594, i64 8 ; 3 uses
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !261 ; 2 uses
  %i.awd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.awc, ptr noundef nonnull @.str.53, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724 unwind label %.loopexit1154.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724: ; preds = %_ZNSt6vectorIN19cmCxxModuleMetadata10ModuleDataESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #24
  %i.awe = load ptr, ptr %.sroa.01035.01599, align 8, !tbaa !170
  %i.awf = load i64, ptr %i.aja, align 8, !tbaa !171
  invoke void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, i64 %i.awf, ptr %i.awe, i32 noundef 1)
          to label %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit728" unwind label %bb.hb

"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit728": ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724
  %i.awg = load ptr, ptr %76, align 8, !tbaa !170
  %i.awh = load i64, ptr %i.qc, align 8, !tbaa !171
  %i.awi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.awc, ptr noundef %i.awg, i64 noundef %i.awh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit730 unwind label %bb.hc ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit730: ; preds = %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit728"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 61, ptr %i.d, align 1, !tbaa !173
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !213
  %i.awk = getelementptr i8, ptr %i.awj, i64 -24
  %i.awl = load i64, ptr %i.awk, align 8
  %i.awm = getelementptr inbounds i8, ptr %i.awi, i64 %i.awl
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.awo = load i64, ptr %i.awn, align 8, !tbaa !743
  %.not.i731 = icmp eq i64 %i.awo, 0
  br i1 %.not.i731, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit730
  %i.awp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.awi, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.gw unwind label %bb.hc

bb.gv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit730
  %i.awq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.awi, i8 noundef signext 61)
          to label %bb.gw unwind label %bb.hc     ; 0 uses

bb.gw:                                            ; preds = %bb.gu, %bb.gv
  %.0.i732 = phi ptr [ %i.awp, %bb.gu ], [ %i.awi, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.awr = load ptr, ptr %67, align 8, !tbaa !170
  %i.aws = load i64, ptr %i.ob, align 8, !tbaa !171
  %i.awt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i732, ptr noundef %i.awr, i64 noundef %i.aws)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit737 unwind label %bb.hc ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit737: ; preds = %bb.gw
  %i.awu = load ptr, ptr %76, align 8, !tbaa !170 ; 2 uses
  %i.awv = icmp eq ptr %i.awu, %i.qd
  br i1 %i.awv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit737
  %i.aww = load i64, ptr %i.qd, align 8, !tbaa !173
  %i.awx = add i64 %i.aww, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit737, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24
  %i.awy = load i64, ptr %i.pp, align 8, !tbaa !171
  %i.awz = icmp eq i64 %i.awy, 0
  br i1 %i.awz, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit747, label %bb.gx

bb.gx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740
  %i.axa = load ptr, ptr %i.awb, align 8, !tbaa !261 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 44, ptr %i.c, align 1, !tbaa !173
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !213
  %i.axc = getelementptr i8, ptr %i.axb, i64 -24
  %i.axd = load i64, ptr %i.axc, align 8
  %i.axe = getelementptr inbounds i8, ptr %i.axa, i64 %i.axd
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.axg = load i64, ptr %i.axf, align 8, !tbaa !743
  %.not.i741 = icmp eq i64 %i.axg, 0
  br i1 %.not.i741, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.axh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.axa, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.ha unwind label %.loopexit1154.loopexit.split-lp.loopexit.split-lp

bb.gz:                                            ; preds = %bb.gx
  %i.axi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.axa, i8 noundef signext 44)
          to label %bb.ha unwind label %.loopexit1154.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ha:                                            ; preds = %bb.gy, %bb.gz
  %.0.i742 = phi ptr [ %i.axh, %bb.gy ], [ %i.axa, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.axj = load ptr, ptr %75, align 8, !tbaa !170
  %i.axk = load i64, ptr %i.pp, align 8, !tbaa !171
  %i.axl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i742, ptr noundef %i.axj, i64 noundef %i.axk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit747 unwind label %.loopexit1154.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.hb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724
  %i.axm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

bb.hc:                                            ; preds = %bb.gw, %bb.gv, %bb.gu, %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit728"
  %i.axn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axo = load ptr, ptr %76, align 8, !tbaa !170 ; 2 uses
  %i.axp = icmp eq ptr %i.axo, %i.qd
  br i1 %i.axp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748: ; preds = %bb.hc
  %i.axq = load i64, ptr %i.qd, align 8, !tbaa !173
  %i.axr = add i64 %i.axq, 1
  call void @_ZdlPvm(ptr noundef %i.axo, i64 noundef %i.axr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748, %bb.hb
  %.pn281 = phi { ptr, i32 } [ %i.axm, %bb.hb ], [ %i.axn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748 ], [ %i.axn, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24
  br label %bb.he

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit747: ; preds = %bb.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740
  %i.axs = load ptr, ptr %i.awb, align 8, !tbaa !261
  %i.axt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.axs, ptr noundef nonnull @.str.54, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752 unwind label %.loopexit1154.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit714
  %i.axu = load ptr, ptr %75, align 8, !tbaa !170 ; 2 uses
  %i.axv = icmp eq ptr %i.axu, %i.po
  br i1 %i.axv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit755, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752
  %i.axw = load i64, ptr %i.po, align 8, !tbaa !173
  %i.axx = add i64 %i.axw, 1
  call void @_ZdlPvm(ptr noundef %i.axu, i64 noundef %i.axx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit755

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit755: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit752, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24
  %i.axy = load i8, ptr %i.oj, align 8, !tbaa !278, !range !229, !noundef !230
  %i.axz = trunc nuw i8 %i.axy to i1
  store i8 0, ptr %i.oj, align 8, !tbaa !278
  br i1 %i.axz, label %bb.hd, label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit755
  call void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(128) %i.pq) #24
  br label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i: ; preds = %bb.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit755
  %i.aya = load ptr, ptr %i.oe, align 8, !tbaa !170 ; 2 uses
  %i.ayb = icmp eq ptr %i.aya, %i.of
  br i1 %i.ayb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i757, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i756

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i756: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i
  %i.ayc = load i64, ptr %i.of, align 8, !tbaa !173
  %i.ayd = add i64 %i.ayc, 1
  call void @_ZdlPvm(ptr noundef %i.aya, i64 noundef %i.ayd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i757

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i757: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i756
  %i.aye = load ptr, ptr %68, align 8, !tbaa !170 ; 2 uses
  %i.ayf = icmp eq ptr %i.aye, %i.oc
  br i1 %i.ayf, label %_ZN19cmCxxModuleMetadata10ModuleDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i757
  %i.ayg = load i64, ptr %i.oc, align 8, !tbaa !173
  %i.ayh = add i64 %i.ayg, 1
  call void @_ZdlPvm(ptr noundef %i.aye, i64 noundef %i.ayh) #25
  br label %_ZN19cmCxxModuleMetadata10ModuleDataD2Ev.exit

_ZN19cmCxxModuleMetadata10ModuleDataD2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i757, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  %i.ayi = load ptr, ptr %67, align 8, !tbaa !170 ; 2 uses
  %i.ayj = icmp eq ptr %i.ayi, %i.oa
  br i1 %i.ayj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759: ; preds = %_ZN19cmCxxModuleMetadata10ModuleDataD2Ev.exit
  %i.ayk = load i64, ptr %i.oa, align 8, !tbaa !173
  %i.ayl = add i64 %i.ayk, 1
  call void @_ZdlPvm(ptr noundef %i.ayi, i64 noundef %i.ayl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761: ; preds = %_ZN19cmCxxModuleMetadata10ModuleDataD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %i.aym = getelementptr inbounds nuw i8, ptr %.sroa.01030.01594, i64 80 ; 2 uses
  %.not1152 = icmp eq ptr %i.aym, %i.aiy
  br i1 %.not1152, label %._crit_edge1597, label %bb.ev

bb.he:                                            ; preds = %.loopexit1154.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750
  %.pn283 = phi { ptr, i32 } [ %.pn281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750 ], [ %lpad.loopexit.split-lp, %.loopexit1154.loopexit.split-lp.loopexit.split-lp ]
  %i.ayn = load ptr, ptr %75, align 8, !tbaa !170 ; 2 uses
  %i.ayo = icmp eq ptr %i.ayn, %i.po
  br i1 %i.ayo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762: ; preds = %bb.he
  %i.ayp = load i64, ptr %i.po, align 8, !tbaa !173
  %i.ayq = add i64 %i.ayp, 1
  call void @_ZdlPvm(ptr noundef %i.ayn, i64 noundef %i.ayq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24
  br label %bb.hf

bb.hf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764, %bb.gf, %bb.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695
  %.pn283.pn = phi { ptr, i32 } [ %.pn283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764 ], [ %.pn278.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695 ], [ %i.aoe, %bb.gf ], [ %i.aod, %bb.ge ]
  call void @_ZN19cmCxxModuleMetadata10ModuleDataD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %68) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  %i.ayr = load ptr, ptr %67, align 8, !tbaa !170 ; 2 uses
  %i.ays = icmp eq ptr %i.ayr, %i.oa
  br i1 %i.ays, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765: ; preds = %bb.hf
  %i.ayt = load i64, ptr %i.oa, align 8, !tbaa !173
  %i.ayu = add i64 %i.ayt, 1
  call void @_ZdlPvm(ptr noundef %i.ayr, i64 noundef %i.ayu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  br label %bb.ia

bb.hg:                                            ; preds = %._crit_edge1597
  %i.ayv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.55, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit769 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit769: ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #24
  %i.ayw = load ptr, ptr %i.ko, align 8, !tbaa !170
  %i.ayx = load i64, ptr %i.qe, align 8, !tbaa !171
  invoke void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %77, i64 %i.ayx, ptr %i.ayw, i32 noundef 1)
          to label %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit773" unwind label %bb.hm

"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit773": ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit769
  %i.ayy = load ptr, ptr %77, align 8, !tbaa !170
  %i.ayz = load i64, ptr %i.qf, align 8, !tbaa !171
  %i.aza = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef %i.ayy, i64 noundef %i.ayz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775 unwind label %bb.hn ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775: ; preds = %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit773"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !173
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !213
  %i.azc = getelementptr i8, ptr %i.azb, i64 -24
  %i.azd = load i64, ptr %i.azc, align 8
  %i.aze = getelementptr inbounds i8, ptr %i.aza, i64 %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 16
  %i.azg = load i64, ptr %i.azf, align 8, !tbaa !743
  %.not.i776 = icmp eq i64 %i.azg, 0
  br i1 %.not.i776, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775
  %i.azh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aza, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.hj unwind label %bb.hn     ; 0 uses

bb.hi:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775
  %i.azi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aza, i8 noundef signext 34)
          to label %bb.hj unwind label %bb.hn     ; 0 uses

bb.hj:                                            ; preds = %bb.hh, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.azj = load ptr, ptr %77, align 8, !tbaa !170 ; 2 uses
  %i.azk = icmp eq ptr %i.azj, %i.qg
  br i1 %i.azk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781: ; preds = %bb.hj
  %i.azl = load i64, ptr %i.qg, align 8, !tbaa !173
  %i.azm = add i64 %i.azl, 1
  call void @_ZdlPvm(ptr noundef %i.azj, i64 noundef %i.azm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783: ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24
  %i.azn = load i8, ptr %i.qh, align 8, !tbaa !238, !range !229, !noundef !230
  %i.azo = trunc nuw i8 %i.azn to i1
  br i1 %i.azo, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit785, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783
  %i.azp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.56, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit785 unwind label %bb.hl ; 0 uses

bb.hl:                                            ; preds = %bb.hy, %bb.hu, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit826, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit822, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit820, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit818, %bb.ht, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit814, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812, %bb.hs, %bb.hp, %bb.ho, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit790, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit785, %bb.hk, %bb.hg
  %i.azq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.hm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit769
  %i.azr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788

bb.hn:                                            ; preds = %bb.hi, %bb.hh, %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit773"
  %i.azs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azt = load ptr, ptr %77, align 8, !tbaa !170 ; 2 uses
  %i.azu = icmp eq ptr %i.azt, %i.qg
  br i1 %i.azu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786: ; preds = %bb.hn
  %i.azv = load i64, ptr %i.qg, align 8, !tbaa !173
  %i.azw = add i64 %i.azv, 1
  call void @_ZdlPvm(ptr noundef %i.azt, i64 noundef %i.azw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786, %bb.hm
  %.pn267 = phi { ptr, i32 } [ %i.azr, %bb.hm ], [ %i.azs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786 ], [ %i.azs, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24
  br label %bb.ia

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit785: ; preds = %bb.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783
  %i.azx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.57, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit790 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit790: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit785
  %i.azy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.58, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit792 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit792: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit790
  br i1 %.0243, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit794, label %bb.ho

bb.ho:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit792
  %i.azz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.59, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit794 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit794: ; preds = %bb.ho, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit792
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #24
  %i.baa = load ptr, ptr %i.na, align 8, !tbaa !170
  %i.bab = load i64, ptr %i.qi, align 8, !tbaa !171
  invoke void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %78, i64 %i.bab, ptr %i.baa, i32 noundef 1)
          to label %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit798" unwind label %bb.hq

"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit798": ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit794
  %i.bac = load ptr, ptr %78, align 8, !tbaa !170
  %i.bad = load i64, ptr %i.qj, align 8, !tbaa !171
  %i.bae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef %i.bac, i64 noundef %i.bad)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit800 unwind label %bb.hr

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit800: ; preds = %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit798"
  %i.baf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bae, ptr noundef nonnull @.str.60, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit802 unwind label %bb.hr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit802: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit800
  %i.bag = load ptr, ptr %78, align 8, !tbaa !170 ; 2 uses
  %i.bah = icmp eq ptr %i.bag, %i.qk
  br i1 %i.bah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit802
  %i.bai = load i64, ptr %i.qk, align 8, !tbaa !173
  %i.baj = add i64 %i.bai, 1
  call void @_ZdlPvm(ptr noundef %i.bag, i64 noundef %i.baj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit802, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24
  %i.bak = load i8, ptr %i.ql, align 1, !tbaa !239, !range !229, !noundef !230
  %i.bal = trunc nuw i8 %i.bak to i1
  br i1 %i.bal, label %bb.hp, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit807

bb.hp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.61, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit807 unwind label %bb.hl ; 0 uses

bb.hq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit794
  %i.ban = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit810

bb.hr:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit800, %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit798"
  %i.bao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bap = load ptr, ptr %78, align 8, !tbaa !170 ; 2 uses
  %i.baq = icmp eq ptr %i.bap, %i.qk
  br i1 %i.baq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit810, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i808

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i808: ; preds = %bb.hr
  %i.bar = load i64, ptr %i.qk, align 8, !tbaa !173
  %i.bas = add i64 %i.bar, 1
  call void @_ZdlPvm(ptr noundef %i.bap, i64 noundef %i.bas) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit810

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit810: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i808, %bb.hq
  %.pn269 = phi { ptr, i32 } [ %i.ban, %bb.hq ], [ %i.bao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i808 ], [ %i.bao, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24
  br label %bb.ia

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit807: ; preds = %bb.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805
  %i.bat = load i64, ptr %i.qn, align 8, !tbaa !171
  %i.bau = icmp eq i64 %i.bat, 0
  br i1 %i.bau, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816, label %bb.hs

bb.hs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit807
  %i.bav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.62, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812: ; preds = %bb.hs
  %i.baw = load ptr, ptr %i.qm, align 8, !tbaa !170
  %i.bax = load i64, ptr %i.qn, align 8, !tbaa !171
  %i.bay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef %i.baw, i64 noundef %i.bax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit814 unwind label %bb.hl

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit814: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812
  %i.baz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bay, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit814, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit807
  %i.bba = load i64, ptr %i.qp, align 8, !tbaa !171
  %i.bbb = icmp eq i64 %i.bba, 0
  br i1 %i.bbb, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit822, label %bb.ht

bb.ht:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816
  %i.bbc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.64, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit818 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit818: ; preds = %bb.ht
  %i.bbd = load ptr, ptr %i.qo, align 8, !tbaa !170
  %i.bbe = load i64, ptr %i.qp, align 8, !tbaa !171
  %i.bbf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef %i.bbd, i64 noundef %i.bbe)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit820 unwind label %bb.hl

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit820: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit818
  %i.bbg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bbf, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit822 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit822: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit820, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816
  %i.bbh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.65, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit822
  %i.bbi = load ptr, ptr %63, align 8, !tbaa !170
  %i.bbj = load i64, ptr %i.nq, align 8, !tbaa !171
  %i.bbk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef %i.bbi, i64 noundef %i.bbj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit826 unwind label %bb.hl

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit826: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824
  %i.bbl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bbk, ptr noundef nonnull @.str.66, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit826
  br i1 %.0243, label %bb.hu, label %bb.hy

bb.hu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828
  %i.bbm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.67, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit830 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit830: ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #24
  %i.bbn = load ptr, ptr %63, align 8, !tbaa !170
  %i.bbo = load i64, ptr %i.nq, align 8, !tbaa !171
  %i.bbp = invoke { i64, ptr } @_ZN13cmSystemTools19GetFilenameNameViewESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bbo, ptr %i.bbn)
          to label %bb.hv unwind label %bb.hw     ; 2 uses

bb.hv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit830
  %i.bbq = extractvalue { i64, ptr } %i.bbp, 0
  %i.bbr = extractvalue { i64, ptr } %i.bbp, 1
  invoke void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, i64 %i.bbq, ptr %i.bbr, i32 noundef 1)
          to label %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit834" unwind label %bb.hw

"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit834": ; preds = %bb.hv
  %i.bbs = load ptr, ptr %79, align 8, !tbaa !170
  %i.bbt = load i64, ptr %i.qq, align 8, !tbaa !171
  %i.bbu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef %i.bbs, i64 noundef %i.bbt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit836 unwind label %bb.hx

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit836: ; preds = %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit834"
  %i.bbv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bbu, ptr noundef nonnull @.str.68, i64 noundef 353)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838 unwind label %bb.hx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit836
  %i.bbw = load ptr, ptr %79, align 8, !tbaa !170 ; 2 uses
  %i.bbx = icmp eq ptr %i.bbw, %i.qr
  br i1 %i.bbx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i839

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i839: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838
  %i.bby = load i64, ptr %i.qr, align 8, !tbaa !173
  %i.bbz = add i64 %i.bby, 1
  call void @_ZdlPvm(ptr noundef %i.bbw, i64 noundef %i.bbz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i839
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit830
  %i.bca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844

bb.hx:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit836, %"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_0clB5cxx11ESt17basic_string_viewIcS3_E.exit834"
  %i.bcb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcc = load ptr, ptr %79, align 8, !tbaa !170 ; 2 uses
  %i.bcd = icmp eq ptr %i.bcc, %i.qr
  br i1 %i.bcd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842: ; preds = %bb.hx
  %i.bce = load i64, ptr %i.qr, align 8, !tbaa !173
  %i.bcf = add i64 %i.bce, 1
  call void @_ZdlPvm(ptr noundef %i.bcc, i64 noundef %i.bcf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844: ; preds = %bb.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842, %bb.hw
  %.pn271 = phi { ptr, i32 } [ %i.bca, %bb.hw ], [ %i.bcb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842 ], [ %i.bcb, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24
  br label %bb.ia

bb.hy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828
  %i.bcg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01085.0, ptr noundef nonnull @.str.69, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846 unwind label %bb.hl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846: ; preds = %bb.hy, %._crit_edge1597
  %i.bch = load i8, ptr %i.np, align 8, !tbaa !251, !range !229, !noundef !230
  %i.bci = trunc nuw i8 %i.bch to i1
  store i8 0, ptr %i.np, align 8, !tbaa !251
  br i1 %i.bci, label %bb.hz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit849

bb.hz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846
  %i.bcj = load ptr, ptr %63, align 8, !tbaa !170 ; 2 uses
  %i.bck = icmp eq ptr %i.bcj, %i.qs
  br i1 %i.bck, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit849, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i847

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i847: ; preds = %bb.hz
  %i.bcl = load i64, ptr %i.qs, align 8, !tbaa !173
  %i.bcm = add i64 %i.bcl, 1
  call void @_ZdlPvm(ptr noundef %i.bcj, i64 noundef %i.bcm) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit849

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit849: ; preds = %bb.hz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i847
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  %i.bcn = load ptr, ptr %62, align 8, !tbaa !170 ; 2 uses
  %i.bco = icmp eq ptr %i.bcn, %i.nn
  br i1 %i.bco, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit849
  %i.bcp = load i64, ptr %i.nn, align 8, !tbaa !173
  %i.bcq = add i64 %i.bcp, 1
  call void @_ZdlPvm(ptr noundef %i.bcn, i64 noundef %i.bcq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit849, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.bcr = load ptr, ptr %61, align 8, !tbaa !170 ; 2 uses
  %i.bcs = icmp eq ptr %i.bcr, %i.nl
  br i1 %i.bcs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852
  %i.bct = load i64, ptr %i.nl, align 8, !tbaa !173
  %i.bcu = add i64 %i.bct, 1
  call void @_ZdlPvm(ptr noundef %i.bcr, i64 noundef %i.bcu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  %i.bcv = load ptr, ptr %58, align 8, !tbaa !170 ; 2 uses
  %i.bcw = icmp eq ptr %i.bcv, %i.my
  br i1 %i.bcw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855
  %i.bcx = load i64, ptr %i.my, align 8, !tbaa !173
  %i.bcy = add i64 %i.bcx, 1
  call void @_ZdlPvm(ptr noundef %i.bcv, i64 noundef %i.bcy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  %i.bcz = getelementptr inbounds nuw i8, ptr %.sroa.01035.01599, i64 104 ; 2 uses
  %.not1151 = icmp eq ptr %i.bcz, %i.aey
  br i1 %.not1151, label %.loopexit1159, label %bb.dq

bb.ia:                                            ; preds = %bb.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit810, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626
  %.pn283.pn.pn = phi { ptr, i32 } [ %.pn283.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767 ], [ %.pn265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %i.aiw, %bb.et ], [ %i.azq, %bb.hl ], [ %.pn271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844 ], [ %.pn269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit810 ], [ %.pn267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788 ] ; 3 uses
  %i.bda = load i8, ptr %i.np, align 8, !tbaa !251, !range !229, !noundef !230
  %i.bdb = trunc nuw i8 %i.bda to i1
  store i8 0, ptr %i.np, align 8, !tbaa !251
  br i1 %i.bdb, label %bb.ib, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit861

bb.ib:                                            ; preds = %bb.ia
  %i.bdc = load ptr, ptr %63, align 8, !tbaa !170 ; 2 uses
  %i.bdd = icmp eq ptr %i.bdc, %i.qs
  br i1 %i.bdd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit861, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i859

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i859: ; preds = %bb.ib
  %i.bde = load i64, ptr %i.qs, align 8, !tbaa !173
  %i.bdf = add i64 %i.bde, 1
  call void @_ZdlPvm(ptr noundef %i.bdc, i64 noundef %i.bdf) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit861

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit861: ; preds = %bb.ib, %.loopexit.split-lp1161.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i859, %bb.ia
  %.pn283.pn.pn.pn = phi { ptr, i32 } [ %.pn283.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i859 ], [ %.pn283.pn.pn, %bb.ia ], [ %lpad.loopexit.split-lp2032, %.loopexit.split-lp1161.loopexit.split-lp.loopexit.split-lp ], [ %.pn283.pn.pn, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  %i.bdg = load ptr, ptr %62, align 8, !tbaa !170 ; 2 uses
  %i.bdh = icmp eq ptr %i.bdg, %i.nn
  br i1 %i.bdh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i862

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i862: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit861
  %i.bdi = load i64, ptr %i.nn, align 8, !tbaa !173
  %i.bdj = add i64 %i.bdi, 1
  call void @_ZdlPvm(ptr noundef %i.bdg, i64 noundef %i.bdj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit861, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i862
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.bdk = load ptr, ptr %61, align 8, !tbaa !170 ; 2 uses
  %i.bdl = icmp eq ptr %i.bdk, %i.nl
  br i1 %i.bdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit867, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i865

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i865: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864
  %i.bdm = load i64, ptr %i.nl, align 8, !tbaa !173
  %i.bdn = add i64 %i.bdm, 1
  call void @_ZdlPvm(ptr noundef %i.bdk, i64 noundef %i.bdn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit867

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit867: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i865
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  br label %bb.ic

bb.ic:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit867, %_ZNSt4pairIbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit584
  %.pn283.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn283.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit867 ], [ %.pn263, %_ZNSt4pairIbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit584 ]
  %i.bdo = load ptr, ptr %58, align 8, !tbaa !170 ; 2 uses
  %i.bdp = icmp eq ptr %i.bdo, %i.my
  br i1 %i.bdp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit870, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i868

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i868: ; preds = %bb.ic
  %i.bdq = load i64, ptr %i.my, align 8, !tbaa !173
  %i.bdr = add i64 %i.bdq, 1
  call void @_ZdlPvm(ptr noundef %i.bdo, i64 noundef %i.bdr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit870

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit870: ; preds = %bb.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i868
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  br label %.loopexit.split-lp1166

.loopexit1159:                                    ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, %bb.dn, %._crit_edge1592, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, %bb.dg, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467
  %.10 = phi i1 [ %.3, %bb.bo ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467 ], [ %.7, %._crit_edge1592 ], [ %.3, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562 ], [ %.7, %bb.dg ], [ %.7, %bb.dn ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.7, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit ] ; 2 uses
  %i.bds = load ptr, ptr %50, align 8, !tbaa !170 ; 2 uses
  %i.bdt = icmp eq ptr %i.bds, %i.lj
  br i1 %i.bdt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit873, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i871

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i871: ; preds = %.loopexit1159
  %i.bdu = load i64, ptr %i.lj, align 8, !tbaa !173
  %i.bdv = add i64 %i.bdu, 1
  call void @_ZdlPvm(ptr noundef %i.bds, i64 noundef %i.bdv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit873

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit873: ; preds = %.loopexit1159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i871
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  %i.bdw = getelementptr inbounds nuw i8, ptr %.sroa.01076.01603, i64 104 ; 2 uses
  %.not1141.a = icmp eq ptr %i.bdw, %i.li
  br i1 %.not1141.a, label %._crit_edge1607, label %bb.as

.loopexit.split-lp1166:                           ; preds = %.loopexit.split-lp1166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit870, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431
  %.pn302.pn = phi { ptr, i32 } [ %.pn259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %.pn257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534 ], [ %.pn293.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit517 ], [ %.pn255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431 ], [ %.pn283.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit870 ], [ %.pn298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470 ], [ %.pn261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 ], [ %lpad.loopexit.split-lp2048, %.loopexit.split-lp1166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bdx = load ptr, ptr %50, align 8, !tbaa !170 ; 2 uses
  %i.bdy = icmp eq ptr %i.bdx, %i.lj
  br i1 %i.bdy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit876, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i874

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i874: ; preds = %.loopexit.split-lp1166
  %i.bdz = load i64, ptr %i.lj, align 8, !tbaa !173
  %i.bea = add i64 %i.bdz, 1
  call void @_ZdlPvm(ptr noundef %i.bdx, i64 noundef %i.bea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit876

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit876: ; preds = %.loopexit.split-lp1166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i874, %bb.bc
  %.pn302.pn.pn = phi { ptr, i32 } [ %i.vh, %bb.bc ], [ %.pn302.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i874 ], [ %.pn302.pn, %.loopexit.split-lp1166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  br label %.body374

._crit_edge1613:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit902, %._crit_edge1607
  %i.beb = load ptr, ptr %i.ld, align 8, !tbaa !176 ; 2 uses
  %.not11431622 = icmp eq ptr %i.beb, %i.lb
  br i1 %.not11431622, label %._crit_edge1627, label %.lr.ph1626

.lr.ph1626:                                       ; preds = %._crit_edge1613
  %.sroa.4.0..sroa_idx.i.i934 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bec = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4.0..sroa_idx.i12.i935 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bed = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bee = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.4.0..sroa_idx.i20.i936 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bef = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.4.0..sroa_idx.i28.i937 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.beg = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.beh = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.4.0..sroa_idx.i36.i938 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bei = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 4 uses
  br label %bb.ii

bb.id:                                            ; preds = %.lr.ph1612, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit902
  %.sroa.01023.01610 = phi ptr [ %i.rt, %.lr.ph1612 ], [ %i.bfk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit902 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #24
  %i.bej = load ptr, ptr %.sroa.01023.01610, align 8, !tbaa !268 ; 6 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 96
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bej, i64 128
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !838
  %i.ben = load ptr, ptr %i.bek, align 8, !tbaa !170, !noalias !838
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bej, i64 104
  %i.bep = load i64, ptr %i.beo, align 8, !tbaa !171, !noalias !838
  store i64 %i.bep, ptr %5, align 8, !tbaa !172, !alias.scope !839, !noalias !838
  store ptr %i.ben, ptr %.sroa.4.0..sroa_idx.i.i877, align 8, !tbaa !185, !alias.scope !839, !noalias !838
  store ptr null, ptr %i.rw, align 8, !tbaa !200, !alias.scope !839, !noalias !838
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !838
  store i64 0, ptr %6, align 8, !noalias !838
  store i8 47, ptr %i.rz, align 8, !tbaa !173, !noalias !838
  store i64 1, ptr %i.ry, align 8, !tbaa !172, !noalias !838
  store ptr %i.rz, ptr %.sroa.4.0..sroa_idx.i12.i878, align 8, !tbaa !185, !noalias !838
  store i64 1, ptr %i.rx, align 8, !tbaa !172, !alias.scope !840, !noalias !838
  store ptr %i.rz, ptr %.sroa.4.0..sroa_idx.i20.i879, align 8, !tbaa !185, !alias.scope !840, !noalias !838
  store ptr null, ptr %i.sa, align 8, !tbaa !200, !alias.scope !840, !noalias !838
  %i.beq = load ptr, ptr %i.bel, align 8, !tbaa !170, !noalias !838
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bej, i64 136
  %i.bes = load i64, ptr %i.ber, align 8, !tbaa !171, !noalias !838
  store i64 %i.bes, ptr %i.sb, align 8, !tbaa !172, !alias.scope !841, !noalias !838
  store ptr %i.beq, ptr %.sroa.4.0..sroa_idx.i28.i880, align 8, !tbaa !185, !alias.scope !841, !noalias !838
  store ptr null, ptr %i.sc, align 8, !tbaa !200, !alias.scope !841, !noalias !838
  store i64 8, ptr %i.sd, align 8, !tbaa !172, !alias.scope !842, !noalias !838
  store ptr @.str.37, ptr %.sroa.4.0..sroa_idx.i36.i884, align 8, !tbaa !185, !alias.scope !842, !noalias !838
  store ptr null, ptr %i.se, align 8, !tbaa !200, !alias.scope !842, !noalias !838
  %i.bet = load ptr, ptr %i.bem, align 8, !tbaa !170, !noalias !838
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bej, i64 40
  %i.bev = load i64, ptr %i.beu, align 8, !tbaa !171, !noalias !838
  store i64 %i.bev, ptr %i.sf, align 8, !tbaa !172, !alias.scope !843, !noalias !838
  store ptr %i.bet, ptr %.sroa.4.0..sroa_idx.i44.i885, align 8, !tbaa !185, !alias.scope !843, !noalias !838
  store ptr null, ptr %i.sg, align 8, !tbaa !200, !alias.scope !843, !noalias !838
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !838
  store i64 0, ptr %7, align 8, !noalias !838
  store i8 45, ptr %i.sj, align 8, !tbaa !173, !noalias !838
  store i64 1, ptr %i.si, align 8, !tbaa !172, !noalias !838
  store ptr %i.sj, ptr %.sroa.4.0..sroa_idx.i45.i886, align 8, !tbaa !185, !noalias !838
  store i64 1, ptr %i.sh, align 8, !tbaa !172, !alias.scope !844, !noalias !838
  store ptr %i.sj, ptr %.sroa.4.0..sroa_idx.i53.i887, align 8, !tbaa !185, !alias.scope !844, !noalias !838
  store ptr null, ptr %i.sk, align 8, !tbaa !200, !alias.scope !844, !noalias !838
  %i.bew = load ptr, ptr %i.x, align 8, !tbaa !170, !noalias !838
  %i.bex = load i64, ptr %i.aa, align 8, !tbaa !171, !noalias !838
  store i64 %i.bex, ptr %i.sl, align 8, !tbaa !172, !alias.scope !845, !noalias !838
  store ptr %i.bew, ptr %.sroa.4.0..sroa_idx.i61.i888, align 8, !tbaa !185, !alias.scope !845, !noalias !838
  store ptr null, ptr %i.sm, align 8, !tbaa !200, !alias.scope !845, !noalias !838
  store i64 13, ptr %i.sn, align 8, !tbaa !172, !alias.scope !846, !noalias !838
  store ptr @.str.38, ptr %.sroa.4.0..sroa_idx.i70.i892, align 8, !tbaa !185, !alias.scope !846, !noalias !838
  store ptr null, ptr %i.so, align 8, !tbaa !200, !alias.scope !846, !noalias !838
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr nonnull %5, i64 8)
          to label %bb.ie unwind label %bb.ig

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !838
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !838
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !838
  %i.bey = getelementptr inbounds nuw i8, ptr %.sroa.01023.01610, i64 16
  invoke void @_ZN19cmCxxModuleMetadata10SaveToFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS_(ptr dead_on_unwind nonnull writable sret(%"struct.cmCxxModuleMetadata::SaveResult") align 8 %80, ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 8 dereferenceable(64) %i.bey)
          to label %bb.if unwind label %bb.ih

bb.if:                                            ; preds = %bb.ie
  %i.bez = load ptr, ptr %i.sp, align 8, !tbaa !170 ; 2 uses
  %i.bfa = icmp eq ptr %i.bez, %i.sq
  br i1 %i.bfa, label %_ZN19cmCxxModuleMetadata10SaveResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i895

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i895: ; preds = %bb.if
  %i.bfb = load i64, ptr %i.sq, align 8, !tbaa !173
  %i.bfc = add i64 %i.bfb, 1
  call void @_ZdlPvm(ptr noundef %i.bez, i64 noundef %i.bfc) #25
  br label %_ZN19cmCxxModuleMetadata10SaveResultD2Ev.exit

_ZN19cmCxxModuleMetadata10SaveResultD2Ev.exit:    ; preds = %bb.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i895
  %i.bfd = load ptr, ptr %81, align 8, !tbaa !170 ; 2 uses
  %i.bfe = icmp eq ptr %i.bfd, %i.sr
  br i1 %i.bfe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit900, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i898

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i898: ; preds = %_ZN19cmCxxModuleMetadata10SaveResultD2Ev.exit
  %i.bff = load i64, ptr %i.sr, align 8, !tbaa !173
  %i.bfg = add i64 %i.bff, 1
  call void @_ZdlPvm(ptr noundef %i.bfd, i64 noundef %i.bfg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit900

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit900: ; preds = %_ZN19cmCxxModuleMetadata10SaveResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i898
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sroa.01023.01610, i64 8
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !261
end_hunk_3
begin_hunk_4_@_ZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacks:bb.a
  br label %.body374

bb.iv:                                            ; preds = %bb.ir
  %i.bhz = getelementptr inbounds nuw i8, ptr %2, i64 128
  invoke void @_ZNK15cmBuildDatabase5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bfr, ptr noundef nonnull align 8 dereferenceable(32) %i.bhz)
          to label %bb.iw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit951, %bb.iv, %._crit_edge1627
  %.14 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit951 ], [ %.11.lcssa, %bb.iv ], [ %.11.lcssa, %._crit_edge1627 ]
  %i.bia = load ptr, ptr %i.lc, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef %i.bia)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bib = landingpad { ptr, i32 }
          catch ptr null
  %i.bic = extractvalue { ptr, i32 } %i.bib, 0
  call void @__clang_call_terminate(ptr %i.bic) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  %i.bid = load ptr, ptr %i.kx, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef %i.bid)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.iy

bb.iy:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEED2Ev.exit
  %i.bie = landingpad { ptr, i32 }
          catch ptr null
  %i.bif = extractvalue { ptr, i32 } %i.bie, 0
  call void @__clang_call_terminate(ptr %i.bif) #26
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  %.not.i955 = icmp eq ptr %.sroa.01085.0, null
  br i1 %.not.i955, label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit957, label %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i956

_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i956: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.big = load ptr, ptr %.sroa.01085.0, align 8, !tbaa !213
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  %i.bii = load ptr, ptr %i.bih, align 8
  call void %i.bii(ptr noundef nonnull align 8 dereferenceable(348) %.sroa.01085.0) #24, !inline_history !7
  br label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit957

_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit957: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i956
  %i.bij = load ptr, ptr %i.dc, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef %i.bij)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit958 unwind label %bb.iz

bb.iz:                                            ; preds = %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit957
  %i.bik = landingpad { ptr, i32 }
          catch ptr null
  %i.bil = extractvalue { ptr, i32 } %i.bik, 0
  call void @__clang_call_terminate(ptr %i.bil) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit958: ; preds = %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit957
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br i1 %.not1144.a, label %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit961, label %_ZNKSt14default_deleteI15cmBuildDatabaseEclEPS0_.exit.i960

_ZNKSt14default_deleteI15cmBuildDatabaseEclEPS0_.exit.i960: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit958
  call void @_ZN15cmBuildDatabaseD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bfr) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.bfr, i64 noundef 24) #25
  br label %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit961

_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit961: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit958, %_ZNKSt14default_deleteI15cmBuildDatabaseEclEPS0_.exit.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  %i.bim = load ptr, ptr %38, align 8, !tbaa !287 ; 3 uses
  %i.bin = load ptr, ptr %i.ru, align 8, !tbaa !271 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bim, %i.bin
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i962

.lr.ph.i.i.i962:                                  ; preds = %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit961, %.lr.ph.i.i.i962
  %.05.i.i.i = phi ptr [ %i.bio, %.lr.ph.i.i.i962 ], [ %i.bim, %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit961 ] ; 2 uses
  call void @_ZN27CxxModuleExportOutputHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.05.i.i.i) #24
  %i.bio = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i963 = icmp eq ptr %i.bio, %i.bin
  br i1 %.not.i.i.i963, label %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i962, !llvm.loop !8

_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i962
  %.pr.i = load ptr, ptr %38, align 8, !tbaa !287
  br label %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit961
  %i.bip = phi ptr [ %.pr.i, %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.bim, %_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev.exit961 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bip, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit, label %bb.ja

bb.ja:                                            ; preds = %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit.i
  %i.biq = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !272
  %i.bis = ptrtoint ptr %i.bir to i64
  %i.bit = ptrtoint ptr %i.bip to i64
  %i.biu = sub i64 %i.bis, %i.bit
  call void @_ZdlPvm(ptr noundef nonnull %i.bip, i64 noundef %i.biu) #25
  br label %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit

_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit.i, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.biv = load ptr, ptr %36, align 8, !tbaa !170 ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.bix = icmp eq ptr %i.biv, %i.biw
  br i1 %i.bix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit966, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i964

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i964: ; preds = %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit
  %i.biy = load i64, ptr %i.biw, align 8, !tbaa !173
  %i.biz = add i64 %i.biy, 1
  call void @_ZdlPvm(ptr noundef %i.biv, i64 noundef %i.biz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit966

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit966: ; preds = %_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i964
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread

.body374:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit876, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit945
  %.pn302.pn.pn.pn = phi { ptr, i32 } [ %.pn302.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit876 ], [ %.pn247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit945 ], [ %.pn250.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905 ], [ %.pn245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954 ], [ %lpad.loopexit.split-lp2028, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %48) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  %.not.i967 = icmp eq ptr %.sroa.01085.0, null
  br i1 %.not.i967, label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit969, label %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i968

_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i968: ; preds = %.body374
  %i.bja = load ptr, ptr %.sroa.01085.0, align 8, !tbaa !213
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 8
  %i.bjc = load ptr, ptr %i.bjb, align 8
  call void %i.bjc(ptr noundef nonnull align 8 dereferenceable(348) %.sroa.01085.0) #24, !inline_history !7
  br label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit969

_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit969: ; preds = %bb.ar, %bb.aq, %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i968, %.body374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %bb.ai, %bb.ah
  %.pn302.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.ah ], [ %i.jv, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %.pn302.pn.pn.pn, %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i968 ], [ %.pn302.pn.pn.pn, %.body374 ], [ %i.ku, %bb.aq ], [ %i.kv, %bb.ar ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %bb.jb

bb.jb:                                            ; preds = %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit969, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362
  %.pn313.pn.pn.pn = phi { ptr, i32 } [ %.pn313.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362 ], [ %.pn302.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit969 ] ; 2 uses
  call void @_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.bjd = load ptr, ptr %36, align 8, !tbaa !170 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.bjf = icmp eq ptr %i.bjd, %i.bje
  br i1 %i.bjf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970: ; preds = %bb.jb
  %i.bjg = load i64, ptr %i.bje, align 8, !tbaa !173
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970
  %.sink2027 = phi i64 [ %i.bjg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ]
  %.sink = phi ptr [ %i.bjd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ]
  %.pn313.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn313.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ]
  %i.bjh = add i64 %.sink2027, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bjh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.sink.split, %bb.jb, %bb.e
  %.pn313.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.e ], [ %.pn313.pn.pn.pn, %bb.jb ], [ %.pn313.pn.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  resume { ptr, i32 } %.pn313.pn.pn.pn.pn

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit966
  %.0 = phi i1 [ %.14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit966 ], [ true, %bb.a ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  ret i1 %.0
}

declare void @_ZN5cmsys11SystemTools9UpperCaseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef align 8) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN27CxxModuleExportOutputHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !173
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !275  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !276  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 192 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !278, !range !229, !noundef !230
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8, !tbaa !278
  br i1 %i.m, label %bb.b, label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72
  tail call void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(128) %i.n) #24
  br label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i

_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !173
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !170 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !173
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 200 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aa = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmCxxModuleMetadataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !274
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %_ZN19cmCxxModuleMetadataD2Ev.exit

_ZN19cmCxxModuleMetadataD2Ev.exit:                ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !261 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i

_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i: ; preds = %_ZN19cmCxxModuleMetadataD2Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !213
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(348) %i.ah) #24, !inline_history !7
  br label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN19cmCxxModuleMetadataD2Ev.exit, %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i
  ret void
}

declare void @_ZN15cmBuildDatabase4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.67") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI15cmBuildDatabaseSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !279    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI15cmBuildDatabaseEclEPS0_.exit

_ZNKSt14default_deleteI15cmBuildDatabaseEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN15cmBuildDatabaseD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI15cmBuildDatabaseEclEPS0_.exit, %bb.a
  ret void
}

declare void @_ZN15cmBuildDatabase19GenerateLookupTableB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map.75") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN15cmBuildDatabase15TranslationUnitESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.628", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.631", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !171  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !195 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !854

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #24 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %1, ptr %2, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
end_hunk_4
begin_hunk_5_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEEixERSC_:bb.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #24 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %1, ptr %2, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN17cmDyndepCollation19WriteDyndepMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI13cmScanDepInfoSaIS9_EERK21cmCxxModuleExportInfoRK25cmDyndepMetadataCallbacksENK3$_1clB5cxx11ES7_"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"struct.std::pair.625"], align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef zeroext i1 @_ZN5cmsys11SystemTools14FileIsFullPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = load ptr, ptr %1, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !171
  call void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %i.d, ptr %i.b, i32 noundef 1)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  store i8 1, ptr %0, align 8, !tbaa !281, !alias.scope !866
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !169, !alias.scope !866
  %i.g = load ptr, ptr %3, align 8, !tbaa !170, !noalias !866 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !171, !noalias !866 ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.g, ptr %i.e, align 8, !tbaa !170, !alias.scope !866
  %i.n = load i64, ptr %i.h, align 8, !tbaa !173, !noalias !866
  store i64 %i.n, ptr %i.f, align 8, !tbaa !173, !alias.scope !866
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !171, !noalias !866
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.o = phi i64 [ %i.k, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !171, !alias.scope !866
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.q = load ptr, ptr %1, align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !171
  call void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.s, ptr %i.q, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !867
  store i64 18, ptr %2, align 8, !tbaa !172, !alias.scope !868, !noalias !867
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.87, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !185, !alias.scope !868, !noalias !867
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !200, !alias.scope !868, !noalias !867
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %.pn.i.i6.else.val.i = load ptr, ptr %5, align 8, !tbaa !185, !noalias !870
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pn2.i.i8.else.val.i = load i64, ptr %.sroa.gep10.i, align 8, !tbaa !172, !noalias !870
  store i64 %.pn2.i.i8.else.val.i, ptr %i.u, align 8, !tbaa !172, !alias.scope !869, !noalias !867
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.pn.i.i6.else.val.i, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !185, !alias.scope !869, !noalias !867
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %5, ptr %i.v, align 8, !tbaa !200, !alias.scope !869, !noalias !867
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %2, i64 2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !867
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  store i8 0, ptr %0, align 8, !tbaa !281, !alias.scope !871
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !169, !alias.scope !871
  %i.y = load ptr, ptr %4, align 8, !tbaa !170, !noalias !871 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !171, !noalias !871 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %bb.e
  store ptr %i.y, ptr %i.w, align 8, !tbaa !170, !alias.scope !871
  %i.af = load i64, ptr %i.z, align 8, !tbaa !173, !noalias !871
  store i64 %i.af, ptr %i.x, align 8, !tbaa !173, !alias.scope !871
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8, !tbaa !171, !noalias !871
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17, %bb.f
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !171, !alias.scope !871
  store ptr %i.z, ptr %4, align 8, !tbaa !170, !noalias !871
  store i64 0, ptr %i.ah, align 8, !tbaa !171, !noalias !871
  store i8 0, ptr %i.z, align 8, !tbaa !173, !noalias !871
  %i.aj = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !173
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.g
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !173
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.ao

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare { i64, ptr } @_ZN13cmSystemTools19GetFilenameNameViewESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmCxxModuleMetadata10ModuleDataD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !278, !range !229, !noundef !230
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !278
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(128) %i.d) #24
  br label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !173
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !173
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare void @_ZN19cmCxxModuleMetadata10SaveToFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS_(ptr dead_on_unwind writable sret(%"struct.cmCxxModuleMetadata::SaveResult") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK15cmBuildDatabase19HasPlaceholderNamesEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZNK15cmBuildDatabase5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI27CxxModuleExportOutputHelperSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !287    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN27CxxModuleExportOutputHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.05.i.i) #24
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !287
  br label %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZNSt12_Vector_baseI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI27CxxModuleExportOutputHelperSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP27CxxModuleExportOutputHelperS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN17cmDyndepCollation15IsObjectPrivateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK21cmCxxModuleExportInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(400) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !171  ; 4 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !195 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !6

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !247
  %i.z = tail call noundef zeroext i1 @_ZN2cm15FileSetMetadata24VisibilityIsForInterfaceENS0_10VisibilityE(i32 noundef %i.y)
  %i.aa = xor i1 %i.z, true
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CxxModuleFileSetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit, %bb.d
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E:bb.a
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !173
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !895

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CxxModuleFileSetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16CxxModuleFileSetD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !170 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !173
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !249
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !250  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !248  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !170 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.x = load i64, ptr %i.v, align 8, !tbaa !173
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.q, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !249
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !248 ; 2 uses
  %.not4.i.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i13, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17
  %.05.i.i.i15 = phi ptr [ %i.ap, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17 ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i15, align 8, !tbaa !170 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %.lr.ph.i.i.i14
  %i.an = load i64, ptr %i.al, align 8, !tbaa !173
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 32 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.ap, %i.aj
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19, label %.lr.ph.i.i.i14, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17
  %.pr.i20 = load ptr, ptr %i.ag, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.aq = phi ptr [ %.pr.i20, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19 ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %.not.i.i1.i22 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i22, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !249
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !250 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !248 ; 2 uses
  %.not4.i.i.i25 = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i33, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29
  %.05.i.i.i27 = phi ptr [ %i.bf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29 ], [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24 ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i27, align 8, !tbaa !170 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i26
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !173
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29: ; preds = %.lr.ph.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bf, %i.az
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i31, label %.lr.ph.i.i.i26, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i31: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29
  %.pr.i32 = load ptr, ptr %i.aw, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i33: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i31, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24
  %i.bg = phi ptr [ %.pr.i32, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i31 ], [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24 ] ; 3 uses
  %.not.i.i1.i34 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i33
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !249
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i33, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !251, !range !229, !noundef !230
  %i.bo = trunc nuw i8 %i.bn to i1
  store i8 0, ptr %i.bm, align 8, !tbaa !251
  br i1 %i.bo, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !170 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37: ; preds = %bb.f
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !173
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !170 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !173
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !170 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !173
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !170 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !173
  %i.cm = add i64 %i.cl, 1
  tail call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.cn = load ptr, ptr %0, align 8, !tbaa !170   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !173
  %i.cr = add i64 %i.cq, 1
  tail call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.07, i64 112 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.k = load i64, ptr %i.i, align 8, !tbaa !173
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !170  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN10SourceInfoD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !173
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZN10SourceInfoD2Ev.exit.i.i.i

_ZN10SourceInfoD2Ev.exit.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN10SourceInfoD2Ev.exit.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !173
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %_ZN10SourceInfoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 128) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !896

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10SourceInfoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #0

declare void @_ZN4Json17ValueIteratorBase9incrementEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nounwind
declare void @_ZN15cmBuildDatabaseD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !173
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !897

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN15cmBuildDatabase15TranslationUnitEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5cmsys11SystemTools14FileIsFullPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !170 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !173
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !249
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !250  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !248  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !170 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.x = load i64, ptr %i.v, align 8, !tbaa !173
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.q, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !249
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !285 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !286 ; 2 uses
  %.not4.i.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i13, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i
  %.05.i.i.i15 = phi ptr [ %i.ay, %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 64 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !251, !range !229, !noundef !230
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !251
  br i1 %i.am, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i14
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !170 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 48 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !173
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i14
  %i.at = load ptr, ptr %.05.i.i.i15, align 8, !tbaa !170 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !173
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #25
  br label %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i

_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 80 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !898

_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i
  %.pr.i17 = load ptr, ptr %i.ag, align 8, !tbaa !285
  br label %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.az = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.az, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !284
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #25
  br label %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !250 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !248 ; 2 uses
  %.not4.i.i.i19 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i19, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23
  %.05.i.i.i21 = phi ptr [ %i.bo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23 ], [ %i.bg, %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i21, align 8, !tbaa !170 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i20
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !173
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23: ; preds = %.lr.ph.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25, label %.lr.ph.i.i.i20, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23
  %.pr.i26 = load ptr, ptr %i.bf, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25, %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit
  %i.bp = phi ptr [ %.pr.i26, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25 ], [ %i.bg, %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !249
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27, %bb.f
  %i.bv = load ptr, ptr %0, align 8, !tbaa !250   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !248 ; 2 uses
  %.not4.i.i.i31 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not4.i.i.i31, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35
  %.05.i.i.i33 = phi ptr [ %i.cd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35 ], [ %i.bv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30 ] ; 3 uses
  %i.by = load ptr, ptr %.05.i.i.i33, align 8, !tbaa !170 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i32
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !173
  %i.cc = add i64 %i.cb, 1
  tail call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35: ; preds = %.lr.ph.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.cd, %i.bx
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i32, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %0, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30
  %i.ce = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.bv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30 ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit42, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !249
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit42

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit42: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !173
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 112) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !899

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
end_hunk_6
