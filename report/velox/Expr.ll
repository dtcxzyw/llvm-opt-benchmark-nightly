inline.NumInlined: 11089
inline.NumDeleted: 4035
begin_hunk_0_@_ZNK8facebook5velox4exec4Expr20extractSubfieldsImplEPN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS3_23HeterogeneousAccessHashISA_vEENS3_26HeterogeneousAccessEqualToISA_vEESaISt4pairIKSA_iEEEEPSt6vectorINS0_6common8SubfieldESaISN_EE:bb.a
_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %.critedge.i
  %i.sy = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.sr, %.critedge.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox4exec12_GLOBAL__N_115extractSubfieldEPKNS1_4ExprERKN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS6_23HeterogeneousAccessHashISD_vEENS6_26HeterogeneousAccessEqualToISD_vEESaISt4pairIKSD_iEEEE.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.sz = load ptr, ptr %i.b, align 8, !tbaa !807, !noalias !794
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = ptrtoint ptr %i.sy to i64
  %i.tc = sub i64 %i.ta, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %i.sy, i64 noundef %i.tc) #45
  br label %_ZN8facebook5velox4exec12_GLOBAL__N_115extractSubfieldEPKNS1_4ExprERKN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS6_23HeterogeneousAccessHashISD_vEENS6_26HeterogeneousAccessEqualToISD_vEESaISt4pairIKSD_iEEEE.exit

common.resume:                                    ; preds = %bb.bx, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %.pn66.pn.pn.pn.i, %bb.bp ], [ %.pn, %bb.bx ]
  resume { ptr, i32 } %common.resume.op

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit153.i, %bb.aw, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit137.i, %bb.ap, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit121.i, %bb.ai, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit105.i, %bb.ab, %bb.p, %.body.i, %bb.d
  %.pn66.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.l, %bb.d ], [ %i.fl, %bb.p ], [ %.pn57.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i ], [ %i.id, %bb.ab ], [ %i.kk, %bb.ai ], [ %i.mr, %bb.ap ], [ %lpad.phi386.i, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit105.i ], [ %lpad.phi383.i, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit121.i ], [ %lpad.phi380.i, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit137.i ], [ %lpad.phi377.i, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield13LongSubscriptESt14default_deleteIS4_EED2Ev.exit153.i ], [ %i.ox, %bb.aw ]
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !794
  br label %common.resume

_ZN8facebook5velox4exec12_GLOBAL__N_115extractSubfieldEPKNS1_4ExprERKN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS6_23HeterogeneousAccessHashISD_vEENS6_26HeterogeneousAccessEqualToISD_vEESaISt4pairIKSD_iEEEE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !794
  %i.td = load ptr, ptr %7, align 8, !tbaa !835   ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !835 ; 2 uses
  %i.tg = icmp eq ptr %i.td, %i.tf
  br i1 %i.tg, label %_ZNK8facebook5velox6common8Subfield5validEv.exit.thread, label %_ZNK8facebook5velox6common8Subfield5validEv.exit

_ZNK8facebook5velox6common8Subfield5validEv.exit: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_115extractSubfieldEPKNS1_4ExprERKN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS6_23HeterogeneousAccessHashISD_vEENS6_26HeterogeneousAccessEqualToISD_vEESaISt4pairIKSD_iEEEE.exit
  %i.th = load ptr, ptr %i.td, align 8, !tbaa !808
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !856
  %i.tk = icmp eq i32 %i.tj, 1
  br i1 %i.tk, label %bb.bq, label %_ZNK8facebook5velox6common8Subfield5validEv.exit.thread

bb.bq:                                            ; preds = %_ZNK8facebook5velox6common8Subfield5validEv.exit
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !983 ; 6 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !986
  %.not.i.i11 = icmp eq ptr %i.tm, %i.to
  br i1 %.not.i.i11, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr %i.td, ptr %i.tm, align 8, !tbaa !810
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store ptr %i.tf, ptr %i.tp, align 8, !tbaa !804
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !807
  store ptr %i.ts, ptr %i.tq, align 8, !tbaa !807
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  store ptr %i.tt, ptr %i.tl, align 8, !tbaa !983
  br label %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit

bb.bs:                                            ; preds = %bb.bq
  invoke void @_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.tm, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNK8facebook5velox6common8Subfield5validEv.exit.thread: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_115extractSubfieldEPKNS1_4ExprERKN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS6_23HeterogeneousAccessHashISD_vEENS6_26HeterogeneousAccessEqualToISD_vEESaISt4pairIKSD_iEEEE.exit, %_ZNK8facebook5velox6common8Subfield5validEv.exit
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !98 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !98 ; 2 uses
  %i.tz = icmp eq ptr %i.tw, %i.ty
  br i1 %i.tz, label %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8facebook5velox6common8Subfield5validEv.exit.thread, %bb.bu
  %.sroa.023.063 = phi ptr [ %i.ue, %bb.bu ], [ %i.tw, %_ZNK8facebook5velox6common8Subfield5validEv.exit.thread ] ; 2 uses
  %i.ua = load ptr, ptr %.sroa.023.063, align 8, !tbaa !113 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !78
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 72
  %i.ud = load ptr, ptr %i.uc, align 8
  invoke void %i.ud(ptr noundef nonnull align 8 dereferenceable(482) %i.ua, ptr noundef nonnull %1, ptr noundef %2)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.lr.ph
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.023.063, i64 16 ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.ty
  br i1 %i.uf, label %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit, label %.lr.ph

