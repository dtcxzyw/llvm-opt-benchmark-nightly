inline.NumInlined: 8332
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.tb:                                            ; preds = %bb.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cpc = load i8, ptr %i.m, align 8, !range !73, !noundef !74
  %i.cpd = trunc nuw i8 %i.cpc to i1
  %i.cpe = load i64, ptr %i.gd, align 8
  %i.cpf = icmp eq i64 %i.cpe, 9
  %or.cond3309 = select i1 %i.cpd, i1 %i.cpf, i1 false
  br i1 %or.cond3309, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.tb
  %i.cpg = load ptr, ptr %i.ft, align 8           ; 2 uses
  %i.cph = load i64, ptr %i.cpg, align 1
  %i.cpi = xor i64 %i.cph, 8317981851476258668
  %i.cpj = getelementptr i8, ptr %i.cpg, i64 8
  %i.cpk = load i8, ptr %i.cpj, align 1
  %i.cpl = zext i8 %i.cpk to i64
  %i.cpm = xor i64 %i.cpl, 116
  %i.cpn = or i64 %i.cpi, %i.cpm
  %i.cpo = icmp ne i64 %i.cpn, 0
  %i.cpp = zext i1 %i.cpo to i32
  %i.cpq = icmp eq i32 %i.cpp, 0
  br i1 %i.cpq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cpr = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  br label %.critedge326.jt17

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph, %.critedge342.jt8
  %.15283.jt83539 = phi i64 [ %.15283.jt8.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph ], [ %i.crs, %.critedge342.jt8 ] ; 16 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %.15283.jt83539 ; 5 uses
  store i8 6, ptr %i.f, align 1
  %i.cpt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  %.not306 = icmp eq i64 %.15283.jt83539, %.sroa.01347.1 ; 2 uses
  br i1 %.not306, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218
  %i.cpu = load i8, ptr %i.cps, align 1
  switch i8 %i.cpu, label %bb.td [
    i8 47, label %.critedge326.jt10
    i8 92, label %.critedge326.jt10
  ]

bb.td:                                            ; preds = %bb.tc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218
  br i1 %i.x, label %bb.te, label %.critedge326.jt16

bb.te:                                            ; preds = %bb.td
  %i.cpv = load i8, ptr %i.fu, align 1
  %i.cpw = icmp eq i8 %i.cpv, 6
  br i1 %i.cpw, label %bb.tf, label %.critedge326.jt16

bb.tf:                                            ; preds = %bb.te
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.cpx = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  store i8 %i.cpx, ptr %i.d, align 1
  br i1 %.not306, label %.critedge342.jt8, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.cpy = sub nuw i64 %.sroa.01347.1, %.15283.jt83539 ; 2 uses
  %i.cpz = load i8, ptr %i.cps, align 1
  %i.cqa = icmp eq i8 %i.cpz, 63
  br i1 %i.cqa, label %.critedge326.jt15, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.cqb = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.cqc = trunc nuw i8 %i.cqb to i1
  store i8 0, ptr %i.r, align 8
  br i1 %i.cqc, label %bb.ti, label %_ZN3ada3url12clear_searchEv.exit1221

bb.ti:                                            ; preds = %bb.th
  %i.cqd = load ptr, ptr %i.fy, align 8           ; 2 uses
  %i.cqe = icmp eq ptr %i.cqd, %i.ga
  br i1 %i.cqe, label %_ZN3ada3url12clear_searchEv.exit1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219: ; preds = %bb.ti
  %i.cqf = load i64, ptr %i.ga, align 8
  %i.cqg = add i64 %i.cqf, 1
  call void @_ZdlPvm(ptr noundef %i.cqd, i64 noundef %i.cqg) #34
  br label %_ZN3ada3url12clear_searchEv.exit1221

_ZN3ada3url12clear_searchEv.exit1221:             ; preds = %bb.ti, %bb.th, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219
  %i.cqh = icmp ugt i64 %i.cpy, 1
  br i1 %i.cqh, label %bb.tj, label %bb.tn

