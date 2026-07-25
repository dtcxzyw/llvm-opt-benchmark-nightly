inline.NumInlined: 8332
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.tb:                                            ; preds = %bb.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cpb = load i8, ptr %i.m, align 8, !range !73, !noundef !74
  %i.cpc = trunc nuw i8 %i.cpb to i1
  %i.cpd = load i64, ptr %i.gd, align 8
  %i.cpe = icmp eq i64 %i.cpd, 9
  %or.cond3308 = select i1 %i.cpc, i1 %i.cpe, i1 false
  br i1 %or.cond3308, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.tb
  %i.cpf = load ptr, ptr %i.ft, align 8           ; 2 uses
  %i.cpg = load i64, ptr %i.cpf, align 1
  %i.cph = xor i64 %i.cpg, 8317981851476258668
  %i.cpi = getelementptr i8, ptr %i.cpf, i64 8
  %i.cpj = load i8, ptr %i.cpi, align 1
  %i.cpk = zext i8 %i.cpj to i64
  %i.cpl = xor i64 %i.cpk, 116
  %i.cpm = or i64 %i.cph, %i.cpl
  %i.cpn = icmp ne i64 %i.cpm, 0
  %i.cpo = zext i1 %i.cpn to i32
  %i.cpp = icmp eq i32 %i.cpo, 0
  br i1 %i.cpp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cpq = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  br label %.critedge326.jt17

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph, %.critedge342.jt8
  %.15283.jt83538 = phi i64 [ %.15283.jt8.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph ], [ %i.crr, %.critedge342.jt8 ] ; 16 uses
  %i.cpr = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %.15283.jt83538 ; 5 uses
  store i8 6, ptr %i.f, align 1
  %i.cps = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  %.not306 = icmp eq i64 %.15283.jt83538, %.sroa.01347.1 ; 2 uses
  br i1 %.not306, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218
  %i.cpt = load i8, ptr %i.cpr, align 1
  switch i8 %i.cpt, label %bb.td [
    i8 47, label %.critedge326.jt10
    i8 92, label %.critedge326.jt10
  ]

bb.td:                                            ; preds = %bb.tc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218
  br i1 %i.x, label %bb.te, label %.critedge326.jt16

bb.te:                                            ; preds = %bb.td
  %i.cpu = load i8, ptr %i.fu, align 1
  %i.cpv = icmp eq i8 %i.cpu, 6
  br i1 %i.cpv, label %bb.tf, label %.critedge326.jt16

bb.tf:                                            ; preds = %bb.te
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.cpw = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  store i8 %i.cpw, ptr %i.d, align 1
  br i1 %.not306, label %.critedge342.jt8, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.cpx = sub nuw i64 %.sroa.01347.1, %.15283.jt83538 ; 2 uses
  %i.cpy = load i8, ptr %i.cpr, align 1
  %i.cpz = icmp eq i8 %i.cpy, 63
  br i1 %i.cpz, label %.critedge326.jt15, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.cqa = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.cqb = trunc nuw i8 %i.cqa to i1
  store i8 0, ptr %i.r, align 8
  br i1 %i.cqb, label %bb.ti, label %_ZN3ada3url12clear_searchEv.exit1221

bb.ti:                                            ; preds = %bb.th
  %i.cqc = load ptr, ptr %i.fy, align 8           ; 2 uses
  %i.cqd = icmp eq ptr %i.cqc, %i.ga
  br i1 %i.cqd, label %_ZN3ada3url12clear_searchEv.exit1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219: ; preds = %bb.ti
  %i.cqe = load i64, ptr %i.ga, align 8
  %i.cqf = add i64 %i.cqe, 1
  call void @_ZdlPvm(ptr noundef %i.cqc, i64 noundef %i.cqf) #34
  br label %_ZN3ada3url12clear_searchEv.exit1221

_ZN3ada3url12clear_searchEv.exit1221:             ; preds = %bb.ti, %bb.th, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219
  %i.cqg = icmp ugt i64 %i.cpx, 1
  br i1 %i.cqg, label %bb.tj, label %bb.tn

bb.tj:                                            ; preds = %_ZN3ada3url12clear_searchEv.exit1221
  %i.cqh = load i8, ptr %i.cpr, align 1
  %i.cqi = or i8 %i.cqh, 32
  %i.cqj = add i8 %i.cqi, -97
  %spec.select.i.i1222 = icmp ult i8 %i.cqj, 26
  br i1 %spec.select.i.i1222, label %bb.tk, label %bb.tn

bb.tk:                                            ; preds = %bb.tj
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cpr, i64 1
  %i.cql = load i8, ptr %i.cqk, align 1
  switch i8 %i.cql, label %bb.tn [
    i8 58, label %bb.tl
    i8 124, label %bb.tl
  ]

bb.tl:                                            ; preds = %bb.tk, %bb.tk
  %i.cqm = icmp eq i64 %i.cpx, 2
  br i1 %i.cqm, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cpr, i64 2
  %i.cqo = load i8, ptr %i.cqn, align 1
  switch i8 %i.cqo, label %bb.tn [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
  ]