bb.bv:                                            ; preds = %.lr.ph
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.bu, %_ZNK8facebook5velox6common8Subfield5validEv.exit.thread, %bb.br, %bb.bs
  %i.uh = load ptr, ptr %7, align 8, !tbaa !810   ; 3 uses
  %i.ui = load ptr, ptr %i.te, align 8, !tbaa !804 ; 2 uses
  %.not4.i.i.i.i12 = icmp eq ptr %i.uh, %i.ui
  br i1 %.not4.i.i.i.i12, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i14 = phi ptr [ %i.un, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i17 ], [ %i.uh, %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.uj = load ptr, ptr %.05.i.i.i.i14, align 8, !tbaa !808 ; 3 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i17, label %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i16

_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i16: ; preds = %.lr.ph.i.i.i.i13
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !78
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.uj) #30, !inline_history !987
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i17

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i17: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i16, %.lr.ph.i.i.i.i13
  %i.un = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i14, i64 8 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.un, %i.ui
  br i1 %.not.i.i.i.i18, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i19, label %.lr.ph.i.i.i.i13, !llvm.loop !982

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i19: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i17
  %.pr.i.i20 = load ptr, ptr %7, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i21: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i19, %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit
  %i.uo = phi ptr [ %.pr.i.i20, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i19 ], [ %i.uh, %_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.not.i.i1.i.i22 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i1.i.i22, label %_ZN8facebook5velox6common8SubfieldD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i21
  %i.up = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !807
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.uo to i64
  %i.ut = sub i64 %i.ur, %i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.ut) #45
  br label %_ZN8facebook5velox6common8SubfieldD2Ev.exit

_ZN8facebook5velox6common8SubfieldD2Ev.exit:      ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i21, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void

bb.bx:                                            ; preds = %bb.bv, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.tu, %bb.bt ], [ %i.ug, %bb.bv ]
  call void @_ZN8facebook5velox6common8SubfieldD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6common8SubfieldD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !810    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !804  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !808 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.d) #30, !inline_history !988
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !982

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !807
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #45
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4exec4Expr16extractSubfieldsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.272") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(482) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::F14FastMap.258", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr null, ptr %2, align 8, !tbaa !989
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !828
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(482) %1, ptr noundef nonnull %2, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !828  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !62
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.l = lshr i64 %i.k, 8                         ; 2 uses
  %i.m = and i64 %i.k, 255
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.n, align 1
  %i.o = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.m
  %i.p = xor i64 %notmask.i.i, -1
  %i.q = lshr i64 %i.p, 12
  %i.r = add nuw nsw i64 %i.q, 1
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %.pre3 = load ptr, ptr %2, align 8, !tbaa !989
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i
  %3 = phi ptr [ %4, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i ], [ %.pre3, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i = phi i64 [ %i.y, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %.05.i.i.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !9
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #45
  %.pre = load ptr, ptr %2, align 8, !tbaa !989
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %4 = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %3, %.lr.ph.i.i.i ]
  %i.y = add nuw nsw i64 %.05.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !990

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !10
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.d
  %i.z = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.aa = icmp ult i64 %i.z, 256
  br i1 %i.aa, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ab = and i64 %i.z, 255                       ; 2 uses
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !10
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.e, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ac = phi i64 [ %i.ab, %bb.e ], [ %i.z, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ] ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !828 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ae, align 1
  %i.af = zext i16 %.0.copyload.i.i to i64
  %i.ag = icmp eq i64 %i.ac, 0
  %i.ah = shl nuw nsw i64 %i.af, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.ah
  %.neg18.i = shl i64 -64, %i.ac
  %.0.i.neg.i = select i1 %i.ag, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !828
  store i64 0, ptr %i.b, align 8, !tbaa !10
  %i.ai = and i64 %.0.i.neg.i, -8
  %i.aj = mul nuw nsw i64 %i.o, 40
  %i.ak = mul i64 %i.aj, %i.r
  %i.al = sub i64 %i.ak, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.al) #30
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %bb.c, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox6common8SubfieldESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !991    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !983  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN8facebook5velox6common8SubfieldEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN8facebook5velox6common8SubfieldEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !810 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !804  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !808 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.g) #30, !inline_history !992
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !982

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i
  %i.l = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN8facebook5velox6common8SubfieldEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !807
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #45
  br label %_ZSt8_DestroyIN8facebook5velox6common8SubfieldEEvPT_.exit.i.i

_ZSt8_DestroyIN8facebook5velox6common8SubfieldEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !993

_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN8facebook5velox6common8SubfieldEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !991
  br label %_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8facebook5velox6common8SubfieldESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !986
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #45
  br label %_ZNSt12_Vector_baseIN8facebook5velox6common8SubfieldESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook5velox6common8SubfieldESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox6common8SubfieldES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec7ExprSetC2ERKSt6vectorISt10shared_ptrIKNS0_4core10ITypedExprEESaIS8_EEPNS5_7ExecCtxEbb(ptr noundef nonnull align 8 dereferenceable(201) initializes((0, 56)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.35", align 16   ; 10 uses
  %i.a = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec7ExprSetE, i64 16), ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr %i.e, ptr %i.d, align 8, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.f, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !181
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !994
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 1, ptr %i.m, align 8, !tbaa !996
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !181
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %2, ptr %i.q, align 8, !tbaa !997
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 %i.a, ptr %i.r, align 8, !tbaa !1000
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN8facebook5velox4exec18compileExpressionsERKSt6vectorISt10shared_ptrIKNS0_4core10ITypedExprEESaIS7_EEPNS4_7ExecCtxEPNS1_7ExprSetEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %0, i1 noundef zeroext %3)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !192  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load <2 x ptr>, ptr %5, align 16, !tbaa !98
  store <2 x ptr> %i.y, ptr %i.b, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !103
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !103
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ad, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !77
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
end_hunk_0
