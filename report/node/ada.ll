inline.NumInlined: 8298
inline.NumDeleted: 1222
begin_hunk_0_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.ts:                                            ; preds = %bb.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cpf = load i8, ptr %i.m, align 8, !range !73, !noundef !74
  %i.cpg = trunc nuw i8 %i.cpf to i1
  %i.cph = load i64, ptr %i.gd, align 8
  %i.cpi = icmp eq i64 %i.cph, 9
  %or.cond3255 = select i1 %i.cpg, i1 %i.cpi, i1 false
  br i1 %or.cond3255, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ts
  %i.cpj = load ptr, ptr %i.ft, align 8           ; 2 uses
  %i.cpk = load i64, ptr %i.cpj, align 1
  %i.cpl = xor i64 %i.cpk, 8317981851476258668
  %i.cpm = getelementptr i8, ptr %i.cpj, i64 8
  %i.cpn = load i8, ptr %i.cpm, align 1
  %i.cpo = zext i8 %i.cpn to i64
  %i.cpp = xor i64 %i.cpo, 116
  %i.cpq = or i64 %i.cpl, %i.cpp
  %i.cpr = icmp ne i64 %i.cpq, 0
  %i.cps = zext i1 %i.cpr to i32
  %i.cpt = icmp eq i32 %i.cps, 0
  br i1 %i.cpt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cpu = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  br label %.critedge326.jt17

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191.lr.ph, %.critedge342.jt8
  %.15283.jt83485 = phi i64 [ %.15283.jt8.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191.lr.ph ], [ %i.crv, %.critedge342.jt8 ] ; 16 uses
  %i.cpv = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.15283.jt83485 ; 5 uses
  store i8 6, ptr %i.f, align 1
  %i.cpw = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  %.not306 = icmp eq i64 %.15283.jt83485, %.sroa.01320.1 ; 2 uses
  br i1 %.not306, label %bb.tu, label %bb.tt

bb.tt:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191
  %i.cpx = load i8, ptr %i.cpv, align 1
  switch i8 %i.cpx, label %bb.tu [
    i8 47, label %.critedge326.jt10
    i8 92, label %.critedge326.jt10
  ]

bb.tu:                                            ; preds = %bb.tt, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191
  br i1 %i.x, label %bb.tv, label %.critedge326.jt16

bb.tv:                                            ; preds = %bb.tu
  %i.cpy = load i8, ptr %i.fu, align 1
  %i.cpz = icmp eq i8 %i.cpy, 6
  br i1 %i.cpz, label %bb.tw, label %.critedge326.jt16

bb.tw:                                            ; preds = %bb.tv
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.cqa = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  store i8 %i.cqa, ptr %i.d, align 1
  br i1 %.not306, label %.critedge342.jt8, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.cqb = sub nuw i64 %.sroa.01320.1, %.15283.jt83485 ; 2 uses
  %i.cqc = load i8, ptr %i.cpv, align 1
  %i.cqd = icmp eq i8 %i.cqc, 63
  br i1 %i.cqd, label %.critedge326.jt15, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.cqe = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.cqf = trunc nuw i8 %i.cqe to i1
  store i8 0, ptr %i.r, align 8
  br i1 %i.cqf, label %bb.tz, label %_ZN3ada3url12clear_searchEv.exit1194

bb.tz:                                            ; preds = %bb.ty
  %i.cqg = load ptr, ptr %i.fy, align 8           ; 2 uses
  %i.cqh = icmp eq ptr %i.cqg, %i.ga
  br i1 %i.cqh, label %_ZN3ada3url12clear_searchEv.exit1194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192: ; preds = %bb.tz
  %i.cqi = load i64, ptr %i.ga, align 8
  %i.cqj = add i64 %i.cqi, 1
  call void @_ZdlPvm(ptr noundef %i.cqg, i64 noundef %i.cqj) #34
  br label %_ZN3ada3url12clear_searchEv.exit1194

_ZN3ada3url12clear_searchEv.exit1194:             ; preds = %bb.tz, %bb.ty, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192
  %i.cqk = icmp ugt i64 %i.cqb, 1
  br i1 %i.cqk, label %bb.ua, label %bb.ue

bb.ua:                                            ; preds = %_ZN3ada3url12clear_searchEv.exit1194
  %i.cql = load i8, ptr %i.cpv, align 1
  %i.cqm = or i8 %i.cql, 32
  %i.cqn = add i8 %i.cqm, -97
  %spec.select.i.i1195 = icmp ult i8 %i.cqn, 26
  br i1 %spec.select.i.i1195, label %bb.ub, label %bb.ue

bb.ub:                                            ; preds = %bb.ua
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cpv, i64 1
  %i.cqp = load i8, ptr %i.cqo, align 1
  switch i8 %i.cqp, label %bb.ue [
    i8 58, label %bb.uc
    i8 124, label %bb.uc
  ]

bb.uc:                                            ; preds = %bb.ub, %bb.ub
  %i.cqq = icmp eq i64 %i.cqb, 2
  br i1 %i.cqq, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cpv, i64 2
  %i.cqs = load i8, ptr %i.cqr, align 1
  switch i8 %i.cqs, label %bb.ue [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
  ]

