Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/pbrt?download=true
inline.NumInlined: 1611
inline.NumDeleted: 556
begin_hunk_0_@main:._crit_edge.i.i
  %i.aqk = load i64, ptr %i.aqf, align 8, !tbaa !23, !alias.scope !125
  %i.aql = add i64 %i.aqk, 1
  call void @_ZdlPvm(ptr noundef %i.aqi, i64 noundef %i.aql) #33
  br label %.body

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.mf
  %i.aqm = load ptr, ptr %5, align 8, !tbaa !27
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.aqm)
          to label %bb.mh unwind label %bb.mi

bb.mh:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.aqn = load ptr, ptr %5, align 8, !tbaa !27   ; 2 uses
  %i.aqo = icmp eq ptr %i.aqn, %i.aqf
  br i1 %i.aqo, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.mh
  %i.aqp = load i64, ptr %i.aqf, align 8, !tbaa !23
  %i.aqq = add i64 %i.aqp, 1
  call void @_ZdlPvm(ptr noundef %i.aqn, i64 noundef %i.aqq) #33
  br label %.thread

bb.mi:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  %i.aqs = load ptr, ptr %5, align 8, !tbaa !27   ; 2 uses
  %i.aqt = icmp eq ptr %i.aqs, %i.aqf
  br i1 %i.aqt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.mi
  %i.aqu = load i64, ptr %i.aqf, align 8, !tbaa !23
  %i.aqv = add i64 %i.aqu, 1
  call void @_ZdlPvm(ptr noundef %i.aqs, i64 noundef %i.aqv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.body

.thread:                                          ; preds = %bb.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  store i8 0, ptr %i.aqc, align 2, !tbaa !126
  %i.aqw = getelementptr inbounds nuw i8, ptr %7, i64 11 ; 2 uses
  %i.aqx = load i8, ptr %i.aqw, align 1, !range !113
  br label %bb.mo

bb.mj:                                            ; preds = %.thread2846
  %i.aqy = trunc nuw i8 %i.aqd to i1
  %i.aqz = getelementptr inbounds nuw i8, ptr %7, i64 11 ; 4 uses
  %i.ara = load i8, ptr %i.aqz, align 1, !range !113 ; 2 uses
  %i.arb = trunc nuw i8 %i.ara to i1
  %or.cond17 = select i1 %i.aqy, i1 %i.arb, i1 false
  br i1 %or.cond17, label %bb.mk, label %bb.mo

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.arc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.arc, ptr %4, align 8, !tbaa !21, !alias.scope !127
  %i.ard = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ard, align 8, !tbaa !22, !alias.scope !127
  store i8 0, ptr %i.arc, align 8, !tbaa !23, !alias.scope !127
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.57)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1310 unwind label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.are = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.arf = load ptr, ptr %4, align 8, !tbaa !27, !alias.scope !127 ; 2 uses
  %i.arg = icmp eq ptr %i.arf, %i.arc
  br i1 %i.arg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1306: ; preds = %bb.ml
  %i.arh = load i64, ptr %i.arc, align 8, !tbaa !23, !alias.scope !127
  %i.ari = add i64 %i.arh, 1
  call void @_ZdlPvm(ptr noundef %i.arf, i64 noundef %i.ari) #33
  br label %.body

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1310: ; preds = %bb.mk
  %i.arj = load ptr, ptr %4, align 8, !tbaa !27
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.arj)
          to label %bb.mm unwind label %bb.mn

bb.mm:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1310
  %i.ark = load ptr, ptr %4, align 8, !tbaa !27   ; 2 uses
  %i.arl = icmp eq ptr %i.ark, %i.arc
  br i1 %i.arl, label %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit1318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1314: ; preds = %bb.mm
  %i.arm = load i64, ptr %i.arc, align 8, !tbaa !23
  %i.arn = add i64 %i.arm, 1
  call void @_ZdlPvm(ptr noundef %i.ark, i64 noundef %i.arn) #33
  br label %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit1318

