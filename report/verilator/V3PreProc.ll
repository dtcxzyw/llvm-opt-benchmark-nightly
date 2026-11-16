Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z11V3PreLexlexv:bb.a
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !56, !noalias !833
  %i.anm = getelementptr inbounds i8, ptr %i.anl, i64 -8
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !57
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit434

_ZN8V3PreLex12curFilelinepEv.exit434:             ; preds = %bb.fs, %bb.ft
  %i.anp = phi ptr [ %i.ano, %bb.ft ], [ %i.ang, %bb.fs ]
  %i.anq = getelementptr inbounds i8, ptr %i.anp, i64 -8
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !59
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !70
  %i.ant = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.anu = sext i32 %i.amq to i64
  call void @_ZN8FileLine12forwardTokenEPKcmb(ptr noundef nonnull align 8 dereferenceable(48) %i.ans, ptr noundef %i.ant, i64 noundef %i.anu, i1 noundef zeroext false)
  br label %.loopexit

bb.fu:                                            ; preds = %bb.ae
  %i.anv = load i32, ptr @V3PreLexleng, align 4, !tbaa !28 ; 3 uses
  %i.anw = icmp sgt i32 %i.anv, 0
  br i1 %i.anw, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.anx = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.any = zext nneg i32 %i.anv to i64
  %i.anz = getelementptr i8, ptr %i.anx, i64 %i.any
  %i.aoa = getelementptr i8, ptr %i.anz, i64 -1
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !45
  %i.aoc = icmp eq i8 %i.aob, 10
  %i.aod = zext i1 %i.aoc to i32
  %i.aoe = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33
  %i.aof = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %i.aof
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !37
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 40
  store i32 %i.aod, ptr %i.aoi, align 8, !tbaa !46
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.aoj = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !49 ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 56
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !54, !noalias !834 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoj, i64 64
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !55, !noalias !834
  %i.aoo = icmp eq ptr %i.aol, %i.aon
  br i1 %i.aoo, label %bb.fx, label %_ZN8V3PreLex12curFilelinepEv.exit435

bb.fx:                                            ; preds = %bb.fw
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoj, i64 80
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !56, !noalias !834
  %i.aor = getelementptr inbounds i8, ptr %i.aoq, i64 -8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !57
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit435

_ZN8V3PreLex12curFilelinepEv.exit435:             ; preds = %bb.fw, %bb.fx
  %i.aou = phi ptr [ %i.aot, %bb.fx ], [ %i.aol, %bb.fw ]
  %i.aov = getelementptr inbounds i8, ptr %i.aou, i64 -8
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !59
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !70
  %i.aoy = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.aoz = sext i32 %i.anv to i64
  call void @_ZN8FileLine12forwardTokenEPKcmb(ptr noundef nonnull align 8 dereferenceable(48) %i.aox, ptr noundef %i.aoy, i64 noundef %i.aoz, i1 noundef zeroext false)
  call fastcc void @_ZL9linenoIncv()
  store i32 1, ptr @_ZL8yy_start, align 4, !tbaa !28
  br label %.loopexit

bb.fy:                                            ; preds = %bb.ae
  %i.apa = load i32, ptr @V3PreLexleng, align 4, !tbaa !28 ; 2 uses
  %i.apb = icmp sgt i32 %i.apa, 0
  br i1 %i.apb, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.apc = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.apd = zext nneg i32 %i.apa to i64
  %i.ape = getelementptr i8, ptr %i.apc, i64 %i.apd
  %i.apf = getelementptr i8, ptr %i.ape, i64 -1
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !45
  %i.aph = icmp eq i8 %i.apg, 10
  %i.api = zext i1 %i.aph to i32
  %i.apj = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33
  %i.apk = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.apk
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !37
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 40
  store i32 %i.api, ptr %i.apn, align 8, !tbaa !46
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  %i.apo = load i8, ptr @_ZL12yy_hold_char, align 1, !tbaa !45
  store i8 %i.apo, ptr %.3115, align 1, !tbaa !45
  %i.app = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !28
  %i.apq = sext i32 %i.app to i64
  %i.apr = sub nsw i64 0, %i.apq
  %i.aps = getelementptr inbounds i8, ptr %.1120.ph, i64 %i.apr ; 5 uses
  store ptr %i.aps, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !27
  store ptr %i.aps, ptr @V3PreLextext, align 8, !tbaa !27
  store i32 0, ptr @V3PreLexleng, align 4, !tbaa !28
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !45
  store i8 %i.apt, ptr @_ZL12yy_hold_char, align 1, !tbaa !45
  store i8 0, ptr %i.aps, align 1, !tbaa !45
  store ptr %i.aps, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !27
  store i32 31, ptr @_ZL8yy_start, align 4, !tbaa !28
  br label %.loopexit

