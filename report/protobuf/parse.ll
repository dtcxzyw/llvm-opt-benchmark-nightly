inline.NumInlined: 1773
inline.NumDeleted: 737
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a

.noexc11.i.i:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pb ; 7 uses
  %i.pm = load ptr, ptr %i.db, align 8, !tbaa !11 ; 3 uses
  %i.pn = load ptr, ptr %42, align 8, !tbaa !7    ; 3 uses
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pm, %i.pn
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc11.i.i
  %i.pr = icmp ugt i64 %i.pq, 9223372036854775776
  br i1 %i.pr, label %.noexc.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, !prof !21

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.cq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp33.i.i

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cq
  %i.ps = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pq) #24
          to label %.noexc30.i.i.i.i unwind label %.loopexit32.i.i

.noexc30.i.i.i.i:                                 ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, %.noexc11.i.i
  %i.pt = phi ptr [ null, %.noexc11.i.i ], [ %i.ps, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.pt, ptr %i.pl, align 8, !tbaa !7
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 2 uses
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !11
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pq
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !20
  %i.px = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.pn, ptr %i.pm, ptr noundef %i.pt)
          to label %bb.ct unwind label %bb.cr

bb.cr:                                            ; preds = %.noexc30.i.i.i.i
  %i.py = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pz = load ptr, ptr %i.pl, align 8, !tbaa !7  ; 3 uses
  %.not.i.i.i.i.i3.i.i.i = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i.i.i3.i.i.i, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !20
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %i.pz to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qe) #25
  br label %bb.cw

bb.ct:                                            ; preds = %.noexc30.i.i.i.i
  store ptr %i.px, ptr %i.pu, align 8, !tbaa !11
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.qg = load i64, ptr %i.dm, align 8, !tbaa !67
  store i64 %i.qg, ptr %i.qf, align 8, !tbaa !67
  br i1 %i.pe, label %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ct, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.qp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.pk, %bb.ct ] ; 4 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.qo, %.lr.ph.i.i.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.ct ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.qh = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !119, !noalias !116
  store <2 x ptr> %i.qh, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !116, !noalias !119
  %i.qi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16
  %i.qj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !20, !alias.scope !119, !noalias !116
  store ptr %i.qk, ptr %i.qi, align 8, !tbaa !20, !alias.scope !116, !noalias !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !119, !noalias !116
  %i.ql = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 24
  %i.qm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 24
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !67, !alias.scope !119, !noalias !116
  store i64 %i.qn, ptr %i.ql, align 8, !tbaa !67, !alias.scope !116, !noalias !119
  %i.qo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i = icmp eq ptr %i.qo, %i.nz
  br i1 %.not.i.i.i.i4.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !121

_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.ct
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.pk, %bb.ct ], [ %i.qp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 32
  %.not.i38.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i38.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.pb) #25
  br label %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

.loopexit32.i.i:                                  ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit34.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cw

.loopexit.split-lp33.i.i:                         ; preds = %.noexc.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp35.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cw
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.cx

bb.cw:                                            ; preds = %.loopexit.split-lp33.i.i, %.loopexit32.i.i, %bb.cs, %bb.cr
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.py, %bb.cr ], [ %i.py, %bb.cs ], [ %lpad.loopexit34.i.i, %.loopexit32.i.i ], [ %lpad.loopexit.split-lp35.i.i, %.loopexit.split-lp33.i.i ]
  %i.qs = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i, 0
  %i.qt = call ptr @__cxa_begin_catch(ptr %i.qs) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pj) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.cy unwind label %bb.cv

bb.cx:                                            ; preds = %bb.cv
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  %i.qv = extractvalue { ptr, i32 } %i.qu, 0
  call void @__clang_call_terminate(ptr %i.qv) #28
  unreachable

bb.cy:                                            ; preds = %bb.cw
  unreachable

_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.cu, %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i
  store ptr %i.pk, ptr %51, align 8, !tbaa !69
  store ptr %i.qq, ptr %i.aj, align 8, !tbaa !72
  %i.qw = getelementptr inbounds nuw [32 x i8], ptr %i.pk, i64 %i.pi
  store ptr %i.qw, ptr %i.ak, align 8, !tbaa !73
  br label %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit28.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.cp, %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp29.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.i.i, %bb.au, %.loopexit.split-lp.i.i, %bb.cv, %bb.cn, %bb.cm, %bb.ci
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %.pn33.pn.pn.i.i.i, %bb.ci ], [ %i.qr, %bb.cv ], [ %i.op, %bb.cm ], [ %i.op, %bb.cn ], [ %lpad.loopexit.split-lp29.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit28.i.i, %.loopexit.i.i ], [ %.pn.pn.i332, %bb.au ]
  call fastcc void @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %42) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  br label %.body.i151

