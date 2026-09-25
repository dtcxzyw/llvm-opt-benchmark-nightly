Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Filter?download=true
inline.NumInlined: 10429
inline.NumDeleted: 4080
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK8facebook5velox6common11BytesValues9mergeWithEPKNS1_6FilterE:bb.a
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.in) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit158

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit158: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i155, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.cn

.body142:                                         ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.z
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.ho, %bb.ac ], [ %i.he, %bb.z ], [ %i.hz, %bb.ah ], [ %i.hy, %bb.ag ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %common.resume

bb.aj:                                            ; preds = %bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !127, !range !117, !noundef !118
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !127, !range !117, !noundef !118
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.it = phi i8 [ 0, %bb.aj ], [ %i.is, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !211, !range !117, !noundef !118
  %i.iw = trunc nuw i8 %i.iv to i1                ; 2 uses
  br i1 %i.iw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 0, ptr %i.ix, align 8, !tbaa !1462
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit

bb.an:                                            ; preds = %bb.al
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.iz, ptr %5, align 8, !tbaa !128
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !101 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !129 ; 8 uses
  %i.jd = icmp ugt i64 %i.jc, 15
  br i1 %i.jd, label %bb.ao, label %._crit_edge.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.je = icmp slt i64 %i.jc, 0
  br i1 %i.je, label %.noexc.i.i.i.i.i.i.i, label %bb.ap

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.jf = add nuw i64 %i.jc, 1                    ; 2 uses
  %i.jg = icmp slt i64 %i.jf, 0
  br i1 %i.jg, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, !prof !119

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.ap
  call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.jh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jf) #48 ; 2 uses
  store ptr %i.jh, ptr %5, align 8, !tbaa !101
  store i64 %i.jc, ptr %i.iz, align 8, !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, %bb.an
  %i.ji = phi ptr [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i ], [ %i.iz, %bb.an ] ; 3 uses
  switch i64 %i.jc, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.jj = load i8, ptr %i.ja, align 1, !tbaa !81
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !81
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr align 1 %i.ja, i64 %i.jc, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.aq, %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.jc, ptr %i.jk, align 8, !tbaa !129
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jc
  store i8 0, ptr %i.jl, align 1, !tbaa !81
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.jm, align 8, !tbaa !1462
  %.pre395 = load ptr, ptr %5, align 8
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit

_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit, %bb.am
  %.sroa.2284.0 = phi ptr [ %.pre395, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit ], [ undef, %bb.am ] ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jp = load i64, ptr %i.jo, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.jr = load i8, ptr %i.jq, align 2, !tbaa !213, !range !117, !noundef !118
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.jt, align 8, !tbaa !1462
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167

bb.at:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.jv, ptr %6, align 8, !tbaa !128
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !101 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !129 ; 8 uses
  %i.jz = icmp ugt i64 %i.jy, 15
  br i1 %i.jz, label %bb.au, label %._crit_edge.i.i.i.i.i.i.i.i159

bb.au:                                            ; preds = %bb.at
  %i.ka = icmp slt i64 %i.jy, 0
  br i1 %i.ka, label %.noexc.i.i.i.i.i.i.i162, label %bb.av

.noexc.i.i.i.i.i.i.i162:                          ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
          to label %.noexc163 unwind label %bb.bg

.noexc163:                                        ; preds = %.noexc.i.i.i.i.i.i.i162
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.kb = add nuw i64 %i.jy, 1                    ; 2 uses
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %.noexc6.i.i.i.i.i.i.i161, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160, !prof !119

.noexc6.i.i.i.i.i.i.i161:                         ; preds = %bb.av
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc164 unwind label %bb.bg

.noexc164:                                        ; preds = %.noexc6.i.i.i.i.i.i.i161
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160: ; preds = %bb.av
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kb) #48
          to label %.noexc165 unwind label %bb.bg ; 2 uses

.noexc165:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160
  store ptr %i.kd, ptr %6, align 8, !tbaa !101
  store i64 %i.jy, ptr %i.jv, align 8, !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i159

._crit_edge.i.i.i.i.i.i.i.i159:                   ; preds = %.noexc165, %bb.at
  %i.ke = phi ptr [ %i.kd, %.noexc165 ], [ %i.jv, %bb.at ] ; 3 uses
  switch i64 %i.jy, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  %i.kf = load i8, ptr %i.jw, align 1, !tbaa !81
  store i8 %i.kf, ptr %i.ke, align 1, !tbaa !81
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i159
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ke, ptr align 1 %i.jw, i64 %i.jy, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166: ; preds = %._crit_edge.i.i.i.i.i.i.i.i159, %bb.aw, %bb.ax
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.jy, ptr %i.kg, align 8, !tbaa !129
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jy
  store i8 0, ptr %i.kh, align 1, !tbaa !81
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.ki, align 8, !tbaa !1462
  %.pre396 = load ptr, ptr %6, align 8
  br label %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167