bb.tj:                                            ; preds = %_ZN3ada3url12clear_searchEv.exit1221
  %i.cqi = load i8, ptr %i.cps, align 1
  %i.cqj = or i8 %i.cqi, 32
  %i.cqk = add i8 %i.cqj, -97
  %spec.select.i.i1222 = icmp ult i8 %i.cqk, 26
  br i1 %spec.select.i.i1222, label %bb.tk, label %bb.tn

bb.tk:                                            ; preds = %bb.tj
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cps, i64 1
  %i.cqm = load i8, ptr %i.cql, align 1
  switch i8 %i.cqm, label %bb.tn [
    i8 58, label %bb.tl
    i8 124, label %bb.tl
  ]

bb.tl:                                            ; preds = %bb.tk, %bb.tk
  %i.cqn = icmp eq i64 %i.cpy, 2
  br i1 %i.cqn, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cps, i64 2
  %i.cqp = load i8, ptr %i.cqo, align 1
  switch i8 %i.cqp, label %bb.tn [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
  ]

bb.tn:                                            ; preds = %bb.tm, %bb.tk, %bb.tj, %_ZN3ada3url12clear_searchEv.exit1221
  %i.cqq = load i8, ptr %i.f, align 1
  %i.cqr = icmp eq i8 %i.cqq, 6
  %.pre2624 = load i64, ptr %i.q, align 8         ; 7 uses
  br i1 %i.cqr, label %bb.to, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread

bb.to:                                            ; preds = %bb.tn
  %i.cqs = icmp ugt i64 %.pre2624, 1
  br i1 %i.cqs, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225, label %bb.tp

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225:   ; preds = %bb.to
  %i.cqt = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.cqu = add i64 %.pre2624, -1
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqt, i64 1
  %i.cqw = call ptr @memchr(ptr noundef nonnull %i.cqv, i32 noundef 47, i64 noundef %i.cqu) #31 ; 2 uses
  %.not.i1226 = icmp eq ptr %i.cqw, null
  %i.cqx = ptrtoint ptr %i.cqw to i64
  %i.cqy = ptrtoint ptr %i.cqt to i64
  %i.cqz = sub i64 %i.cqx, %i.cqy
  %i.cra = icmp eq i64 %i.cqz, -1
  %or.cond1909 = or i1 %.not.i1226, %i.cra
  %i.crb = add i64 %.pre2624, -3
  %i.crc = icmp ult i64 %i.crb, -2
  %or.cond3311 = select i1 %or.cond1909, i1 %i.crc, i1 false
  br i1 %or.cond3311, label %bb.tq, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

bb.tp:                                            ; preds = %bb.to
  %i.crd = icmp eq i64 %.pre2624, 0
  br i1 %i.crd, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

bb.tq:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225
  %i.cre = getelementptr inbounds nuw i8, ptr %i.cqt, i64 1
  %i.crf = load i8, ptr %i.cre, align 1
  %i.crg = or i8 %i.crf, 32
  %i.crh = add i8 %i.crg, -97
  %spec.select.i.i1235 = icmp ult i8 %i.crh, 26
  br i1 %spec.select.i.i1235, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236: ; preds = %bb.tq
  %i.cri = getelementptr inbounds nuw i8, ptr %i.cqt, i64 2
  %i.crj = load i8, ptr %i.cri, align 1
  %i.crk = icmp eq i8 %i.crj, 58
  br i1 %i.crk, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread: ; preds = %bb.tn
  %.not.i1237 = icmp eq i64 %.pre2624, 0
  br i1 %.not.i1237, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread: ; preds = %bb.tp, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, %bb.tq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread
  %i.crl = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not13.i12403542 = icmp eq i64 %.pre2624, 0
  br i1 %.not13.i12403542, label %.critedge326.jt16, label %.lr.ph3544

bb.tr:                                            ; preds = %.lr.ph3544
  %.not13.i1240 = icmp eq i64 %i.crm, 0
  br i1 %.not13.i1240, label %.critedge326.jt16, label %.lr.ph3544, !llvm.loop !97