bb.gb:                                            ; preds = %bb.ae
  %i.apu = load i32, ptr @V3PreLexleng, align 4, !tbaa !28 ; 3 uses
  %i.apv = icmp sgt i32 %i.apu, 0
  br i1 %i.apv, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.apw = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.apx = zext nneg i32 %i.apu to i64
  %i.apy = getelementptr i8, ptr %i.apw, i64 %i.apx
  %i.apz = getelementptr i8, ptr %i.apy, i64 -1
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !45
  %i.aqb = icmp eq i8 %i.aqa, 10
  %i.aqc = zext i1 %i.aqb to i32
  %i.aqd = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !33
  %i.aqe = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !35
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aqd, i64 %i.aqe
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !37
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 40
  store i32 %i.aqc, ptr %i.aqh, align 8, !tbaa !46
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.aqi = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !49 ; 3 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 56
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !54, !noalias !835 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqi, i64 64
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !55, !noalias !835
  %i.aqn = icmp eq ptr %i.aqk, %i.aqm
  br i1 %i.aqn, label %bb.ge, label %_ZN8V3PreLex12curFilelinepEv.exit436

bb.ge:                                            ; preds = %bb.gd
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqi, i64 80
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !56, !noalias !835
  %i.aqq = getelementptr inbounds i8, ptr %i.aqp, i64 -8
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !57
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit436

_ZN8V3PreLex12curFilelinepEv.exit436:             ; preds = %bb.gd, %bb.ge
  %i.aqt = phi ptr [ %i.aqs, %bb.ge ], [ %i.aqk, %bb.gd ]
  %i.aqu = getelementptr inbounds i8, ptr %i.aqt, i64 -8
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !59
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !70
  %i.aqx = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.aqy = sext i32 %i.apu to i64
  call void @_ZN8FileLine12forwardTokenEPKcmb(ptr noundef nonnull align 8 dereferenceable(48) %i.aqw, ptr noundef %i.aqx, i64 noundef %i.aqy, i1 noundef zeroext false)
  call fastcc void @_ZL9linenoIncv()
  %i.aqz = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !49 ; 7 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 56 ; 2 uses
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !54, !noalias !836 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 64 ; 2 uses
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !55, !noalias !836
  %i.are = icmp eq ptr %i.arb, %i.ard
  br i1 %i.are, label %bb.gf, label %_ZN8V3PreLex12curFilelinepEv.exit437

bb.gf:                                            ; preds = %_ZN8V3PreLex12curFilelinepEv.exit436
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqz, i64 80
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !56, !noalias !836
  %i.arh = getelementptr inbounds i8, ptr %i.arg, i64 -8
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !57
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit437