_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166, %bb.as
  %i.kj = phi ptr [ %.pre396, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166 ], [ undef, %bb.as ] ; 2 uses
  %i.kk = phi i8 [ 1, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit166 ], [ 0, %bb.as ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.km = trunc nuw i8 %i.kk to i1                ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ko = load i64, ptr %i.kn, align 8            ; 3 uses
  %i.kp = trunc nuw i8 %i.it to i1                ; 6 uses
  %i.kq = load i8, ptr %i.io, align 8, !range !117
  %i.kr = trunc nuw i8 %i.kq to i1
  %or.cond.i = select i1 %i.kp, i1 %i.kr, i1 false
  br i1 %or.cond.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167
  br i1 %i.iw, label %._crit_edge.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ks = icmp eq i64 %i.jp, %i.ko
  %or.cond = select i1 %i.km, i1 %i.ks, i1 false
  br i1 %or.cond, label %bb.ba, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.kt = icmp eq i64 %i.jp, 0
  br i1 %i.kt, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.ba
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.2284.0, ptr %i.kj, i64 %i.jp)
  %i.ku = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ku, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.ba
  %i.kv = trunc i64 %i.jp to i32
  %i.kw = invoke noundef zeroext i1 @_ZNK8facebook5velox6common11BytesValues9testBytesEPKci(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %.sroa.2284.0, i32 noundef %i.kv)
          to label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge unwind label %bb.bh

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %.pre397 = load i8, ptr %i.kl, align 8, !tbaa !1462, !range !117
  br label %bb.bc

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i: ; preds = %bb.az, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val7.i = load ptr, ptr %i.kx, align 8, !tbaa !101
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val8.i = load i64, ptr %i.ky, align 8, !tbaa !129 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val8.i, i64 %i.jp)
  %sext.i.i = shl i64 %.sroa.speculated.i.i, 32
  %i.kz = ashr exact i64 %sext.i.i, 32
  %i.la = call i32 @memcmp(ptr noundef readonly %.sroa.2284.0, ptr noundef readonly %.val7.i, i64 noundef %i.kz) #49 ; 2 uses
  %.not.i.i = icmp eq i32 %i.la, 0
  %i.lb = sub i64 %i.jp, %.val8.i
  %i.lc = trunc i64 %i.lb to i32
  %.0.i.i = select i1 %.not.i.i, i32 %i.lc, i32 %i.la
  %i.ld = icmp sgt i32 %.0.i.i, 0
  br i1 %i.ld, label %bb.bc, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i, %bb.ay
  br i1 %i.km, label %bb.bb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bb:                                            ; preds = %._crit_edge.i
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.le, align 8, !tbaa !101
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val6.i = load i64, ptr %i.lf, align 8, !tbaa !129 ; 2 uses
  %.sroa.speculated.i10.i = call i64 @llvm.umin.i64(i64 %.val6.i, i64 %i.ko)
  %sext.i11.i = shl i64 %.sroa.speculated.i10.i, 32
  %i.lg = ashr exact i64 %sext.i11.i, 32
  %i.lh = call i32 @memcmp(ptr noundef readonly %i.kj, ptr noundef readonly %.val.i, i64 noundef %i.lg) #49 ; 2 uses
  %.not.i12.i = icmp eq i32 %i.lh, 0
  %i.li = sub i64 %i.ko, %.val6.i
  %i.lj = trunc i64 %i.li to i32
  %.0.i13.i = select i1 %.not.i12.i, i32 %i.lj, i32 %i.lh
  %i.lk = icmp sgt i32 %.0.i13.i, -1
  store i8 0, ptr %i.kl, align 8, !tbaa !1462
  br label %bb.bd