bb.mn:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1310
  %i.aro = landingpad { ptr, i32 }
          cleanup
  %i.arp = load ptr, ptr %4, align 8, !tbaa !27   ; 2 uses
  %i.arq = icmp eq ptr %i.arp, %i.arc
  br i1 %i.arq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1311: ; preds = %bb.mn
  %i.arr = load i64, ptr %i.arc, align 8, !tbaa !23
  %i.ars = add i64 %i.arr, 1
  call void @_ZdlPvm(ptr noundef %i.arp, i64 noundef %i.ars) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1312: ; preds = %bb.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1311
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.body

_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit1318:          ; preds = %bb.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1314
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.pre7173 = load i8, ptr %i.aqz, align 1, !range !113
  br label %bb.mo

bb.mo:                                            ; preds = %.thread, %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit1318, %bb.mj
  %i.art = phi ptr [ %i.aqz, %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit1318 ], [ %i.aqz, %bb.mj ], [ %i.aqw, %.thread ]
  %i.aru = phi i8 [ %.pre7173, %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit1318 ], [ %i.ara, %bb.mj ], [ %i.aqx, %.thread ] ; 2 uses
  %i.arv = load i8, ptr %i.ap, align 8, !tbaa !109, !range !113, !noundef !124
  %i.arw = trunc nuw i8 %i.arv to i1
  %i.arx = trunc nuw i8 %i.aru to i1
  %or.cond20 = select i1 %i.arw, i1 %i.arx, i1 false
  br i1 %or.cond20, label %bb.mp, label %bb.mt

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ary = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.ary, ptr %3, align 8, !tbaa !21, !alias.scope !128
  %i.arz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.arz, align 8, !tbaa !22, !alias.scope !128
  store i8 0, ptr %i.ary, align 8, !tbaa !23, !alias.scope !128
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.58)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1323 unwind label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.asa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asb = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !128 ; 2 uses
  %i.asc = icmp eq ptr %i.asb, %i.ary
  br i1 %i.asc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1319: ; preds = %bb.mq
  %i.asd = load i64, ptr %i.ary, align 8, !tbaa !23, !alias.scope !128
  %i.ase = add i64 %i.asd, 1
  call void @_ZdlPvm(ptr noundef %i.asb, i64 noundef %i.ase) #33
  br label %.body

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1323: ; preds = %bb.mp
  %i.asf = load ptr, ptr %3, align 8, !tbaa !27
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.asf)
          to label %bb.mr unwind label %bb.ms

bb.mr:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1323
  %i.asg = load ptr, ptr %3, align 8, !tbaa !27   ; 2 uses
  %i.ash = icmp eq ptr %i.asg, %i.ary
  br i1 %i.ash, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1327: ; preds = %bb.mr
  %i.asi = load i64, ptr %i.ary, align 8, !tbaa !23
  %i.asj = add i64 %i.asi, 1
  call void @_ZdlPvm(ptr noundef %i.asg, i64 noundef %i.asj) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1328

bb.ms:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i1323
  %i.ask = landingpad { ptr, i32 }
          cleanup
  %i.asl = load ptr, ptr %3, align 8, !tbaa !27   ; 2 uses
  %i.asm = icmp eq ptr %i.asl, %i.ary
  br i1 %i.asm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1324: ; preds = %bb.ms
  %i.asn = load i64, ptr %i.ary, align 8, !tbaa !23
  %i.aso = add i64 %i.asn, 1
  call void @_ZdlPvm(ptr noundef %i.asl, i64 noundef %i.aso) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1325: ; preds = %bb.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1324
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1328: ; preds = %bb.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1327
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store i8 0, ptr %i.art, align 1, !tbaa !129
  br label %bb.mt

