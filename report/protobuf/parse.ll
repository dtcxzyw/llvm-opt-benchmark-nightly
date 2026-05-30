inline.NumInlined: 1773
inline.NumDeleted: 737
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
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
  %i.rl = zext i1 %.1.i.i to i8
  br label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i: ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i, %bb.al
  %i.rm = phi ptr [ %i.gd, %bb.al ], [ %.pre150.i, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ] ; 2 uses
  %i.rn = phi ptr [ %i.ge, %bb.al ], [ %i.rk, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ] ; 3 uses
  %.0.lcssa.i.i = phi i8 [ 1, %bb.al ], [ %i.rl, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ]
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_125flagfile_needs_processingE, align 1
  %.not4.i.i.i.i155 = icmp eq ptr %i.rn, %i.rm
  br i1 %.not4.i.i.i.i155, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162, label %.lr.ph.i.i.i.i156

.lr.ph.i.i.i.i156:                                ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159
  %.05.i.i.i.i157 = phi ptr [ %i.rt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159 ], [ %i.rn, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i ] ; 3 uses
  %i.ro = load ptr, ptr %.05.i.i.i.i157, align 8, !tbaa !12 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i157, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i156
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !17
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159: ; preds = %.lr.ph.i.i.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158
  %i.rt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i157, i64 32 ; 2 uses
  %.not.i.i.i32.i = icmp eq ptr %i.rt, %i.rm
  br i1 %.not.i.i.i32.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160, label %.lr.ph.i.i.i.i156, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159
  %.pr.i.i161 = load ptr, ptr %43, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i
  %i.ru = phi ptr [ %.pr.i.i161, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160 ], [ %i.rn, %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i ] ; 3 uses
  %.not.i.i1.i.i163 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i1.i.i163, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162
  %i.rv = load ptr, ptr %i.ec, align 8, !tbaa !20
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = ptrtoint ptr %i.ru to i64
  %i.ry = sub i64 %i.rw, %i.rx
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef %i.ry) #25
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
  %i.rz = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116ReadFlagsFromEnvERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EEb(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %51, i1 noundef zeroext true)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i
  %65 = trunc nuw i8 %.0.i to i1
  %i.sa = and i1 %i.rz, %65
  %i.sb = zext i1 %i.sa to i8
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_124fromenv_needs_processingE, align 1
  %i.sc = load ptr, ptr %44, align 8, !tbaa !7    ; 3 uses
  %i.sd = load ptr, ptr %i.ed, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i34.i = icmp eq ptr %i.sc, %i.sd
  br i1 %.not4.i.i.i34.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i, label %.lr.ph.i.i.i35.i

.lr.ph.i.i.i35.i:                                 ; preds = %bb.de, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i
  %.05.i.i.i36.i = phi ptr [ %i.sj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i ], [ %i.sc, %bb.de ] ; 3 uses
  %i.se = load ptr, ptr %.05.i.i.i36.i, align 8, !tbaa !12 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 16 ; 2 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i: ; preds = %.lr.ph.i.i.i35.i
  %i.sh = load i64, ptr %i.sf, align 8, !tbaa !17
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.si) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i: ; preds = %.lr.ph.i.i.i35.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i
  %i.sj = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 32 ; 2 uses
  %.not.i.i.i39.i = icmp eq ptr %i.sj, %i.sd
  br i1 %.not.i.i.i39.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i, label %.lr.ph.i.i.i35.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i
  %.pr.i41.i = load ptr, ptr %44, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i, %bb.de
  %i.sk = phi ptr [ %.pr.i41.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i40.i ], [ %i.sc, %bb.de ] ; 3 uses
  %.not.i.i1.i43.i = icmp eq ptr %i.sk, null
  br i1 %.not.i.i1.i43.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i, label %bb.df

