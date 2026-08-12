inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5362
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5372
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_stringsL10testInsertEv:bb.a
  store i8 %i.aql, ptr %47, align 1, !tbaa !559
  %or.cond.not.i1667 = icmp eq i8 %i.aql, 14
  br i1 %or.cond.not.i1667, label %bb.ja, label %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1670

bb.ja:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1658
  %i.aqm = load i64, ptr %.ptr9882, align 1
  %i.aqn = xor i64 %i.aqm, 3616724976510578992
  %i.aqo = getelementptr i8, ptr %.ptr9882, i64 6
  %i.aqp = load i64, ptr %i.aqo, align 1
  %i.aqq = xor i64 %i.aqp, 4123106164817998385
  %i.aqr = or i64 %i.aqn, %i.aqq
  %i.aqs = icmp ne i64 %i.aqr, 0
  %i.aqt = zext i1 %i.aqs to i32
  %i.aqu = icmp eq i32 %i.aqt, 0
  br label %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1670

_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1670: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1658, %bb.ja
  %.0.i.i1668 = phi i1 [ false, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1658 ], [ %i.aqu, %bb.ja ]
  %i.aqv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5728, ptr noundef nonnull @.str.13, i32 noundef 1381, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %.0.i.i1668) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %48, i8 0, i64 32, i1 false)
  %i.aqw = call noundef nonnull align 1 dereferenceable(32) ptr @_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(32) %48, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %48, i64 1 ; 3 uses
  %i.aqy = load i8, ptr %48, align 1, !tbaa !559  ; 4 uses
  %i.aqz = zext i8 %i.aqy to i64
  %i.ara = icmp ult i8 %i.aqy, 5
  br i1 %i.ara, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1670
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

bb.jc:                                            ; preds = %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1670
  %i.arb = add i8 %i.aqy, -21
  %i.arc = icmp ult i8 %i.arb, 10
  br i1 %i.arc, label %bb.jd, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1671

bb.jd:                                            ; preds = %bb.jc
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1671:   ; preds = %bb.jc
  %i.ard = getelementptr inbounds nuw i8, ptr %48, i64 6 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.arf = add nsw i64 %i.aqz, -4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.are, ptr nonnull align 1 %i.ard, i64 %i.arf, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ard, ptr noundef nonnull align 1 dereferenceable(5) %i.aqx, i64 5, i1 false)
  %i.arg = getelementptr inbounds nuw i8, ptr %48, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.arg, ptr noundef nonnull align 1 dereferenceable(5) %i.are, i64 5, i1 false)
  %i.arh = add i8 %i.aqy, 10                      ; 2 uses
  store i8 %i.arh, ptr %48, align 1, !tbaa !559
  %or.cond.not.i1680 = icmp eq i8 %i.arh, 20
  br i1 %or.cond.not.i1680, label %bb.je, label %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1683

bb.je:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1671
  %i.ari = load i128, ptr %i.aqx, align 1
  %i.arj = xor i128 %i.ari, 70746184886800279323060312191259521328
  %i.ark = getelementptr i8, ptr %i.aqx, i64 16
  %i.arl = load i32, ptr %i.ark, align 1
  %i.arm = zext i32 %i.arl to i128
  %i.arn = xor i128 %i.arm, 959985462
  %i.aro = or i128 %i.arj, %i.arn
  %i.arp = icmp ne i128 %i.aro, 0
  %i.arq = zext i1 %i.arp to i32
  %i.arr = icmp eq i32 %i.arq, 0
  br label %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1683

_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1683: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1671, %bb.je
  %.0.i.i1681 = phi i1 [ false, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1671 ], [ %i.arr, %bb.je ]
  %i.ars = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5730, ptr noundef nonnull @.str.13, i32 noundef 1385, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %.0.i.i1681) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %49, i8 0, i64 32, i1 false)
  %i.art = call noundef nonnull align 1 dereferenceable(32) ptr @_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(32) %49, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %49, i64 1 ; 2 uses
  %i.arv = load i8, ptr %49, align 1, !tbaa !559  ; 6 uses
  %i.arw = zext i8 %i.arv to i64
  %i.arx = icmp ult i8 %i.arv, 5
  br i1 %i.arx, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1683
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

bb.jg:                                            ; preds = %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1683
  %i.ary = getelementptr inbounds nuw i8, ptr %49, i64 6 ; 3 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %49, i64 10
  %i.asa = add i8 %i.arv, -28
  %i.asb = icmp ult i8 %i.asa, 3
  br i1 %i.asb, label %bb.jh, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1684

