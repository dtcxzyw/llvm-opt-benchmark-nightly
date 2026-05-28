inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal6Object26NoSideEffectsToMaybeStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.12

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.12: ; preds = %bb.cp, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.11
  %i.aon = phi i32 [ %.pre548, %bb.cp ], [ %i.aok, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.11 ] ; 2 uses
  %i.aoo = load ptr, ptr %i.aaz, align 8
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = add i64 %i.aop, -1
  %i.aor = inttoptr i64 %i.aoq to ptr
  %i.aos = add nsw i32 %i.aon, 1
  store i32 %i.aos, ptr %i.aba, align 4
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 16
  %i.aou = zext i32 %i.aon to i64
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr %i.aot, i64 %i.aou
  store i16 46, ptr %i.aov, align 2
  %i.aow = load i32, ptr %i.aba, align 4          ; 2 uses
  %i.aox = load i32, ptr %i.abb, align 8
  %i.aoy = icmp eq i32 %i.aow, %i.aox
  br i1 %i.aoy, label %bb.cq, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.13

bb.cq:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.12
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  %.pre549 = load i32, ptr %i.aba, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.13

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.13: ; preds = %bb.cq, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.12
  %i.aoz = phi i32 [ %.pre549, %bb.cq ], [ %i.aow, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.12 ] ; 2 uses
  %i.apa = load ptr, ptr %i.aaz, align 8
  %i.apb = load i64, ptr %i.apa, align 8
  %i.apc = add i64 %i.apb, -1
  %i.apd = inttoptr i64 %i.apc to ptr
  %i.ape = add nsw i32 %i.aoz, 1
  store i32 %i.ape, ptr %i.aba, align 4
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  %i.apg = zext i32 %i.aoz to i64
  %i.aph = getelementptr inbounds nuw [2 x i8], ptr %i.apf, i64 %i.apg
  store i16 46, ptr %i.aph, align 2
  %i.api = load i32, ptr %i.aba, align 4
  %i.apj = load i32, ptr %i.abb, align 8
  %i.apk = icmp eq i32 %i.api, %i.apj
  br i1 %i.apk, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.13, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.13, %bb.bo
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.13, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.13, %bb.bo
  %i.apl = load i64, ptr %.0.i143, align 8
  %i.apm = add i64 %i.apl, -1
  %i.apn = inttoptr i64 %i.apm to ptr
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 12
  %i.app = load i32, ptr %i.apo, align 4          ; 2 uses
  %i.apq = add i32 %i.app, -56                    ; 2 uses
  %i.apr = icmp eq i32 %i.apq, 0
  br i1 %i.apr, label %.sink.split, label %.critedge.i191

.critedge.i191:                                   ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit
  %i.aps = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i143, i32 noundef %i.apq, i32 noundef %i.app) #28
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit144, %.critedge.i191, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit
  %.sroa.07.0.i192.sink = phi ptr [ %.0.i143, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi16EEEvRAT__Kc.exit ], [ %i.aps, %.critedge.i191 ], [ %.0.i143, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit144 ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %.sroa.07.0.i192.sink) #28
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi8EEEvRAT__Kc.exit
  %i.apt = load i32, ptr %i.st, align 8
  %i.apu = icmp eq i32 %i.apt, 0
  %i.apv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.apw = load ptr, ptr %i.apv, align 8
  %i.apx = load i64, ptr %i.apw, align 8
  %i.apy = add i64 %i.apx, -1
  %i.apz = inttoptr i64 %i.apy to ptr
  %i.aqa = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.aqb = load i32, ptr %i.aqa, align 4          ; 2 uses
  %i.aqc = add nsw i32 %i.aqb, 1
  store i32 %i.aqc, ptr %i.aqa, align 4
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apz, i64 16 ; 2 uses
  %i.aqe = zext i32 %i.aqb to i64                 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.apu, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqd, i64 %i.aqe
  store i8 41, ptr %i.aqg, align 1
  %i.aqh = load i32, ptr %i.aqa, align 4
  %i.aqi = load i32, ptr %i.aqf, align 8
  %i.aqj = icmp eq i32 %i.aqh, %i.aqi
  br i1 %i.aqj, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141

