Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generate_real_test?download=true
inline.NumInlined: 2233
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_143GenerateRealTest_U64ToDoubleSignedTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.aoh = load ptr, ptr %i.aog, align 8
  call void %i.aoh(ptr noundef nonnull align 8 dereferenceable(128) %i.aoe) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit868

_ZN7testing7MessageD2Ev.exit868:                  ; preds = %bb.rw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i867
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #17
  br label %bb.sb

bb.rx:                                            ; preds = %bb.rs
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit871

bb.ry:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit865
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.sa

bb.rz:                                            ; preds = %bb.rv
  %i.aok = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %135) #17
  br label %bb.sa

bb.sa:                                            ; preds = %bb.rz, %bb.ry
  %.pn242 = phi { ptr, i32 } [ %i.aok, %bb.rz ], [ %i.aoj, %bb.ry ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #17
  %i.aol = load ptr, ptr %134, align 8, !tbaa !50 ; 3 uses
  %.not.i.i869 = icmp eq ptr %i.aol, null
  br i1 %.not.i.i869, label %_ZN7testing7MessageD2Ev.exit871, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i870

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i870: ; preds = %bb.sa
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !26
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8
  call void %i.aoo(ptr noundef nonnull align 8 dereferenceable(128) %i.aol) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit871

_ZN7testing7MessageD2Ev.exit871:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i870, %bb.sa, %bb.rx
  %.pn242.pn = phi { ptr, i32 } [ %i.aoi, %bb.rx ], [ %.pn242, %bb.sa ], [ %.pn242, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i870 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %133) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #17
  br label %bb.tu

bb.sb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit863, %_ZN7testing7MessageD2Ev.exit868
  %i.aop = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !48 ; 4 uses
  %.not.i.i872 = icmp eq ptr %i.aoq, null
  br i1 %.not.i.i872, label %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !21 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16 ; 2 uses
  %i.aot = icmp eq ptr %i.aor, %i.aos
  br i1 %i.aot, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i874, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i873

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i873: ; preds = %bb.sc
  %i.aou = load i64, ptr %i.aos, align 8, !tbaa !24
  %i.aov = add i64 %i.aou, 1
  call void @_ZdlPvm(ptr noundef %i.aor, i64 noundef %i.aov) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i874

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i874: ; preds = %bb.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i873
  call void @_ZdlPvm(ptr noundef nonnull %i.aoq, i64 noundef 32) #16
  br label %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.sb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i874
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #17
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %136)
  %i.aow = load i8, ptr %136, align 8, !tbaa !45, !range !46, !noundef !47
  %i.aox = trunc nuw i8 %i.aow to i1
  br i1 %i.aox, label %bb.sm, label %bb.sd

bb.sd:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %137)
          to label %bb.se unwind label %bb.si

bb.se:                                            ; preds = %bb.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #17
  %i.aoy = getelementptr inbounds nuw i8, ptr %136, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !48 ; 2 uses
  %.not.i.i877 = icmp eq ptr %i.aoz, null
  br i1 %.not.i.i877, label %_ZNK7testing15AssertionResult15failure_messageEv.exit878, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit878

_ZNK7testing15AssertionResult15failure_messageEv.exit878: ; preds = %bb.sf, %bb.se
  %i.apb = phi ptr [ %i.apa, %bb.sf ], [ @.str.51, %bb.se ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %138, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 405, ptr noundef %i.apb)
          to label %bb.sg unwind label %bb.sj

bb.sg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit878
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef nonnull align 8 dereferenceable(8) %137)
          to label %bb.sh unwind label %bb.sk

bb.sh:                                            ; preds = %bb.sg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %138) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #17
  %i.apc = load ptr, ptr %137, align 8, !tbaa !50 ; 3 uses
  %.not.i.i879 = icmp eq ptr %i.apc, null
  br i1 %.not.i.i879, label %_ZN7testing7MessageD2Ev.exit881, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i880

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i880: ; preds = %bb.sh
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !26
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apf = load ptr, ptr %i.ape, align 8
  call void %i.apf(ptr noundef nonnull align 8 dereferenceable(128) %i.apc) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit881

