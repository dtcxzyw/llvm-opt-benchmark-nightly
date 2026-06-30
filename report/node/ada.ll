inline.NumInlined: 8298
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 3
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
  %.sroa.01476.2 = phi i16 [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.sroa.01476.023822855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.sroa.01476.023822855, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.023822855, %.sink.split.i.i ], [ %.sroa.01476.023822855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.sroa.01476.023822855, %bb.nf ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  %.15283 = phi i64 [ %.92772904, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.11279291429222932, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.11279291429222932, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279291429222932, %.sink.split.i.i ], [ %.11279291429222932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.11279291429222932, %bb.nf ], [ %.92772897, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ] ; 2 uses
  %.18 = phi i32 [ %.82905, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.12291529212937, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.12291529212937, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12291529212937, %.sink.split.i.i ], [ %.12291529212937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.12291529212937, %bb.nf ], [ %.82898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
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