bb.ct:                                            ; preds = %bb.cr
  %i.aqk = getelementptr inbounds nuw [2 x i8], ptr %i.aqd, i64 %i.aqe
  store i16 41, ptr %i.aqk, align 2
  %i.aql = load i32, ptr %i.aqa, align 4
  %i.aqm = load i32, ptr %i.aqf, align 8
  %i.aqn = icmp eq i32 %i.aql, %i.aqm
  br i1 %i.aqn, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141.sink.split: ; preds = %bb.ct, %bb.cs
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141.sink.split, %bb.ct, %bb.cs
  %i.aqo = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #28 ; 2 uses
  %i.aqp = icmp eq ptr %i.aqo, null
  br i1 %i.aqp, label %bb.cu, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit170, !prof !5

bb.cu:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit170: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aqq = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.aqr = add i64 %i.aqq, 11
  %i.aqs = inttoptr i64 %i.aqr to ptr
  %i.aqt = load atomic volatile i16, ptr %i.aqs monotonic, align 2
  %i.aqu = icmp ugt i16 %i.aqt, 299
  br i1 %i.aqu, label %bb.cv, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

bb.cv:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 7624
  %i.aqw = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.aqv) ; 2 uses
  %i.aqx = load i64, ptr %1, align 8              ; 2 uses
  %i.aqy = trunc i64 %i.aqx to i1
  br i1 %i.aqy, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.cv
  %i.aqz = add nsw i64 %i.aqx, -1
  %i.ara = inttoptr i64 %i.aqz to ptr
  %i.arb = load atomic volatile i64, ptr %i.ara monotonic, align 8
  %i.arc = add i64 %i.arb, 11
  %i.ard = inttoptr i64 %i.arc to ptr
  %i.are = load atomic volatile i16, ptr %i.ard monotonic, align 2
  %i.arf = icmp ugt i16 %i.are, 302
  br i1 %i.arf, label %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit, label %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.arg = call noundef zeroext i1 @_ZN2v88internal10ErrorUtils30HasErrorStackSymbolOwnPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull %0, ptr nonnull %1) #28
  br i1 %i.arg, label %.critedge, label %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread: ; preds = %bb.cv, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit
  %i.arh = load i64, ptr %i.aqw, align 8
  %i.ari = call ptr @_ZN2v88internal7Isolate15error_to_stringEv(ptr noundef nonnull align 8 dereferenceable(64320) %0)
  %i.arj = load i64, ptr %i.ari, align 8
  %i.ark = icmp eq i64 %i.arh, %i.arj
  br i1 %i.ark, label %.critedge, label %bb.cw

.critedge:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit, %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread
  %i.arl = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull %0, ptr nonnull %1)
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

bb.cw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_113IsErrorObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread
  %i.arm = load i64, ptr %i.aqw, align 8
  %i.arn = call ptr @_ZN2v88internal7Isolate16object_to_stringEv(ptr noundef nonnull align 8 dereferenceable(64320) %0)
  %i.aro = load i64, ptr %i.arn, align 8
  %i.arp = icmp eq i64 %i.arm, %i.aro
  br i1 %i.arp, label %bb.cx, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

bb.cx:                                            ; preds = %bb.cw
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 8808
  %i.arr = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.arq) ; 3 uses
  %i.ars = load i64, ptr %i.arr, align 8          ; 2 uses
  %i.art = trunc i64 %i.ars to i1
  br i1 %i.art, label %_ZN2v88internal44IsJSFunctionOrBoundFunctionOrWrappedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

_ZN2v88internal44IsJSFunctionOrBoundFunctionOrWrappedFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.cx
  %i.aru = add nsw i64 %i.ars, -1
  %i.arv = inttoptr i64 %i.aru to ptr             ; 3 uses
  %i.arw = load atomic volatile i64, ptr %i.arv monotonic, align 8
  %i.arx = add i64 %i.arw, 11
  %i.ary = inttoptr i64 %i.arx to ptr
  %i.arz = load atomic volatile i16, ptr %i.ary monotonic, align 2
  %i.asa = add i16 %i.arz, -2063
  %i.asb = icmp ult i16 %i.asa, 19
  br i1 %i.asb, label %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal44IsJSFunctionOrBoundFunctionOrWrappedFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.asc = load atomic volatile i64, ptr %i.arv monotonic, align 8
  %i.asd = add i64 %i.asc, 11
  %i.ase = inttoptr i64 %i.asd to ptr
  %i.asf = load atomic volatile i16, ptr %i.ase monotonic, align 2
  %i.asg = icmp eq i16 %i.asf, 2063
  br i1 %i.asg, label %bb.cy, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit

bb.cy:                                            ; preds = %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ash = call ptr @_ZN2v88internal15JSBoundFunction7GetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %i.arr) #28 ; 2 uses
  %i.asi = icmp eq ptr %i.ash, null
  br i1 %i.asi, label %bb.cz, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !5

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.asj = load atomic volatile i64, ptr %i.arv monotonic, align 8
  %i.ask = add i64 %i.asj, 11
  %i.asl = inttoptr i64 %i.ask to ptr
  %i.asm = load atomic volatile i16, ptr %i.asl monotonic, align 2 ; 0 uses
  %6 = call ptr @_ZN2v88internal10JSFunction7GetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %i.arr) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.cy, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.0206.0 = phi ptr [ %6, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.ash, %bb.cy ] ; 2 uses
  %i.asn = load i64, ptr %.sroa.0206.0, align 8
  %i.aso = add i64 %i.asn, -1
  %i.asp = inttoptr i64 %i.aso to ptr
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 12
  %i.asr = load i32, ptr %i.asq, align 4
  %.not = icmp eq i32 %i.asr, 0
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172, label %bb.da

bb.da:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %0) #28
  %i.ass = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ast = load i32, ptr %i.ass, align 8
  %i.asu = icmp eq i32 %i.ast, 0
  br i1 %i.asu, label %bb.db, label %.critedge501.preheader

.critedge501.preheader:                           ; preds = %bb.da
  %i.asv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.asy = load ptr, ptr %i.asv, align 8
  %i.asz = load i64, ptr %i.asy, align 8
  %i.ata = add i64 %i.asz, -1
  %i.atb = inttoptr i64 %i.ata to ptr
  %i.atc = load i32, ptr %i.asw, align 4          ; 2 uses
  %i.atd = add nsw i32 %i.atc, 1
  store i32 %i.atd, ptr %i.asw, align 4
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atb, i64 16
  %i.atf = zext i32 %i.atc to i64
  %i.atg = getelementptr inbounds nuw [2 x i8], ptr %i.ate, i64 %i.atf
  store i16 35, ptr %i.atg, align 2
  %i.ath = load i32, ptr %i.asw, align 4          ; 2 uses
  %i.ati = load i32, ptr %i.asx, align 8
  %i.atj = icmp eq i32 %i.ath, %i.ati
  br i1 %i.atj, label %bb.de, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168

bb.db:                                            ; preds = %bb.da
  %i.atk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.atl = load i32, ptr %i.atk, align 8
  %i.atm = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 8 uses
  %i.atn = load i32, ptr %i.atm, align 4          ; 4 uses
  %i.ato = sub nsw i32 %i.atl, %i.atn
  %i.atp = icmp sgt i32 %i.ato, 3
  %i.atq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.atr = load ptr, ptr %i.atq, align 8
  %i.ats = load i64, ptr %i.atr, align 8
  %i.att = add i64 %i.ats, -1
  %i.atu = inttoptr i64 %i.att to ptr             ; 2 uses
  br i1 %i.atp, label %bb.dc, label %.preheader509

.preheader509:                                    ; preds = %bb.db
  %i.atv = add nsw i32 %i.atn, 1
  store i32 %i.atv, ptr %i.atm, align 4
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atu, i64 16
  %i.atx = zext i32 %i.atn to i64
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.atx
  store i8 35, ptr %i.aty, align 1
  %i.atz = load i32, ptr %i.atm, align 4          ; 2 uses
  %i.aua = load i32, ptr %i.atk, align 8
  %i.aub = icmp eq i32 %i.atz, %i.aua
  br i1 %i.aub, label %bb.dd, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165

bb.dc:                                            ; preds = %bb.db
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atu, i64 16
  %i.aud = zext i32 %i.atn to i64
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 %i.aud
  store i16 15395, ptr %i.aue, align 1
  %i.auf = load i32, ptr %i.atm, align 4
  %i.aug = add nsw i32 %i.auf, 2                  ; 2 uses
  store i32 %i.aug, ptr %i.atm, align 4
  %i.auh = load i32, ptr %i.atk, align 8
  %i.aui = icmp eq i32 %i.aug, %i.auh
  br i1 %i.aui, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

bb.dd:                                            ; preds = %.preheader509
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre523 = load i32, ptr %i.atm, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165: ; preds = %.preheader509, %bb.dd
  %i.auj = phi i32 [ %i.atz, %.preheader509 ], [ %.pre523, %bb.dd ] ; 2 uses
  %i.auk = load ptr, ptr %i.atq, align 8
  %i.aul = load i64, ptr %i.auk, align 8
  %i.aum = add i64 %i.aul, -1
  %i.aun = inttoptr i64 %i.aum to ptr
  %i.auo = add nsw i32 %i.auj, 1
  store i32 %i.auo, ptr %i.atm, align 4
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aun, i64 16
  %i.auq = zext i32 %i.auj to i64
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aup, i64 %i.auq
  store i8 60, ptr %i.aur, align 1
  %i.aus = load i32, ptr %i.atm, align 4
  %i.aut = load i32, ptr %i.atk, align 8
  %i.auu = icmp eq i32 %i.aus, %i.aut
  br i1 %i.auu, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