_ZN7testing7MessageD2Ev.exit881:                  ; preds = %bb.sh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i880
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #17
  br label %bb.sm

bb.si:                                            ; preds = %bb.sd
  %i.apg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit884

bb.sj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit878
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %bb.sl

bb.sk:                                            ; preds = %bb.sg
  %i.api = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %138) #17
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %bb.sj
  %.pn245 = phi { ptr, i32 } [ %i.api, %bb.sk ], [ %i.aph, %bb.sj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #17
  %i.apj = load ptr, ptr %137, align 8, !tbaa !50 ; 3 uses
  %.not.i.i882 = icmp eq ptr %i.apj, null
  br i1 %.not.i.i882, label %_ZN7testing7MessageD2Ev.exit884, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i883

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i883: ; preds = %bb.sl
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !26
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  %i.apm = load ptr, ptr %i.apl, align 8
  call void %i.apm(ptr noundef nonnull align 8 dereferenceable(128) %i.apj) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit884

_ZN7testing7MessageD2Ev.exit884:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i883, %bb.sl, %bb.si
  %.pn245.pn = phi { ptr, i32 } [ %i.apg, %bb.si ], [ %.pn245, %bb.sl ], [ %.pn245, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i883 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %136) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #17
  br label %bb.tu

bb.sm:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit881
  %i.apn = getelementptr inbounds nuw i8, ptr %136, i64 8
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !48 ; 4 uses
  %.not.i.i885 = icmp eq ptr %i.apo, null
  br i1 %.not.i.i885, label %_ZN7testing15AssertionResultD2Ev.exit889, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !21 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apo, i64 16 ; 2 uses
  %i.apr = icmp eq ptr %i.app, %i.apq
  br i1 %i.apr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i887, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i886

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i886: ; preds = %bb.sn
  %i.aps = load i64, ptr %i.apq, align 8, !tbaa !24
  %i.apt = add i64 %i.aps, 1
  call void @_ZdlPvm(ptr noundef %i.app, i64 noundef %i.apt) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i887

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i887: ; preds = %bb.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i886
  call void @_ZdlPvm(ptr noundef nonnull %i.apo, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit889

_ZN7testing15AssertionResultD2Ev.exit889:         ; preds = %bb.sm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i887
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #17
  %i.apu = getelementptr inbounds nuw i8, ptr %139, i64 8 ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %142, i64 8 ; 2 uses
  br label %bb.sp

bb.so:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.sp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit889, %_ZN7testing15AssertionResultD2Ev.exit918
  %indvars.iv = phi i64 [ 1, %_ZN7testing15AssertionResultD2Ev.exit889 ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit918 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.apw = trunc nuw nsw i64 %indvars.iv to i32   ; 3 uses
  %i.apx = uitofp nneg i32 %i.apw to double       ; 2 uses
  %i.apy = fmul nnan double %i.apx, f0x3C00000000000000 ; 2 uses
  store double %i.apy, ptr %i.c, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.apz = call range(i64 57, 65) i64 @llvm.ctlz.i64(i64 %indvars.iv, i1 true) ; 2 uses
  %i.aqa = shl i64 %indvars.iv, %i.apz
  %i.aqb = lshr i64 %i.aqa, 11
  %i.aqc = shl nuw nsw i64 %i.apz, 52             ; 2 uses
  %i.aqd = and i64 %i.aqb, 4503599627370495       ; 2 uses
  %i.aqe = or disjoint i64 %i.aqd, %i.aqc
  %i.aqf = xor i64 %i.aqe, 4607182418800017408    ; 2 uses
  %i.aqg = bitcast i64 %i.aqf to double
  store i64 %i.aqf, ptr %i.d, align 8, !tbaa !61
  %i.aqh = fcmp oeq double %i.apy, %i.aqg
  br i1 %i.aqh, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %139)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit890

bb.sr:                                            ; preds = %bb.sp
  call void @_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %139, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.163, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit890

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit890: ; preds = %bb.sq, %bb.sr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.aqi = load i8, ptr %139, align 8, !tbaa !45, !range !46, !noundef !47
  %i.aqj = trunc nuw i8 %i.aqi to i1
  br i1 %i.aqj, label %bb.td, label %bb.ss

bb.ss:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit890
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %bb.st unwind label %bb.sx

bb.st:                                            ; preds = %bb.ss
  %i.aqk = load ptr, ptr %140, align 8, !tbaa !50
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16
  %i.aqm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aql, i32 noundef %i.apw)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.sy ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %bb.st
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #17
  %i.aqn = load ptr, ptr %i.apu, align 8, !tbaa !48 ; 2 uses
  %.not.i.i891 = icmp eq ptr %i.aqn, null
  br i1 %.not.i.i891, label %_ZNK7testing15AssertionResult15failure_messageEv.exit892, label %bb.su

bb.su:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit892

_ZNK7testing15AssertionResult15failure_messageEv.exit892: ; preds = %bb.su, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.aqp = phi ptr [ %i.aqo, %bb.su ], [ @.str.51, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %141, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 410, ptr noundef %i.aqp)
          to label %bb.sv unwind label %bb.sz

bb.sv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit892
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %141, ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %bb.sw unwind label %bb.ta

bb.sw:                                            ; preds = %bb.sv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %141) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #17
  %i.aqq = load ptr, ptr %140, align 8, !tbaa !50 ; 3 uses
  %.not.i.i893 = icmp eq ptr %i.aqq, null
  br i1 %.not.i.i893, label %_ZN7testing7MessageD2Ev.exit895, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i894

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i894: ; preds = %bb.sw
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !26
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8
  %i.aqt = load ptr, ptr %i.aqs, align 8
  call void %i.aqt(ptr noundef nonnull align 8 dereferenceable(128) %i.aqq) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit895