bb.jh:                                            ; preds = %bb.jg
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1684:   ; preds = %bb.jg
  %i.asc = getelementptr inbounds nuw i8, ptr %49, i64 9
  %i.asd = add nsw i64 %i.arw, -4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.asc, ptr nonnull align 1 %i.ary, i64 %i.asd, i1 false)
  %i.ase = icmp ugt i8 %i.arv, 6
  br i1 %i.ase, label %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692, label %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692.thread

_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692.thread: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1684
  %scevgep11708 = getelementptr inbounds nuw i8, ptr %49, i64 7
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ary, ptr noundef nonnull align 1 dereferenceable(3) %scevgep11708, i64 3, i1 false), !tbaa !12
  %i.asf = add nuw nsw i8 %i.arv, 3
  store i8 %i.asf, ptr %49, align 1, !tbaa !559
  br label %_ZN5boost14static_stringseqILm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1749

_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i1684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ary, ptr noundef nonnull align 1 dereferenceable(3) %i.arz, i64 3, i1 false)
  %i.asg = add i8 %i.arv, 3                       ; 2 uses
  store i8 %i.asg, ptr %49, align 1, !tbaa !559
  %or.cond.not.i1693 = icmp eq i8 %i.asg, 13
  br i1 %or.cond.not.i1693, label %bb.ji, label %_ZN5boost14static_stringseqILm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1749

bb.ji:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692
  %i.ash = load i64, ptr %i.aru, align 1
  %i.asi = xor i64 %i.ash, 4050765987668177200
  %i.asj = getelementptr i8, ptr %i.aru, i64 5
  %i.ask = load i64, ptr %i.asj, align 1
  %i.asl = xor i64 %i.ask, 4123106164818327350
  %i.asm = or i64 %i.asi, %i.asl
  %i.asn = icmp ne i64 %i.asm, 0
  %i.aso = zext i1 %i.asn to i32
  %i.asp = icmp eq i32 %i.aso, 0
  br label %_ZN5boost14static_stringseqILm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1749