_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57.i.i.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit
  %.val.i.i.i.i812 = phi ptr [ %.val.i.i.i.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit ], [ %.val.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57.i.i.i ], [ %.val.i.i.i.i, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i ], [ %i.pk, %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ]
  %.1.i.i = phi i1 [ false, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57.i.i.i ], [ %.0158.i.i, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i ], [ %.0158.i.i, %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.qx = load ptr, ptr %42, align 8, !tbaa !7    ; 3 uses
  %i.qy = load ptr, ptr %i.db, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.qx, %i.qy
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i154

.lr.ph.i.i.i.i.i.i154:                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.re, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.qx, %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i ] ; 3 uses
  %i.qz = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i154
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !17
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rd) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i12.i.i = icmp eq ptr %i.re, %i.qy
  br i1 %.not.i.i.i.i12.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i154, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %42, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i
  %i.rf = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.qx, %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.rf, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.rg = load ptr, ptr %i.dc, align 8, !tbaa !20
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = ptrtoint ptr %i.rf to i64
  %i.rj = sub i64 %i.rh, %i.ri
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rj) #25
  br label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i: ; preds = %bb.cz, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  %i.rk = load ptr, ptr %43, align 8, !tbaa !22, !noalias !82 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.gf, %i.rk
  br i1 %.not.i31.i, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !122

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i: ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i
  %.pre150.i = load ptr, ptr %i.cw, align 8, !tbaa !11
  %65 = zext i1 %.1.i.i to i8
  br label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i: ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i, %bb.al
  %i.rl = phi ptr [ %i.gd, %bb.al ], [ %.pre150.i, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ] ; 2 uses
  %i.rm = phi ptr [ %i.ge, %bb.al ], [ %i.rk, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ] ; 3 uses
  %.0.lcssa.i.i = phi i8 [ 1, %bb.al ], [ %65, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ]
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_125flagfile_needs_processingE, align 1
  %.not4.i.i.i.i155 = icmp eq ptr %i.rm, %i.rl
  br i1 %.not4.i.i.i.i155, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162, label %.lr.ph.i.i.i.i156

.lr.ph.i.i.i.i156:                                ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159
  %.05.i.i.i.i157 = phi ptr [ %i.rs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159 ], [ %i.rm, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i ] ; 3 uses
  %i.rn = load ptr, ptr %.05.i.i.i.i157, align 8, !tbaa !12 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i157, i64 16 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i156
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !17
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rr) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159: ; preds = %.lr.ph.i.i.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158
  %i.rs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i157, i64 32 ; 2 uses
  %.not.i.i.i32.i = icmp eq ptr %i.rs, %i.rl
  br i1 %.not.i.i.i32.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160, label %.lr.ph.i.i.i.i156, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159
  %.pr.i.i161 = load ptr, ptr %43, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i
  %i.rt = phi ptr [ %.pr.i.i161, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160 ], [ %i.rm, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i ] ; 3 uses
  %.not.i.i1.i.i163 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i1.i.i163, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162
  %i.ru = load ptr, ptr %i.ec, align 8, !tbaa !20
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = ptrtoint ptr %i.rt to i64
  %i.rx = sub i64 %i.rv, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %i.rt, i64 noundef %i.rx) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.da, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  br label %bb.dc

.body.i151:                                       ; preds = %.body.i.i, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %i.gc, %bb.ak ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %43) #27
  br label %bb.db

bb.db:                                            ; preds = %.body.i151, %bb.aj
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i151 ], [ %i.gb, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  br label %bb.ds

bb.dc:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %.noexc168
  %.0.i = phi i8 [ %.0.lcssa.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ], [ 1, %.noexc168 ] ; 2 uses
  %.b21.i = load i1, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_124fromenv_needs_processingE, align 1
  br i1 %.b21.i, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  invoke void @_ZNK4absl12lts_2025051214flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %44, ptr noundef nonnull align 8 dereferenceable(120) @_Z13FLAGS_fromenvB5cxx11)
          to label %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i unwind label %bb.dg

_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i: ; preds = %bb.dd
  %i.ry = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116ReadFlagsFromEnvERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EEb(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %51, i1 noundef zeroext true)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i
  %66 = icmp ne i8 %.0.i, 0
  %67 = and i1 %66, %i.ry
  %68 = zext i1 %67 to i8
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_124fromenv_needs_processingE, align 1
  %i.rz = load ptr, ptr %44, align 8, !tbaa !7    ; 3 uses
  %i.sa = load ptr, ptr %i.ed, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i34.i = icmp eq ptr %i.rz, %i.sa
  br i1 %.not4.i.i.i34.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i, label %.lr.ph.i.i.i35.i

.lr.ph.i.i.i35.i:                                 ; preds = %bb.de, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i
  %.05.i.i.i36.i = phi ptr [ %i.sg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i ], [ %i.rz, %bb.de ] ; 3 uses
  %i.sb = load ptr, ptr %.05.i.i.i36.i, align 8, !tbaa !12 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 16 ; 2 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i: ; preds = %.lr.ph.i.i.i35.i
  %i.se = load i64, ptr %i.sc, align 8, !tbaa !17
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.sf) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i: ; preds = %.lr.ph.i.i.i35.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i
  %i.sg = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 32 ; 2 uses
  %.not.i.i.i39.i = icmp eq ptr %i.sg, %i.sa
  br i1 %.not.i.i.i39.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i, label %.lr.ph.i.i.i35.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i
  %.pr.i41.i = load ptr, ptr %44, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i, %bb.de
  %i.sh = phi ptr [ %.pr.i41.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i ], [ %i.rz, %bb.de ] ; 3 uses
  %.not.i.i1.i43.i = icmp eq ptr %i.sh, null
  br i1 %.not.i.i1.i43.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i, label %bb.df

bb.df:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i
  %i.si = load ptr, ptr %i.ee, align 8, !tbaa !20
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = ptrtoint ptr %i.sh to i64
  %i.sl = sub i64 %i.sj, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %i.sh, i64 noundef %i.sl) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i: ; preds = %bb.df, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  br label %bb.dj