bb.mt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1328, %bb.mo
  %i.asp = phi i8 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1328 ], [ %i.aru, %bb.mo ]
  %i.asq = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.asr = load i8, ptr %i.asq, align 4, !tbaa !130, !range !113, !noundef !124
  %i.ass = trunc nuw i8 %i.asr to i1              ; 3 uses
  %.not = xor i1 %i.ass, true
  %i.ast = load i8, ptr %i.aqc, align 2, !range !113
  %i.asu = trunc nuw i8 %i.ast to i1
  %or.cond23 = select i1 %.not, i1 true, i1 %i.asu
  %i.asv = trunc nuw i8 %i.asp to i1
  %or.cond26 = select i1 %or.cond23, i1 true, i1 %i.asv
  br i1 %or.cond26, label %bb.mu, label %.invoke

bb.mu:                                            ; preds = %bb.mt
  %i.asw = getelementptr inbounds nuw i8, ptr %7, i64 13
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !131, !range !113, !noundef !124
  %118 = trunc nuw i8 %i.asx to i1
  %.not27 = xor i1 %118, true
  %or.cond30 = or i1 %i.ass, %.not27
  br i1 %or.cond30, label %bb.mv, label %.invoke

bb.mv:                                            ; preds = %bb.mu
  %i.asy = load i8, ptr %i.w, align 4, !range !113
  %i.asz = trunc nuw i8 %i.asy to i1
  %or.cond33 = select i1 %i.ass, i1 %i.asz, i1 false
  br i1 %or.cond33, label %.invoke, label %bb.mw

.invoke:                                          ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.me, %bb.md
  %i.ata = phi ptr [ @.str.60, %bb.mu ], [ @.str.59, %bb.mt ], [ @.str.55, %bb.me ], [ @.str.54, %bb.md ], [ @.str.61, %bb.mv ]
  invoke void @_ZN4pbrt9ErrorExitIJEEEvPKcDpOT_(ptr noundef nonnull %i.ata) #34
          to label %.cont unwind label %bb.ma

.cont:                                            ; preds = %.invoke
  unreachable

bb.mw:                                            ; preds = %bb.mv
  %i.atb = invoke noundef i32 @_ZN4pbrt18LogLevelFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.mx unwind label %bb.ma

bb.mx:                                            ; preds = %bb.mw
  store i32 %i.atb, ptr %i.p, align 8, !tbaa !104
  invoke void @_ZN4pbrt8InitPBRTERKNS_11PBRTOptionsE(ptr noundef nonnull align 8 dereferenceable(304) %7)
          to label %bb.my unwind label %bb.ma

bb.my:                                            ; preds = %bb.mx
  %i.atc = load i8, ptr %i.k, align 1, !tbaa !25, !range !113, !noundef !124
  %i.atd = trunc nuw i8 %i.atc to i1
  %i.ate = load i8, ptr %i.l, align 1, !range !113 ; 2 uses
  %i.atf = trunc nuw i8 %i.ate to i1
  %or.cond35 = select i1 %i.atd, i1 true, i1 %i.atf
  %i.atg = load i8, ptr %i.x, align 1, !range !113 ; 2 uses
  %i.ath = trunc nuw i8 %i.atg to i1
  %or.cond38 = select i1 %or.cond35, i1 true, i1 %i.ath
  br i1 %or.cond38, label %bb.mz, label %bb.nc