bb.tn:                                            ; preds = %bb.tm, %bb.tk, %bb.tj, %_ZN3ada3url12clear_searchEv.exit1221
  %i.cqp = load i8, ptr %i.f, align 1
  %i.cqq = icmp eq i8 %i.cqp, 6
  %.pre2624 = load i64, ptr %i.q, align 8         ; 7 uses
  br i1 %i.cqq, label %bb.to, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread

bb.to:                                            ; preds = %bb.tn
  %i.cqr = icmp ugt i64 %.pre2624, 1
  br i1 %i.cqr, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225, label %bb.tp

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225:   ; preds = %bb.to
  %i.cqs = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.cqt = add i64 %.pre2624, -1
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqs, i64 1
  %i.cqv = call ptr @memchr(ptr noundef nonnull %i.cqu, i32 noundef 47, i64 noundef %i.cqt) #31 ; 2 uses
  %.not.i1226 = icmp eq ptr %i.cqv, null
  %i.cqw = ptrtoint ptr %i.cqv to i64
  %i.cqx = ptrtoint ptr %i.cqs to i64
  %i.cqy = sub i64 %i.cqw, %i.cqx
  %i.cqz = icmp eq i64 %i.cqy, -1
  %or.cond1909 = or i1 %.not.i1226, %i.cqz
  %i.cra = add i64 %.pre2624, -3
  %i.crb = icmp ult i64 %i.cra, -2
  %or.cond3310 = select i1 %or.cond1909, i1 %i.crb, i1 false
  br i1 %or.cond3310, label %bb.tq, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

bb.tp:                                            ; preds = %bb.to
  %i.crc = icmp eq i64 %.pre2624, 0
  br i1 %i.crc, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

bb.tq:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cqs, i64 1
  %i.cre = load i8, ptr %i.crd, align 1
  %i.crf = or i8 %i.cre, 32
  %i.crg = add i8 %i.crf, -97
  %spec.select.i.i1235 = icmp ult i8 %i.crg, 26
  br i1 %spec.select.i.i1235, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236: ; preds = %bb.tq
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cqs, i64 2
  %i.cri = load i8, ptr %i.crh, align 1
  %i.crj = icmp eq i8 %i.cri, 58
  br i1 %i.crj, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread: ; preds = %bb.tn
  %.not.i1237 = icmp eq i64 %.pre2624, 0
  br i1 %.not.i1237, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread: ; preds = %bb.tp, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, %bb.tq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread
  %i.crk = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not13.i12403541 = icmp eq i64 %.pre2624, 0
  br i1 %.not13.i12403541, label %.critedge326.jt16, label %.lr.ph3543

bb.tr:                                            ; preds = %.lr.ph3543
  %.not13.i1240 = icmp eq i64 %i.crl, 0
  br i1 %.not13.i1240, label %.critedge326.jt16, label %.lr.ph3543, !llvm.loop !97

.lr.ph3543:                                       ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread, %bb.tr
  %.1.i12393542 = phi i64 [ %i.crl, %bb.tr ], [ %.pre2624, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ]
  %i.crl = add i64 %.1.i12393542, -1              ; 5 uses
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crk, i64 %i.crl
  %i.crn = load i8, ptr %i.crm, align 1
  %i.cro = icmp eq i8 %i.crn, 47
  br i1 %i.cro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244, label %bb.tr, !llvm.loop !97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244: ; preds = %.lr.ph3543
  %i.crp = getelementptr inbounds nuw i8, ptr %i.crk, i64 %i.crl
  store i64 %i.crl, ptr %i.q, align 8
  store i8 0, ptr %i.crp, align 1
  br label %.critedge326.jt16

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223: ; preds = %bb.tm, %bb.tm, %bb.tm, %bb.tm, %bb.tl
  store i64 0, ptr %i.q, align 8
  %i.crq = load ptr, ptr %i.o, align 8
  store i8 0, ptr %i.crq, align 1
  store i8 1, ptr %i.d, align 1
  br label %.critedge326.jt16

.critedge342.jt8:                                 ; preds = %bb.tf
  %i.crr = add i64 %.15283.jt83538, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.crr, %.sroa.01347.1
  br i1 %.not.jt8, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218, !llvm.loop !94

bb.ts:                                            ; preds = %bb.ah
  unreachable

.critedge326:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread, %bb.mz, %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865
  %.sroa.01503.2 = phi i16 [ %.sroa.01503.024032906, %bb.mz ], [ %.sroa.01503.024032906, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.sroa.01503.024032906, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.sroa.01503.024032906, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.sroa.01503.024032906, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01503.024032906, %.sink.split.i.i ], [ %.sroa.01503.024032906, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.sroa.01503.024032906, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ]
  %.15283 = phi i64 [ %.11279296529732983, %bb.mz ], [ %.11279296529732983, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.11279296529732983, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.11279296529732983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.92772949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.11279296529732983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279296529732983, %.sink.split.i.i ], [ %.11279296529732983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.11279296529732983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.92772950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ] ; 2 uses
  %.18 = phi i32 [ %.12296629722988, %bb.mz ], [ %.12296629722988, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.12296629722988, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.12296629722988, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.82951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.12296629722988, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12296629722988, %.sink.split.i.i ], [ %.12296629722988, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.12296629722988, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.82952, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ]
  %.not = icmp ugt i64 %.15283, %.sroa.01347.1
  br i1 %.not, label %.loopexit3089, label %bb.ah, !llvm.loop !94