bb.dg:                                            ; preds = %bb.dd
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #27
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn25.i = phi { ptr, i32 } [ %i.sn, %bb.dh ], [ %i.sm, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  br label %bb.ds

bb.dj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i, %bb.dc
  %.1.i = phi i8 [ %68, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i ], [ %.0.i, %bb.dc ] ; 2 uses
  %.b22.i = load i1, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_127tryfromenv_needs_processingE, align 1
  br i1 %.b22.i, label %bb.dk, label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  invoke void @_ZNK4absl12lts_2025051214flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %45, ptr noundef nonnull align 8 dereferenceable(120) @_Z16FLAGS_tryfromenvB5cxx11)
          to label %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i unwind label %bb.dn

_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i: ; preds = %bb.dk
  %i.so = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116ReadFlagsFromEnvERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EEb(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %51, i1 noundef zeroext false)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i
  %69 = select i1 %i.so, i8 %.1.i, i8 0
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_127tryfromenv_needs_processingE, align 1
  %i.sp = load ptr, ptr %45, align 8, !tbaa !7    ; 3 uses
  %i.sq = load ptr, ptr %i.ef, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i47.i = icmp eq ptr %i.sp, %i.sq
  br i1 %.not4.i.i.i47.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i, label %.lr.ph.i.i.i48.i

.lr.ph.i.i.i48.i:                                 ; preds = %bb.dl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i
  %.05.i.i.i49.i = phi ptr [ %i.sw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i ], [ %i.sp, %bb.dl ] ; 3 uses
  %i.sr = load ptr, ptr %.05.i.i.i49.i, align 8, !tbaa !12 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.05.i.i.i49.i, i64 16 ; 2 uses
  %i.st = icmp eq ptr %i.sr, %i.ss
  br i1 %i.st, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i: ; preds = %.lr.ph.i.i.i48.i
  %i.su = load i64, ptr %i.ss, align 8, !tbaa !17
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.sv) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i: ; preds = %.lr.ph.i.i.i48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i
  %i.sw = getelementptr inbounds nuw i8, ptr %.05.i.i.i49.i, i64 32 ; 2 uses
  %.not.i.i.i52.i = icmp eq ptr %i.sw, %i.sq
  br i1 %.not.i.i.i52.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i, label %.lr.ph.i.i.i48.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i
  %.pr.i54.i = load ptr, ptr %45, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i, %bb.dl
  %i.sx = phi ptr [ %.pr.i54.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i ], [ %i.sp, %bb.dl ] ; 3 uses
  %.not.i.i1.i56.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i1.i56.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i, label %bb.dm

bb.dm:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i
  %i.sy = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.tb) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i: ; preds = %bb.dm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dk
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i
  %i.td = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %45) #27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn27.i = phi { ptr, i32 } [ %i.td, %bb.do ], [ %i.tc, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  br label %bb.ds

bb.dq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i, %bb.dj
  %.2.i = phi i8 [ %69, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i ], [ %.1.i, %bb.dj ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %bb.du unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.te = landingpad { ptr, i32 }
          catch ptr null
  %i.tf = extractvalue { ptr, i32 } %i.te, 0
  call void @__clang_call_terminate(ptr %i.tf) #28
  unreachable

bb.ds:                                            ; preds = %bb.dp, %bb.di, %bb.db
  %.pn27.pn.i = phi { ptr, i32 } [ %.pn27.i, %bb.dp ], [ %.pn25.i, %bb.di ], [ %.pn.pn.i, %bb.db ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %.body169 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %i.th = extractvalue { ptr, i32 } %i.tg, 0
  call void @__clang_call_terminate(ptr %i.th) #28
  unreachable

bb.du:                                            ; preds = %bb.dq
  %70 = trunc nuw i8 %.2.i to i1
  %i.ti = trunc nuw i8 %.0791384 to i1
  %i.tj = select i1 %70, i1 %i.ti, i1 false       ; 10 uses
  %i.tk = zext i1 %i.tj to i8                     ; 6 uses
  %.val125 = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.tl = getelementptr inbounds i8, ptr %.val125, i64 -32 ; 4 uses
  %i.tm = getelementptr inbounds i8, ptr %.val125, i64 -8 ; 6 uses
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !67
  %i.to = add i64 %i.tn, 1                        ; 4 uses
  store i64 %i.to, ptr %i.tm, align 8, !tbaa !67
  %i.tp = getelementptr inbounds i8, ptr %.val125, i64 -24 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !11 ; 3 uses
  %i.tr = load ptr, ptr %i.tl, align 8, !tbaa !7  ; 5 uses
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = sub i64 %i.ts, %i.tt
  %i.tv = ashr exact i64 %i.tu, 5
  %i.tw = icmp eq i64 %i.tv, %i.to
  br i1 %i.tw, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  store ptr %i.tl, ptr %i.aj, align 8, !tbaa !72
  %.not4.i.i.i.i.i = icmp eq ptr %i.tr, %i.tq
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.uc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.tr, %bb.dv ] ; 3 uses
  %i.tx = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ua = load i64, ptr %i.ty, align 8, !tbaa !17
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i171 = icmp eq ptr %i.uc, %i.tq
  br i1 %.not.i.i.i.i.i171, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.tl, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.dv
  %i.ud = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.tr, %bb.dv ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ud, null
  br i1 %.not.i.i1.i.i.i, label %.backedge, label %bb.dw, !llvm.loop !123

bb.dw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ue = getelementptr inbounds i8, ptr %.val125, i64 -16
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !20
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %i.ud to i64
  %i.ui = sub i64 %i.ug, %i.uh
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef %i.ui) #25
  br label %.backedge

