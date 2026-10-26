Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Filter?download=true
inline.NumInlined: 10429
inline.NumDeleted: 4080
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK8facebook5velox6common11BytesValues9mergeWithEPKNS1_6FilterE:bb.a
  %i.hf = load ptr, ptr %2, align 8, !tbaa !144
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 128
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef zeroext i1 %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.hb, i32 noundef %i.he)
          to label %bb.w unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.lr.ph394
  br i1 %i.hi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0293.0392)
          to label %bb.y unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hk = icmp eq ptr %i.gw, %.sroa.0293.0392
  br i1 %i.hk, label %._crit_edge395, label %.lr.ph394, !prof !119

bb.z:                                             ; preds = %._crit_edge395.thread, %._crit_edge395
  %i.hl = phi ptr [ %i.gy, %._crit_edge395.thread ], [ %i.ha, %._crit_edge395 ]
  %i.hm = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48
          to label %_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit140 unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit140: ; preds = %bb.z
  %i.hn = trunc nuw i8 %i.fs to i1                ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %.7.i137 = select i1 %i.hn, i32 2, i32 0
  %.8.i138 = select i1 %i.hn, ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common6IsNullE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16)
  store i8 %i.fs, ptr %i.ho, align 8, !tbaa !127, !noalias !1475
  store i8 1, ptr %i.hp, align 1, !tbaa !126, !noalias !1475
  store i32 %.7.i137, ptr %i.hq, align 4, !tbaa !125, !noalias !1475
  store ptr %.8.i138, ptr %i.hm, align 8, !tbaa !144, !noalias !1475
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit146

bb.aa:                                            ; preds = %._crit_edge395
  %i.hr = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #48
          to label %.noexc141 unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !46 ; 3 uses

.noexc141:                                        ; preds = %bb.aa
  %i.hs = trunc nuw i8 %i.fs to i1
  invoke void @_ZN8facebook5velox6common11BytesValuesC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb(ptr noundef nonnull align 8 dereferenceable(128) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %i.hs)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit146 unwind label %bb.ab, !noalias !1476, !inline_history !46

bb.ab:                                            ; preds = %.noexc141
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef 128) #46, !noalias !1476, !inline_history !46
  br label %.body142

.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph394, %bb.x, %bb.z, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i114, %bb.aa
  %lpad.loopexit.split-lp567.a = landingpad { ptr, i32 }
          cleanup
  br label %.body142

_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit146: ; preds = %.noexc141, %_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit140
  %i.hu = phi ptr [ %i.hl, %_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit140 ], [ %i.ha, %.noexc141 ]
  %storemerge364 = phi ptr [ %i.hm, %_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit140 ], [ %i.hr, %.noexc141 ]
  store ptr %storemerge364, ptr %0, align 8, !tbaa !147
  %i.hv = load ptr, ptr %4, align 8, !tbaa !230   ; 3 uses
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !231 ; 2 uses
  %.not4.i.i.i147 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not4.i.i.i147, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i155, label %.lr.ph.i.i.i148

.lr.ph.i.i.i148:                                  ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit146, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i151
  %.05.i.i.i149 = phi ptr [ %i.ic, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i151 ], [ %i.hv, %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit146 ] ; 3 uses
  %i.hx = load ptr, ptr %.05.i.i.i149, align 8, !tbaa !101 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i149, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i150: ; preds = %.lr.ph.i.i.i148
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !81
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i151

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i151: ; preds = %.lr.ph.i.i.i148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i150
  %i.ic = getelementptr inbounds nuw i8, ptr %.05.i.i.i149, i64 32 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.ic, %i.hw
  br i1 %.not.i.i.i152, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153, label %.lr.ph.i.i.i148, !llvm.loop !15

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i151
  %.pr.i154 = load ptr, ptr %4, align 8, !tbaa !230
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i155

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i155: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153, %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit146
  %i.id = phi ptr [ %.pr.i154, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153 ], [ %i.hv, %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit146 ] ; 3 uses
  %.not.i.i1.i156 = icmp eq ptr %i.id, null
  br i1 %.not.i.i1.i156, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit158, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i155
  %i.ie = load ptr, ptr %i.fx, align 8, !tbaa !229
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit158

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit158: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i155, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.cb