.critedge326.jt19:                                ; preds = %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread1746, %bb.fc
  %i.crs = add i64 %i.abl, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.crs, %.sroa.01347.1
  br i1 %.not.jt19, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit869, !llvm.loop !94

.critedge326.jt10:                                ; preds = %bb.tc, %bb.tc
  %i.crt = add i64 %.15283.jt83538, 1             ; 14 uses
  %.not.jt10 = icmp ugt i64 %i.crt, %.sroa.01347.1
  br i1 %.not.jt10, label %.loopexit3089, label %bb.pn, !llvm.loop !94

.critedge326.jt9:                                 ; preds = %bb.po, %bb.po
  %i.cru = add i64 %.15283.jt83538, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.cru, %.sroa.01347.1
  br i1 %.not.jt9, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1114, !llvm.loop !94

.critedge326.jt12:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.dv
  %.15283.jt12 = phi i64 [ %i.ua, %bb.dv ], [ %i.ru, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15283.jt12, %.sroa.01347.1
  br i1 %.not.jt12, label %.loopexit3089, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit645.thread, !llvm.loop !94

.critedge326.jt7:                                 ; preds = %bb.dh, %bb.dg
  %i.crv = add i64 %.15283.jt63524, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.crv, %.sroa.01347.1
  br i1 %.not.jt7, label %.loopexit3089, label %bb.dp, !llvm.loop !94

.critedge326.jt15:                                ; preds = %bb.tg, %bb.lz, %bb.di
  %.026824052891.lcssa.sink = phi i64 [ %.10278, %bb.lz ], [ %.15283.jt63524, %bb.di ], [ %.15283.jt83538, %bb.tg ]
  %i.crw = add i64 %.026824052891.lcssa.sink, 1   ; 2 uses
  %.not.jt15 = icmp ugt i64 %i.crw, %.sroa.01347.1
  br i1 %.not.jt15, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, !llvm.loop !94

.critedge326.jt3:                                 ; preds = %.thread1653, %bb.bi, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557
  %.15283.jt3 = phi i64 [ %.15283.jt0, %bb.bi ], [ %.32712396, %.thread1653 ], [ %.15283.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15283.jt3, %.sroa.01347.1
  br i1 %.not.jt3, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit653, !llvm.loop !94

.critedge326.jt0:                                 ; preds = %.lr.ph2384, %bb.du, %bb.de
  %.15283.jt0 = phi i64 [ %i.tz, %bb.du ], [ %spec.select351, %bb.de ], [ %.62742383, %.lr.ph2384 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15283.jt0, %.sroa.01347.1
  br i1 %.not.jt0, label %.loopexit3089, label %bb.bi, !llvm.loop !94

.critedge326.jt11:                                ; preds = %bb.ba
  %i.crx = add i64 %.12692401, 2                  ; 4 uses
  %.not.jt11 = icmp ugt i64 %i.crx, %.sroa.01347.1
  br i1 %.not.jt11, label %.loopexit3089, label %bb.dd, !llvm.loop !94

.critedge326.jt13:                                ; preds = %bb.ay, %bb.ax
  %i.cry = add i64 %.12692401, 1                  ; 5 uses
  %.not.jt13 = icmp ugt i64 %i.cry, %.sroa.01347.1
  br i1 %.not.jt13, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit641, !llvm.loop !94

.critedge326.jt14:                                ; preds = %bb.ax
  %i.crz = add i64 %.12692401, 1                  ; 5 uses
  %.not.jt14 = icmp ugt i64 %i.crz, %.sroa.01347.1
  br i1 %.not.jt14, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit624, !llvm.loop !94

.critedge326.jt18:                                ; preds = %bb.ba, %bb.az
  %i.csa = add i64 %.12692401, 1                  ; 2 uses
  %.not.jt18 = icmp ugt i64 %i.csa, %.sroa.01347.1
  br i1 %.not.jt18, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit824, !llvm.loop !94

.critedge326.jt16:                                ; preds = %bb.do, %bb.te, %bb.td, %bb.tr, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread, %bb.tp, %bb.dm, %bb.de, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, %bb.pu, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread, %bb.pv, %bb.pv, %bb.pv, %bb.pv, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223, %bb.pp, %bb.pq, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread, %bb.pr, %bb.lz, %bb.lx, %.critedge338.jt16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.qe, %bb.qe, %bb.qe, %bb.qe, %bb.dt, %bb.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244
  %.sroa.01503.2.jt16 = phi i16 [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223 ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.tr ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.pu ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244 ], [ %.sroa.01503.02403, %bb.de ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qd ], [ %.sroa.01503.02403, %bb.dt ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.sroa.01503.02403, %bb.dm ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236 ], [ %.sroa.01503.1, %bb.lx ], [ %.sroa.01503.1, %bb.lz ], [ %.sroa.01503.02403, %bb.tp ], [ %.sroa.01503.02403, %bb.pr ], [ %.sroa.01503.1, %.critedge338.jt16 ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread ], [ %.sroa.01503.02403, %bb.pq ], [ %.sroa.01503.02403, %bb.pp ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.sroa.01503.02403, %bb.te ], [ %.sroa.01503.02403, %bb.td ], [ %.sroa.01503.02403, %bb.do ]
  %.15283.jt16 = phi i64 [ %.15283.jt83538, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ], [ %.15283.jt83538, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223 ], [ %i.crt, %bb.pv ], [ %i.cru, %bb.qe ], [ %.15283.jt83538, %bb.tr ], [ %i.cru, %bb.qe ], [ %i.crt, %bb.pu ], [ %.15283.jt83538, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread ], [ %.15283.jt63524, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15283.jt83538, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244 ], [ %spec.select351, %bb.de ], [ %i.crt, %bb.pv ], [ %i.crt, %bb.pv ], [ %i.cru, %bb.qd ], [ %i.crv, %bb.dt ], [ %i.crt, %bb.pv ], [ %i.cru, %bb.qe ], [ %i.cru, %bb.qe ], [ %.15283.jt63524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.15283.jt63524, %bb.dm ], [ %.15283.jt83538, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236 ], [ %.10278, %bb.lx ], [ %.10278, %bb.lz ], [ %.15283.jt83538, %bb.tp ], [ %i.crt, %bb.pr ], [ %i.bgr, %.critedge338.jt16 ], [ %i.crt, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread ], [ %i.crt, %bb.pq ], [ %i.crt, %bb.pp ], [ %.15283.jt63524, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.15283.jt63524, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.15283.jt83538, %bb.te ], [ %.15283.jt83538, %bb.td ], [ %.15283.jt63524, %bb.do ] ; 2 uses
  %.not.jt16 = icmp ugt i64 %.15283.jt16, %.sroa.01347.1
  br i1 %.not.jt16, label %.loopexit3089, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit877, !llvm.loop !94

.critedge326.jt17:                                ; preds = %bb.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.id, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.ia, %.critedge338.jt17, %bb.qg
  %.sroa.01503.2.jt17 = phi i16 [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %.sroa.01503.02403, %bb.tb ], [ %.sroa.01503.02403, %bb.qg ], [ %.sroa.01503.02403, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %.sroa.01503.02403, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.01503.02403, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.01503.02403, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.sroa.01503.1, %.critedge338.jt17 ], [ %.sroa.01503.02403, %bb.ia ], [ %.sroa.01503.02403, %bb.id ]
  %.15283.jt17 = phi i64 [ %i.aox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %i.cbx, %bb.tb ], [ %i.cru, %bb.qg ], [ %i.aox, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %i.cbx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.cbx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.aox, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %i.bgq, %.critedge338.jt17 ], [ %i.aox, %bb.ia ], [ %i.aox, %bb.id ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15283.jt17, %.sroa.01347.1
  br i1 %.not.jt17, label %.loopexit3089, label %bb.lt, !llvm.loop !94

.critedge326.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3089, label %.preheader1981, !llvm.loop !94

.critedge326.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3089, label %.critedge326.jt4.thread, !llvm.loop !94

.loopexit3089:                                    ; preds = %.critedge326.jt8.preheader, %.critedge326.jt6.preheader, %.critedge326.jt19, %.critedge326.jt10, %.critedge326.jt9, %.critedge326.jt12, %.critedge326.jt7, %.critedge326.jt3, %.critedge326.jt0, %.critedge326.jt11, %.critedge326.jt13, %.critedge326.jt14, %.critedge326.jt18, %.critedge326.jt16, %.critedge326.jt17, %.critedge326.jt2, %.critedge326.jt4, %.critedge326, %.critedge332.jt6, %.critedge342.jt8, %.critedge326.jt15
  br i1 %.sroa.14.0, label %bb.tt, label %.critedge346.critedge

bb.tt:                                            ; preds = %.loopexit3089
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %4, i64 %.sroa.01341.0, ptr %.sroa.9.0, ptr noundef nonnull @_ZN3ada14character_setsL23FRAGMENT_PERCENT_ENCODEE)
  %i.csb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.csc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.csb, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  %i.csd = load ptr, ptr %4, align 8              ; 2 uses
  %i.cse = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.csf = icmp eq ptr %i.csd, %i.cse
  br i1 %i.csf, label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245: ; preds = %bb.tt
  %i.csg = load i64, ptr %i.cse, align 8
  %i.csh = add i64 %i.csg, 1
  call void @_ZdlPvm(ptr noundef %i.csd, i64 noundef %i.csh) #34
  br label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248

_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248: ; preds = %bb.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge346.critedge

.critedge329:                                     ; preds = %bb.ls, %bb.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.fc, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.li, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread1778, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread, %bb.hz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1867, %.thread1661
  %i.csi = load ptr, ptr %27, align 8             ; 2 uses
  %i.csj = icmp eq ptr %i.csi, %i.ad
  br i1 %i.csj, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.critedge:                            ; preds = %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248, %bb.lw, %bb.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, %.loopexit3089, %bb.bg, %bb.be, %bb.lv
  %i.csk = load ptr, ptr %27, align 8             ; 2 uses
  %i.csl = icmp eq ptr %i.csk, %i.ad
  br i1 %i.csl, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.sink.split.sink.split:               ; preds = %.critedge346.critedge, %.critedge329
  %.sink3555 = phi ptr [ %i.csi, %.critedge329 ], [ %i.csk, %.critedge346.critedge ]
  %i.csm = load i64, ptr %i.ad, align 8
  %i.csn = add i64 %i.csm, 1
  call void @_ZdlPvm(ptr noundef %.sink3555, i64 noundef %i.csn) #34
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
begin_hunk_1_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.sroa.speculated.i.i1081 = call i64 @llvm.umin.i64(i64 %i.byg, i64 %i.bye)
  %i.byh = getelementptr inbounds nuw i8, ptr %i.byf, i64 %i.bxy
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1081, ptr %i.byh)
  %i.byi = load i32, ptr %i.fy, align 8           ; 3 uses
  %i.byj = icmp eq i32 %i.byi, -1
  br i1 %i.byj, label %_ZNK3ada14url_aggregator10get_searchEv.exit1093, label %bb.ph

bb.ph:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084
  %i.byk = load i64, ptr %i.fw, align 8           ; 4 uses
  %i.byl = trunc i64 %i.byk to i32
  %i.bym = load i32, ptr %i.fz, align 4           ; 2 uses
  %.not.i1085 = icmp eq i32 %i.bym, -1
  %spec.select.i1086 = select i1 %.not.i1085, i32 %i.byl, i32 %i.bym ; 2 uses
  %i.byn = sub i32 %spec.select.i1086, %i.byi
  %i.byo = icmp ult i32 %i.byn, 2
  br i1 %i.byo, label %_ZNK3ada14url_aggregator10get_searchEv.exit1093, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.byp = zext i32 %i.byi to i64                 ; 5 uses
  %i.byq = icmp ult i64 %i.byk, %i.byp
  br i1 %i.byq, label %bb.pj, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087

bb.pj:                                            ; preds = %bb.pi
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.byp, i64 noundef %i.byk) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087: ; preds = %bb.pi
  %i.byr = zext i32 %spec.select.i1086 to i64
  %i.bys = sub nsw i64 %i.byr, %i.byp
  %i.byt = load ptr, ptr %i.fv, align 8
  %i.byu = sub nuw i64 %i.byk, %i.byp
  %.sroa.speculated.i.i1088 = call i64 @llvm.umin.i64(i64 %i.byu, i64 %i.bys)
  %i.byv = getelementptr inbounds nuw i8, ptr %i.byt, i64 %i.byp
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1093

_ZNK3ada14url_aggregator10get_searchEv.exit1093:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084, %bb.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087
  %.sroa.4.0.i1089 = phi ptr [ %i.byv, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084 ], [ @.str.48, %bb.ph ]
  %.sroa.0.0.i1090 = phi i64 [ %.sroa.speculated.i.i1088, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084 ], [ 0, %bb.ph ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1090, ptr %.sroa.4.0.i1089)
  %i.byw = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  store i8 %i.byw, ptr %i.d, align 1
  br i1 %.not349, label %.critedge385.jt8, label %bb.pk

bb.pk:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1093
  %i.byx = sub nuw i64 %.sroa.01243.1, %.15326.jt83046 ; 2 uses
  %i.byy = load i8, ptr %i.bxc, align 1
  %i.byz = icmp eq i8 %i.byy, 63
  br i1 %i.byz, label %.critedge385.jt15, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bza = icmp ugt i64 %i.byx, 1
  br i1 %i.bza, label %bb.pm, label %bb.pq

bb.pm:                                            ; preds = %bb.pl
  %i.bzb = load i8, ptr %i.bxc, align 1
  %i.bzc = or i8 %i.bzb, 32
  %i.bzd = add i8 %i.bzc, -97
  %spec.select.i.i1094 = icmp ult i8 %i.bzd, 26
  br i1 %spec.select.i.i1094, label %bb.pn, label %bb.pq

bb.pn:                                            ; preds = %bb.pm
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bxc, i64 1
  %i.bzf = load i8, ptr %i.bze, align 1
  switch i8 %i.bzf, label %bb.pq [
    i8 58, label %bb.po
    i8 124, label %bb.po
  ]

bb.po:                                            ; preds = %bb.pn, %bb.pn
  %i.bzg = icmp eq i64 %i.byx, 2
  br i1 %i.bzg, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bxc, i64 2
  %i.bzi = load i8, ptr %i.bzh, align 1
  switch i8 %i.bzi, label %bb.pq [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
  ]

bb.pq:                                            ; preds = %bb.pp, %bb.pn, %bb.pm, %bb.pl
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  %i.bzj = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bzk = extractvalue { i64, ptr } %i.bzj, 0    ; 6 uses
  %i.bzl = extractvalue { i64, ptr } %i.bzj, 1    ; 5 uses
  store ptr %i.bzl, ptr %i.gb, align 8
  %i.bzm = load i8, ptr %i.f, align 1
  %i.bzn = icmp eq i8 %i.bzm, 6
  br i1 %i.bzn, label %bb.pr, label %bb.pu

bb.pr:                                            ; preds = %bb.pq
  %i.bzo = icmp ugt i64 %i.bzk, 1
  br i1 %i.bzo, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097, label %bb.ps

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097:   ; preds = %bb.pr
  %i.bzp = add i64 %i.bzk, -1
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzl, i64 1 ; 2 uses
  %i.bzr = call ptr @memchr(ptr noundef nonnull %i.bzq, i32 noundef 47, i64 noundef %i.bzp) #31 ; 2 uses
  %.not.i1098 = icmp eq ptr %i.bzr, null
  %i.bzs = ptrtoint ptr %i.bzr to i64
  %i.bzt = ptrtoint ptr %i.bzl to i64
  %i.bzu = sub i64 %i.bzs, %i.bzt
  %i.bzv = icmp eq i64 %i.bzu, -1
  %or.cond1734 = select i1 %.not.i1098, i1 true, i1 %i.bzv
  %i.bzw = icmp ne i64 %i.bzk, 2
  %or.cond1770 = select i1 %or.cond1734, i1 %i.bzw, i1 false
  br i1 %or.cond1770, label %bb.pt, label %.lr.ph3051.preheader

bb.ps:                                            ; preds = %bb.pr
  %cond3061 = icmp eq i64 %i.bzk, 0
  br i1 %cond3061, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3051.preheader

bb.pt:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097
  %i.bzx = load i8, ptr %i.bzq, align 1
  %i.bzy = or i8 %i.bzx, 32
  %i.bzz = add i8 %i.bzy, -97
  %spec.select.i.i1104 = icmp ult i8 %i.bzz, 26
  br i1 %spec.select.i.i1104, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105, label %.lr.ph3051.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105: ; preds = %bb.pt
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzl, i64 2
  %i.cab = load i8, ptr %i.caa, align 1
  %i.cac = icmp eq i8 %i.cab, 58
  br i1 %i.cac, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3051.preheader

bb.pu:                                            ; preds = %bb.pq
  %cond3062 = icmp eq i64 %i.bzk, 0
  br i1 %cond3062, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3051.preheader

.lr.ph3051.preheader:                             ; preds = %bb.pt, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097, %bb.ps, %bb.pu, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105
  br label %.lr.ph3051

bb.pv:                                            ; preds = %.lr.ph3051
  %.not13.i1109 = icmp eq i64 %i.cad, 0
  br i1 %.not13.i1109, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3051, !llvm.loop !29

.lr.ph3051:                                       ; preds = %.lr.ph3051.preheader, %bb.pv
  %.1.i11083050 = phi i64 [ %i.cad, %bb.pv ], [ %i.bzk, %.lr.ph3051.preheader ]
  %i.cad = add i64 %.1.i11083050, -1              ; 4 uses
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzl, i64 %i.cad
  %i.caf = load i8, ptr %i.cae, align 1
  %i.cag = icmp eq i8 %i.caf, 47
  br i1 %i.cag, label %bb.pw, label %bb.pv, !llvm.loop !29

bb.pw:                                            ; preds = %.lr.ph3051
  store i64 %i.cad, ptr %37, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 1 dereferenceable(1) %39)
  %i.cah = load ptr, ptr %38, align 8
  %i.cai = load i64, ptr %i.gc, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.cai, ptr %i.cah)
  %i.caj = load ptr, ptr %38, align 8             ; 2 uses
  %i.cak = icmp eq ptr %i.caj, %i.gd
  br i1 %i.cak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114: ; preds = %bb.pw
  %i.cal = load i64, ptr %i.gd, align 8
  %i.cam = add i64 %i.cal, 1
  call void @_ZdlPvm(ptr noundef %i.caj, i64 noundef %i.cam) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116: ; preds = %bb.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pv, %bb.pu, %bb.ps, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %.critedge369.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095: ; preds = %bb.pp, %bb.pp, %bb.pp, %bb.pp, %bb.po
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge369.jt16.preheader