_ZN8V3PreLex12curFilelinepEv.exit437:             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit436, %bb.gf
  %i.ark = phi ptr [ %i.arj, %bb.gf ], [ %i.arb, %_ZN8V3PreLex12curFilelinepEv.exit436 ]
  %i.arl = getelementptr inbounds i8, ptr %i.ark, i64 -8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !59
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !70 ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 12 ; 2 uses
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !94
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arn, i64 24 ; 2 uses
  %i.arr = load i16, ptr %i.arq, align 8, !tbaa !95
  %i.ars = zext i16 %i.arr to i32
  %i.art = add nsw i32 %i.arp, %i.ars
  store i32 %i.art, ptr %i.aro, align 4, !tbaa !94
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arn, i64 16 ; 2 uses
  %i.arv = load i64, ptr %i.aru, align 8          ; 2 uses
  %i.arw = lshr i64 %i.arv, 32
  %i.arx = and i64 %i.arw, 16777215
  %i.ary = and i64 %i.arv, -16777216
  %i.arz = or disjoint i64 %i.arx, %i.ary
  store i64 %i.arz, ptr %i.aru, align 8
  store i16 0, ptr %i.arq, align 8, !tbaa !95
  %i.asa = load i32, ptr @V3PreLexleng, align 4, !tbaa !28 ; 3 uses
  %i.asb = sext i32 %i.asa to i64                 ; 2 uses
  %i.asc = add nsw i64 %i.asb, -1
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aqz, i64 252
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !824
  %i.asf = sext i32 %i.ase to i64
  %.not347 = icmp ule i64 %i.asc, %i.asf
  %i.asg = and i32 %i.asa, 3
  %i.ash = icmp eq i32 %i.asg, 1
  %or.cond = and i1 %i.ash, %.not347
  br i1 %or.cond, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_ZN8V3PreLex12curFilelinepEv.exit437
  %23 = add nsw i32 %i.asa, -1
  %i.asi = ashr exact i32 %23, 2
  %.neg = mul nsw i32 %i.asi, -3
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aqz, i64 256 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 8, !tbaa !818
  %i.asl = add i32 %i.ask, %.neg
  store i32 %i.asl, ptr %i.asj, align 8, !tbaa !818
  br label %bb.gn

bb.gh:                                            ; preds = %_ZN8V3PreLex12curFilelinepEv.exit437
  %i.asm = load ptr, ptr %i.ara, align 8, !tbaa !54, !noalias !837 ; 2 uses
  %i.asn = load ptr, ptr %i.arc, align 8, !tbaa !55, !noalias !837
  %i.aso = icmp eq ptr %i.asm, %i.asn
  br i1 %i.aso, label %bb.gi, label %_ZN8V3PreLex12curFilelinepEv.exit438

bb.gi:                                            ; preds = %bb.gh
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aqz, i64 80
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !56, !noalias !837
  %i.asr = getelementptr inbounds i8, ptr %i.asq, i64 -8
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !57
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit438

_ZN8V3PreLex12curFilelinepEv.exit438:             ; preds = %bb.gh, %bb.gi
  %i.asu = phi ptr [ %i.ast, %bb.gi ], [ %i.asm, %bb.gh ]
  %i.asv = getelementptr inbounds i8, ptr %i.asu, i64 -8
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !59
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !70
  %i.asy = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 29) ; 0 uses
  %i.asz = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.ata = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.asz, ptr noundef nonnull @.str.13, i64 noundef 60) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.gj unwind label %bb.gl

bb.gj:                                            ; preds = %_ZN8V3PreLex12curFilelinepEv.exit438
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.asx, ptr noundef nonnull align 8 dereferenceable(112) %i.asz, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.gk unwind label %bb.gm

bb.gk:                                            ; preds = %bb.gj
  %i.atb = load ptr, ptr %12, align 8, !tbaa !90  ; 2 uses
  %i.atc = icmp eq ptr %i.atb, %i.aj
  br i1 %i.atc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %bb.gk
  %i.atd = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.ate = add i64 %i.atd, 1
  call void @_ZdlPvm(ptr noundef %i.atb, i64 noundef %i.ate) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  %.pre1534 = load i32, ptr @V3PreLexleng, align 4, !tbaa !28
  %.pre1535.pre.pre = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !49
  %.pre1544 = sext i32 %.pre1534 to i64
  br label %bb.gn

bb.gl:                                            ; preds = %_ZN8V3PreLex12curFilelinepEv.exit438
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

