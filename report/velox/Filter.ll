Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Filter?download=true
inline.NumInlined: 10429
inline.NumDeleted: 4080
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK8facebook5velox6common11BytesValues9mergeWithEPKNS1_6FilterE:bb.a
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit158

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit158: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i155, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.ca

.body142:                                         ; preds = %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.ab ], [ %lpad.loopexit.split-lp568, %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %common.resume

bb.ad:                                            ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !531, !range !521, !noundef !522
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.im = load i8, ptr %i.il, align 8, !tbaa !531, !range !521, !noundef !522
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.in = phi i8 [ 0, %bb.ad ], [ %i.im, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !615, !range !521, !noundef !522
  %i.iq = trunc nuw i8 %i.ip to i1                ; 2 uses
  br i1 %i.iq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 0, ptr %i.ir, align 8, !tbaa !2059
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit

bb.ah:                                            ; preds = %bb.af
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.it, ptr %5, align 8, !tbaa !532
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !505 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !533 ; 8 uses
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
  br i1 %i.ja, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, !prof !523

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.aj
  call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.jb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #48 ; 2 uses
  store ptr %i.jb, ptr %5, align 8, !tbaa !505
  store i64 %i.iw, ptr %i.it, align 8, !tbaa !485
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, %bb.ah
  %i.jc = phi ptr [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i ], [ %i.it, %bb.ah ] ; 3 uses
  switch i64 %i.iw, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.jd = load i8, ptr %i.iu, align 1, !tbaa !485
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !485
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr align 1 %i.iu, i64 %i.iw, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.ak, %bb.al
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.iw, ptr %i.je, align 8, !tbaa !533
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iw
  store i8 0, ptr %i.jf, align 1, !tbaa !485
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.jg, align 8, !tbaa !2059
  %.pre419 = load ptr, ptr %5, align 8
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit

_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit, %bb.ag
  %.sroa.2284.0 = phi ptr [ %.pre419, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit ], [ undef, %bb.ag ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jj = load i64, ptr %i.ji, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !617, !range !521, !noundef !522
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.jn, align 8, !tbaa !2059
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167

bb.an:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.jp, ptr %6, align 8, !tbaa !532
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !505 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !533 ; 8 uses
  %i.jt = icmp ugt i64 %i.js, 15
  br i1 %i.jt, label %bb.ao, label %._crit_edge.i.i.i.i.i.i.i.i159

bb.ao:                                            ; preds = %bb.an
  %i.ju = icmp slt i64 %i.js, 0
  br i1 %i.ju, label %.noexc.i.i.i.i.i.i.i162, label %bb.ap

.noexc.i.i.i.i.i.i.i162:                          ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
          to label %.noexc163 unwind label %bb.az

.noexc163:                                        ; preds = %.noexc.i.i.i.i.i.i.i162
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.jv = add nuw i64 %i.js, 1                    ; 2 uses
  %i.jw = icmp slt i64 %i.jv, 0
  br i1 %i.jw, label %.noexc6.i.i.i.i.i.i.i161, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160, !prof !523

.noexc6.i.i.i.i.i.i.i161:                         ; preds = %bb.ap
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc164 unwind label %bb.az

.noexc164:                                        ; preds = %.noexc6.i.i.i.i.i.i.i161
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160: ; preds = %bb.ap
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #48
          to label %.noexc165 unwind label %bb.az ; 2 uses

.noexc165:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160
  store ptr %i.jx, ptr %6, align 8, !tbaa !505
  store i64 %i.js, ptr %i.jp, align 8, !tbaa !485
  br label %._crit_edge.i.i.i.i.i.i.i.i159

._crit_edge.i.i.i.i.i.i.i.i159:                   ; preds = %.noexc165, %bb.an
  %i.jy = phi ptr [ %i.jx, %.noexc165 ], [ %i.jp, %bb.an ] ; 3 uses
  switch i64 %i.js, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  %i.jz = load i8, ptr %i.jq, align 1, !tbaa !485
  store i8 %i.jz, ptr %i.jy, align 1, !tbaa !485
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jy, ptr align 1 %i.jq, i64 %i.js, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166: ; preds = %._crit_edge.i.i.i.i.i.i.i.i159, %bb.aq, %bb.ar
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.js, ptr %i.ka, align 8, !tbaa !533
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.js
  store i8 0, ptr %i.kb, align 1, !tbaa !485
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.kc, align 8, !tbaa !2059
  %.pre420 = load ptr, ptr %6, align 8
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167

_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166, %bb.am
  %i.kd = phi ptr [ %.pre420, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166 ], [ undef, %bb.am ] ; 2 uses
  %i.ke = phi i8 [ 1, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166 ], [ 0, %bb.am ] ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.kg = trunc nuw i8 %i.ke to i1                ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ki = load i64, ptr %i.kh, align 8            ; 3 uses
  %i.kj = trunc nuw i8 %i.in to i1                ; 6 uses
  %i.kk = load i8, ptr %i.ii, align 8, !range !521
  %i.kl = trunc nuw i8 %i.kk to i1
  %or.cond.i = select i1 %i.kj, i1 %i.kl, i1 false
  br i1 %or.cond.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167
  br i1 %i.iq, label %._crit_edge.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.km = icmp eq i64 %i.ki, %i.jj
  %or.cond = select i1 %i.kg, i1 %i.km, i1 false
  br i1 %or.cond, label %bb.au, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i

bb.au:                                            ; preds = %bb.at
  %i.kn = icmp eq i64 %i.jj, 0
  br i1 %i.kn, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.au
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.2284.0, ptr %i.kd, i64 %i.jj)
  %i.ko = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ko, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.au
  %i.kp = trunc i64 %i.jj to i32
  %i.kq = invoke noundef zeroext i1 @_ZNK8facebook5velox6common11BytesValues9testBytesEPKci(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %.sroa.2284.0, i32 noundef %i.kp)
          to label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge unwind label %bb.ba

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %.pre421 = load i8, ptr %i.kf, align 8, !tbaa !2059, !range !521
  br label %bb.aw

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i: ; preds = %bb.at, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val7.i = load ptr, ptr %i.kr, align 8, !tbaa !505
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val8.i = load i64, ptr %i.ks, align 8, !tbaa !533 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val8.i, i64 %i.jj)
  %i.kt = shl i64 %.sroa.speculated.i.i, 32
  %i.ku = ashr exact i64 %i.kt, 32
  %i.kv = call i32 @memcmp(ptr noundef readonly %.sroa.2284.0, ptr noundef readonly %.val7.i, i64 noundef %i.ku) #49 ; 2 uses
  %.not.i.i = icmp eq i32 %i.kv, 0
  %i.kw = sub i64 %i.jj, %.val8.i
  %i.kx = trunc i64 %i.kw to i32
  %.0.i.i = select i1 %.not.i.i, i32 %i.kx, i32 %i.kv
  %i.ky = icmp sgt i32 %.0.i.i, 0
  br i1 %i.ky, label %bb.aw, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i, %bb.as
  br i1 %i.kg, label %bb.av, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.av:                                            ; preds = %._crit_edge.i
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.kz, align 8, !tbaa !505
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val6.i = load i64, ptr %i.la, align 8, !tbaa !533 ; 2 uses
  %.sroa.speculated.i10.i = call i64 @llvm.umin.i64(i64 %.val6.i, i64 %i.ki)
  %i.lb = shl i64 %.sroa.speculated.i10.i, 32
  %i.lc = ashr exact i64 %i.lb, 32
  %i.ld = call i32 @memcmp(ptr noundef readonly %i.kd, ptr noundef readonly %.val.i, i64 noundef %i.lc) #49 ; 2 uses
  %.not.i11.i = icmp eq i32 %i.ld, 0
  %i.le = sub i64 %i.ki, %.val6.i
  %i.lf = trunc i64 %i.le to i32
  %.0.i12.i = select i1 %.not.i11.i, i32 %i.lf, i32 %i.ld
  %i.lg = icmp sgt i32 %.0.i12.i, -1
  br label %.thread530

bb.aw:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167
  %i.lh = phi i8 [ %i.ke, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i ], [ %.pre421, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge ], [ %i.ke, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167 ]
  %.0.i168 = phi i1 [ false, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i ], [ %i.kq, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge ], [ true, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167 ] ; 2 uses
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %.thread530, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

.thread530:                                       ; preds = %bb.av, %bb.aw
  %.0.i168533 = phi i1 [ %.0.i168, %bb.aw ], [ %i.lg, %bb.av ] ; 2 uses
  store i8 0, ptr %i.kf, align 8, !tbaa !2059
  %i.lj = load ptr, ptr %6, align 8, !tbaa !505   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.thread530
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !485
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %.thread530, %._crit_edge.i, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.0.i168532 = phi i1 [ %.0.i168, %bb.aw ], [ true, %._crit_edge.i ], [ %.0.i168533, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.0.i168533, %.thread530 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.lo = load i8, ptr %i.jh, align 8, !tbaa !2059, !range !521, !noundef !522
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.ax, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172

bb.ax:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  store i8 0, ptr %i.jh, align 8, !tbaa !2059
  %i.lq = load ptr, ptr %5, align 8, !tbaa !505   ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170: ; preds = %bb.ax
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !485
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172: ; preds = %bb.ax, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br i1 %.0.i168532, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  %i.lv = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48, !noalias !2060 ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 9
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %.7.i173 = select i1 %i.kj, i32 2, i32 0
  %.8.i174 = select i1 %i.kj, ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common6IsNullE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16)
  store i8 %i.in, ptr %i.lw, align 8, !tbaa !531, !noalias !2060
  store i8 1, ptr %i.lx, align 1, !tbaa !530, !noalias !2060
  store i32 %.7.i173, ptr %i.ly, align 4, !tbaa !529, !noalias !2060
  store ptr %.8.i174, ptr %i.lv, align 8, !tbaa !548, !noalias !2060
  store ptr %i.lv, ptr %0, align 8, !tbaa !551, !alias.scope !2060
  br label %bb.ca

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160, %.noexc6.i.i.i.i.i.i.i161, %.noexc.i.i.i.i.i.i.i162
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.mb = load i8, ptr %i.kf, align 8, !tbaa !2059, !range !521, !noundef !522
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.bb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.kf, align 8, !tbaa !2059
  %i.md = load ptr, ptr %6, align 8, !tbaa !505   ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175: ; preds = %bb.bb
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !485
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175, %bb.ba, %bb.az
  %.pn65 = phi { ptr, i32 } [ %i.lz, %bb.az ], [ %i.ma, %bb.ba ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175 ], [ %i.ma, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.mi = load i8, ptr %i.jh, align 8, !tbaa !2059, !range !521, !noundef !522
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.bc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

bb.bc:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177
  store i8 0, ptr %i.jh, align 8, !tbaa !2059
  %i.mk = load ptr, ptr %5, align 8, !tbaa !505   ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178: ; preds = %bb.bc
  %i.mn = load i64, ptr %i.ml, align 8, !tbaa !485
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mo) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180: ; preds = %bb.bc, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %common.resume

bb.bd:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !489
  %i.ms = lshr i64 %i.mr, 8                       ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not359 = icmp eq i64 %i.ms, 0
  br i1 %.not359, label %._crit_edge391.thread, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181: ; preds = %bb.bd
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.mv = shl nuw nsw i64 %i.ms, 5
  %i.mw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mv) #48
          to label %.noexc196 unwind label %.loopexit.split-lp376.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc196:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181
  %i.mx = load ptr, ptr %7, align 8, !tbaa !634   ; 5 uses
  %i.my = load ptr, ptr %i.mu, align 8, !tbaa !635 ; 2 uses
  %.not10.i.i.i.i182 = icmp eq ptr %i.mx, %i.my
  br i1 %.not10.i.i.i.i182, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i193, label %.lr.ph.i.i.i.i183

.lr.ph.i.i.i.i183:                                ; preds = %.noexc196, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189
  %.012.i.i.i.i184 = phi ptr [ %i.nm, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189 ], [ %i.mw, %.noexc196 ] ; 5 uses
  %.0911.i.i.i.i185 = phi ptr [ %i.nl, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189 ], [ %i.mx, %.noexc196 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  %i.mz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i184, i64 16 ; 3 uses
  store ptr %i.mz, ptr %.012.i.i.i.i184, align 8, !tbaa !532, !alias.scope !2061
  %i.na = load ptr, ptr %.0911.i.i.i.i185, align 8, !tbaa !505, !alias.scope !2062 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i185, i64 16 ; 5 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i186

bb.be:                                            ; preds = %.lr.ph.i.i.i.i183
end_hunk_0