.critedge385.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1093
  %i.can = add i64 %.15326.jt83046, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.can, %.sroa.01243.1
  br i1 %.not.jt8, label %.critedge369.jt6..loopexit2648.loopexit2859_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1068, !llvm.loop !135

.critedge385.jt15:                                ; preds = %bb.pk
  %i.cao = add i64 %.15326.jt83046, 1
  br label %.critedge369.jt15

bb.px:                                            ; preds = %bb.ah
  unreachable

.critedge369.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit640
  %.15326.jt6.ph = phi i64 [ %i.iz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.iz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit640 ], [ %.031121212577, %bb.bg ] ; 2 uses
  %.not.jt63032 = icmp ugt i64 %.15326.jt6.ph, %.sroa.01243.1
  br i1 %.not.jt63032, label %.loopexit2648, label %.lr.ph3034, !llvm.loop !135

.lr.ph3034:                                       ; preds = %.critedge369.jt6.preheader
  br label %bb.by, !llvm.loop !135

.critedge369:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897
  %.15326 = phi i64 [ %.93202616, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897 ], [ %.93202615, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892 ] ; 2 uses
  %.18 = phi i32 [ %.82618, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897 ], [ %.82617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892 ]
  %.not = icmp ugt i64 %.15326, %.sroa.01243.1
  br i1 %.not, label %.loopexit2648, label %bb.ah, !llvm.loop !135