bb.gm:                                            ; preds = %bb.gj
  %i.atg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ath = load ptr, ptr %12, align 8, !tbaa !90  ; 2 uses
  %i.ati = icmp eq ptr %i.ath, %i.aj
  br i1 %i.ati, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442: ; preds = %bb.gm
  %i.atj = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.atk = add i64 %i.atj, 1
  call void @_ZdlPvm(ptr noundef %i.ath, i64 noundef %i.atk) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442, %bb.gl
  %.pn348 = phi { ptr, i32 } [ %i.atf, %bb.gl ], [ %i.atg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442 ], [ %i.atg, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %bb.ahk

bb.gn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %bb.gg
  %.pre-phi = phi i64 [ %.pre1544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %i.asb, %bb.gg ]
  %.pre1535.pre = phi ptr [ %.pre1535.pre.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %i.aqz, %bb.gg ] ; 5 uses
  %i.atl = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.atm = getelementptr i8, ptr %i.atl, i64 %.pre-phi ; 2 uses
  %i.atn = getelementptr i8, ptr %i.atm, i64 -3
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !45
  %i.atp = icmp eq i8 %i.ato, 61
  br i1 %i.atp, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.atq = getelementptr inbounds nuw i8, ptr %.pre1535.pre, i64 256 ; 2 uses
  %i.atr = load i32, ptr %i.atq, align 8, !tbaa !818
  %i.ats = add nsw i32 %i.atr, 1
  store i32 %i.ats, ptr %i.atq, align 8, !tbaa !818
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.att = getelementptr i8, ptr %i.atm, i64 -2
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !45
  %i.atv = icmp eq i8 %i.atu, 61
  %i.atw = getelementptr inbounds nuw i8, ptr %.pre1535.pre, i64 256 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !818 ; 2 uses
  br i1 %i.atv, label %bb.gq, label %._crit_edge1536

bb.gq:                                            ; preds = %bb.gp
  %i.aty = add nsw i32 %i.atx, 1                  ; 2 uses
  store i32 %i.aty, ptr %i.atw, align 8, !tbaa !818
  br label %._crit_edge1536

._crit_edge1536:                                  ; preds = %bb.gp, %bb.gq
  %i.atz = phi i32 [ %i.aty, %bb.gq ], [ %i.atx, %bb.gp ] ; 2 uses
  %i.aua = icmp eq i32 %i.atz, 0
  br i1 %i.aua, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %._crit_edge1536
  store i32 1, ptr @_ZL8yy_start, align 4, !tbaa !28
  br label %.backedge

.backedge:                                        ; preds = %bb.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %bb.gs, %bb.ar, %bb.as, %bb.afr, %_ZN8V3PreLex12curFilelinepEv.exit631, %_ZN8V3PreLex12curFilelinepEv.exit629, %bb.adw, %bb.adt, %bb.ado, %bb.adh, %bb.ada, %_ZN8V3PreLex12curFilelinepEv.exit607, %_ZN8V3PreLex12curFilelinepEv.exit605, %_ZN8V3PreLex12curFilelinepEv.exit603, %_ZN8V3PreLex12curFilelinepEv.exit601, %_ZN8V3PreLex12curFilelinepEv.exit599, %_ZN8V3PreLex12curFilelinepEv.exit597, %_ZN8V3PreLex12curFilelinepEv.exit595, %_ZN8V3PreLex12curFilelinepEv.exit593, %_ZN8V3PreLex12curFilelinepEv.exit591, %_ZN8V3PreLex12curFilelinepEv.exit588, %bb.zd, %bb.za, %_ZN8V3PreLex12curFilelinepEv.exit584, %bb.yi, %bb.wj, %bb.wc, %bb.vz, %bb.vw, %_ZN8V3PreLex12curFilelinepEv.exit567, %bb.vm, %_ZN8V3PreLex12curFilelinepEv.exit565, %_ZN8V3PreLex12curFilelinepEv.exit563, %bb.uy, %bb.uv, %_ZN8V3PreLex12curFilelinepEv.exit560, %bb.un, %_ZN8V3PreLex12curFilelinepEv.exit556, %_ZN8V3PreLex12curFilelinepEv.exit553, %bb.tq, %_ZN8V3PreLex12curFilelinepEv.exit551, %_ZN8V3PreLex12curFilelinepEv.exit549, %_ZN8V3PreLex12curFilelinepEv.exit547, %_ZN8V3PreLex12curFilelinepEv.exit545, %_ZN8V3PreLex12curFilelinepEv.exit543, %bb.sn, %bb.sk, %_ZN8V3PreLex12curFilelinepEv.exit541, %bb.sc, %_ZN8V3PreLex12curFilelinepEv.exit539, %_ZN8V3PreLex12curFilelinepEv.exit536, %bb.rj, %_ZN8V3PreLex12curFilelinepEv.exit533, %_ZN8V3PreLex12curFilelinepEv.exit531, %_ZN8V3PreLex12curFilelinepEv.exit526, %bb.px, %bb.pu, %bb.pf, %bb.pc, %_ZN8V3PreLex12curFilelinepEv.exit519, %bb.oo, %bb.of, %_ZN8V3PreLex12curFilelinepEv.exit512, %_ZN8V3PreLex12curFilelinepEv.exit510, %bb.mi, %_ZN8V3PreLex12curFilelinepEv.exit497, %bb.lo, %bb.ll, %bb.li, %bb.lf, %bb.lc, %bb.kz, %_ZN8V3PreLex12curFilelinepEv.exit495, %bb.kq, %_ZN8V3PreLex12curFilelinepEv.exit493, %bb.kg, %bb.kd, %bb.ka, %bb.jx, %bb.ju, %_ZN8V3PreLex12curFilelinepEv.exit491, %bb.jk, %bb.am
  br label %bb.u, !llvm.loop !480

bb.gs:                                            ; preds = %._crit_edge1536
  %i.aub = icmp slt i32 %i.atz, 0
  br i1 %i.aub, label %bb.gt, label %.backedge

bb.gt:                                            ; preds = %bb.gs
  %i.auc = getelementptr inbounds nuw i8, ptr %.pre1535.pre, i64 56
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !54, !noalias !838 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.pre1535.pre, i64 64
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !55, !noalias !838
  %i.aug = icmp eq ptr %i.aud, %i.auf
  br i1 %i.aug, label %bb.gu, label %_ZN8V3PreLex12curFilelinepEv.exit445

bb.gu:                                            ; preds = %bb.gt
  %i.auh = getelementptr inbounds nuw i8, ptr %.pre1535.pre, i64 80
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !56, !noalias !838
  %i.auj = getelementptr inbounds i8, ptr %i.aui, i64 -8
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !57
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit445

_ZN8V3PreLex12curFilelinepEv.exit445:             ; preds = %bb.gt, %bb.gu
  %i.aum = phi ptr [ %i.aul, %bb.gu ], [ %i.aud, %bb.gt ]
  %i.aun = getelementptr inbounds i8, ptr %i.aum, i64 -8
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !59
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !70
  %i.auq = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 29) ; 0 uses
  %i.aur = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.aus = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aur, ptr noundef nonnull @.str.14, i64 noundef 67) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.gv unwind label %bb.gx