bb.ue:                                            ; preds = %bb.ud, %bb.ub, %bb.ua, %_ZN3ada3url12clear_searchEv.exit1194
  %i.cqt = load i8, ptr %i.f, align 1
  %i.cqu = icmp eq i8 %i.cqt, 6
  %.pre2603 = load i64, ptr %i.q, align 8         ; 7 uses
  br i1 %i.cqu, label %bb.uf, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread

bb.uf:                                            ; preds = %bb.ue
  %i.cqv = icmp ugt i64 %.pre2603, 1
  br i1 %i.cqv, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198, label %bb.ug

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198:   ; preds = %bb.uf
  %i.cqw = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.cqx = add i64 %.pre2603, -1
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqw, i64 1
  %i.cqz = call ptr @memchr(ptr noundef nonnull %i.cqy, i32 noundef 47, i64 noundef %i.cqx) #31 ; 2 uses
  %.not.i1199 = icmp eq ptr %i.cqz, null
  %i.cra = ptrtoint ptr %i.cqz to i64
  %i.crb = ptrtoint ptr %i.cqw to i64
  %i.crc = sub i64 %i.cra, %i.crb
  %i.crd = icmp eq i64 %i.crc, -1
  %or.cond1888 = or i1 %.not.i1199, %i.crd
  %i.cre = add i64 %.pre2603, -3
  %i.crf = icmp ult i64 %i.cre, -2
  %or.cond3257 = select i1 %or.cond1888, i1 %i.crf, i1 false
  br i1 %or.cond3257, label %bb.uh, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

bb.ug:                                            ; preds = %bb.uf
  %i.crg = icmp eq i64 %.pre2603, 0
  br i1 %i.crg, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

bb.uh:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cqw, i64 1
  %i.cri = load i8, ptr %i.crh, align 1
  %i.crj = or i8 %i.cri, 32
  %i.crk = add i8 %i.crj, -97
  %spec.select.i.i1208 = icmp ult i8 %i.crk, 26
  br i1 %spec.select.i.i1208, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209: ; preds = %bb.uh
  %i.crl = getelementptr inbounds nuw i8, ptr %i.cqw, i64 2
  %i.crm = load i8, ptr %i.crl, align 1
  %i.crn = icmp eq i8 %i.crm, 58
  br i1 %i.crn, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread: ; preds = %bb.ue
  %.not.i1210 = icmp eq i64 %.pre2603, 0
  br i1 %.not.i1210, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread: ; preds = %bb.ug, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, %bb.uh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread
  %i.cro = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not13.i12133488 = icmp eq i64 %.pre2603, 0
  br i1 %.not13.i12133488, label %.critedge326.jt16, label %.lr.ph3490

bb.ui:                                            ; preds = %.lr.ph3490
  %.not13.i1213 = icmp eq i64 %i.crp, 0
  br i1 %.not13.i1213, label %.critedge326.jt16, label %.lr.ph3490, !llvm.loop !97

.lr.ph3490:                                       ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread, %bb.ui
  %.1.i12123489 = phi i64 [ %i.crp, %bb.ui ], [ %.pre2603, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ]
  %i.crp = add i64 %.1.i12123489, -1              ; 5 uses
  %i.crq = getelementptr inbounds nuw i8, ptr %i.cro, i64 %i.crp
  %i.crr = load i8, ptr %i.crq, align 1
  %i.crs = icmp eq i8 %i.crr, 47
  br i1 %i.crs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217, label %bb.ui, !llvm.loop !97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217: ; preds = %.lr.ph3490
  %i.crt = getelementptr inbounds nuw i8, ptr %i.cro, i64 %i.crp
  store i64 %i.crp, ptr %i.q, align 8
  store i8 0, ptr %i.crt, align 1
  br label %.critedge326.jt16

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196: ; preds = %bb.ud, %bb.ud, %bb.ud, %bb.ud, %bb.uc
  store i64 0, ptr %i.q, align 8
  %i.cru = load ptr, ptr %i.o, align 8
  store i8 0, ptr %i.cru, align 1
  store i8 1, ptr %i.d, align 1
  br label %.critedge326.jt16

.critedge342.jt8:                                 ; preds = %bb.tw
  %i.crv = add i64 %.15283.jt83485, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.crv, %.sroa.01320.1
  br i1 %.not.jt8, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191, !llvm.loop !94

bb.uj:                                            ; preds = %bb.ah
  unreachable