.critedge369.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.ex, %bb.ev
  %i.cap = add i64 %i.adk, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.cap, %.sroa.01243.1
  br i1 %.not.jt19, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901, !llvm.loop !135

.critedge369.jt10:                                ; preds = %bb.oz, %bb.oz
  %i.caq = add i64 %.15326.jt83046, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.caq, %.sroa.01243.1
  br i1 %.not.jt10, label %.loopexit2648, label %bb.lm, !llvm.loop !135

.critedge369.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2648, label %.preheader1777, !llvm.loop !135

.critedge369.jt9:                                 ; preds = %bb.ln, %bb.ln
  %i.car = add i64 %.15326.jt83046, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.car, %.sroa.01243.1
  br i1 %.not.jt9, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit972, !llvm.loop !135

.critedge369.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1064, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit802.thread, %bb.hn, %bb.hl, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.hi, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1060, %bb.mj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1061, %.critedge381.jt17
  %.15326.jt17 = phi i64 [ %i.bke, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1064 ], [ %i.aph, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437 ], [ %i.aph, %bb.hi ], [ %i.car, %bb.mj ], [ %i.bke, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1061 ], [ %i.aph, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread ], [ %i.aph, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit802.thread ], [ %i.aph, %bb.hn ], [ %i.aph, %bb.hl ], [ %i.bgr, %.critedge381.jt17 ], [ %i.bke, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1060 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15326.jt17, %.sroa.01243.1
  br i1 %.not.jt17, label %.loopexit2648, label %bb.lf, !llvm.loop !135

.critedge369.jt0:                                 ; preds = %.lr.ph2102, %bb.bx, %bb.dn
  %.15326.jt0 = phi i64 [ %spec.select394, %bb.bx ], [ %i.vy, %bb.dn ], [ %.63172101, %.lr.ph2102 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15326.jt0, %.sroa.01243.1
  br i1 %.not.jt0, label %.loopexit2648, label %bb.bh, !llvm.loop !135

.critedge369.jt12:                                ; preds = %bb.do, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15326.jt12 = phi i64 [ %i.vz, %bb.do ], [ %i.pn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15326.jt12, %.sroa.01243.1
  br i1 %.not.jt12, label %.loopexit2648, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit703.thread, !llvm.loop !135

.critedge369.jt7:                                 ; preds = %bb.ci, %bb.ch
  %i.cas = add i64 %.15326.jt63033, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.cas, %.sroa.01243.1
  br i1 %.not.jt7, label %.loopexit2648, label %bb.df, !llvm.loop !135

.critedge369.jt15:                                ; preds = %.critedge385.jt15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt15, %.critedge381.jt15, %.critedge375.jt15
  %.15326.jt15 = phi i64 [ %i.bgy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt15 ], [ %i.cao, %.critedge385.jt15 ], [ %i.uy, %.critedge375.jt15 ], [ %i.bgs, %.critedge381.jt15 ] ; 2 uses
  %.not.jt15 = icmp ugt i64 %.15326.jt15, %.sroa.01243.1
  br i1 %.not.jt15, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit707, !llvm.loop !135

.critedge369.jt3:                                 ; preds = %.thread1473, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597
  %.15326.jt3 = phi i64 [ %.15326.jt0, %bb.bh ], [ %.33142114, %.thread1473 ], [ %.15326.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15326.jt3, %.sroa.01243.1
  br i1 %.not.jt3, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit711, !llvm.loop !135

.critedge369.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2648, label %.critedge369.jt4.thread, !llvm.loop !135

.critedge369.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.iz, %.sroa.01243.1
  br i1 %.not.jt18, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit863, !llvm.loop !135

.critedge369.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.iz, %.sroa.01243.1
  br i1 %.not.jt13, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit699, !llvm.loop !135

.critedge369.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.iz, %.sroa.01243.1
  br i1 %.not.jt14, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit640, !llvm.loop !135

.critedge369.jt11:                                ; preds = %bb.ba
  %.pre2315 = add i64 %.13122119, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2315, %.sroa.01243.1
  br i1 %.not.jt11, label %.loopexit2648, label %bb.bw, !llvm.loop !135

.critedge369.jt16.preheader:                      ; preds = %bb.cx, %bb.pb, %bb.pa, %bb.cw, %bb.cu, %bb.lo, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit957, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit963, %_ZNK3ada14url_aggregator12get_hostnameEv.exit695, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686, %bb.lj, %.critedge381.jt16, %bb.ll, %bb.mh, %bb.mh, %bb.mh, %bb.mh, %bb.mg, %_ZNK3ada14url_aggregator12get_pathnameEv.exit939, %bb.lz, %bb.lz, %bb.lz, %bb.lz, %bb.lp, %bb.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i959, %bb.ma, %bb.bx
  %.15326.jt16.ph = phi i64 [ %spec.select394, %bb.bx ], [ %i.caq, %bb.lz ], [ %i.caq, %_ZNK3ada14url_aggregator12get_pathnameEv.exit939 ], [ %.15326.jt63033, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.car, %bb.mh ], [ %i.car, %bb.mg ], [ %i.car, %bb.mh ], [ %i.caq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968 ], [ %i.car, %bb.mh ], [ %.15326.jt63033, %bb.cw ], [ %i.caq, %bb.lz ], [ %.10321, %bb.ll ], [ %i.caq, %bb.lz ], [ %.10321, %bb.lj ], [ %i.caq, %bb.lz ], [ %.15326.jt63033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ], [ %.sroa.01243.1, %bb.bw ], [ %i.cas, %_ZNK3ada14url_aggregator12get_hostnameEv.exit695 ], [ %i.caq, %bb.ly ], [ %i.caq, %bb.ma ], [ %i.caq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i959 ], [ %i.caq, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit963 ], [ %i.caq, %bb.lp ], [ %i.caq, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit957 ], [ %.15326.jt83046, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095 ], [ %i.bgt, %.critedge381.jt16 ], [ %.15326.jt83046, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %.15326.jt83046, %bb.pb ], [ %i.car, %bb.mh ], [ %.15326.jt63033, %bb.cu ], [ %i.caq, %bb.lo ], [ %.15326.jt83046, %bb.pa ], [ %.15326.jt63033, %bb.cx ] ; 5 uses
  %.not.jt163052 = icmp ugt i64 %.15326.jt16.ph, %.sroa.01243.1
  br i1 %.not.jt163052, label %.loopexit2648, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel, !llvm.loop !135

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel: ; preds = %.critedge369.jt16.preheader
  %i.cat = sub nuw i64 %.sroa.01243.1, %.15326.jt16.ph ; 2 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %.15326.jt16.ph ; 4 uses
  %.not1743.peel = icmp eq i64 %.sroa.01243.1, %.15326.jt16.ph
  br i1 %.not1743.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i920.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i920.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel
  %i.cav = call ptr @memchr(ptr noundef %i.cau, i32 noundef 63, i64 noundef %i.cat) #31 ; 2 uses
  %.not.i921.peel = icmp eq ptr %i.cav, null
  %i.caw = ptrtoint ptr %i.cav to i64
  %i.cax = ptrtoint ptr %i.cau to i64
  %i.cay = sub i64 %i.caw, %i.cax                 ; 2 uses
  %.not353.peel = icmp eq i64 %i.cay, -1
  %or.cond3482 = select i1 %.not.i921.peel, i1 true, i1 %.not353.peel
  br i1 %or.cond3482, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt15

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i920.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel
  call void @_ZN3ada14url_aggregator21consume_prepared_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.cat, ptr %i.cau)
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01243.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.lr.ph.peel.newph, label %.critedge369.jt6..loopexit2648.loopexit2859_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.lr.ph.peel.newph: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel
  %i.caz = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %i.gr ; 4 uses
  %i.cba = ptrtoint ptr %i.caz to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918, !llvm.loop !135

.critedge369.jt6..loopexit2648.loopexit2859_crit_edge: ; preds = %.critedge375.jt6, %.critedge385.jt8, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel
  br label %.loopexit2648, !llvm.loop !135

.loopexit2648:                                    ; preds = %.critedge369.jt2, %.critedge369.jt18, %.critedge369, %.critedge369.jt6.preheader, %.critedge369.jt6..loopexit2648.loopexit2859_crit_edge, %.critedge369.jt8.preheader, %.critedge369.jt16.preheader, %.critedge369.jt19, %.critedge369.jt10, %.critedge369.jt9, %.critedge369.jt17, %.critedge369.jt0, %.critedge369.jt12, %.critedge369.jt7, %.critedge369.jt15, %.critedge369.jt3, %.critedge369.jt4, %.critedge369.jt13, %.critedge369.jt14, %.critedge369.jt11
  br i1 %.sroa.14.0, label %bb.py, label %.critedge389.critedge

bb.py:                                            ; preds = %.loopexit2648
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01236.0, ptr %.sroa.91237.0)
  br label %.critedge389.critedge

.critedge372:                                     ; preds = %bb.hl, %bb.hn, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit802.thread, %bb.ev, %bb.ex, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.ml, %bb.mn, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit996.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread1614, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread1579, %bb.hh, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1682, %.thread1481
  %i.cbb = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbc = icmp eq ptr %i.cbb, %i.ac
  br i1 %i.cbc, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.critedge:                            ; preds = %bb.py, %bb.li, %bb.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit707, %.loopexit2648, %bb.bf, %bb.bd, %bb.lh
  %i.cbd = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbe = icmp eq ptr %i.cbd, %i.ac
  br i1 %i.cbe, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.sink.split.sink.split:               ; preds = %.critedge389.critedge, %.critedge372
  %.sink3055 = phi ptr [ %i.cbb, %.critedge372 ], [ %i.cbd, %.critedge389.critedge ]
  %i.cbf = load i64, ptr %i.ac, align 8
  %i.cbg = add i64 %i.cbf, 1
  call void @_ZdlPvm(ptr noundef %.sink3055, i64 noundef %i.cbg) #34
  br label %.critedge389.sink.split

.critedge389.sink.split:                          ; preds = %.critedge389.sink.split.sink.split, %.critedge389.critedge, %.critedge372
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.critedge389

.critedge389:                                     ; preds = %.critedge389.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregatorD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada14href_from_fileB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 73 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = icmp ult i64 %1, 16
  br i1 %i.c, label %bb.b, label %.preheader729.preheader

.preheader729.preheader:                          ; preds = %bb.a
  %i.d = add i64 %1, -16                          ; 2 uses
  %i.e = lshr i64 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.preheader729.epil.preheader, label %.preheader729.preheader.new

.preheader729.preheader.new:                      ; preds = %.preheader729.preheader
  %unroll_iter = and i64 %i.f, 2305843009213693950
  br label %.preheader729

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not6.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not6.not.i.i, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %.lr.ph.i.i

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.i, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  br label %bb.z

_ZN3ada7unicode18is_tabs_or_newlineEc.exit:       ; preds = %.lr.ph.i.i
end_hunk_1