bb.mz:                                            ; preds = %bb.my
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #31
  %i.ati = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i8 0, ptr %i.ati, align 8, !tbaa !133
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTVN4pbrt22FormattingParserTargetE, i64 16), ptr %115, align 8, !tbaa !44
  %i.atj = getelementptr inbounds nuw i8, ptr %115, i64 12
  store i32 0, ptr %i.atj, align 4, !tbaa !143
  %i.atk = getelementptr inbounds nuw i8, ptr %115, i64 16
  store i8 %i.ate, ptr %i.atk, align 8, !tbaa !144
  %i.atl = getelementptr inbounds nuw i8, ptr %115, i64 17
  store i8 %i.atg, ptr %i.atl, align 1, !tbaa !145
  %i.atm = getelementptr inbounds nuw i8, ptr %115, i64 32 ; 3 uses
  store i32 0, ptr %i.atm, align 8, !tbaa !146
  %i.atn = getelementptr inbounds nuw i8, ptr %115, i64 40
  store ptr null, ptr %i.atn, align 8, !tbaa !49
  %i.ato = getelementptr inbounds nuw i8, ptr %115, i64 48
  store ptr %i.atm, ptr %i.ato, align 8, !tbaa !147
  %i.atp = getelementptr inbounds nuw i8, ptr %115, i64 56
  store ptr %i.atm, ptr %i.atp, align 8, !tbaa !148
  %i.atq = getelementptr inbounds nuw i8, ptr %115, i64 64
  store i64 0, ptr %i.atq, align 8, !tbaa !149
  %i.atr = getelementptr inbounds nuw i8, ptr %115, i64 80 ; 3 uses
  store i32 0, ptr %i.atr, align 8, !tbaa !146
  %i.ats = getelementptr inbounds nuw i8, ptr %115, i64 88
  store ptr null, ptr %i.ats, align 8, !tbaa !49
  %i.att = getelementptr inbounds nuw i8, ptr %115, i64 96
  store ptr %i.atr, ptr %i.att, align 8, !tbaa !147
  %i.atu = getelementptr inbounds nuw i8, ptr %115, i64 104
  store ptr %i.atr, ptr %i.atu, align 8, !tbaa !148
  %i.atv = getelementptr inbounds nuw i8, ptr %115, i64 112
  store i64 0, ptr %i.atv, align 8, !tbaa !149
  %i.atw = getelementptr inbounds nuw i8, ptr %115, i64 128 ; 3 uses
  store i32 0, ptr %i.atw, align 8, !tbaa !146
  %i.atx = getelementptr inbounds nuw i8, ptr %115, i64 136
  store ptr null, ptr %i.atx, align 8, !tbaa !49
  %i.aty = getelementptr inbounds nuw i8, ptr %115, i64 144
  store ptr %i.atw, ptr %i.aty, align 8, !tbaa !147
  %i.atz = getelementptr inbounds nuw i8, ptr %115, i64 152
  store ptr %i.atw, ptr %i.atz, align 8, !tbaa !148
  %i.aua = getelementptr inbounds nuw i8, ptr %115, i64 160
  store i64 0, ptr %i.aua, align 8, !tbaa !149
  %i.aub = getelementptr inbounds nuw i8, ptr %115, i64 176 ; 3 uses
  store i32 0, ptr %i.aub, align 8, !tbaa !146
  %i.auc = getelementptr inbounds nuw i8, ptr %115, i64 184
  store ptr null, ptr %i.auc, align 8, !tbaa !49
  %i.aud = getelementptr inbounds nuw i8, ptr %115, i64 192
  store ptr %i.aub, ptr %i.aud, align 8, !tbaa !147
  %i.aue = getelementptr inbounds nuw i8, ptr %115, i64 200
  store ptr %i.aub, ptr %i.aue, align 8, !tbaa !148
  %i.auf = getelementptr inbounds nuw i8, ptr %115, i64 208
  store i64 0, ptr %i.auf, align 8, !tbaa !149
  %i.aug = load ptr, ptr %8, align 8, !tbaa !50   ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !29
  %i.auj = ptrtoint ptr %i.aui to i64
  %i.auk = ptrtoint ptr %i.aug to i64
  %i.aul = sub i64 %i.auj, %i.auk
  %i.aum = ashr exact i64 %i.aul, 5
  invoke void @_ZN4pbrt10ParseFilesEPNS_12ParserTargetEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull %115, ptr %i.aug, i64 %i.aum)
          to label %bb.na unwind label %bb.nb

bb.na:                                            ; preds = %bb.mz
  call void @_ZN4pbrt22FormattingParserTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %115) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #31
  br label %bb.ny