bb.de:                                            ; preds = %.critedge501.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre = load i32, ptr %i.asw, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168: ; preds = %.critedge501.preheader, %bb.de
  %i.auv = phi i32 [ %i.ath, %.critedge501.preheader ], [ %.pre, %bb.de ] ; 2 uses
  %i.auw = load ptr, ptr %i.asv, align 8
  %i.aux = load i64, ptr %i.auw, align 8
  %i.auy = add i64 %i.aux, -1
  %i.auz = inttoptr i64 %i.auy to ptr
  %i.ava = add nsw i32 %i.auv, 1
  store i32 %i.ava, ptr %i.asw, align 4
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auz, i64 16
  %i.avc = zext i32 %i.auv to i64
  %i.avd = getelementptr inbounds nuw [2 x i8], ptr %i.avb, i64 %i.avc
  store i16 60, ptr %i.avd, align 2
  %i.ave = load i32, ptr %i.asw, align 4
  %i.avf = load i32, ptr %i.asx, align 8
  %i.avg = icmp eq i32 %i.ave, %i.avf
  br i1 %i.avg, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165, %bb.dc
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165, %bb.dc
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr nonnull %.sroa.0206.0) #28
  %i.avh = load i32, ptr %i.ass, align 8
  %i.avi = icmp eq i32 %i.avh, 0
  %i.avj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.avk = load ptr, ptr %i.avj, align 8
  %i.avl = load i64, ptr %i.avk, align 8
  %i.avm = add i64 %i.avl, -1
  %i.avn = inttoptr i64 %i.avm to ptr
  %i.avo = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.avp = load i32, ptr %i.avo, align 4          ; 2 uses
  %i.avq = add nsw i32 %i.avp, 1
  store i32 %i.avq, ptr %i.avo, align 4
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avn, i64 16 ; 2 uses
  %i.avs = zext i32 %i.avp to i64                 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.avi, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avr, i64 %i.avs
  store i8 62, ptr %i.avu, align 1
  %i.avv = load i32, ptr %i.avo, align 4
  %i.avw = load i32, ptr %i.avt, align 8
  %i.avx = icmp eq i32 %i.avv, %i.avw
  br i1 %i.avx, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

bb.dg:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit
  %i.avy = getelementptr inbounds nuw [2 x i8], ptr %i.avr, i64 %i.avs
  store i16 62, ptr %i.avy, align 2
  %i.avz = load i32, ptr %i.avo, align 4
  %i.awa = load i32, ptr %i.avt, align 8
  %i.awb = icmp eq i32 %i.avz, %i.awa
  br i1 %i.awb, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split: ; preds = %bb.dg, %bb.df
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, %bb.dg, %bb.df
  %i.awc = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28 ; 2 uses
  %i.awd = icmp eq ptr %i.awc, null
  br i1 %i.awd, label %bb.dh, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169, !prof !5

bb.dh:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172: ; preds = %bb.cx, %.thread487, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %.critedge, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal44IsJSFunctionOrBoundFunctionOrWrappedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, %bb.cw, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit170, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit171, %bb.m, %bb.e, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.i, %_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.0267.3 = phi ptr [ %i.aqo, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit170 ], [ %i.ac, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.bs, %_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.by, %bb.i ], [ %i.aq, %bb.e ], [ %.sroa.0246.0, %bb.m ], [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.awc, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169 ], [ %i.sc, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit171 ], [ %.0.i142, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ null, %bb.cw ], [ null, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit ], [ null, %.thread487 ], [ null, %_ZN2v88internal44IsJSFunctionOrBoundFunctionOrWrappedFunctionENS0_6TaggedINS0_6ObjectEEE.exit ], [ %1, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.arl, %.critedge ], [ null, %bb.cx ]
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.sroa.0267.3
}

declare void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal6Object21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %3 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef %0) #28
  %i.a = call ptr @_ZN2v88internal6Object26NoSideEffectsToMaybeStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) ; 2 uses
  %.not102 = icmp eq ptr %i.a, null
  br i1 %.not102, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = add i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
end_hunk_0