.body142:                                         ; preds = %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.ab ], [ %lpad.loopexit.split-lp567.a, %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %common.resume

bb.ad:                                            ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !127, !range !117, !noundef !118
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.im = load i8, ptr %i.il, align 8, !tbaa !127, !range !117, !noundef !118
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.in = phi i8 [ 0, %bb.ad ], [ %i.im, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !211, !range !117, !noundef !118
  %i.iq = trunc nuw i8 %i.ip to i1                ; 2 uses
  br i1 %i.iq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 0, ptr %i.ir, align 8, !tbaa !1478
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit

bb.ah:                                            ; preds = %bb.af
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.it, ptr %5, align 8, !tbaa !128
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !101 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !129 ; 8 uses
  %i.ix = icmp ugt i64 %i.iw, 15
  br i1 %i.ix, label %bb.ai, label %._crit_edge.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.iy = icmp slt i64 %i.iw, 0
  br i1 %i.iy, label %.noexc.i.i.i.i.i.i.i, label %bb.aj

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.iz = add nuw i64 %i.iw, 1                    ; 2 uses
  %i.ja = icmp slt i64 %i.iz, 0
  br i1 %i.ja, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, !prof !119

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.aj
  call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.jb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #48 ; 2 uses
  store ptr %i.jb, ptr %5, align 8, !tbaa !101
  store i64 %i.iw, ptr %i.it, align 8, !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, %bb.ah
  %i.jc = phi ptr [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i ], [ %i.it, %bb.ah ] ; 3 uses
  switch i64 %i.iw, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.jd = load i8, ptr %i.iu, align 1, !tbaa !81
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !81
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr align 1 %i.iu, i64 %i.iw, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.ak, %bb.al
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.iw, ptr %i.je, align 8, !tbaa !129
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iw
  store i8 0, ptr %i.jf, align 1, !tbaa !81
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.jg, align 8, !tbaa !1478
  %.pre419 = load ptr, ptr %5, align 8
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit

_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit, %bb.ag
  %.sroa.2284.0 = phi ptr [ %.pre419, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit ], [ undef, %bb.ag ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jj = load i64, ptr %i.ji, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !213, !range !117, !noundef !118
  %i.jm = trunc nuw i8 %i.jl to i1                ; 4 uses
  br i1 %i.jm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.jn, align 8, !tbaa !1478
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167

bb.an:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.jp, ptr %6, align 8, !tbaa !128
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !101 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !129 ; 8 uses
  %i.jt = icmp ugt i64 %i.js, 15
  br i1 %i.jt, label %bb.ao, label %._crit_edge.i.i.i.i.i.i.i.i159

bb.ao:                                            ; preds = %bb.an
  %i.ju = icmp slt i64 %i.js, 0
  br i1 %i.ju, label %.noexc.i.i.i.i.i.i.i162, label %bb.ap

.noexc.i.i.i.i.i.i.i162:                          ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
          to label %.noexc163 unwind label %bb.ba

.noexc163:                                        ; preds = %.noexc.i.i.i.i.i.i.i162
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.jv = add nuw i64 %i.js, 1                    ; 2 uses
  %i.jw = icmp slt i64 %i.jv, 0
  br i1 %i.jw, label %.noexc6.i.i.i.i.i.i.i161, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160, !prof !119

.noexc6.i.i.i.i.i.i.i161:                         ; preds = %bb.ap
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc164 unwind label %bb.ba

.noexc164:                                        ; preds = %.noexc6.i.i.i.i.i.i.i161
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160: ; preds = %bb.ap
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #48
          to label %.noexc165 unwind label %bb.ba ; 2 uses

.noexc165:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160
  store ptr %i.jx, ptr %6, align 8, !tbaa !101
  store i64 %i.js, ptr %i.jp, align 8, !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i159

._crit_edge.i.i.i.i.i.i.i.i159:                   ; preds = %.noexc165, %bb.an
  %i.jy = phi ptr [ %i.jx, %.noexc165 ], [ %i.jp, %bb.an ] ; 3 uses
  switch i64 %i.js, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  %i.jz = load i8, ptr %i.jq, align 1, !tbaa !81
  store i8 %i.jz, ptr %i.jy, align 1, !tbaa !81
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jy, ptr align 1 %i.jq, i64 %i.js, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166: ; preds = %._crit_edge.i.i.i.i.i.i.i.i159, %bb.aq, %bb.ar
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.js, ptr %i.ka, align 8, !tbaa !129
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.js
  store i8 0, ptr %i.kb, align 1, !tbaa !81
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.kc, align 8, !tbaa !1478
  %.pre420 = load ptr, ptr %6, align 8
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167

_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166, %bb.am
  %i.kd = phi ptr [ %.pre420, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166 ], [ undef, %bb.am ] ; 2 uses
  %i.ke = phi i8 [ 1, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166 ], [ 0, %bb.am ] ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kh = load i64, ptr %i.kg, align 8            ; 3 uses
  %i.ki = trunc nuw i8 %i.in to i1                ; 6 uses
  %i.kj = load i8, ptr %i.ii, align 8, !range !117
  %i.kk = trunc nuw i8 %i.kj to i1
  %or.cond.i = select i1 %i.ki, i1 %i.kk, i1 false
  br i1 %or.cond.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167
  br i1 %i.iq, label %._crit_edge.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %9 = icmp ne i64 %i.kh, %i.jj
  %or.cond = select i1 %i.jm, i1 true, i1 %9
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kl = icmp eq i64 %i.jj, 0
  br i1 %i.kl, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.au
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.2284.0, ptr %i.kd, i64 %i.jj)
  %i.km = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.km, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.au
  %i.kn = trunc i64 %i.jj to i32
  %i.ko = invoke noundef zeroext i1 @_ZNK8facebook5velox6common11BytesValues9testBytesEPKci(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %.sroa.2284.0, i32 noundef %i.kn)
          to label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge unwind label %bb.bb

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %.pre421 = load i8, ptr %i.kf, align 8, !tbaa !1478, !range !117
  br label %bb.aw

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i: ; preds = %bb.at, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val7.i = load ptr, ptr %i.kp, align 8, !tbaa !101
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val8.i = load i64, ptr %i.kq, align 8, !tbaa !129 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val8.i, i64 %i.jj)
  %i.kr = shl i64 %.sroa.speculated.i.i, 32
  %i.ks = ashr exact i64 %i.kr, 32
  %i.kt = call i32 @memcmp(ptr noundef readonly %.sroa.2284.0, ptr noundef readonly %.val7.i, i64 noundef %i.ks) #49 ; 2 uses
  %.not.i.i = icmp eq i32 %i.kt, 0
  %i.ku = sub i64 %i.jj, %.val8.i
  %i.kv = trunc i64 %i.ku to i32
  %.0.i.i = select i1 %.not.i.i, i32 %i.kv, i32 %i.kt
  %i.kw = icmp sgt i32 %.0.i.i, 0                 ; 2 uses
  %brmerge = or i1 %i.kw, %i.jm
  %not. = xor i1 %i.kw, true
  br i1 %brmerge, label %bb.aw, label %bb.av

._crit_edge.i:                                    ; preds = %bb.as
  br i1 %i.jm, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i, %._crit_edge.i
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.kx, align 8, !tbaa !101
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val6.i = load i64, ptr %i.ky, align 8, !tbaa !129 ; 2 uses
  %.sroa.speculated.i10.i = call i64 @llvm.umin.i64(i64 %.val6.i, i64 %i.kh)
  %i.kz = shl i64 %.sroa.speculated.i10.i, 32
  %i.la = ashr exact i64 %i.kz, 32
  %i.lb = call i32 @memcmp(ptr noundef readonly %i.kd, ptr noundef readonly %.val.i, i64 noundef %i.la) #49 ; 2 uses
  %.not.i11.i = icmp eq i32 %i.lb, 0
  %i.lc = sub i64 %i.kh, %.val6.i
  %i.ld = trunc i64 %i.lc to i32
  %.0.i12.i = select i1 %.not.i11.i, i32 %i.ld, i32 %i.lb
  %10 = icmp slt i32 %.0.i12.i, 0
  br i1 %10, label %.thread531, label %bb.aw

.thread531:                                       ; preds = %bb.av
  store i8 0, ptr %i.kf, align 8, !tbaa !1478
  br label %bb.ax

bb.aw:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i, %._crit_edge.i, %bb.av, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167
  %11 = phi i8 [ %i.ke, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i ], [ %.pre421, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge ], [ %i.ke, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167 ], [ %i.ke, %bb.av ], [ %i.ke, %._crit_edge.i ]
  %.0.i168 = phi i1 [ %not., %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i ], [ %i.ko, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge ], [ true, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167 ], [ true, %bb.av ], [ true, %._crit_edge.i ] ; 2 uses
  %i.le = trunc nuw i8 %11 to i1
  store i8 0, ptr %i.kf, align 8, !tbaa !1478
  br i1 %i.le, label %bb.ax, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.ax:                                            ; preds = %.thread531, %bb.aw
  %.0.i168533.a = phi i1 [ false, %.thread531 ], [ %.0.i168, %bb.aw ] ; 2 uses
  %i.lf = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ax
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !81
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.ax, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.0.i168533 = phi i1 [ %.0.i168, %bb.aw ], [ %.0.i168533.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.0.i168533.a, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.lk = load i8, ptr %i.jh, align 8, !tbaa !1478, !range !117, !noundef !118
  %i.ll = trunc nuw i8 %i.lk to i1
  store i8 0, ptr %i.jh, align 8, !tbaa !1478
  br i1 %i.ll, label %bb.ay, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172

bb.ay:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.lm = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170: ; preds = %bb.ay
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !81
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172: ; preds = %bb.ay, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br i1 %.0.i168533, label %bb.be, label %bb.az

bb.az:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172
  call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  %i.lr = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48, !noalias !1479 ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 12
  %.7.i173 = select i1 %i.ki, i32 2, i32 0
  %.8.i174 = select i1 %i.ki, ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common6IsNullE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16)
  store i8 %i.in, ptr %i.ls, align 8, !tbaa !127, !noalias !1479
  store i8 1, ptr %i.lt, align 1, !tbaa !126, !noalias !1479
  store i32 %.7.i173, ptr %i.lu, align 4, !tbaa !125, !noalias !1479
  store ptr %.8.i174, ptr %i.lr, align 8, !tbaa !144, !noalias !1479
  store ptr %i.lr, ptr %0, align 8, !tbaa !147, !alias.scope !1479
  br label %bb.cb

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160, %.noexc6.i.i.i.i.i.i.i161, %.noexc.i.i.i.i.i.i.i162
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.bb:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.lx = load i8, ptr %i.kf, align 8, !tbaa !1478, !range !117, !noundef !118
  %i.ly = trunc nuw i8 %i.lx to i1
  store i8 0, ptr %i.kf, align 8, !tbaa !1478
  br i1 %i.ly, label %bb.bc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.bc:                                            ; preds = %bb.bb
  %i.lz = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175: ; preds = %bb.bc
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !81
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175, %bb.bb, %bb.ba
  %.pn65 = phi { ptr, i32 } [ %i.lv, %bb.ba ], [ %i.lw, %bb.bb ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175 ], [ %i.lw, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.me = load i8, ptr %i.jh, align 8, !tbaa !1478, !range !117, !noundef !118
  %i.mf = trunc nuw i8 %i.me to i1
  store i8 0, ptr %i.jh, align 8, !tbaa !1478
  br i1 %i.mf, label %bb.bd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

bb.bd:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177
  %i.mg = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178: ; preds = %bb.bd
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !81
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180: ; preds = %bb.bd, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %common.resume

bb.be:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !85
  %i.mo = lshr i64 %i.mn, 8                       ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not359 = icmp eq i64 %i.mo, 0
  br i1 %.not359, label %._crit_edge391.thread, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181: ; preds = %bb.be
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.mr = shl nuw nsw i64 %i.mo, 5
  %i.ms = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mr) #48
          to label %.noexc196 unwind label %.loopexit.split-lp376.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc196:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181
  %i.mt = load ptr, ptr %7, align 8, !tbaa !230   ; 5 uses
  %i.mu = load ptr, ptr %i.mq, align 8, !tbaa !231 ; 2 uses
  %.not10.i.i.i.i182 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not10.i.i.i.i182, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i193, label %.lr.ph.i.i.i.i183

.lr.ph.i.i.i.i183:                                ; preds = %.noexc196, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189
  %.012.i.i.i.i184 = phi ptr [ %i.ni, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189 ], [ %i.ms, %.noexc196 ] ; 5 uses
  %.0911.i.i.i.i185 = phi ptr [ %i.nh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189 ], [ %i.mt, %.noexc196 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  %i.mv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i184, i64 16 ; 3 uses
  store ptr %i.mv, ptr %.012.i.i.i.i184, align 8, !tbaa !128, !alias.scope !1480
  %i.mw = load ptr, ptr %.0911.i.i.i.i185, align 8, !tbaa !101, !alias.scope !1481 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i185, i64 16 ; 5 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i186

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i183
  %i.mz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i185, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !129, !alias.scope !1481 ; 3 uses
  %i.nb = icmp ult i64 %i.na, 16
  call void @llvm.assume(i1 %i.nb)
  %i.nc = add nuw nsw i64 %i.na, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mv, ptr noundef nonnull align 8 dereferenceable(1) %i.mx, i64 %i.nc, i1 false), !alias.scope !1482
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i186: ; preds = %.lr.ph.i.i.i.i183
  store ptr %i.mw, ptr %.012.i.i.i.i184, align 8, !tbaa !101, !alias.scope !1480
  %i.nd = load i64, ptr %i.mx, align 8, !tbaa !81, !alias.scope !1481
  store i64 %i.nd, ptr %i.mv, align 8, !tbaa !81, !alias.scope !1480
  %.phi.trans.insert.i.i.i.i.i187 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i185, i64 8
  %.pre.i.i.i.i.i188 = load i64, ptr %.phi.trans.insert.i.i.i.i.i187, align 8, !tbaa !129, !alias.scope !1481
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i186, %bb.bf
  %i.ne = phi i64 [ %i.na, %bb.bf ], [ %.pre.i.i.i.i.i188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i186 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i185, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i184, i64 8
  store i64 %i.ne, ptr %i.ng, align 8, !tbaa !129, !alias.scope !1480
  store ptr %i.mx, ptr %.0911.i.i.i.i185, align 8, !tbaa !101, !alias.scope !1481
  store i64 0, ptr %i.nf, align 8, !tbaa !129, !alias.scope !1481
  store i8 0, ptr %i.mx, align 8, !tbaa !81, !alias.scope !1481
  %i.nh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i185, i64 32 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i184, i64 32
  %.not.i.i.i.i190 = icmp eq ptr %i.nh, %i.mu
  br i1 %.not.i.i.i.i190, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i193, label %.lr.ph.i.i.i.i183, !llvm.loop !14

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i193: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189, %.noexc196
  %.not.i8.i194 = icmp eq ptr %i.mt, null
  br i1 %.not.i8.i194, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i193
  %i.nj = load ptr, ptr %i.mp, align 8, !tbaa !229
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = ptrtoint ptr %i.mt to i64
  %i.nm = sub i64 %i.nk, %i.nl
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.nm) #46
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i193, %bb.bg
  store ptr %i.ms, ptr %7, align 8, !tbaa !230
  store ptr %i.ms, ptr %i.mq, align 8, !tbaa !231
  %i.nn = getelementptr inbounds nuw [32 x i8], ptr %i.ms, i64 %i.mo
  store ptr %i.nn, ptr %i.mp, align 8, !tbaa !229
  %.pre422 = load i64, ptr %i.mm, align 8, !tbaa !85
  %.pre437 = lshr i64 %.pre422, 8                 ; 2 uses
  %.not.i.i.i198.not = icmp eq i64 %.pre437, 0
  %i.no = load ptr, ptr %i.ml, align 8            ; 2 uses
  br i1 %.not.i.i.i198.not, label %._crit_edge391.thread, label %.lr.ph390.preheader

.lr.ph390.preheader:                              ; preds = %bb.bh
  %i.np = getelementptr inbounds nuw [32 x i8], ptr %i.no, i64 %.pre437
  br label %.lr.ph390

._crit_edge391.thread:                            ; preds = %bb.bh, %bb.be
  %i.nq = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.bk

._crit_edge391:                                   ; preds = %bb.bj
  %.pre423 = load ptr, ptr %7, align 8, !tbaa !137
  %.phi.trans.insert424 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre425 = load ptr, ptr %.phi.trans.insert424, align 8, !tbaa !137
  %i.nr = icmp eq ptr %.pre423, %.pre425
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %i.nr, label %bb.bk, label %bb.bl

.lr.ph390:                                        ; preds = %bb.bj, %.lr.ph390.preheader
  %.pn550 = phi ptr [ %i.np, %.lr.ph390.preheader ], [ %.sroa.0277.0388, %bb.bj ] ; 2 uses
  %.sroa.0277.0388 = getelementptr inbounds i8, ptr %.pn550, i64 -32 ; 4 uses
  %i.nt = load ptr, ptr %.sroa.0277.0388, align 8, !tbaa !101
  %i.nu = getelementptr inbounds i8, ptr %.pn550, i64 -24
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !129
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = call noundef zeroext i1 @_ZNK8facebook5velox6common10BytesRange9testBytesEPKci(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %i.nt, i32 noundef %i.nw)
  br i1 %i.nx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph390
  %i.ny = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0277.0388)
          to label %bb.bj unwind label %.loopexit.split-lp376.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bj:                                            ; preds = %bb.bi, %.lr.ph390
  %i.nz = icmp eq ptr %i.no, %.sroa.0277.0388
  br i1 %i.nz, label %._crit_edge391, label %.lr.ph390, !prof !119

bb.bk:                                            ; preds = %._crit_edge391.thread, %._crit_edge391
  %i.oa = phi ptr [ %i.nq, %._crit_edge391.thread ], [ %i.ns, %._crit_edge391 ]
  %i.ob = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48
          to label %_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit207 unwind label %.loopexit.split-lp376.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN8facebook5velox6common12_GLOBAL__N_111nullOrFalseEb.exit207: ; preds = %bb.bk
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 9
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %.7.i204 = select i1 %i.ki, i32 2, i32 0
  %.8.i205 = select i1 %i.ki, ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common6IsNullE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16)
  store i8 %i.in, ptr %i.oc, align 8, !tbaa !127, !noalias !1483
  store i8 1, ptr %i.od, align 1, !tbaa !126, !noalias !1483
end_hunk_0