bb.bc:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167
  %i.ll = phi i8 [ %i.kk, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i ], [ %.pre397, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge ], [ %i.kk, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167 ]
  %.0.i168 = phi i1 [ false, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.i ], [ %i.kw, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i._crit_edge ], [ true, %_ZNSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEC2INSt7__cxx1112basic_stringIcS2_SaIcEEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_T_EESt16is_constructibleIS3_JSD_EESt14is_convertibleISD_S3_ESB_ISt5__or_IJSG_IS3_JRKS_ISD_EEESG_IS3_JRSL_EESG_IS3_JOSM_EESG_IS3_JOSL_EESI_ISN_S3_ESI_ISP_S3_ESI_ISR_S3_ESI_IST_S3_EEEEEEbE4typeELb1EEEST_.exit167 ] ; 2 uses
  %i.lm = trunc nuw i8 %i.ll to i1
  store i8 0, ptr %i.kl, align 8, !tbaa !1462
  br i1 %i.lm, label %bb.bd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.0.i168509 = phi i1 [ %i.lk, %bb.bb ], [ %.0.i168, %bb.bc ] ; 2 uses
  %i.ln = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bd
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !81
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bd, %._crit_edge.i, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.0.i168508 = phi i1 [ %.0.i168, %bb.bc ], [ true, %._crit_edge.i ], [ %.0.i168509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.0.i168509, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.ls = load i8, ptr %i.jn, align 8, !tbaa !1462, !range !117, !noundef !118
  %i.lt = trunc nuw i8 %i.ls to i1
  store i8 0, ptr %i.jn, align 8, !tbaa !1462
  br i1 %i.lt, label %bb.be, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172

bb.be:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.lu = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170: ; preds = %bb.be
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !81
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172: ; preds = %bb.be, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br i1 %.0.i168508, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.lz = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48, !noalias !1463 ; 5 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 9
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  %.7.i173 = select i1 %i.kp, i32 2, i32 0
  %.8.i174 = select i1 %i.kp, ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common6IsNullE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16)
  store i8 %i.it, ptr %i.ma, align 8, !tbaa !127, !noalias !1463
  store i8 1, ptr %i.mb, align 1, !tbaa !126, !noalias !1463
  store i32 %.7.i173, ptr %i.mc, align 4, !tbaa !125, !noalias !1463
  store ptr %.8.i174, ptr %i.lz, align 8, !tbaa !144, !noalias !1463
  store ptr %i.lz, ptr %0, align 8, !tbaa !147, !alias.scope !1463
  br label %bb.cn

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i160, %.noexc6.i.i.i.i.i.i.i161, %.noexc.i.i.i.i.i.i.i162
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.mf = load i8, ptr %i.kl, align 8, !tbaa !1462, !range !117, !noundef !118
  %i.mg = trunc nuw i8 %i.mf to i1
  store i8 0, ptr %i.kl, align 8, !tbaa !1462
  br i1 %i.mg, label %bb.bi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.bi:                                            ; preds = %bb.bh
  %i.mh = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175: ; preds = %bb.bi
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !81
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.ml) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175, %bb.bh, %bb.bg
  %.pn65 = phi { ptr, i32 } [ %i.md, %bb.bg ], [ %i.me, %bb.bh ], [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175 ], [ %i.me, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.mm = load i8, ptr %i.jn, align 8, !tbaa !1462, !range !117, !noundef !118
  %i.mn = trunc nuw i8 %i.mm to i1
  store i8 0, ptr %i.jn, align 8, !tbaa !1462
  br i1 %i.mn, label %bb.bj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

bb.bj:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177
  %i.mo = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178: ; preds = %bb.bj
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !81
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.ms) #46
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180: ; preds = %bb.bj, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %common.resume

bb.bk:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !85
  %i.mw = lshr i64 %i.mv, 8                       ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not359 = icmp eq i64 %i.mw, 0
  br i1 %.not359, label %._crit_edge376.thread, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181: ; preds = %bb.bk
  %i.my = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.mz = shl nuw nsw i64 %i.mw, 5
  %i.na = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #48
          to label %.noexc196 unwind label %bb.bo ; 4 uses

.noexc196:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i181
  %i.nb = load ptr, ptr %7, align 8, !tbaa !230   ; 5 uses
  %i.nc = load ptr, ptr %i.my, align 8, !tbaa !231 ; 2 uses
  %.not10.i.i.i.i182 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not10.i.i.i.i182, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i193, label %.lr.ph.i.i.i.i183

.lr.ph.i.i.i.i183:                                ; preds = %.noexc196, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189
  %.012.i.i.i.i184 = phi ptr [ %i.nq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189 ], [ %i.na, %.noexc196 ] ; 5 uses
  %.0911.i.i.i.i185 = phi ptr [ %i.np, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i189 ], [ %i.nb, %.noexc196 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.nd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i184, i64 16 ; 3 uses
  store ptr %i.nd, ptr %.012.i.i.i.i184, align 8, !tbaa !128, !alias.scope !1464, !noalias !1465
  %i.ne = load ptr, ptr %.0911.i.i.i.i185, align 8, !tbaa !101, !alias.scope !1465, !noalias !1464 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i185, i64 16 ; 5 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i186

end_hunk_0