.lr.ph3544:                                       ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread, %bb.tr
  %.1.i12393543 = phi i64 [ %i.crm, %bb.tr ], [ %.pre2624, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ]
  %i.crm = add i64 %.1.i12393543, -1              ; 5 uses
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crl, i64 %i.crm
  %i.cro = load i8, ptr %i.crn, align 1
  %i.crp = icmp eq i8 %i.cro, 47
  br i1 %i.crp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244, label %bb.tr, !llvm.loop !97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244: ; preds = %.lr.ph3544
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crl, i64 %i.crm
  store i64 %i.crm, ptr %i.q, align 8
  store i8 0, ptr %i.crq, align 1
  br label %.critedge326.jt16

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223: ; preds = %bb.tm, %bb.tm, %bb.tm, %bb.tm, %bb.tl
  store i64 0, ptr %i.q, align 8
  %i.crr = load ptr, ptr %i.o, align 8
  store i8 0, ptr %i.crr, align 1
  store i8 1, ptr %i.d, align 1
  br label %.critedge326.jt16

.critedge342.jt8:                                 ; preds = %bb.tf
  %i.crs = add i64 %.15283.jt83539, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.crs, %.sroa.01347.1
  br i1 %.not.jt8, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218, !llvm.loop !94

bb.ts:                                            ; preds = %bb.ah
  unreachable

.critedge326:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread, %bb.mz, %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865
  %.sroa.01503.2 = phi i16 [ %.sroa.01503.024032907, %bb.mz ], [ %.sroa.01503.024032907, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.sroa.01503.024032907, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01503.024032907, %.sink.split.i.i ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ]
  %.15283 = phi i64 [ %.11279296629742984, %bb.mz ], [ %.11279296629742984, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.11279296629742984, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.92772950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279296629742984, %.sink.split.i.i ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.92772951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ] ; 2 uses
  %.18 = phi i32 [ %.12296729732989, %bb.mz ], [ %.12296729732989, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.12296729732989, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.82952, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12296729732989, %.sink.split.i.i ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.82953, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ]
  %.not = icmp ugt i64 %.15283, %.sroa.01347.1
  br i1 %.not, label %.loopexit3090, label %bb.ah, !llvm.loop !94

.critedge326.jt19:                                ; preds = %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread1746, %bb.fc
  %i.crt = add i64 %i.abl, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.crt, %.sroa.01347.1
  br i1 %.not.jt19, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit869, !llvm.loop !94

.critedge326.jt10:                                ; preds = %bb.tc, %bb.tc
  %i.cru = add i64 %.15283.jt83539, 1             ; 14 uses
  %.not.jt10 = icmp ugt i64 %i.cru, %.sroa.01347.1
  br i1 %.not.jt10, label %.loopexit3090, label %bb.pn, !llvm.loop !94

.critedge326.jt9:                                 ; preds = %bb.po, %bb.po
  %i.crv = add i64 %.15283.jt83539, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.crv, %.sroa.01347.1
  br i1 %.not.jt9, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1114, !llvm.loop !94