_ZN7testing7MessageD2Ev.exit895:                  ; preds = %bb.sw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i894
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #17
  br label %bb.td

bb.sx:                                            ; preds = %bb.ss
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit898

bb.sy:                                            ; preds = %bb.st
  %i.aqv = landingpad { ptr, i32 }
          cleanup
  br label %bb.tc

bb.sz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit892
  %i.aqw = landingpad { ptr, i32 }
          cleanup
  br label %bb.tb

bb.ta:                                            ; preds = %bb.sv
  %i.aqx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %141) #17
  br label %bb.tb

bb.tb:                                            ; preds = %bb.ta, %bb.sz
  %.pn248 = phi { ptr, i32 } [ %i.aqx, %bb.ta ], [ %i.aqw, %bb.sz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #17
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.sy
  %.pn248.pn = phi { ptr, i32 } [ %.pn248, %bb.tb ], [ %i.aqv, %bb.sy ] ; 2 uses
  %i.aqy = load ptr, ptr %140, align 8, !tbaa !50 ; 3 uses
  %.not.i.i896 = icmp eq ptr %i.aqy, null
  br i1 %.not.i.i896, label %_ZN7testing7MessageD2Ev.exit898, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i897

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i897: ; preds = %bb.tc
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !26
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8
  %i.arb = load ptr, ptr %i.ara, align 8
  call void %i.arb(ptr noundef nonnull align 8 dereferenceable(128) %i.aqy) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit898

_ZN7testing7MessageD2Ev.exit898:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i897, %bb.tc, %bb.sx
  %.pn248.pn.pn = phi { ptr, i32 } [ %i.aqu, %bb.sx ], [ %.pn248.pn, %bb.tc ], [ %.pn248.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i897 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %139) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #17
  br label %bb.tu

bb.td:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit890, %_ZN7testing7MessageD2Ev.exit895
  %i.arc = load ptr, ptr %i.apu, align 8, !tbaa !48 ; 4 uses
  %.not.i.i899 = icmp eq ptr %i.arc, null
  br i1 %.not.i.i899, label %_ZN7testing15AssertionResultD2Ev.exit903, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !21 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 16 ; 2 uses
  %i.arf = icmp eq ptr %i.ard, %i.are
  br i1 %i.arf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i901, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i900

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i900: ; preds = %bb.te
  %i.arg = load i64, ptr %i.are, align 8, !tbaa !24
  %i.arh = add i64 %i.arg, 1
  call void @_ZdlPvm(ptr noundef %i.ard, i64 noundef %i.arh) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i901

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i901: ; preds = %bb.te, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i900
  call void @_ZdlPvm(ptr noundef nonnull %i.arc, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit903

_ZN7testing15AssertionResultD2Ev.exit903:         ; preds = %bb.td, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i901
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ari = load double, ptr %i.a, align 8, !tbaa !61
  %i.arj = fmul double %i.ari, %i.apx             ; 2 uses
  store double %i.arj, ptr %i.e, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %145 = or disjoint i64 %i.aqc, -9223372036854775808
  %146 = or disjoint i64 %i.aqd, %145
  %i.ark = xor i64 %146, 4607182418800017408      ; 2 uses
  %i.arl = bitcast i64 %i.ark to double
  store i64 %i.ark, ptr %i.f, align 8, !tbaa !61
  %i.arm = fcmp oeq double %i.arj, %i.arl
  br i1 %i.arm, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit903
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %142)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit904

bb.tg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit903
  call void @_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %142, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit904

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit904: ; preds = %bb.tf, %bb.tg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.arn = load i8, ptr %142, align 8, !tbaa !45, !range !46, !noundef !47
  %i.aro = trunc nuw i8 %i.arn to i1
  br i1 %i.aro, label %bb.ts, label %bb.th

bb.th:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit904
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.ti unwind label %bb.tm

bb.ti:                                            ; preds = %bb.th
  %i.arp = load ptr, ptr %143, align 8, !tbaa !50
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  %i.arr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.arq, i32 noundef %i.apw)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit905 unwind label %bb.tn ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit905:        ; preds = %bb.ti
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #17
  %i.ars = load ptr, ptr %i.apv, align 8, !tbaa !48 ; 2 uses
  %.not.i.i906 = icmp eq ptr %i.ars, null
  br i1 %.not.i.i906, label %_ZNK7testing15AssertionResult15failure_messageEv.exit907, label %bb.tj