.loopexit:                                        ; preds = %bb.hv, %.noexc281
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.loopexit.split-lp.loopexit:                      ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i
  %lpad.loopexit402 = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.hx, %bb.hu, %bb.ht, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit46.i, %bb.hd, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i244, %.noexc258, %bb.gv
  %lpad.loopexit.split-lp403 = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.dx:                                            ; preds = %bb.du
  %i.uj = getelementptr inbounds nuw [32 x i8], ptr %i.tr, i64 %i.to ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !12 ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !25 ; 3 uses
  %.val = load ptr, ptr %51, align 8, !tbaa !69
  %i.un = ptrtoint ptr %.val125 to i64
  %i.uo = ptrtoint ptr %.val to i64
  %i.up = sub i64 %i.un, %i.uo
  %i.uq = icmp ne i64 %i.up, 32                   ; 3 uses
  %i.ur = icmp eq i64 %i.um, 0
  br i1 %i.ur, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.dx
  %lhsc = load i8, ptr %i.uk, align 1
  %i.us = icmp eq i8 %lhsc, 45
  br i1 %i.us, label %bb.dy, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread

bb.dy:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.ut = add i64 %i.um, -1                       ; 2 uses
  %i.uu = icmp eq i64 %i.ut, 0
  br i1 %i.uu, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread: ; preds = %bb.dx, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %bb.dy
  br i1 %i.uq, label %bb.dz, label %bb.ei, !prof !21

bb.dz:                                            ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %55)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %57)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.uv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.ec unwind label %bb.ef     ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  %i.uw = load ptr, ptr %56, align 8, !tbaa !12   ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.uy = icmp eq ptr %i.uw, %i.ux
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.ec
  %i.uz = load i64, ptr %i.ux, align 8, !tbaa !17
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.va) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  %i.vb = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.vb(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 812, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit176 unwind label %bb.eg, !inline_history !31

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  unreachable

.loopexit409:                                     ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i184
  %lpad.loopexit411 = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.loopexit.split-lp410:                            ; preds = %bb.el
  %lpad.loopexit.split-lp412 = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.ed:                                            ; preds = %bb.dz
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.ee:                                            ; preds = %bb.ea
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.ef:                                            ; preds = %bb.eb
  %i.ve = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vf = load ptr, ptr %56, align 8, !tbaa !12   ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.ef
  %i.vi = load i64, ptr %i.vg, align 8, !tbaa !17
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.ee
  %.pn105 = phi { ptr, i32 } [ %i.vd, %bb.ee ], [ %i.ve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %i.ve, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  br label %bb.eh

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %.pn107 = phi { ptr, i32 } [ %i.vk, %bb.eg ], [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ] ; 2 uses
  %i.vl = load ptr, ptr %54, align 8, !tbaa !12   ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.vn = icmp eq ptr %i.vl, %i.vm
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.eh
  %i.vo = load i64, ptr %i.vm, align 8, !tbaa !17
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ed
  %.pn107.pn = phi { ptr, i32 } [ %i.vc, %bb.ed ], [ %.pn107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %.pn107, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
  br i1 %or.cond.i, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aar = load ptr, ptr %i.tp, align 8, !tbaa !11, !noalias !129
  %i.aas = load ptr, ptr %i.tl, align 8, !tbaa !7, !noalias !129 ; 2 uses
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = sub i64 %i.aat, %i.aau
  %i.aaw = ashr exact i64 %i.aav, 5
  %i.aax = load i64, ptr %i.tm, align 8, !tbaa !67, !noalias !129 ; 2 uses
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = icmp eq i64 %i.aay, 1
  br i1 %i.aaz, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27, !noalias !129
  store i64 32, ptr %25, align 8, !noalias !129
  store ptr @.str.54, ptr %i.et, align 8, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27, !noalias !129
  %i.aba = load ptr, ptr %.05.i393, align 8, !tbaa !37, !noalias !129
  %i.abb = load ptr, ptr %i.aba, align 8, !noalias !129
  %i.abc = invoke { i64, ptr } %i.abb(ptr noundef nonnull align 8 dereferenceable(8) %.05.i393)
          to label %.noexc223 unwind label %bb.gl, !inline_history !132 ; 2 uses

.noexc223:                                        ; preds = %bb.fz
  %i.abd = extractvalue { i64, ptr } %i.abc, 0
  %i.abe = extractvalue { i64, ptr } %i.abc, 1
  store i64 %i.abd, ptr %26, align 8, !tbaa !23, !noalias !129
  store ptr %i.abe, ptr %.sroa.2.0..sroa_idx.i65.i, align 8, !tbaa !24, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27, !noalias !129
  store i64 1, ptr %27, align 8, !noalias !129
  store ptr @.str.25, ptr %i.eu, align 8, !noalias !129
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull align 8 dereferenceable(48) %27)
          to label %.noexc224 unwind label %bb.gl

.noexc224:                                        ; preds = %.noexc223
  %i.abf = load ptr, ptr %24, align 8, !tbaa !12, !noalias !129
  %i.abg = load i64, ptr %i.ev, align 8, !tbaa !25, !noalias !129
  invoke void @_ZN4absl12lts_2025051214flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.abg, ptr %i.abf, i1 noundef zeroext true)
          to label %bb.ga unwind label %bb.gb, !noalias !129

bb.ga:                                            ; preds = %.noexc224
  %i.abh = load ptr, ptr %24, align 8, !tbaa !12, !noalias !129 ; 2 uses
  %i.abi = icmp eq ptr %i.abh, %i.ew
  br i1 %i.abi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i: ; preds = %bb.ga
  %i.abj = load i64, ptr %i.ew, align 8, !tbaa !17, !noalias !129
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abk) #25, !noalias !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27, !noalias !129
  br label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit

bb.gb:                                            ; preds = %.noexc224
  %i.abl = landingpad { ptr, i32 }
          cleanup
  %i.abm = load ptr, ptr %24, align 8, !tbaa !12, !noalias !129 ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.ew
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i: ; preds = %bb.gb
  %i.abo = load i64, ptr %i.ew, align 8, !tbaa !17, !noalias !129
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #25, !noalias !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27, !noalias !129
  br label %.body230

bb.gc:                                            ; preds = %bb.fy
  %i.abq = add i64 %i.aax, 1                      ; 2 uses
  store i64 %i.abq, ptr %i.tm, align 8, !tbaa !67, !noalias !129
  %i.abr = getelementptr inbounds nuw [32 x i8], ptr %i.aas, i64 %i.abq ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !12, !noalias !129 ; 8 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !25, !noalias !129 ; 7 uses
  %i.abv = icmp eq i64 %i.abu, 0
  br i1 %i.abv, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.abw = load i8, ptr %i.abs, align 1, !tbaa !17, !noalias !129
  %i.abx = icmp eq i8 %i.abw, 45
  br i1 %i.abx, label %bb.ge, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit

bb.ge:                                            ; preds = %bb.gd
  %i.aby = load ptr, ptr %.05.i393, align 8, !tbaa !37, !noalias !129
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 56
  %i.aca = load ptr, ptr %i.abz, align 8, !noalias !129
  %i.acb = invoke noundef ptr %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %.05.i393)
          to label %.noexc225 unwind label %bb.gl, !inline_history !132

.noexc225:                                        ; preds = %bb.ge
  %i.acc = icmp eq ptr %i.acb, @_ZN4absl12lts_2025051213base_internal11FastTypeTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9kDummyVarE
  br i1 %i.acc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i213, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i213: ; preds = %.noexc225
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27, !noalias !129
  %i.acd = add i64 %i.abu, -1
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  invoke fastcc void @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_117SplitNameAndValueESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %28, i64 %i.acd, ptr nonnull %i.ace)
          to label %.noexc226 unwind label %bb.gl

.noexc226:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i213
  %.sroa.098.0.copyload.i = load i64, ptr %i.eh, align 8, !tbaa !23, !noalias !129 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i214, align 8, !tbaa !24, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27, !noalias !129
  %i.acf = icmp eq i64 %.sroa.098.0.copyload.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27, !noalias !129
  br i1 %i.acf, label %.critedge.i, label %bb.gf

bb.gf:                                            ; preds = %.noexc226
  invoke fastcc void @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_110LocateFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %29, i64 %.sroa.098.0.copyload.i, ptr %.sroa.6.0.copyload.i)
          to label %.noexc227 unwind label %bb.gl

.noexc227:                                        ; preds = %bb.gf
  %i.acg = load ptr, ptr %i.ei, align 8, !tbaa !35, !noalias !129
  %.not41.i = icmp eq ptr %i.acg, null
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27, !noalias !129
  br i1 %.not41.i, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit, label %bb.gg

.critedge.i:                                      ; preds = %.noexc226
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27, !noalias !129
  br label %bb.gg

bb.gg:                                            ; preds = %.critedge.i, %.noexc227
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27, !noalias !129
  %i.ach = load ptr, ptr %.05.i393, align 8, !tbaa !37, !noalias !129
  %i.aci = load ptr, ptr %i.ach, align 8, !noalias !129
  %i.acj = invoke { i64, ptr } %i.aci(ptr noundef nonnull align 8 dereferenceable(8) %.05.i393)
          to label %.noexc228 unwind label %bb.gl, !inline_history !132 ; 2 uses

.noexc228:                                        ; preds = %bb.gg
  %i.ack = extractvalue { i64, ptr } %i.acj, 0
  %i.acl = extractvalue { i64, ptr } %i.acj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !133
  store i64 33, ptr %11, align 8, !noalias !133
  store ptr @.str.55, ptr %i.ej, align 8, !noalias !133
  store i64 %i.ack, ptr %i.ek, align 8, !noalias !133
  store ptr %i.acl, ptr %i.el, align 8, !noalias !133
  store i64 16, ptr %i.em, align 8, !noalias !133
  store ptr @.str.56, ptr %i.en, align 8, !noalias !133
  store i64 %i.abu, ptr %i.eo, align 8, !noalias !133
  store ptr %i.abs, ptr %i.ep, align 8, !noalias !133
  store i64 2, ptr %i.eq, align 8, !noalias !133
  store ptr @.str.57, ptr %i.er, align 8, !noalias !133
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr nonnull %11, i64 5)
          to label %.noexc229 unwind label %bb.gl

.noexc229:                                        ; preds = %.noexc228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !133
  %i.acm = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8, !noalias !129
  invoke void %i.acm(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 590, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit.i unwind label %bb.gh, !noalias !129, !inline_history !136

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit.i: ; preds = %.noexc229
  %i.acn = load ptr, ptr %30, align 8, !tbaa !12, !noalias !129 ; 2 uses
  %i.aco = icmp eq ptr %i.acn, %i.es
  br i1 %i.aco, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit.i
  %i.acp = load i64, ptr %i.es, align 8, !tbaa !17, !noalias !129
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acq) #25, !noalias !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !129
  br label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit

bb.gh:                                            ; preds = %.noexc229
  %i.acr = landingpad { ptr, i32 }
          cleanup
  %i.acs = load ptr, ptr %30, align 8, !tbaa !12, !noalias !129 ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.es
  br i1 %i.act, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %bb.gh
  %i.acu = load i64, ptr %i.es, align 8, !tbaa !17, !noalias !129
  %i.acv = add i64 %i.acu, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acv) #25, !noalias !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !129
  br label %.body230

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, %.noexc227, %.noexc225, %bb.gd, %bb.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %bb.fp, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.0116.0.sink.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ 1, %bb.fo ], [ %.sroa.0.0.sink.i1059, %bb.fp ], [ %.sroa.0.0.sink.i1059, %bb.fx ], [ 0, %bb.gc ], [ %i.abu, %bb.gd ], [ %i.abu, %.noexc225 ], [ %i.abu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ], [ %i.abu, %.noexc227 ]
  %.sroa.9.0.sink.i = phi ptr [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ], [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i ], [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %.str.50..str.51.i, %bb.fo ], [ %.sroa.6.0.sink.i1060, %bb.fp ], [ %.sroa.6.0.sink.i1060, %bb.fx ], [ %i.abs, %bb.gc ], [ %i.abs, %bb.gd ], [ %i.abs, %.noexc225 ], [ %i.abs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ], [ %i.abs, %.noexc227 ]
  %71 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %i.tj, %bb.fo ], [ %i.tj, %bb.fp ], [ %i.tj, %bb.fx ], [ %i.tj, %bb.gc ], [ %i.tj, %bb.gd ], [ %i.tj, %.noexc225 ], [ %i.tj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ], [ %i.tj, %.noexc227 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  store ptr %i.fj, ptr %63, align 8, !tbaa !41
  store i64 0, ptr %i.fk, align 8, !tbaa !25
  store i8 0, ptr %i.fj, align 8, !tbaa !17
  %i.acw = invoke noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal21PrivateHandleAccessor9ParseFromERNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEENS1_15FlagSettingModeENS1_11ValueSourceERNSt7__cxx1112basic_stringIcS7_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %.05.i393, i64 %.sroa.0116.0.sink.i, ptr %.sroa.9.0.sink.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.gi unwind label %.loopexit405

bb.gi:                                            ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit
  br i1 %i.acw, label %bb.go, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.acx = load ptr, ptr %.05.i393, align 8, !tbaa !37
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 24
  %i.acz = load ptr, ptr %i.acy, align 8
  %i.ada = invoke noundef zeroext i1 %i.acz(ptr noundef nonnull align 8 dereferenceable(8) %.05.i393)
          to label %bb.gk unwind label %.loopexit405

bb.gk:                                            ; preds = %bb.gj
  br i1 %i.ada, label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit, label %bb.gn, !llvm.loop !123

bb.gl:                                            ; preds = %.noexc228, %bb.gg, %bb.gf, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i213, %bb.ge, %.noexc223, %bb.fz, %.noexc221, %bb.fu, %.noexc219, %bb.fq, %.noexc217, %bb.fl, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_110LocateFlagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread390
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %.body230

.loopexit405:                                     ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit, %bb.gj, %bb.gn, %_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit407 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp406:                            ; preds = %bb.gr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit.split-lp406, %.loopexit405
  %lpad.phi408 = phi { ptr, i32 } [ %lpad.loopexit407, %.loopexit405 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp406 ]
  %i.adc = load ptr, ptr %63, align 8, !tbaa !12  ; 2 uses
  %i.add = icmp eq ptr %i.adc, %i.fj
  br i1 %i.add, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %bb.gm
  %i.ade = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.adf = add i64 %i.ade, 1
  call void @_ZdlPvm(ptr noundef %i.adc, i64 noundef %i.adf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  br label %.body230

bb.gn:                                            ; preds = %bb.gk
  %i.adg = load ptr, ptr %63, align 8, !tbaa !12
  %i.adh = load i64, ptr %i.fk, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2025051214flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.adh, ptr %i.adg, i1 noundef zeroext true)
          to label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit405

bb.go:                                            ; preds = %bb.gi
  %i.adi = load ptr, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115specified_flagsE, align 8, !tbaa !29 ; 4 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8 ; 3 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !77 ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 16 ; 2 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !137
  %.not.i235 = icmp eq ptr %i.adk, %i.adm
  br i1 %.not.i235, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  store ptr %.05.i393, ptr %i.adk, align 8, !tbaa !35
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  store ptr %i.adn, ptr %i.adj, align 8, !tbaa !77
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit

bb.gq:                                            ; preds = %bb.go
  %i.ado = load ptr, ptr %i.adi, align 8, !tbaa !75 ; 4 uses
  %i.adp = ptrtoint ptr %i.adk to i64
  %i.adq = ptrtoint ptr %i.ado to i64
  %i.adr = sub i64 %i.adp, %i.adq                 ; 6 uses
  %i.ads = icmp eq i64 %i.adr, 9223372036854775800
  br i1 %i.ads, label %bb.gr, label %_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.gr:                                            ; preds = %bb.gq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc239 unwind label %.loopexit.split-lp406

.noexc239:                                        ; preds = %bb.gr
  unreachable

_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.gq
  %i.adt = ashr exact i64 %i.adr, 3               ; 3 uses
  %.sroa.speculated.i.i.i236 = call i64 @llvm.umax.i64(i64 %i.adt, i64 1)
  %i.adu = add nsw i64 %.sroa.speculated.i.i.i236, %i.adt ; 2 uses
  %i.adv = icmp ult i64 %i.adu, %i.adt
  %i.adw = call i64 @llvm.umin.i64(i64 %i.adu, i64 1152921504606846975)
  %i.adx = select i1 %i.adv, i64 1152921504606846975, i64 %i.adw ; 3 uses
  %.not.i.i.i237 = icmp ne i64 %i.adx, 0
  call void @llvm.assume(i1 %.not.i.i.i237)
  %i.ady = shl nuw nsw i64 %i.adx, 3
  %i.adz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ady) #24
          to label %.noexc240 unwind label %.loopexit405 ; 4 uses