bb.df:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i
  %i.sl = load ptr, ptr %i.ee, align 8, !tbaa !20
  %i.sm = ptrtoint ptr %i.sl to i64
  %i.sn = ptrtoint ptr %i.sk to i64
  %i.so = sub i64 %i.sm, %i.sn
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.so) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i: ; preds = %bb.df, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  br label %bb.dj

bb.dg:                                            ; preds = %bb.dd
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #27
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn25.i = phi { ptr, i32 } [ %i.sq, %bb.dh ], [ %i.sp, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  br label %bb.ds

bb.dj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i, %bb.dc
  %.1.i = phi i8 [ %i.sb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i ], [ %.0.i, %bb.dc ] ; 2 uses
  %.b22.i = load i1, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_127tryfromenv_needs_processingE, align 1
  br i1 %.b22.i, label %bb.dk, label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  invoke void @_ZNK4absl12lts_2025051214flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %45, ptr noundef nonnull align 8 dereferenceable(120) @_Z16FLAGS_tryfromenvB5cxx11)
          to label %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i unwind label %bb.dn

_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i: ; preds = %bb.dk
  %i.sr = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116ReadFlagsFromEnvERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EEb(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %51, i1 noundef zeroext false)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i
  %66 = select i1 %i.sr, i8 %.1.i, i8 0
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_127tryfromenv_needs_processingE, align 1
  %i.ss = load ptr, ptr %45, align 8, !tbaa !7    ; 3 uses
  %i.st = load ptr, ptr %i.ef, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i47.i = icmp eq ptr %i.ss, %i.st
  br i1 %.not4.i.i.i47.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i, label %.lr.ph.i.i.i48.i

.lr.ph.i.i.i48.i:                                 ; preds = %bb.dl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i
  %.05.i.i.i49.i = phi ptr [ %i.sz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i ], [ %i.ss, %bb.dl ] ; 3 uses
  %i.su = load ptr, ptr %.05.i.i.i49.i, align 8, !tbaa !12 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.05.i.i.i49.i, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i: ; preds = %.lr.ph.i.i.i48.i
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !17
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sy) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i: ; preds = %.lr.ph.i.i.i48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i
  %i.sz = getelementptr inbounds nuw i8, ptr %.05.i.i.i49.i, i64 32 ; 2 uses
  %.not.i.i.i52.i = icmp eq ptr %i.sz, %i.st
  br i1 %.not.i.i.i52.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i, label %.lr.ph.i.i.i48.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i51.i
  %.pr.i54.i = load ptr, ptr %45, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i, %bb.dl
  %i.ta = phi ptr [ %.pr.i54.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i53.i ], [ %i.ss, %bb.dl ] ; 3 uses
  %.not.i.i1.i56.i = icmp eq ptr %i.ta, null
  br i1 %.not.i.i1.i56.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i, label %bb.dm

bb.dm:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i
  %i.tb = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.tc = ptrtoint ptr %i.tb to i64
  %i.td = ptrtoint ptr %i.ta to i64
  %i.te = sub i64 %i.tc, %i.td
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef %i.te) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i: ; preds = %bb.dm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dk
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit46.i
  %i.tg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %45) #27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn27.i = phi { ptr, i32 } [ %i.tg, %bb.do ], [ %i.tf, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  br label %bb.ds