bb.tj:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit905
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit907

_ZNK7testing15AssertionResult15failure_messageEv.exit907: ; preds = %bb.tj, %_ZN7testing7MessagelsIiEERS0_RKT_.exit905
  %i.aru = phi ptr [ %i.art, %bb.tj ], [ @.str.51, %_ZN7testing7MessagelsIiEERS0_RKT_.exit905 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %144, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 411, ptr noundef %i.aru)
          to label %bb.tk unwind label %bb.to

bb.tk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit907
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.tl unwind label %bb.tp

bb.tl:                                            ; preds = %bb.tk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %144) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #17
  %i.arv = load ptr, ptr %143, align 8, !tbaa !50 ; 3 uses
  %.not.i.i908 = icmp eq ptr %i.arv, null
  br i1 %.not.i.i908, label %_ZN7testing7MessageD2Ev.exit910, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i909

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i909: ; preds = %bb.tl
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !26
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  %i.ary = load ptr, ptr %i.arx, align 8
  call void %i.ary(ptr noundef nonnull align 8 dereferenceable(128) %i.arv) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit910

_ZN7testing7MessageD2Ev.exit910:                  ; preds = %bb.tl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i909
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #17
  br label %bb.ts

bb.tm:                                            ; preds = %bb.th
  %i.arz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit913

bb.tn:                                            ; preds = %bb.ti
  %i.asa = landingpad { ptr, i32 }
          cleanup
  br label %bb.tr

bb.to:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit907
  %i.asb = landingpad { ptr, i32 }
          cleanup
  br label %bb.tq