.noexc240:                                        ; preds = %_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.aea = getelementptr inbounds i8, ptr %i.adz, i64 %i.adr ; 2 uses
  store ptr %.05.i393, ptr %i.aea, align 8, !tbaa !35
  %i.aeb = icmp sgt i64 %i.adr, 0
  br i1 %i.aeb, label %bb.gs, label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.gs:                                            ; preds = %.noexc240
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adz, ptr align 8 %i.ado, i64 %i.adr, i1 false)
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.gs, %.noexc240
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %.not.i17.i.i238 = icmp eq ptr %i.ado, null
  br i1 %.not.i17.i.i238, label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ado, i64 noundef %i.adr) #25
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.gt, %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.adz, ptr %i.adi, align 8, !tbaa !75
  store ptr %i.aec, ptr %i.adj, align 8, !tbaa !77
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %i.adx
  store ptr %i.aed, ptr %i.adl, align 8, !tbaa !137
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.gp, %bb.gn, %bb.gk
  %.281.shrunk = phi i1 [ %71, %bb.gk ], [ false, %bb.gn ], [ %71, %bb.gp ], [ %71, %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %.281 = zext i1 %.281.shrunk to i8
  %i.aee = load ptr, ptr %63, align 8, !tbaa !12  ; 2 uses
  %i.aef = icmp eq ptr %i.aee, %i.fj
  br i1 %i.aef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit
  %i.aeg = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.aeh = add i64 %i.aeg, 1
  call void @_ZdlPvm(ptr noundef %i.aee, i64 noundef %i.aeh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  br label %bb.gu

bb.gu:                                            ; preds = %bb.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %bb.fd
  %.483 = phi i8 [ %i.tk, %bb.fd ], [ %.281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %i.tk, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br label %.backedge

.backedge:                                        ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.dw, %bb.ej, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i189, %bb.gu
  %.079.be = phi i8 [ %.483, %bb.gu ], [ %i.tk, %bb.dw ], [ %i.tk, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i189 ], [ %i.tk, %bb.ej ], [ %i.tk, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %.val128 = load ptr, ptr %51, align 8, !tbaa !78
  %.val129 = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.aei = icmp eq ptr %.val128, %.val129
  br i1 %i.aei, label %..loopexit1065.loopexit_crit_edge, label %.lr.ph1385

.body230:                                         ; preds = %bb.fe, %bb.ff, %bb.fi, %bb.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %bb.eu
  %.pn101.pn.pn = phi { ptr, i32 } [ %.pn101.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %i.xh, %bb.eu ], [ %i.yn, %bb.fi ], [ %i.yk, %bb.ff ], [ %i.yj, %bb.fe ], [ %lpad.phi408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.adb, %bb.gl ], [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ], [ %i.zv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i ], [ %i.aal, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i ], [ %i.abl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i ], [ %i.acr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br label %.body169

..loopexit1065.loopexit_crit_edge:                ; preds = %.backedge
  %i.aej = trunc nuw i8 %.079.be to i1
  br label %.loopexit1065

.loopexit1065:                                    ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE5clearEv.exit, %..loopexit1065.loopexit_crit_edge, %.thread1061
  %.786 = phi i1 [ %i.tj, %.thread1061 ], [ %i.aej, %..loopexit1065.loopexit_crit_edge ], [ true, %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE5clearEv.exit ]
  %i.aek = load ptr, ptr %50, align 8, !tbaa !22
  %i.ael = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.aem = icmp eq ptr %i.aek, %i.ael
  br i1 %i.aem, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i, label %bb.gv

bb.gv:                                            ; preds = %.loopexit1065
  invoke void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl15AssertValidTypeEPKvPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(120) @_Z14FLAGS_flagfileB5cxx11, ptr noundef nonnull @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2025051214flags_internal16GenRuntimeTypeIdISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEPKSt9type_infov)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc258:                                        ; preds = %bb.gv
  invoke void @_ZN4absl12lts_2025051214flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(120) @_Z14FLAGS_flagfileB5cxx11, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %.noexc259 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %.noexc258
  %i.aen = load atomic i8, ptr @_ZGVZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex acquire, align 8
  %i.aeo = icmp eq i8 %i.aen, 0
  br i1 %i.aeo, label %bb.gw, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i244, !prof !26

bb.gw:                                            ; preds = %.noexc259
  %i.aep = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex) #27
  %.not.i.i257 = icmp eq i32 %i.aep, 0
  br i1 %.not.i.i257, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i244, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  store i64 0, ptr @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex, align 8, !tbaa !27
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex) #27
  br label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i244

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i244: ; preds = %bb.gx, %bb.gw, %.noexc259
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc260:                                        ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i244
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_125flagfile_needs_processingE, align 1
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i unwind label %bb.gy

bb.gy:                                            ; preds = %.noexc260
  %i.aeq = landingpad { ptr, i32 }
          catch ptr null
  %i.aer = extractvalue { ptr, i32 } %i.aeq, 0
  call void @__clang_call_terminate(ptr %i.aer) #28
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i:      ; preds = %.noexc260, %.loopexit1065
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNK4absl12lts_2025051214flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) @_Z13FLAGS_fromenvB5cxx11)
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc261:                                        ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i
  %i.aes = load ptr, ptr %7, align 8, !tbaa !22   ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !22 ; 2 uses
  %i.aev = icmp eq ptr %i.aes, %i.aeu             ; 2 uses
  br i1 %i.aev, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i252, label %.lr.ph.i.i.i.i245