_ZN5boost14static_stringseqILm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1749: ; preds = %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692.thread, %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692, %bb.ji
  %.0.i.i1694 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692 ], [ %i.asp, %bb.ji ], [ false, %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6insertEmPKcm.exit1692.thread ]
  %i.asq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5732, ptr noundef nonnull @.str.13, i32 noundef 1389, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %.0.i.i1694) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #32
  %i.asr = getelementptr inbounds nuw i8, ptr %50, i64 1 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(102) %50, i8 0, i64 102, i1 false)
  %i.ass = getelementptr inbounds nuw i8, ptr %50, i64 4
  store i8 47, ptr %i.ass, align 4, !tbaa !12
  store <4 x i8> <i8 4, i8 49, i8 50, i8 51>, ptr %50, align 4, !tbaa !12
  %i.ast = getelementptr inbounds nuw i8, ptr %50, i64 5 ; 3 uses
  store i8 0, ptr %i.ast, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #32
  %i.asu = getelementptr inbounds nuw i8, ptr %51, i64 1 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(102) %51, i8 0, i64 102, i1 false)
  %i.asv = getelementptr inbounds nuw i8, ptr %51, i64 16
  store <16 x i8> <i8 111, i8 114, i8 32, i8 115, i8 105, i8 116, i8 32, i8 97, i8 109, i8 101, i8 116, i8 44, i8 32, i8 99, i8 111, i8 110>, ptr %i.asv, align 16, !tbaa !12
  %i.asw = getelementptr inbounds nuw i8, ptr %51, i64 32
  store <8 x i8> <i8 115, i8 101, i8 99, i8 116, i8 101, i8 116, i8 117, i8 114>, ptr %i.asw, align 16, !tbaa !12
  %i.asx = getelementptr inbounds nuw i8, ptr %51, i64 40
  store i8 47, ptr %i.asx, align 8, !tbaa !12
  store <16 x i8> <i8 40, i8 76, i8 111, i8 114, i8 101, i8 109, i8 32, i8 105, i8 112, i8 115, i8 117, i8 109, i8 32, i8 100, i8 111, i8 108>, ptr %51, align 16, !tbaa !12
  %i.asy = getelementptr inbounds nuw i8, ptr %51, i64 41
  store i8 0, ptr %i.asy, align 1, !tbaa !12
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ast, ptr noundef nonnull align 1 dereferenceable(5) %i.asr, i64 5, i1 false)
  %i.asz = load i32, ptr %i.ast, align 1
  store i32 %i.asz, ptr %i.asr, align 1
  store i8 8, ptr %50, align 4, !tbaa !921
  %i.ata = load i64, ptr %i.asr, align 1
  %i.atb = icmp ne i64 %i.ata, 3401117330421527089
  %i.atc = zext i1 %i.atb to i32
  %i.atd = icmp eq i32 %i.atc, 0
  %i.ate = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5734, ptr noundef nonnull @.str.13, i32 noundef 1395, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.atd) ; 0 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %50, i64 9 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.atf, ptr noundef nonnull align 1 dereferenceable(9) %i.asr, i64 9, i1 false)
  %i.atg = load i64, ptr %i.atf, align 1
  store i64 %i.atg, ptr %i.asr, align 1
  store i8 16, ptr %50, align 4, !tbaa !921
  %i.ath = load i128, ptr %i.asr, align 1
  %i.ati = icmp ne i128 %i.ath, 62739540958944155722027011334609252913
  %i.atj = zext i1 %i.ati to i32
  %i.atk = icmp eq i32 %i.atj, 0
  %i.atl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5735, ptr noundef nonnull @.str.13, i32 noundef 1396, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.atk) ; 0 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %50, i64 17 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.atm, ptr noundef nonnull align 1 dereferenceable(17) %i.asr, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.asr, ptr noundef nonnull align 1 dereferenceable(16) %i.atm, i64 16, i1 false)
  store i8 32, ptr %50, align 4, !tbaa !921
  %i.atn = load i128, ptr %i.asr, align 1
  %i.ato = xor i128 %i.atn, 62739540958944155722027011334609252913
  %i.atp = getelementptr i8, ptr %i.asr, i64 16
  %i.atq = load i128, ptr %i.atp, align 1
  %i.atr = xor i128 %i.atq, 62739540958944155722027011334609252913
  %i.ats = or i128 %i.ato, %i.atr
  %i.att = icmp ne i128 %i.ats, 0
  %i.atu = zext i1 %i.att to i32
  %i.atv = icmp eq i32 %i.atu, 0
  %i.atw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5736, ptr noundef nonnull @.str.13, i32 noundef 1397, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.atv) ; 0 uses
  %i.atx = load i8, ptr %51, align 16, !tbaa !921 ; 4 uses
  %i.aty = zext i8 %i.atx to i64                  ; 5 uses
  %i.atz = getelementptr i8, ptr %i.asu, i64 %i.aty ; 3 uses
  %i.aua = sub nsw i64 100, %i.aty
  %i.aub = icmp ult i64 %i.aua, %i.aty
  br i1 %i.aub, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %_ZN5boost14static_stringseqILm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1749
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

bb.jk:                                            ; preds = %_ZN5boost14static_stringseqILm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit1749
  %i.auc = add nuw nsw i64 %i.aty, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.atz, ptr noundef nonnull align 1 dereferenceable(1) %i.asu, i64 %i.auc, i1 false)
  %946 = icmp uge ptr %i.asu, %i.atz
  %i.aud = icmp eq i8 %i.atx, 0
  %or.cond = or i1 %946, %i.aud
  br i1 %or.cond, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759.thread, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759

_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759.thread: ; preds = %bb.jk
  %i.aue = shl nuw nsw i8 %i.atx, 1
  store i8 %i.aue, ptr %51, align 16, !tbaa !921
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEEC2EPKc.exit9809

_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759: ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.asu, ptr nonnull align 1 %i.atz, i64 %i.aty, i1 false)
  %i.auf = shl i8 %i.atx, 1                       ; 2 uses
  store i8 %i.auf, ptr %51, align 16, !tbaa !921
  %or.cond.not.i1760 = icmp eq i8 %i.auf, 80
  br i1 %or.cond.not.i1760, label %bb.jl, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEEC2EPKc.exit9809

bb.jl:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759
  %bcmp.i1762 = call i32 @bcmp(ptr noundef nonnull dereferenceable(80) %i.asu, ptr noundef nonnull dereferenceable(80) @.str.4006, i64 80)
  %i.aug = icmp eq i32 %bcmp.i1762, 0
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEEC2EPKc.exit9809