bb.nb:                                            ; preds = %bb.mz
  %i.aun = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt22FormattingParserTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %115) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #31
  br label %.body

bb.nc:                                            ; preds = %bb.my
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #31
  invoke void @_ZN4pbrt10BasicSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1520) %116)
          to label %bb.nd unwind label %bb.ni

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #31
  invoke void @_ZN4pbrt17BasicSceneBuilderC1EPNS_10BasicSceneE(ptr noundef nonnull align 64 dereferenceable(3544) %117, ptr noundef nonnull %116)
          to label %bb.ne unwind label %bb.nj

bb.ne:                                            ; preds = %bb.nd
  %i.auo = load ptr, ptr %8, align 8, !tbaa !50   ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !29
  %i.aur = ptrtoint ptr %i.auq to i64
  %i.aus = ptrtoint ptr %i.auo to i64
  %i.aut = sub i64 %i.aur, %i.aus
  %i.auu = ashr exact i64 %i.aut, 5
  invoke void @_ZN4pbrt10ParseFilesEPNS_12ParserTargetEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull %117, ptr %i.auo, i64 %i.auu)
          to label %bb.nf unwind label %bb.nk

bb.nf:                                            ; preds = %bb.ne
  %i.auv = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !151 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 10
  %i.aux = load i8, ptr %i.auw, align 2, !tbaa !126, !range !113, !noundef !124
  %i.auy = trunc nuw i8 %i.aux to i1
  br i1 %i.auy, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auv, i64 11
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !129, !range !113, !noundef !124
  %i.avb = trunc nuw i8 %i.ava to i1
  br i1 %i.avb, label %bb.nh, label %bb.nl

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  invoke void @_ZN4pbrt15RenderWavefrontERNS_10BasicSceneE(ptr noundef nonnull align 8 dereferenceable(1520) %116)
          to label %bb.nm unwind label %bb.nk

bb.ni:                                            ; preds = %bb.nc
  %i.avc = landingpad { ptr, i32 }
          cleanup
  br label %bb.nx

bb.nj:                                            ; preds = %bb.nd
  %i.avd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.nk:                                            ; preds = %bb.ns, %bb.nl, %bb.nh, %bb.ne
  %i.ave = landingpad { ptr, i32 }
          cleanup
  br label %bb.nv

bb.nl:                                            ; preds = %bb.ng
  invoke void @_ZN4pbrt9RenderCPUERNS_10BasicSceneE(ptr noundef nonnull align 8 dereferenceable(1520) %116)
          to label %bb.nm unwind label %bb.nk

bb.nm:                                            ; preds = %bb.nl, %bb.nh
  %i.avf = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !152
  %i.avg = icmp slt i32 %i.avf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  br i1 %i.avg, label %bb.nn, label %bb.ns

bb.nn:                                            ; preds = %bb.nm
  %i.avh = invoke noundef i64 @_ZN4pbrt13GetCurrentRSSEv()
          to label %bb.no unwind label %bb.nu

bb.no:                                            ; preds = %bb.nn
  store i64 %i.avh, ptr %i.m, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.avi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.avi, ptr %2, align 8, !tbaa !21, !alias.scope !153
  %i.avj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.avj, align 8, !tbaa !22, !alias.scope !153
  store i8 0, ptr %i.avi, align 8, !tbaa !23, !alias.scope !153
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveImJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.63, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.avk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avl = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !153 ; 2 uses
  %i.avm = icmp eq ptr %i.avl, %i.avi
  br i1 %i.avm, label %.body1338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1332: ; preds = %bb.np
  %i.avn = load i64, ptr %i.avi, align 8, !tbaa !23, !alias.scope !153
  %i.avo = add i64 %i.avn, 1
  call void @_ZdlPvm(ptr noundef %i.avl, i64 noundef %i.avo) #33
  br label %.body1338

end_hunk_0