.lr.ph.i.i.i.i245:                                ; preds = %.noexc261, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i248
  %.05.i.i.i.i246 = phi ptr [ %i.afb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i248 ], [ %i.aes, %.noexc261 ] ; 3 uses
  %i.aew = load ptr, ptr %.05.i.i.i.i246, align 8, !tbaa !12 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i246, i64 16 ; 2 uses
  %i.aey = icmp eq ptr %i.aew, %i.aex
  br i1 %i.aey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i247: ; preds = %.lr.ph.i.i.i.i245
  %i.aez = load i64, ptr %i.aex, align 8, !tbaa !17
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.afa) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i248

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i248: ; preds = %.lr.ph.i.i.i.i245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i247
  %i.afb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i246, i64 32 ; 2 uses
  %.not.i.i.i.i249 = icmp eq ptr %i.afb, %i.aeu
  br i1 %.not.i.i.i.i249, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i250, label %.lr.ph.i.i.i.i245, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i250: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i248
  %.pr.i.i251 = load ptr, ptr %7, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i252

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i252: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i250, %.noexc261
  %i.afc = phi ptr [ %.pr.i.i251, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i250 ], [ %i.aes, %.noexc261 ] ; 3 uses
  %.not.i.i1.i.i253 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i1.i.i253, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i254, label %bb.gz

bb.gz:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i252
  %i.afd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !20
  %i.aff = ptrtoint ptr %i.afe to i64
  %i.afg = ptrtoint ptr %i.afc to i64
  %i.afh = sub i64 %i.aff, %i.afg
  call void @_ZdlPvm(ptr noundef nonnull %i.afc, i64 noundef %i.afh) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i254

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i254: ; preds = %bb.gz, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %i.aev, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl15AssertValidTypeEPKvPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(120) @_Z13FLAGS_fromenvB5cxx11, ptr noundef nonnull @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2025051214flags_internal16GenRuntimeTypeIdISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEPKSt9type_infov)
          to label %.noexc.i unwind label %bb.hc

.noexc.i:                                         ; preds = %bb.ha
  invoke void @_ZN4absl12lts_2025051214flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(120) @_Z13FLAGS_fromenvB5cxx11, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN4absl12lts_202505127SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i unwind label %bb.hc

_ZN4absl12lts_202505127SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i: ; preds = %.noexc.i
  %i.afi = load ptr, ptr %8, align 8, !tbaa !7    ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i6.i = icmp eq ptr %i.afi, %i.afk
  br i1 %.not4.i.i.i6.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i, label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %_ZN4absl12lts_202505127SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i10.i
  %.05.i.i.i8.i = phi ptr [ %i.afq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i10.i ], [ %i.afi, %_ZN4absl12lts_202505127SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i ] ; 3 uses
  %i.afl = load ptr, ptr %.05.i.i.i8.i, align 8, !tbaa !12 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.05.i.i.i8.i, i64 16 ; 2 uses
  %i.afn = icmp eq ptr %i.afl, %i.afm
  br i1 %i.afn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i9.i: ; preds = %.lr.ph.i.i.i7.i
  %i.afo = load i64, ptr %i.afm, align 8, !tbaa !17
  %i.afp = add i64 %i.afo, 1
  call void @_ZdlPvm(ptr noundef %i.afl, i64 noundef %i.afp) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i10.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i10.i: ; preds = %.lr.ph.i.i.i7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i9.i
  %i.afq = getelementptr inbounds nuw i8, ptr %.05.i.i.i8.i, i64 32 ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %i.afq, %i.afk
  br i1 %.not.i.i.i11.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i12.i, label %.lr.ph.i.i.i7.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i12.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i10.i
  %.pr.i13.i = load ptr, ptr %8, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i12.i, %_ZN4absl12lts_202505127SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i
  %i.afr = phi ptr [ %.pr.i13.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i12.i ], [ %i.afi, %_ZN4absl12lts_202505127SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i ] ; 3 uses
  %.not.i.i1.i15.i = icmp eq ptr %i.afr, null
  br i1 %.not.i.i1.i15.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i, label %bb.hb

bb.hb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i
  %i.afs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !20
  %i.afu = ptrtoint ptr %i.aft to i64
  %i.afv = ptrtoint ptr %i.afr to i64
  %i.afw = sub i64 %i.afu, %i.afv
  call void @_ZdlPvm(ptr noundef nonnull %i.afr, i64 noundef %i.afw) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i: ; preds = %bb.hb, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.hd

bb.hc:                                            ; preds = %.noexc.i, %bb.ha
  %i.afx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body169

bb.hd:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNK4absl12lts_2025051214flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) @_Z16FLAGS_tryfromenvB5cxx11)
end_hunk_1