bb.gv:                                            ; preds = %_ZN8V3PreLex12curFilelinepEv.exit445
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.aup, ptr noundef nonnull align 8 dereferenceable(112) %i.aur, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.gw unwind label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.aut = load ptr, ptr %14, align 8, !tbaa !90  ; 2 uses
  %i.auu = icmp eq ptr %i.aut, %i.ak
  br i1 %i.auu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %bb.gw
  %i.auv = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.auw = add i64 %i.auv, 1
  call void @_ZdlPvm(ptr noundef %i.aut, i64 noundef %i.auw) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %.backedge

bb.gx:                                            ; preds = %_ZN8V3PreLex12curFilelinepEv.exit445
  %i.aux = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

bb.gy:                                            ; preds = %bb.gv
  %i.auy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.auz = load ptr, ptr %14, align 8, !tbaa !90  ; 2 uses
  %i.ava = icmp eq ptr %i.auz, %i.ak
  br i1 %i.ava, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449: ; preds = %bb.gy
  %i.avb = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.avc = add i64 %i.avb, 1
  call void @_ZdlPvm(ptr noundef %i.auz, i64 noundef %i.avc) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451: ; preds = %bb.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449, %bb.gx
  %.pn350 = phi { ptr, i32 } [ %i.aux, %bb.gx ], [ %i.auy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449 ], [ %i.auy, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %bb.ahk

end_hunk_0