.critedge326:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread, %bb.nf, %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863
  %.sroa.01476.2 = phi i16 [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.023822855, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.sroa.01476.023822855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.023822855, %.sink.split.i.i ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.sroa.01476.023822855, %bb.nf ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  %.15283 = phi i64 [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279291429222932, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.92772904, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.11279291429222932, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279291429222932, %.sink.split.i.i ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.11279291429222932, %bb.nf ], [ %.92772897, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ] ; 2 uses
  %.18 = phi i32 [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12291529212937, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.82905, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.12291529212937, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12291529212937, %.sink.split.i.i ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.12291529212937, %bb.nf ], [ %.82898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  %.not = icmp ugt i64 %.15283, %.sroa.01320.1
  br i1 %.not, label %.loopexit3038, label %bb.ah, !llvm.loop !94

.critedge326.jt19:                                ; preds = %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread1720, %bb.fi
  %i.crw = add i64 %i.abn, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.crw, %.sroa.01320.1
  br i1 %.not.jt19, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867, !llvm.loop !94

.critedge326.jt10:                                ; preds = %bb.tt, %bb.tt
  %i.crx = add i64 %.15283.jt83485, 1             ; 14 uses
  %.not.jt10 = icmp ugt i64 %i.crx, %.sroa.01320.1
  br i1 %.not.jt10, label %.loopexit3038, label %bb.qf, !llvm.loop !94

.critedge326.jt9:                                 ; preds = %bb.qg, %bb.qg
  %i.cry = add i64 %.15283.jt83485, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.cry, %.sroa.01320.1
  br i1 %.not.jt9, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1085, !llvm.loop !94

.critedge326.jt12:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.eb
  %.15283.jt12 = phi i64 [ %i.ua, %bb.eb ], [ %i.ru, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15283.jt12, %.sroa.01320.1
  br i1 %.not.jt12, label %.loopexit3038, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit640.thread, !llvm.loop !94

.critedge326.jt7:                                 ; preds = %bb.dn, %bb.dm
  %i.crz = add i64 %.15283.jt63471, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.crz, %.sroa.01320.1
  br i1 %.not.jt7, label %.loopexit3038, label %bb.dv, !llvm.loop !94

.critedge326.jt15:                                ; preds = %bb.tx, %bb.me, %bb.do
  %.026823842840.lcssa.sink = phi i64 [ %.10278, %bb.me ], [ %.15283.jt63471, %bb.do ], [ %.15283.jt83485, %bb.tx ]
  %i.csa = add i64 %.026823842840.lcssa.sink, 1   ; 2 uses
  %.not.jt15 = icmp ugt i64 %i.csa, %.sroa.01320.1
  br i1 %.not.jt15, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit644, !llvm.loop !94

.critedge326.jt3:                                 ; preds = %.thread1628, %bb.bi, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558
  %.15283.jt3 = phi i64 [ %.15283.jt0, %bb.bi ], [ %.32712375, %.thread1628 ], [ %.15283.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15283.jt3, %.sroa.01320.1
  br i1 %.not.jt3, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit648, !llvm.loop !94

.critedge326.jt0:                                 ; preds = %.lr.ph2363, %bb.ea, %bb.dk
  %.15283.jt0 = phi i64 [ %i.tz, %bb.ea ], [ %spec.select351, %bb.dk ], [ %.62742362, %.lr.ph2363 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15283.jt0, %.sroa.01320.1
  br i1 %.not.jt0, label %.loopexit3038, label %bb.bi, !llvm.loop !94

.critedge326.jt11:                                ; preds = %bb.ba
  %i.csb = add i64 %.12692380, 2                  ; 4 uses
  %.not.jt11 = icmp ugt i64 %i.csb, %.sroa.01320.1
  br i1 %.not.jt11, label %.loopexit3038, label %bb.dj, !llvm.loop !94

.critedge326.jt13:                                ; preds = %bb.ay, %bb.ax
  %i.csc = add i64 %.12692380, 1                  ; 5 uses
  %.not.jt13 = icmp ugt i64 %i.csc, %.sroa.01320.1
  br i1 %.not.jt13, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit636, !llvm.loop !94

.critedge326.jt14:                                ; preds = %bb.ax
  %i.csd = add i64 %.12692380, 1                  ; 5 uses
  %.not.jt14 = icmp ugt i64 %i.csd, %.sroa.01320.1
  br i1 %.not.jt14, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit619, !llvm.loop !94

.critedge326.jt18:                                ; preds = %bb.ba, %bb.az
  %i.cse = add i64 %.12692380, 1                  ; 2 uses
  %.not.jt18 = icmp ugt i64 %i.cse, %.sroa.01320.1
  br i1 %.not.jt18, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit823, !llvm.loop !94

.critedge326.jt16:                                ; preds = %bb.du, %bb.tv, %bb.tu, %bb.ui, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread, %bb.ug, %bb.ds, %bb.dk, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, %bb.qm, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196, %bb.qh, %bb.qi, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread, %bb.qj, %bb.me, %bb.mc, %.critedge338.jt16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.qw, %bb.qw, %bb.qw, %bb.qw, %bb.dz, %bb.qv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217
  %.sroa.01476.2.jt16 = phi i16 [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196 ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %bb.ui ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %bb.qm ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217 ], [ %.sroa.01476.02382, %bb.dk ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qv ], [ %.sroa.01476.02382, %bb.dz ], [ %.sroa.01476.02382, %bb.qn ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %bb.qw ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.sroa.01476.02382, %bb.ds ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209 ], [ %.sroa.01476.1, %bb.mc ], [ %.sroa.01476.1, %bb.me ], [ %.sroa.01476.02382, %bb.ug ], [ %.sroa.01476.02382, %bb.qj ], [ %.sroa.01476.1, %.critedge338.jt16 ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread ], [ %.sroa.01476.02382, %bb.qi ], [ %.sroa.01476.02382, %bb.qh ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.sroa.01476.02382, %bb.tv ], [ %.sroa.01476.02382, %bb.tu ], [ %.sroa.01476.02382, %bb.du ]
  %.15283.jt16 = phi i64 [ %.15283.jt83485, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ], [ %.15283.jt83485, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196 ], [ %i.crx, %bb.qn ], [ %i.cry, %bb.qw ], [ %.15283.jt83485, %bb.ui ], [ %i.cry, %bb.qw ], [ %i.crx, %bb.qm ], [ %.15283.jt83485, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread ], [ %.15283.jt63471, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15283.jt83485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217 ], [ %spec.select351, %bb.dk ], [ %i.crx, %bb.qn ], [ %i.crx, %bb.qn ], [ %i.cry, %bb.qv ], [ %i.crz, %bb.dz ], [ %i.crx, %bb.qn ], [ %i.cry, %bb.qw ], [ %i.cry, %bb.qw ], [ %.15283.jt63471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.15283.jt63471, %bb.ds ], [ %.15283.jt83485, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209 ], [ %.10278, %bb.mc ], [ %.10278, %bb.me ], [ %.15283.jt83485, %bb.ug ], [ %i.crx, %bb.qj ], [ %i.bgu, %.critedge338.jt16 ], [ %i.crx, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread ], [ %i.crx, %bb.qi ], [ %i.crx, %bb.qh ], [ %.15283.jt63471, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.15283.jt63471, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.15283.jt83485, %bb.tv ], [ %.15283.jt83485, %bb.tu ], [ %.15283.jt63471, %bb.du ] ; 2 uses
  %.not.jt16 = icmp ugt i64 %.15283.jt16, %.sroa.01320.1
  br i1 %.not.jt16, label %.loopexit3038, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit875, !llvm.loop !94

.critedge326.jt17:                                ; preds = %bb.ts, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, %bb.ii, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.if, %.critedge338.jt17, %bb.qy
  %.sroa.01476.2.jt17 = phi i16 [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819 ], [ %.sroa.01476.02382, %bb.ts ], [ %.sroa.01476.02382, %bb.qy ], [ %.sroa.01476.02382, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %.sroa.01476.02382, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.01476.02382, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.01476.02382, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.sroa.01476.1, %.critedge338.jt17 ], [ %.sroa.01476.02382, %bb.if ], [ %.sroa.01476.02382, %bb.ii ]
  %.15283.jt17 = phi i64 [ %i.aoz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819 ], [ %i.ccb, %bb.ts ], [ %i.cry, %bb.qy ], [ %i.aoz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %i.ccb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ccb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.aoz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %i.bgt, %.critedge338.jt17 ], [ %i.aoz, %bb.if ], [ %i.aoz, %bb.ii ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15283.jt17, %.sroa.01320.1
  br i1 %.not.jt17, label %.loopexit3038, label %bb.ly, !llvm.loop !94

.critedge326.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3038, label %.preheader1962, !llvm.loop !94

.critedge326.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3038, label %.critedge326.jt4.thread, !llvm.loop !94

.loopexit3038:                                    ; preds = %.critedge326.jt8.preheader, %.critedge326.jt6.preheader, %.critedge326.jt19, %.critedge326.jt10, %.critedge326.jt9, %.critedge326.jt12, %.critedge326.jt7, %.critedge326.jt3, %.critedge326.jt0, %.critedge326.jt11, %.critedge326.jt13, %.critedge326.jt14, %.critedge326.jt18, %.critedge326.jt16, %.critedge326.jt17, %.critedge326.jt2, %.critedge326.jt4, %.critedge326, %.critedge332.jt6, %.critedge342.jt8, %.critedge326.jt15
  br i1 %.sroa.14.0, label %bb.uk, label %.critedge346.critedge

bb.uk:                                            ; preds = %.loopexit3038
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %4, i64 %.sroa.01314.0, ptr %.sroa.9.0, ptr noundef nonnull @_ZN3ada14character_setsL23FRAGMENT_PERCENT_ENCODEE)
  %i.csf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.csg = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.csf, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  %i.csh = load ptr, ptr %4, align 8              ; 2 uses
  %i.csi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.csj = icmp eq ptr %i.csh, %i.csi
  br i1 %i.csj, label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218: ; preds = %bb.uk
  %i.csk = load i64, ptr %i.csi, align 8
  %i.csl = add i64 %i.csk, 1
  call void @_ZdlPvm(ptr noundef %i.csh, i64 noundef %i.csl) #34
  br label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221

_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221: ; preds = %bb.uk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge346.critedge

.critedge329:                                     ; preds = %bb.lx, %bb.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, %bb.fi, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.ln, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread1752, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread, %bb.ie, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1846, %.thread1636
  %i.csm = load ptr, ptr %27, align 8             ; 2 uses
  %i.csn = icmp eq ptr %i.csm, %i.ad
  br i1 %i.csn, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.critedge:                            ; preds = %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221, %bb.mb, %bb.ec, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit644, %.loopexit3038, %bb.bg, %bb.be, %bb.ma
  %i.cso = load ptr, ptr %27, align 8             ; 2 uses
  %i.csp = icmp eq ptr %i.cso, %i.ad
  br i1 %i.csp, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.sink.split.sink.split:               ; preds = %.critedge346.critedge, %.critedge329
  %.sink3501 = phi ptr [ %i.csm, %.critedge329 ], [ %i.cso, %.critedge346.critedge ]
  %i.csq = load i64, ptr %i.ad, align 8
  %i.csr = add i64 %i.csq, 1
  call void @_ZdlPvm(ptr noundef %.sink3501, i64 noundef %i.csr) #34
  br label %.critedge346.sink.split

.critedge346.sink.split:                          ; preds = %.critedge346.sink.split.sink.split, %.critedge346.critedge, %.critedge329
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %.critedge346

.critedge346:                                     ; preds = %.critedge346.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3urlD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada3urlE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !73, !noundef !74
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8
  br i1 %i.i, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8
  br i1 %i.r, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3: ; preds = %bb.c, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
end_hunk_0
begin_hunk_1_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.bwm = zext i32 %.0.i1025 to i64
  %i.bwn = sub nsw i64 %i.bwm, %i.bwh
  %i.bwo = load ptr, ptr %i.fp, align 8
  %i.bwp = sub nuw i64 %i.bwf, %i.bwh
  %.sroa.speculated.i.i1026 = call i64 @llvm.umin.i64(i64 %i.bwp, i64 %i.bwn)
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwo, i64 %i.bwh
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1026, ptr %i.bwq)
  %i.bwr = load i32, ptr %i.fs, align 8           ; 3 uses
  %i.bws = icmp eq i32 %i.bwr, -1
  br i1 %i.bws, label %_ZNK3ada14url_aggregator10get_searchEv.exit1038, label %bb.oy

bb.oy:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029
  %i.bwt = load i64, ptr %i.fq, align 8           ; 4 uses
  %i.bwu = trunc i64 %i.bwt to i32
  %i.bwv = load i32, ptr %i.ft, align 4           ; 2 uses
  %.not.i1030 = icmp eq i32 %i.bwv, -1
  %spec.select.i1031 = select i1 %.not.i1030, i32 %i.bwu, i32 %i.bwv ; 2 uses
  %i.bww = sub i32 %spec.select.i1031, %i.bwr
  %i.bwx = icmp ult i32 %i.bww, 2
  br i1 %i.bwx, label %_ZNK3ada14url_aggregator10get_searchEv.exit1038, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bwy = zext i32 %i.bwr to i64                 ; 5 uses
  %i.bwz = icmp ult i64 %i.bwt, %i.bwy
  br i1 %i.bwz, label %bb.pa, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032

bb.pa:                                            ; preds = %bb.oz
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bwy, i64 noundef %i.bwt) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032: ; preds = %bb.oz
  %i.bxa = zext i32 %spec.select.i1031 to i64
  %i.bxb = sub nsw i64 %i.bxa, %i.bwy
  %i.bxc = load ptr, ptr %i.fp, align 8
  %i.bxd = sub nuw i64 %i.bwt, %i.bwy
  %.sroa.speculated.i.i1033 = call i64 @llvm.umin.i64(i64 %i.bxd, i64 %i.bxb)
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxc, i64 %i.bwy
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1038

_ZNK3ada14url_aggregator10get_searchEv.exit1038:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029, %bb.oy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032
  %.sroa.4.0.i1034 = phi ptr [ %i.bxe, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029 ], [ @.str.48, %bb.oy ]
  %.sroa.0.0.i1035 = phi i64 [ %.sroa.speculated.i.i1033, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029 ], [ 0, %bb.oy ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1035, ptr %.sroa.4.0.i1034)
  %i.bxf = load i8, ptr %i.fu, align 1, !range !73, !noundef !74
  store i8 %i.bxf, ptr %i.d, align 1
  br i1 %.not314, label %.critedge350.jt8, label %bb.pb

bb.pb:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1038
  %i.bxg = sub nuw i64 %.sroa.01179.1, %.15292.jt82867 ; 2 uses
  %i.bxh = load i8, ptr %i.bvl, align 1
  %i.bxi = icmp eq i8 %i.bxh, 63
  br i1 %i.bxi, label %.critedge354.critedge, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bxj = icmp ugt i64 %i.bxg, 1
  br i1 %i.bxj, label %bb.pd, label %bb.ph

bb.pd:                                            ; preds = %bb.pc
  %i.bxk = load i8, ptr %i.bvl, align 1
  %i.bxl = or i8 %i.bxk, 32
  %i.bxm = add i8 %i.bxl, -97
  %spec.select.i.i1039 = icmp ult i8 %i.bxm, 26
  br i1 %spec.select.i.i1039, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bvl, i64 1
  %i.bxo = load i8, ptr %i.bxn, align 1
  switch i8 %i.bxo, label %bb.ph [
    i8 58, label %bb.pf
    i8 124, label %bb.pf
  ]

bb.pf:                                            ; preds = %bb.pe, %bb.pe
  %i.bxp = icmp eq i64 %i.bxg, 2
  br i1 %i.bxp, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bvl, i64 2
  %i.bxr = load i8, ptr %i.bxq, align 1
  switch i8 %i.bxr, label %bb.ph [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
  ]

bb.ph:                                            ; preds = %bb.pg, %bb.pe, %bb.pd, %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.bxs = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bxt = extractvalue { i64, ptr } %i.bxs, 0    ; 6 uses
  %i.bxu = extractvalue { i64, ptr } %i.bxs, 1    ; 5 uses
  store ptr %i.bxu, ptr %i.fv, align 8
  %i.bxv = load i8, ptr %i.f, align 1
  %i.bxw = icmp eq i8 %i.bxv, 6
  br i1 %i.bxw, label %bb.pi, label %bb.pl

bb.pi:                                            ; preds = %bb.ph
  %i.bxx = icmp ugt i64 %i.bxt, 1
  br i1 %i.bxx, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042, label %bb.pj

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042:   ; preds = %bb.pi
  %i.bxy = add i64 %i.bxt, -1
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxu, i64 1 ; 2 uses
  %i.bya = call ptr @memchr(ptr noundef nonnull %i.bxz, i32 noundef 47, i64 noundef %i.bxy) #31 ; 2 uses
  %.not.i1043 = icmp eq ptr %i.bya, null
  %i.byb = ptrtoint ptr %i.bya to i64
  %i.byc = ptrtoint ptr %i.bxu to i64
  %i.byd = sub i64 %i.byb, %i.byc
  %i.bye = icmp eq i64 %i.byd, -1
  %or.cond1663 = select i1 %.not.i1043, i1 true, i1 %i.bye
  %i.byf = icmp ne i64 %i.bxt, 2
  %or.cond1697 = select i1 %or.cond1663, i1 %i.byf, i1 false
  br i1 %or.cond1697, label %bb.pk, label %.lr.ph2872.preheader

bb.pj:                                            ; preds = %bb.pi
  %cond2882 = icmp eq i64 %i.bxt, 0
  br i1 %cond2882, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

bb.pk:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042
  %i.byg = load i8, ptr %i.bxz, align 1
  %i.byh = or i8 %i.byg, 32
  %i.byi = add i8 %i.byh, -97
  %spec.select.i.i1050 = icmp ult i8 %i.byi, 26
  br i1 %spec.select.i.i1050, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051, label %.lr.ph2872.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051: ; preds = %bb.pk
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxu, i64 2
  %i.byk = load i8, ptr %i.byj, align 1
  %i.byl = icmp eq i8 %i.byk, 58
  br i1 %i.byl, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

bb.pl:                                            ; preds = %bb.ph
  %cond2883 = icmp eq i64 %i.bxt, 0
  br i1 %cond2883, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

.lr.ph2872.preheader:                             ; preds = %bb.pk, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042, %bb.pj, %bb.pl, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051
  br label %.lr.ph2872

bb.pm:                                            ; preds = %.lr.ph2872
  %.not13.i1055 = icmp eq i64 %i.bym, 0
  br i1 %.not13.i1055, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872, !llvm.loop !29

.lr.ph2872:                                       ; preds = %.lr.ph2872.preheader, %bb.pm
  %.1.i10542871 = phi i64 [ %i.bym, %bb.pm ], [ %i.bxt, %.lr.ph2872.preheader ]
  %i.bym = add i64 %.1.i10542871, -1              ; 4 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bxu, i64 %i.bym
  %i.byo = load i8, ptr %i.byn, align 1
  %i.byp = icmp eq i8 %i.byo, 47
  br i1 %i.byp, label %bb.pn, label %bb.pm, !llvm.loop !29

bb.pn:                                            ; preds = %.lr.ph2872
  store i64 %i.bym, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 1 dereferenceable(1) %35)
  %i.byq = load ptr, ptr %34, align 8
  %i.byr = load i64, ptr %i.fw, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.byr, ptr %i.byq)
  %i.bys = load ptr, ptr %34, align 8             ; 2 uses
  %i.byt = icmp eq ptr %i.bys, %i.fx
  br i1 %i.byt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060: ; preds = %bb.pn
  %i.byu = load i64, ptr %i.fx, align 8
  %i.byv = add i64 %i.byu, 1
  call void @_ZdlPvm(ptr noundef %i.bys, i64 noundef %i.byv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062: ; preds = %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pm, %bb.pl, %bb.pj, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %.critedge334.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040: ; preds = %bb.pg, %bb.pg, %bb.pg, %bb.pg, %bb.pf
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge334.jt16.preheader

.critedge350.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1038
  %i.byw = add i64 %.15292.jt82867, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.byw, %.sroa.01179.1
  br i1 %.not.jt8, label %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1013, !llvm.loop !165

bb.po:                                            ; preds = %bb.ah
  unreachable

.critedge334.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581
  %.15292.jt6.ph = phi i64 [ %i.il, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.il, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581 ], [ %.027719952425, %bb.bg ] ; 2 uses
  %.not.jt62853 = icmp ugt i64 %.15292.jt6.ph, %.sroa.01179.1
  br i1 %.not.jt62853, label %.critedge354.critedge, label %.lr.ph2855, !llvm.loop !165

.lr.ph2855:                                       ; preds = %.critedge334.jt6.preheader
  br label %bb.bu, !llvm.loop !165

.critedge334:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840
  %.15292 = phi i64 [ %.92862462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ], [ %.92862469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ] ; 2 uses
  %.18 = phi i32 [ %.82463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ], [ %.82470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ]
  %.not = icmp ugt i64 %.15292, %.sroa.01179.1
  br i1 %.not, label %.critedge354.critedge, label %bb.ah, !llvm.loop !165

.critedge334.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.es, %bb.eq
  %i.byx = add i64 %i.abw, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.byx, %.sroa.01179.1
  br i1 %.not.jt19, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844, !llvm.loop !165

.critedge334.jt10:                                ; preds = %bb.oq, %bb.oq
  %i.byy = add i64 %.15292.jt82867, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.byy, %.sroa.01179.1
  br i1 %.not.jt10, label %.critedge354.critedge, label %bb.le, !llvm.loop !165

.critedge334.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.preheader1704, !llvm.loop !165

.critedge334.jt9:                                 ; preds = %bb.lf, %bb.lf
  %i.byz = add i64 %.15292.jt82867, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.byz, %.sroa.01179.1
  br i1 %.not.jt9, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit917, !llvm.loop !165

.critedge334.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1009, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread, %bb.hh, %bb.hf, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.hc, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1005, %bb.mb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1006, %.critedge346.jt17
  %.15292.jt17 = phi i64 [ %i.byz, %bb.mb ], [ %i.ant, %bb.hf ], [ %i.bin, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1009 ], [ %i.bin, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1005 ], [ %i.bin, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1006 ], [ %i.bfe, %.critedge346.jt17 ], [ %i.ant, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread ], [ %i.ant, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread ], [ %i.ant, %bb.hh ], [ %i.ant, %bb.hc ], [ %i.ant, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15292.jt17, %.sroa.01179.1
  br i1 %.not.jt17, label %.critedge354.critedge, label %bb.kz, !llvm.loop !165

.critedge334.jt0:                                 ; preds = %.lr.ph1976, %bb.bt, %bb.dj
  %.15292.jt0 = phi i64 [ %spec.select359, %bb.bt ], [ %i.ul, %bb.dj ], [ %.62831975, %.lr.ph1976 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15292.jt0, %.sroa.01179.1
  br i1 %.not.jt0, label %.critedge354.critedge, label %bb.bh, !llvm.loop !165

.critedge334.jt12:                                ; preds = %bb.dk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15292.jt12 = phi i64 [ %i.um, %bb.dk ], [ %i.ob, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15292.jt12, %.sroa.01179.1
  br i1 %.not.jt12, label %.critedge354.critedge, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit645.thread, !llvm.loop !165

.critedge334.jt7:                                 ; preds = %bb.ce, %bb.cd
  %i.bza = add i64 %.15292.jt62854, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.bza, %.sroa.01179.1
  br i1 %.not.jt7, label %.critedge354.critedge, label %bb.db, !llvm.loop !165

.critedge334.jt3:                                 ; preds = %.thread1404, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i563
  %.15292.jt3 = phi i64 [ %.32801988, %.thread1404 ], [ %.15292.jt0, %bb.bh ], [ %.15292.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i563 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15292.jt3, %.sroa.01179.1
  br i1 %.not.jt3, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, !llvm.loop !165

.critedge334.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.critedge334.jt4.thread, !llvm.loop !165

.critedge334.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt18, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit805, !llvm.loop !165

.critedge334.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt13, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit641, !llvm.loop !165

.critedge334.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt14, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581, !llvm.loop !165

.critedge334.jt11:                                ; preds = %bb.ba
  %.pre2183 = add i64 %.12781993, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2183, %.sroa.01179.1
  br i1 %.not.jt11, label %.critedge354.critedge, label %bb.bs, !llvm.loop !165

.critedge334.jt16.preheader:                      ; preds = %bb.ct, %bb.os, %bb.or, %bb.cs, %bb.cq, %bb.lg, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908, %_ZNK3ada14url_aggregator12get_hostnameEv.exit637, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, %bb.lb, %.critedge346.jt16, %bb.ld, %bb.lz, %bb.lz, %bb.lz, %bb.lz, %bb.ly, %_ZNK3ada14url_aggregator12get_pathnameEv.exit883, %bb.lr, %bb.lr, %bb.lr, %bb.lr, %bb.lh, %bb.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903, %bb.ls, %bb.bt
  %.15292.jt16.ph = phi i64 [ %spec.select359, %bb.bt ], [ %.15292.jt62854, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.byy, %bb.lr ], [ %i.byy, %_ZNK3ada14url_aggregator12get_pathnameEv.exit883 ], [ %i.byz, %bb.lz ], [ %i.byz, %bb.lz ], [ %i.byz, %bb.ly ], [ %i.byy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913 ], [ %i.byy, %bb.lh ], [ %i.byz, %bb.lz ], [ %i.byy, %bb.lr ], [ %i.byy, %bb.lr ], [ %.10287, %bb.ld ], [ %i.byy, %bb.lr ], [ %.10287, %bb.lb ], [ %.15292.jt62854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628 ], [ %.sroa.01179.1, %bb.bs ], [ %i.bza, %_ZNK3ada14url_aggregator12get_hostnameEv.exit637 ], [ %i.byy, %bb.lq ], [ %i.byy, %bb.ls ], [ %i.byy, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903 ], [ %i.byy, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908 ], [ %.15292.jt62854, %bb.cs ], [ %i.byy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901 ], [ %i.bff, %.critedge346.jt16 ], [ %.15292.jt82867, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040 ], [ %.15292.jt82867, %bb.os ], [ %.15292.jt82867, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %i.byz, %bb.lz ], [ %.15292.jt62854, %bb.cq ], [ %i.byy, %bb.lg ], [ %.15292.jt82867, %bb.or ], [ %.15292.jt62854, %bb.ct ] ; 4 uses
  %.not.jt162873 = icmp ugt i64 %.15292.jt16.ph, %.sroa.01179.1
  br i1 %.not.jt162873, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel, !llvm.loop !165

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel: ; preds = %.critedge334.jt16.preheader
  %.not1672.peel = icmp eq i64 %.sroa.01179.1, %.15292.jt16.ph
  br i1 %.not1672.peel, label %.critedge334.jt16.backedge.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel
  %i.bzb = sub nuw i64 %.sroa.01179.1, %.15292.jt16.ph
  %i.bzc = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.15292.jt16.ph ; 2 uses
  %i.bzd = call ptr @memchr(ptr noundef %i.bzc, i32 noundef 63, i64 noundef %i.bzb) #31 ; 2 uses
  %.not.i864.peel = icmp eq ptr %i.bzd, null
  %i.bze = ptrtoint ptr %i.bzd to i64
  %i.bzf = ptrtoint ptr %i.bzc to i64
  %i.bzg = sub i64 %i.bze, %i.bzf
  %.not318.peel = icmp eq i64 %i.bzg, -1
  %or.cond1661.peel = or i1 %.not.i864.peel, %.not318.peel
  br i1 %or.cond1661.peel, label %.critedge334.jt16.backedge.peel, label %.critedge354.critedge

.critedge334.jt16.backedge.peel:                  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01179.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.lr.ph.peel.newph, label %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.lr.ph.peel.newph: ; preds = %.critedge334.jt16.backedge.peel
  %i.bzh = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %i.gl ; 2 uses
  %i.bzi = ptrtoint ptr %i.bzh to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861, !llvm.loop !165

.critedge337:                                     ; preds = %bb.hf, %bb.hh, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread, %bb.eq, %bb.es, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.md, %bb.mf, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit940.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread1545, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread1510, %bb.hb, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1616, %.thread1412
  %i.bzj = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzk = icmp eq ptr %i.bzj, %i.w
  br i1 %i.bzk, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge: ; preds = %.critedge340.jt6, %.critedge350.jt8, %.critedge334.jt16.backedge.peel
  br label %.critedge354.critedge, !llvm.loop !165

.critedge354.critedge:                            ; preds = %.critedge334, %.critedge334.jt18, %.critedge334.jt2, %bb.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861, %.critedge334.jt6.preheader, %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge, %.critedge334.jt8.preheader, %.critedge334.jt16.preheader, %bb.cm, %bb.ld, %bb.pb, %bb.la, %.critedge334.jt11, %.critedge334.jt14, %.critedge334.jt13, %.critedge334.jt4, %.critedge334.jt3, %.critedge334.jt7, %.critedge334.jt12, %.critedge334.jt0, %.critedge334.jt17, %.critedge334.jt9, %.critedge334.jt10, %.critedge334.jt19, %bb.bf, %bb.bd
  %i.bzl = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzm = icmp eq ptr %i.bzl, %i.w
  br i1 %i.bzm, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge354.sink.split.sink.split:               ; preds = %.critedge354.critedge, %.critedge337
  %.sink2876 = phi ptr [ %i.bzj, %.critedge337 ], [ %i.bzl, %.critedge354.critedge ]
  %i.bzn = load i64, ptr %i.w, align 8
  %i.bzo = add i64 %i.bzn, 1
  call void @_ZdlPvm(ptr noundef %.sink2876, i64 noundef %i.bzo) #34
  br label %.critedge354.sink.split

.critedge354.sink.split:                          ; preds = %.critedge354.sink.split.sink.split, %.critedge354.critedge, %.critedge337
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.critedge354

.critedge354:                                     ; preds = %.critedge354.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, ptr } @_ZN3ada9to_stringENS_13encoding_typeE(i32 noundef %0) local_unnamed_addr #3 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3ada9to_stringENS_13encoding_typeE, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3ada9to_stringENS_13encoding_typeE.37, i64 %i.b
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %switch.ext, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %switch.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada7helpers9get_stateB5cxx11ENS_5stateE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 38 uses
  switch i32 %1, label %._crit_edge.i.i58 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i1
    i32 2, label %._crit_edge.i.i4
    i32 3, label %._crit_edge.i.i7
    i32 4, label %._crit_edge.i.i10
    i32 5, label %._crit_edge.i.i13
    i32 6, label %._crit_edge.i.i16
    i32 7, label %._crit_edge.i.i19
    i32 8, label %._crit_edge.i.i22
    i32 9, label %._crit_edge.i.i25
    i32 10, label %._crit_edge.i.i28
    i32 11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i32
    i32 12, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i35
    i32 13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i38
    i32 14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41
    i32 15, label %._crit_edge.i.i43
    i32 16, label %._crit_edge.i.i46
    i32 17, label %._crit_edge.i.i49
    i32 18, label %._crit_edge.i.i52
    i32 19, label %._crit_edge.i.i55
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.7, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1
  br label %bb.b

._crit_edge.i.i1:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.8, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.e, align 4
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i64 6, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.g, align 2
  br label %bb.b

._crit_edge.i.i7:                                 ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  store i32 1953722184, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.i, align 4
end_hunk_1