.critedge326.jt12:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.dv
  %.15283.jt12 = phi i64 [ %i.ua, %bb.dv ], [ %i.ru, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15283.jt12, %.sroa.01347.1
  br i1 %.not.jt12, label %.loopexit3090, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit645.thread, !llvm.loop !94

.critedge326.jt7:                                 ; preds = %bb.dh, %bb.dg
  %i.crw = add i64 %.15283.jt63525, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.crw, %.sroa.01347.1
  br i1 %.not.jt7, label %.loopexit3090, label %bb.dp, !llvm.loop !94

.critedge326.jt15:                                ; preds = %bb.tg, %bb.lz, %bb.di
  %.026824052892.lcssa.sink = phi i64 [ %.10278, %bb.lz ], [ %.15283.jt63525, %bb.di ], [ %.15283.jt83539, %bb.tg ]
  %i.crx = add i64 %.026824052892.lcssa.sink, 1   ; 2 uses
  %.not.jt15 = icmp ugt i64 %i.crx, %.sroa.01347.1
  br i1 %.not.jt15, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, !llvm.loop !94

.critedge326.jt3:                                 ; preds = %.thread1653, %bb.bi, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557
  %.15283.jt3 = phi i64 [ %.15283.jt0, %bb.bi ], [ %.32712396, %.thread1653 ], [ %.15283.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15283.jt3, %.sroa.01347.1
  br i1 %.not.jt3, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit653, !llvm.loop !94

.critedge326.jt0:                                 ; preds = %.lr.ph2384, %bb.du, %bb.de
  %.15283.jt0 = phi i64 [ %i.tz, %bb.du ], [ %spec.select351, %bb.de ], [ %.62742383, %.lr.ph2384 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15283.jt0, %.sroa.01347.1
  br i1 %.not.jt0, label %.loopexit3090, label %bb.bi, !llvm.loop !94

.critedge326.jt11:                                ; preds = %bb.ba
  %i.cry = add i64 %.12692401, 2                  ; 4 uses
  %.not.jt11 = icmp ugt i64 %i.cry, %.sroa.01347.1
  br i1 %.not.jt11, label %.loopexit3090, label %bb.dd, !llvm.loop !94

.critedge326.jt13:                                ; preds = %bb.ay, %bb.ax
  %i.crz = add i64 %.12692401, 1                  ; 5 uses
  %.not.jt13 = icmp ugt i64 %i.crz, %.sroa.01347.1
  br i1 %.not.jt13, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit641, !llvm.loop !94

.critedge326.jt14:                                ; preds = %bb.ax
  %i.csa = add i64 %.12692401, 1                  ; 5 uses
  %.not.jt14 = icmp ugt i64 %i.csa, %.sroa.01347.1
  br i1 %.not.jt14, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit624, !llvm.loop !94

.critedge326.jt18:                                ; preds = %bb.ba, %bb.az
  %i.csb = add i64 %.12692401, 1                  ; 2 uses
  %.not.jt18 = icmp ugt i64 %i.csb, %.sroa.01347.1
  br i1 %.not.jt18, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit824, !llvm.loop !94

.critedge326.jt16:                                ; preds = %bb.do, %bb.te, %bb.td, %bb.tr, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread, %bb.tp, %bb.dm, %bb.de, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, %bb.pu, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread, %bb.pv, %bb.pv, %bb.pv, %bb.pv, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223, %bb.pp, %bb.pq, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread, %bb.pr, %bb.lz, %bb.lx, %.critedge338.jt16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.qe, %bb.qe, %bb.qe, %bb.qe, %bb.dt, %bb.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244
  %.sroa.01503.2.jt16 = phi i16 [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223 ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.tr ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.pu ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244 ], [ %.sroa.01503.02403, %bb.de ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qd ], [ %.sroa.01503.02403, %bb.dt ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.sroa.01503.02403, %bb.dm ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236 ], [ %.sroa.01503.1, %bb.lx ], [ %.sroa.01503.1, %bb.lz ], [ %.sroa.01503.02403, %bb.tp ], [ %.sroa.01503.02403, %bb.pr ], [ %.sroa.01503.1, %.critedge338.jt16 ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread ], [ %.sroa.01503.02403, %bb.pq ], [ %.sroa.01503.02403, %bb.pp ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.sroa.01503.02403, %bb.te ], [ %.sroa.01503.02403, %bb.td ], [ %.sroa.01503.02403, %bb.do ]
  %.15283.jt16 = phi i64 [ %.15283.jt83539, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ], [ %.15283.jt83539, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223 ], [ %i.cru, %bb.pv ], [ %i.crv, %bb.qe ], [ %.15283.jt83539, %bb.tr ], [ %i.crv, %bb.qe ], [ %i.cru, %bb.pu ], [ %.15283.jt83539, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread ], [ %.15283.jt63525, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15283.jt83539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244 ], [ %spec.select351, %bb.de ], [ %i.cru, %bb.pv ], [ %i.cru, %bb.pv ], [ %i.crv, %bb.qd ], [ %i.crw, %bb.dt ], [ %i.cru, %bb.pv ], [ %i.crv, %bb.qe ], [ %i.crv, %bb.qe ], [ %.15283.jt63525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.15283.jt63525, %bb.dm ], [ %.15283.jt83539, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236 ], [ %.10278, %bb.lx ], [ %.10278, %bb.lz ], [ %.15283.jt83539, %bb.tp ], [ %i.cru, %bb.pr ], [ %i.bgs, %.critedge338.jt16 ], [ %i.cru, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread ], [ %i.cru, %bb.pq ], [ %i.cru, %bb.pp ], [ %.15283.jt63525, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.15283.jt63525, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.15283.jt83539, %bb.te ], [ %.15283.jt83539, %bb.td ], [ %.15283.jt63525, %bb.do ] ; 2 uses
  %.not.jt16 = icmp ugt i64 %.15283.jt16, %.sroa.01347.1
  br i1 %.not.jt16, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit877, !llvm.loop !94

.critedge326.jt17:                                ; preds = %bb.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.id, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.ia, %.critedge338.jt17, %bb.qg
  %.sroa.01503.2.jt17 = phi i16 [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %.sroa.01503.02403, %bb.tb ], [ %.sroa.01503.02403, %bb.qg ], [ %.sroa.01503.02403, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %.sroa.01503.02403, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.01503.02403, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.01503.02403, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.sroa.01503.1, %.critedge338.jt17 ], [ %.sroa.01503.02403, %bb.ia ], [ %.sroa.01503.02403, %bb.id ]
  %.15283.jt17 = phi i64 [ %i.aox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %i.cby, %bb.tb ], [ %i.crv, %bb.qg ], [ %i.aox, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %i.cby, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.cby, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.aox, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %i.bgr, %.critedge338.jt17 ], [ %i.aox, %bb.ia ], [ %i.aox, %bb.id ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15283.jt17, %.sroa.01347.1
  br i1 %.not.jt17, label %.loopexit3090, label %bb.lt, !llvm.loop !94

.critedge326.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3090, label %.preheader1981, !llvm.loop !94

.critedge326.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3090, label %.critedge326.jt4.thread, !llvm.loop !94

.loopexit3090:                                    ; preds = %.critedge326.jt8.preheader, %.critedge326.jt6.preheader, %.critedge326.jt19, %.critedge326.jt10, %.critedge326.jt9, %.critedge326.jt12, %.critedge326.jt7, %.critedge326.jt3, %.critedge326.jt0, %.critedge326.jt11, %.critedge326.jt13, %.critedge326.jt14, %.critedge326.jt18, %.critedge326.jt16, %.critedge326.jt17, %.critedge326.jt2, %.critedge326.jt4, %.critedge326, %.critedge332.jt6, %.critedge342.jt8, %.critedge326.jt15
  br i1 %.sroa.14.0, label %bb.tt, label %.critedge346.critedge

bb.tt:                                            ; preds = %.loopexit3090
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %4, i64 %.sroa.01341.0, ptr %.sroa.9.0, ptr noundef nonnull @_ZN3ada14character_setsL23FRAGMENT_PERCENT_ENCODEE)
  %i.csc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.csd = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.csc, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  %i.cse = load ptr, ptr %4, align 8              ; 2 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.csg = icmp eq ptr %i.cse, %i.csf
  br i1 %i.csg, label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245: ; preds = %bb.tt
  %i.csh = load i64, ptr %i.csf, align 8
  %i.csi = add i64 %i.csh, 1
  call void @_ZdlPvm(ptr noundef %i.cse, i64 noundef %i.csi) #34
  br label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248

_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248: ; preds = %bb.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge346.critedge

.critedge329:                                     ; preds = %bb.ls, %bb.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.fc, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.li, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread1778, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread, %bb.hz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1867, %.thread1661
  %i.csj = load ptr, ptr %27, align 8             ; 2 uses
  %i.csk = icmp eq ptr %i.csj, %i.ad
  br i1 %i.csk, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.critedge:                            ; preds = %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248, %bb.lw, %bb.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, %.loopexit3090, %bb.bg, %bb.be, %bb.lv
  %i.csl = load ptr, ptr %27, align 8             ; 2 uses
  %i.csm = icmp eq ptr %i.csl, %i.ad
  br i1 %i.csm, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.sink.split.sink.split:               ; preds = %.critedge346.critedge, %.critedge329
  %.sink3556 = phi ptr [ %i.csj, %.critedge329 ], [ %i.csl, %.critedge346.critedge ]
  %i.csn = load i64, ptr %i.ad, align 8
  %i.cso = add i64 %i.csn, 1
  call void @_ZdlPvm(ptr noundef %.sink3556, i64 noundef %i.cso) #34
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