bb.tp:                                            ; preds = %bb.tk
  %i.asc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %144) #17
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %bb.to
  %.pn252 = phi { ptr, i32 } [ %i.asc, %bb.tp ], [ %i.asb, %bb.to ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #17
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tn
  %.pn252.pn = phi { ptr, i32 } [ %.pn252, %bb.tq ], [ %i.asa, %bb.tn ] ; 2 uses
  %i.asd = load ptr, ptr %143, align 8, !tbaa !50 ; 3 uses
  %.not.i.i911 = icmp eq ptr %i.asd, null
  br i1 %.not.i.i911, label %_ZN7testing7MessageD2Ev.exit913, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912: ; preds = %bb.tr
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !26
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  %i.asg = load ptr, ptr %i.asf, align 8
  call void %i.asg(ptr noundef nonnull align 8 dereferenceable(128) %i.asd) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit913

_ZN7testing7MessageD2Ev.exit913:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912, %bb.tr, %bb.tm
  %.pn252.pn.pn = phi { ptr, i32 } [ %i.arz, %bb.tm ], [ %.pn252.pn, %bb.tr ], [ %.pn252.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %142) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #17
  br label %bb.tu

bb.ts:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit904, %_ZN7testing7MessageD2Ev.exit910
  %i.ash = load ptr, ptr %i.apv, align 8, !tbaa !48 ; 4 uses
  %.not.i.i914 = icmp eq ptr %i.ash, null
  br i1 %.not.i.i914, label %_ZN7testing15AssertionResultD2Ev.exit918, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !21 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ash, i64 16 ; 2 uses
  %i.ask = icmp eq ptr %i.asi, %i.asj
  br i1 %i.ask, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i915

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i915: ; preds = %bb.tt
  %i.asl = load i64, ptr %i.asj, align 8, !tbaa !24
  %i.asm = add i64 %i.asl, 1
  call void @_ZdlPvm(ptr noundef %i.asi, i64 noundef %i.asm) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916: ; preds = %bb.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i915
  call void @_ZdlPvm(ptr noundef nonnull %i.ash, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit918

_ZN7testing15AssertionResultD2Ev.exit918:         ; preds = %bb.ts, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.so, label %bb.sp, !llvm.loop !143

bb.tu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit898, %_ZN7testing7MessageD2Ev.exit913, %_ZN7testing7MessageD2Ev.exit857, %_ZN7testing7MessageD2Ev.exit871, %_ZN7testing7MessageD2Ev.exit884, %_ZN7testing7MessageD2Ev.exit844, %_ZN7testing7MessageD2Ev.exit830, %_ZN7testing7MessageD2Ev.exit816, %_ZN7testing7MessageD2Ev.exit802, %_ZN7testing7MessageD2Ev.exit788, %_ZN7testing7MessageD2Ev.exit774, %_ZN7testing7MessageD2Ev.exit760, %_ZN7testing7MessageD2Ev.exit746, %_ZN7testing7MessageD2Ev.exit732, %_ZN7testing7MessageD2Ev.exit718, %_ZN7testing7MessageD2Ev.exit704, %_ZN7testing7MessageD2Ev.exit690, %_ZN7testing7MessageD2Ev.exit676, %_ZN7testing7MessageD2Ev.exit662, %_ZN7testing7MessageD2Ev.exit648, %_ZN7testing7MessageD2Ev.exit634, %_ZN7testing7MessageD2Ev.exit620, %_ZN7testing7MessageD2Ev.exit606, %_ZN7testing7MessageD2Ev.exit592, %_ZN7testing7MessageD2Ev.exit578, %_ZN7testing7MessageD2Ev.exit564, %_ZN7testing7MessageD2Ev.exit550, %_ZN7testing7MessageD2Ev.exit536, %_ZN7testing7MessageD2Ev.exit522, %_ZN7testing7MessageD2Ev.exit508, %_ZN7testing7MessageD2Ev.exit495, %_ZN7testing7MessageD2Ev.exit482, %_ZN7testing7MessageD2Ev.exit469, %_ZN7testing7MessageD2Ev.exit455, %_ZN7testing7MessageD2Ev.exit441, %_ZN7testing7MessageD2Ev.exit427, %_ZN7testing7MessageD2Ev.exit413, %_ZN7testing7MessageD2Ev.exit399, %_ZN7testing7MessageD2Ev.exit385, %_ZN7testing7MessageD2Ev.exit371, %_ZN7testing7MessageD2Ev.exit357, %_ZN7testing7MessageD2Ev.exit343, %_ZN7testing7MessageD2Ev.exit329, %_ZN7testing7MessageD2Ev.exit315
  %.pn252.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %_ZN7testing7MessageD2Ev.exit315 ], [ %.pn236.pn, %_ZN7testing7MessageD2Ev.exit844 ], [ %.pn233.pn, %_ZN7testing7MessageD2Ev.exit830 ], [ %.pn230.pn, %_ZN7testing7MessageD2Ev.exit816 ], [ %.pn227.pn, %_ZN7testing7MessageD2Ev.exit802 ], [ %.pn224.pn, %_ZN7testing7MessageD2Ev.exit788 ], [ %.pn221.pn, %_ZN7testing7MessageD2Ev.exit774 ], [ %.pn218.pn, %_ZN7testing7MessageD2Ev.exit760 ], [ %.pn215.pn, %_ZN7testing7MessageD2Ev.exit746 ], [ %.pn212.pn, %_ZN7testing7MessageD2Ev.exit732 ], [ %.pn209.pn, %_ZN7testing7MessageD2Ev.exit718 ], [ %.pn206.pn, %_ZN7testing7MessageD2Ev.exit704 ], [ %.pn203.pn, %_ZN7testing7MessageD2Ev.exit690 ], [ %.pn200.pn, %_ZN7testing7MessageD2Ev.exit676 ], [ %.pn197.pn, %_ZN7testing7MessageD2Ev.exit662 ], [ %.pn194.pn, %_ZN7testing7MessageD2Ev.exit648 ], [ %.pn191.pn, %_ZN7testing7MessageD2Ev.exit634 ], [ %.pn188.pn, %_ZN7testing7MessageD2Ev.exit620 ], [ %.pn185.pn, %_ZN7testing7MessageD2Ev.exit606 ], [ %.pn182.pn, %_ZN7testing7MessageD2Ev.exit592 ], [ %.pn179.pn, %_ZN7testing7MessageD2Ev.exit578 ], [ %.pn176.pn, %_ZN7testing7MessageD2Ev.exit564 ], [ %.pn173.pn, %_ZN7testing7MessageD2Ev.exit550 ], [ %.pn170.pn, %_ZN7testing7MessageD2Ev.exit536 ], [ %.pn167.pn, %_ZN7testing7MessageD2Ev.exit522 ], [ %.pn164.pn, %_ZN7testing7MessageD2Ev.exit508 ], [ %.pn161.pn, %_ZN7testing7MessageD2Ev.exit495 ], [ %.pn158.pn, %_ZN7testing7MessageD2Ev.exit482 ], [ %.pn155.pn, %_ZN7testing7MessageD2Ev.exit469 ], [ %.pn152.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %.pn149.pn, %_ZN7testing7MessageD2Ev.exit441 ], [ %.pn146.pn, %_ZN7testing7MessageD2Ev.exit427 ], [ %.pn143.pn, %_ZN7testing7MessageD2Ev.exit413 ], [ %.pn140.pn, %_ZN7testing7MessageD2Ev.exit399 ], [ %.pn137.pn, %_ZN7testing7MessageD2Ev.exit385 ], [ %.pn134.pn, %_ZN7testing7MessageD2Ev.exit371 ], [ %.pn131.pn, %_ZN7testing7MessageD2Ev.exit357 ], [ %.pn128.pn, %_ZN7testing7MessageD2Ev.exit343 ], [ %.pn125.pn, %_ZN7testing7MessageD2Ev.exit329 ], [ %.pn239.pn, %_ZN7testing7MessageD2Ev.exit857 ], [ %.pn245.pn, %_ZN7testing7MessageD2Ev.exit884 ], [ %.pn242.pn, %_ZN7testing7MessageD2Ev.exit871 ], [ %.pn252.pn.pn, %_ZN7testing7MessageD2Ev.exit913 ], [ %.pn248.pn.pn, %_ZN7testing7MessageD2Ev.exit898 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %_ZN7testing7MessageD2Ev.exit301, %_ZN7testing7MessageD2Ev.exit287, %_ZN7testing7MessageD2Ev.exit273, %_ZN7testing7MessageD2Ev.exit263
  %.pn252.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn252.pn.pn.pn.pn.pn, %bb.tu ], [ %.pn119.pn, %_ZN7testing7MessageD2Ev.exit301 ], [ %.pn116.pn, %_ZN7testing7MessageD2Ev.exit287 ], [ %.pn113.pn, %_ZN7testing7MessageD2Ev.exit273 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit263 ]
  resume { ptr, i32 } %.pn252.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestE, i64 16), ptr %i.a, align 8, !tbaa !26
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca i64, align 8                      ; 9 uses
end_hunk_0