_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEEC2EPKc.exit9809: ; preds = %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759.thread, %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759, %bb.jl
  %.0.i.i1761 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759 ], [ %i.aug, %bb.jl ], [ false, %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit1759.thread ]
  %i.auh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5737, ptr noundef nonnull @.str.13, i32 noundef 1398, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %.0.i.i1761) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %52, i8 0, i64 102, i1 false)
  %i.aui = getelementptr inbounds nuw i8, ptr %52, i64 4
  store i8 100, ptr %i.aui, align 4, !tbaa !12
  %i.auj = getelementptr inbounds nuw i8, ptr %52, i64 5
  store i8 101, ptr %i.auj, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %52, align 8, !tbaa !12
  %i.auk = getelementptr inbounds nuw i8, ptr %53, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.auk, i8 0, i64 94, i1 false)
  %i.aul = getelementptr inbounds nuw i8, ptr %53, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.aul, align 8, !tbaa !12
  %i.aum = getelementptr inbounds nuw i8, ptr %53, i64 12
  store i8 110, ptr %i.aum, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %53, align 8, !tbaa !12
  %i.aun = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %52, i64 noundef 6, ptr noundef nonnull @.str.1303, i64 noundef 0, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %53)
  %i.auo = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5738, ptr noundef nonnull @.str.13, i32 noundef 1400, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.aun) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %54, i8 0, i64 102, i1 false)
  %i.aup = getelementptr inbounds nuw i8, ptr %54, i64 4
  store i8 100, ptr %i.aup, align 4, !tbaa !12
  %i.auq = getelementptr inbounds nuw i8, ptr %54, i64 5
  store i8 101, ptr %i.auq, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %54, align 8, !tbaa !12
  %i.aur = getelementptr inbounds nuw i8, ptr %55, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.aur, i8 0, i64 94, i1 false)
  %i.aus = getelementptr inbounds nuw i8, ptr %55, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.aus, align 8, !tbaa !12
  %i.aut = getelementptr inbounds nuw i8, ptr %55, i64 12
  store i8 110, ptr %i.aut, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %55, align 8, !tbaa !12
  %i.auu = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %54, i64 noundef 6, ptr noundef nonnull @.str.1303, i64 noundef 1, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %55)
  %i.auv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5739, ptr noundef nonnull @.str.13, i32 noundef 1401, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.auu) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %56, i8 0, i64 102, i1 false)
  %i.auw = getelementptr inbounds nuw i8, ptr %56, i64 4
  store i8 100, ptr %i.auw, align 4, !tbaa !12
  %i.aux = getelementptr inbounds nuw i8, ptr %56, i64 5
  store i8 101, ptr %i.aux, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %56, align 8, !tbaa !12
  %i.auy = getelementptr inbounds nuw i8, ptr %57, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.auy, i8 0, i64 94, i1 false)
  %i.auz = getelementptr inbounds nuw i8, ptr %57, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.auz, align 8, !tbaa !12
  %i.ava = getelementptr inbounds nuw i8, ptr %57, i64 12
  store i8 110, ptr %i.ava, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %57, align 8, !tbaa !12
  %i.avb = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %56, i64 noundef 6, ptr noundef nonnull @.str.1303, i64 noundef 2, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %57)
  %i.avc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5740, ptr noundef nonnull @.str.13, i32 noundef 1402, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.avb) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %58, i8 0, i64 102, i1 false)
  %i.avd = getelementptr inbounds nuw i8, ptr %58, i64 4
  store i8 100, ptr %i.avd, align 4, !tbaa !12
  %i.ave = getelementptr inbounds nuw i8, ptr %58, i64 5
  store i8 101, ptr %i.ave, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %58, align 8, !tbaa !12
  %i.avf = getelementptr inbounds nuw i8, ptr %59, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.avf, i8 0, i64 94, i1 false)
  %i.avg = getelementptr inbounds nuw i8, ptr %59, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.avg, align 8, !tbaa !12
  %i.avh = getelementptr inbounds nuw i8, ptr %59, i64 12
  store i8 110, ptr %i.avh, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %59, align 8, !tbaa !12
  %i.avi = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %58, i64 noundef 6, ptr noundef nonnull @.str.1303, i64 noundef 4, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %59)
  %i.avj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5741, ptr noundef nonnull @.str.13, i32 noundef 1403, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.avi) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %60, i8 0, i64 102, i1 false)
  %i.avk = getelementptr inbounds nuw i8, ptr %60, i64 4
  store i8 100, ptr %i.avk, align 4, !tbaa !12
  %i.avl = getelementptr inbounds nuw i8, ptr %60, i64 5
  store i8 101, ptr %i.avl, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %60, align 8, !tbaa !12
  %i.avm = getelementptr inbounds nuw i8, ptr %61, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.avm, i8 0, i64 94, i1 false)
  %i.avn = getelementptr inbounds nuw i8, ptr %61, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.avn, align 8, !tbaa !12
  %i.avo = getelementptr inbounds nuw i8, ptr %61, i64 12
  store i8 110, ptr %i.avo, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %61, align 8, !tbaa !12
  %i.avp = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %60, i64 noundef 6, ptr noundef nonnull @.str.1303, i64 noundef 5, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %61)
  %i.avq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5742, ptr noundef nonnull @.str.13, i32 noundef 1404, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.avp) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %62, i8 0, i64 102, i1 false)
  %i.avr = getelementptr inbounds nuw i8, ptr %62, i64 4
  store i8 100, ptr %i.avr, align 4, !tbaa !12
  %i.avs = getelementptr inbounds nuw i8, ptr %62, i64 5
  store i8 101, ptr %i.avs, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %62, align 8, !tbaa !12
  %i.avt = getelementptr inbounds nuw i8, ptr %63, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.avt, i8 0, i64 94, i1 false)
  %i.avu = getelementptr inbounds nuw i8, ptr %63, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.avu, align 8, !tbaa !12
  %i.avv = getelementptr inbounds nuw i8, ptr %63, i64 12
  store i8 110, ptr %i.avv, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %63, align 8, !tbaa !12
  %i.avw = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %62, i64 noundef 6, ptr noundef nonnull @.str.4010, i64 noundef 0, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %63)
  %i.avx = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5743, ptr noundef nonnull @.str.13, i32 noundef 1405, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.avw) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %64, i8 0, i64 102, i1 false)
  %i.avy = getelementptr inbounds nuw i8, ptr %64, i64 4
  store i8 100, ptr %i.avy, align 4, !tbaa !12
  %i.avz = getelementptr inbounds nuw i8, ptr %64, i64 5
  store i8 101, ptr %i.avz, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %64, align 8, !tbaa !12
  %i.awa = getelementptr inbounds nuw i8, ptr %65, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.awa, i8 0, i64 94, i1 false)
  %i.awb = getelementptr inbounds nuw i8, ptr %65, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.awb, align 8, !tbaa !12
  %i.awc = getelementptr inbounds nuw i8, ptr %65, i64 12
  store i8 110, ptr %i.awc, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %65, align 8, !tbaa !12
  %i.awd = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %64, i64 noundef 6, ptr noundef nonnull @.str.4010, i64 noundef 1, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %65)
  %i.awe = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5744, ptr noundef nonnull @.str.13, i32 noundef 1406, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.awd) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %66, i8 0, i64 102, i1 false)
  %i.awf = getelementptr inbounds nuw i8, ptr %66, i64 4
  store i8 100, ptr %i.awf, align 4, !tbaa !12
  %i.awg = getelementptr inbounds nuw i8, ptr %66, i64 5
  store i8 101, ptr %i.awg, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %66, align 8, !tbaa !12
  %i.awh = getelementptr inbounds nuw i8, ptr %67, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.awh, i8 0, i64 94, i1 false)
  %i.awi = getelementptr inbounds nuw i8, ptr %67, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.awi, align 8, !tbaa !12
  %i.awj = getelementptr inbounds nuw i8, ptr %67, i64 12
  store i8 110, ptr %i.awj, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %67, align 8, !tbaa !12
  %i.awk = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %66, i64 noundef 6, ptr noundef nonnull @.str.4010, i64 noundef 5, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %67)
  %i.awl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5745, ptr noundef nonnull @.str.13, i32 noundef 1407, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.awk) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %68, i8 0, i64 102, i1 false)
  %i.awm = getelementptr inbounds nuw i8, ptr %68, i64 4
  store i8 100, ptr %i.awm, align 4, !tbaa !12
  %i.awn = getelementptr inbounds nuw i8, ptr %68, i64 5
  store i8 101, ptr %i.awn, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %68, align 8, !tbaa !12
  %i.awo = getelementptr inbounds nuw i8, ptr %69, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.awo, i8 0, i64 94, i1 false)
  %i.awp = getelementptr inbounds nuw i8, ptr %69, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.awp, align 8, !tbaa !12
  %i.awq = getelementptr inbounds nuw i8, ptr %69, i64 12
  store i8 110, ptr %i.awq, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %69, align 8, !tbaa !12
  %i.awr = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %68, i64 noundef 6, ptr noundef nonnull @.str.4010, i64 noundef 9, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %69)
  %i.aws = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5746, ptr noundef nonnull @.str.13, i32 noundef 1408, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.awr) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %70, i8 0, i64 102, i1 false)
  %i.awt = getelementptr inbounds nuw i8, ptr %70, i64 4
  store i8 100, ptr %i.awt, align 4, !tbaa !12
  %i.awu = getelementptr inbounds nuw i8, ptr %70, i64 5
  store i8 101, ptr %i.awu, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %70, align 8, !tbaa !12
  %i.awv = getelementptr inbounds nuw i8, ptr %71, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.awv, i8 0, i64 94, i1 false)
  %i.aww = getelementptr inbounds nuw i8, ptr %71, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.aww, align 8, !tbaa !12
  %i.awx = getelementptr inbounds nuw i8, ptr %71, i64 12
  store i8 110, ptr %i.awx, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %71, align 8, !tbaa !12
  %i.awy = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %70, i64 noundef 6, ptr noundef nonnull @.str.4010, i64 noundef 10, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %71)
  %i.awz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5747, ptr noundef nonnull @.str.13, i32 noundef 1409, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.awy) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %72, i8 0, i64 102, i1 false)
  %i.axa = getelementptr inbounds nuw i8, ptr %72, i64 4
  store i8 100, ptr %i.axa, align 4, !tbaa !12
  %i.axb = getelementptr inbounds nuw i8, ptr %72, i64 5
  store i8 101, ptr %i.axb, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %72, align 8, !tbaa !12
  %i.axc = getelementptr inbounds nuw i8, ptr %73, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.axc, i8 0, i64 94, i1 false)
  %i.axd = getelementptr inbounds nuw i8, ptr %73, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.axd, align 8, !tbaa !12
  %i.axe = getelementptr inbounds nuw i8, ptr %73, i64 12
  store i8 110, ptr %i.axe, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %73, align 8, !tbaa !12
  %i.axf = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %72, i64 noundef 6, ptr noundef nonnull @.str.4012, i64 noundef 0, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %73)
  %i.axg = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5748, ptr noundef nonnull @.str.13, i32 noundef 1410, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.axf) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %74, i8 0, i64 102, i1 false)
  %i.axh = getelementptr inbounds nuw i8, ptr %74, i64 4
  store i8 100, ptr %i.axh, align 4, !tbaa !12
  %i.axi = getelementptr inbounds nuw i8, ptr %74, i64 5
  store i8 101, ptr %i.axi, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %74, align 8, !tbaa !12
  %i.axj = getelementptr inbounds nuw i8, ptr %75, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.axj, i8 0, i64 94, i1 false)
  %i.axk = getelementptr inbounds nuw i8, ptr %75, i64 8
  store <4 x i8> <i8 97, i8 112, i8 112, i8 101>, ptr %i.axk, align 8, !tbaa !12
  %i.axl = getelementptr inbounds nuw i8, ptr %75, i64 12
  store i8 110, ptr %i.axl, align 4, !tbaa !12
  store <8 x i8> <i8 12, i8 99, i8 97, i8 110, i8 39, i8 116, i8 32, i8 104>, ptr %75, align 8, !tbaa !12
  %i.axm = call noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %74, i64 noundef 6, ptr noundef nonnull @.str.4012, i64 noundef 1, ptr noundef nonnull byval(%"class.boost::static_strings::basic_static_string.45") align 8 %75)
  %i.axn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5749, ptr noundef nonnull @.str.13, i32 noundef 1411, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_stringsL10testInsertEv, i1 noundef zeroext %i.axm) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %76, i8 0, i64 102, i1 false)
  %i.axo = getelementptr inbounds nuw i8, ptr %76, i64 4
  store i8 100, ptr %i.axo, align 4, !tbaa !12
  %i.axp = getelementptr inbounds nuw i8, ptr %76, i64 5
  store i8 101, ptr %i.axp, align 1, !tbaa !12
  store <4 x i8> <i8 5, i8 97, i8 98, i8 99>, ptr %76, align 8, !tbaa !12
  %i.axq = getelementptr inbounds nuw i8, ptr %77, i64 8
end_hunk_0