bb.dq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i, %bb.dj
  %.2.i = phi i8 [ %66, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit58.i ], [ %.1.i, %bb.dj ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %bb.du unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.th = landingpad { ptr, i32 }
          catch ptr null
  %i.ti = extractvalue { ptr, i32 } %i.th, 0
  call void @__clang_call_terminate(ptr %i.ti) #28
  unreachable

bb.ds:                                            ; preds = %bb.dp, %bb.di, %bb.db
  %.pn27.pn.i = phi { ptr, i32 } [ %.pn27.i, %bb.dp ], [ %.pn25.i, %bb.di ], [ %.pn.pn.i, %bb.db ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %.body169 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tj = landingpad { ptr, i32 }
          catch ptr null
  %i.tk = extractvalue { ptr, i32 } %i.tj, 0
  call void @__clang_call_terminate(ptr %i.tk) #28
  unreachable

bb.du:                                            ; preds = %bb.dq
  %i.tl = trunc nuw i8 %.2.i to i1
  %i.tm = trunc nuw i8 %.0791384 to i1
  %i.tn = select i1 %i.tl, i1 %i.tm, i1 false     ; 10 uses
  %i.to = zext i1 %i.tn to i8                     ; 6 uses
  %.val125 = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.tp = getelementptr inbounds i8, ptr %.val125, i64 -32 ; 4 uses
  %i.tq = getelementptr inbounds i8, ptr %.val125, i64 -8 ; 6 uses
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !67
  %i.ts = add i64 %i.tr, 1                        ; 4 uses
  store i64 %i.ts, ptr %i.tq, align 8, !tbaa !67
  %i.tt = getelementptr inbounds i8, ptr %.val125, i64 -24 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !11 ; 3 uses
  %i.tv = load ptr, ptr %i.tp, align 8, !tbaa !7  ; 5 uses
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = ashr exact i64 %i.ty, 5
  %i.ua = icmp eq i64 %i.tz, %i.ts
  br i1 %i.ua, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  store ptr %i.tp, ptr %i.aj, align 8, !tbaa !72
  %.not4.i.i.i.i.i = icmp eq ptr %i.tv, %i.tu
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ug, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.tv, %bb.dv ] ; 3 uses
  %i.ub = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !17
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i171 = icmp eq ptr %i.ug, %i.tu
  br i1 %.not.i.i.i.i.i171, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.tp, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.dv
  %i.uh = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.tv, %bb.dv ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.uh, null
  br i1 %.not.i.i1.i.i.i, label %.backedge, label %bb.dw, !llvm.loop !123

bb.dw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ui = getelementptr inbounds i8, ptr %.val125, i64 -16
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !20
  %i.uk = ptrtoint ptr %i.uj to i64
  %i.ul = ptrtoint ptr %i.uh to i64
  %i.um = sub i64 %i.uk, %i.ul
  call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef %i.um) #25
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
  %i.un = getelementptr inbounds nuw [32 x i8], ptr %i.tv, i64 %i.ts ; 2 uses
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !12 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !25 ; 3 uses
  %.val = load ptr, ptr %51, align 8, !tbaa !69
  %i.ur = ptrtoint ptr %.val125 to i64
  %i.us = ptrtoint ptr %.val to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = icmp ne i64 %i.ut, 32                   ; 3 uses
  %i.uv = icmp eq i64 %i.uq, 0
  br i1 %i.uv, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.dx
  %lhsc = load i8, ptr %i.uo, align 1
  %i.uw = icmp eq i8 %lhsc, 45
  br i1 %i.uw, label %bb.dy, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread

bb.dy:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.ux = add i64 %i.uq, -1                       ; 2 uses
  %i.uy = icmp eq i64 %i.ux, 0
  br i1 %i.uy, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread: ; preds = %bb.dx, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %bb.dy
  br i1 %i.uu, label %bb.dz, label %bb.ei, !prof !21

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
  %i.uz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.ec unwind label %bb.ef     ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  %i.va = load ptr, ptr %56, align 8, !tbaa !12   ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.ec
  %i.vd = load i64, ptr %i.vb, align 8, !tbaa !17
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.ve) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  %i.vf = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.vf(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 812, ptr noundef nonnull align 8 dereferenceable(32) %54)
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
  %i.vg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.ee:                                            ; preds = %bb.ea
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.ef:                                            ; preds = %bb.eb
  %i.vi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vj = load ptr, ptr %56, align 8, !tbaa !12   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.vl = icmp eq ptr %i.vj, %i.vk
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.ef
  %i.vm = load i64, ptr %i.vk, align 8, !tbaa !17
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.ee
end_hunk_0
