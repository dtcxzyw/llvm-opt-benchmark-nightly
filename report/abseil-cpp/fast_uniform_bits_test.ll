Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/fast_uniform_bits_test?download=true
inline.NumInlined: 2306
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_139FastUniformBitsTypedTest_BasicTest_TestIhE8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIihTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIihTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.s, null
  br i1 %.not.i.i37, label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #26
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.y = load i8, ptr %5, align 8, !tbaa !104, !range !113, !noundef !114
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i38, label %_ZNK7testing15AssertionResult15failure_messageEv.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit39

_ZNK7testing15AssertionResult15failure_messageEv.exit39: ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ @.str, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef %i.ad)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ae = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit42, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit42

_ZN7testing7MessageD2Ev.exit42:                   ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn19 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.aj, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.al = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.al, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %bb.t
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %bb.t, %bb.q
  %.pn19.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %.pn19, %bb.t ], [ %.pn19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit42
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103 ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i46, label %_ZN7testing15AssertionResultD2Ev.exit50, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47: ; preds = %bb.v
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit50

_ZN7testing15AssertionResultD2Ev.exit50:          ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.aw, ptr %1, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aw, ptr noundef nonnull align 1 dereferenceable(7) @.str.212, i64 7, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.ay, align 1, !tbaa !17
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.az = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt13random_deviceC2Ev.exit

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aw
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.x
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit36, %_ZN7testing7MessageD2Ev.exit45, %_ZNSt13random_deviceD2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %.pn26.pn.pn.pn.pn, %_ZNSt13random_deviceD2Ev.exit81 ], [ %.pn19.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit36 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bi = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.ad

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  store i64 %i.bj, ptr %9, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.bj, %_ZNSt13random_deviceclEv.exit ], [ %i.bw, %bb.z ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.bx, %bb.z ] ; 4 uses
  %i.bk = getelementptr [8 x i8], ptr %9, i64 %.011.i.i
  %i.bl = lshr i64 %store_forwarded, 30
  %i.bm = xor i64 %i.bl, %store_forwarded
  %i.bn = mul nuw nsw i64 %i.bm, 1812433253
  %i.bo = add nuw i64 %i.bn, %.011.i.i            ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295               ; 2 uses
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !13
  %i.bq = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bq, 624
  br i1 %exitcond.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr [8 x i8], ptr %9, i64 %i.bq
  %i.bs = lshr i64 %i.bp, 30
  %i.bt = xor i64 %i.bs, %i.bo
  %i.bu = mul i64 %i.bt, 1812433253
  %i.bv = add i64 %i.bu, %i.bq
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !13
  %i.bx = add nuw nsw i64 %.011.i.i, 2
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 4992
  store i64 624, ptr %i.by, align 8, !tbaa !248
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.ad:                                            ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ae:                                            ; preds = %bb.aa, %_ZN7testing15AssertionResultD2Ev.exit80
  %.082 = phi i32 [ 0, %bb.aa ], [ %i.ea, %_ZN7testing15AssertionResultD2Ev.exit80 ]
  %i.ce = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %9)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal11CmpHelperLEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ah

_ZN7testing8internal11CmpHelperLEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.af
  %i.cf = load i8, ptr %10, align 8, !tbaa !104, !range !113, !noundef !114
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ar, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ah:                                            ; preds = %bb.af
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ai:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i52, label %_ZNK7testing15AssertionResult15failure_messageEv.exit53, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit53

_ZNK7testing15AssertionResult15failure_messageEv.exit53: ; preds = %bb.ak, %bb.aj
  %i.cl = phi ptr [ %i.ck, %bb.ak ], [ @.str, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef %i.cl)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.cm = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i54, label %_ZN7testing7MessageD2Ev.exit56, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55: ; preds = %bb.am
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit56

_ZN7testing7MessageD2Ev.exit56:                   ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit59

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn22 = phi { ptr, i32 } [ %i.cs, %bb.ap ], [ %i.cr, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ct = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i57, label %_ZN7testing7MessageD2Ev.exit59, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58: ; preds = %bb.aq
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit59

_ZN7testing7MessageD2Ev.exit59:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58, %bb.aq, %bb.an
  %.pn22.pn = phi { ptr, i32 } [ %i.cq, %bb.an ], [ %.pn22, %bb.aq ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  br label %bb.au

bb.ar:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit56
  %i.cx = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 4 uses
  %.not.i.i60 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i60, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !15 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61: ; preds = %bb.as
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #26
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.av

_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.at
  %i.dd = load i8, ptr %13, align 8, !tbaa !104, !range !113, !noundef !114
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.bf, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit59, %bb.ah
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit59 ], [ %i.ci, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.bi

bb.av:                                            ; preds = %bb.at
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.dg = load ptr, ptr %i.ca, align 8, !tbaa !103 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i68, label %_ZNK7testing15AssertionResult15failure_messageEv.exit69, label %bb.ay
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_139FastUniformBitsTypedTest_BasicTest_TestItE8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIitTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIitTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.s, null
  br i1 %.not.i.i37, label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #26
  br label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.y = load i8, ptr %5, align 8, !tbaa !104, !range !113, !noundef !114
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i38, label %_ZNK7testing15AssertionResult15failure_messageEv.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit39

_ZNK7testing15AssertionResult15failure_messageEv.exit39: ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ @.str, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef %i.ad)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ae = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit42, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit42

_ZN7testing7MessageD2Ev.exit42:                   ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn19 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.aj, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.al = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.al, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %bb.t
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %bb.t, %bb.q
  %.pn19.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %.pn19, %bb.t ], [ %.pn19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit42
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103 ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i46, label %_ZN7testing15AssertionResultD2Ev.exit50, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47: ; preds = %bb.v
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit50

_ZN7testing15AssertionResultD2Ev.exit50:          ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.aw, ptr %1, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aw, ptr noundef nonnull align 1 dereferenceable(7) @.str.212, i64 7, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.ay, align 1, !tbaa !17
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.az = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt13random_deviceC2Ev.exit

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aw
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.x
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit36, %_ZN7testing7MessageD2Ev.exit45, %_ZNSt13random_deviceD2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %.pn26.pn.pn.pn.pn, %_ZNSt13random_deviceD2Ev.exit81 ], [ %.pn19.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit36 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bi = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.ad

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  store i64 %i.bj, ptr %9, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.bj, %_ZNSt13random_deviceclEv.exit ], [ %i.bw, %bb.z ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.bx, %bb.z ] ; 4 uses
  %i.bk = getelementptr [8 x i8], ptr %9, i64 %.011.i.i
  %i.bl = lshr i64 %store_forwarded, 30
  %i.bm = xor i64 %i.bl, %store_forwarded
  %i.bn = mul nuw nsw i64 %i.bm, 1812433253
  %i.bo = add nuw i64 %i.bn, %.011.i.i            ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295               ; 2 uses
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !13
  %i.bq = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bq, 624
  br i1 %exitcond.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr [8 x i8], ptr %9, i64 %i.bq
  %i.bs = lshr i64 %i.bp, 30
  %i.bt = xor i64 %i.bs, %i.bo
  %i.bu = mul i64 %i.bt, 1812433253
  %i.bv = add i64 %i.bu, %i.bq
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !13
  %i.bx = add nuw nsw i64 %.011.i.i, 2
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 4992
  store i64 624, ptr %i.by, align 8, !tbaa !248
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.ad:                                            ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ae:                                            ; preds = %bb.aa, %_ZN7testing15AssertionResultD2Ev.exit80
  %.082 = phi i32 [ 0, %bb.aa ], [ %i.ea, %_ZN7testing15AssertionResultD2Ev.exit80 ]
  %i.ce = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %9)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal11CmpHelperLEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ah

_ZN7testing8internal11CmpHelperLEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.af
  %i.cf = load i8, ptr %10, align 8, !tbaa !104, !range !113, !noundef !114
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ar, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ah:                                            ; preds = %bb.af
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ai:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i52, label %_ZNK7testing15AssertionResult15failure_messageEv.exit53, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit53

_ZNK7testing15AssertionResult15failure_messageEv.exit53: ; preds = %bb.ak, %bb.aj
  %i.cl = phi ptr [ %i.ck, %bb.ak ], [ @.str, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef %i.cl)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.cm = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i54, label %_ZN7testing7MessageD2Ev.exit56, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55: ; preds = %bb.am
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit56

_ZN7testing7MessageD2Ev.exit56:                   ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit59

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn22 = phi { ptr, i32 } [ %i.cs, %bb.ap ], [ %i.cr, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ct = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i57, label %_ZN7testing7MessageD2Ev.exit59, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58: ; preds = %bb.aq
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit59

_ZN7testing7MessageD2Ev.exit59:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58, %bb.aq, %bb.an
  %.pn22.pn = phi { ptr, i32 } [ %i.cq, %bb.an ], [ %.pn22, %bb.aq ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  br label %bb.au

bb.ar:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit56
  %i.cx = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 4 uses
  %.not.i.i60 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i60, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !15 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61: ; preds = %bb.as
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #26
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.av

_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.at
  %i.dd = load i8, ptr %13, align 8, !tbaa !104, !range !113, !noundef !114
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.bf, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit59, %bb.ah
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit59 ], [ %i.ci, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.bi

bb.av:                                            ; preds = %bb.at
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.dg = load ptr, ptr %i.ca, align 8, !tbaa !103 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i68, label %_ZNK7testing15AssertionResult15failure_messageEv.exit69, label %bb.ay
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_139FastUniformBitsTypedTest_BasicTest_TestIjE8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIijTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIijTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.s, null
  br i1 %.not.i.i37, label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #26
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.y = load i8, ptr %5, align 8, !tbaa !104, !range !113, !noundef !114
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i38, label %_ZNK7testing15AssertionResult15failure_messageEv.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit39

_ZNK7testing15AssertionResult15failure_messageEv.exit39: ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ @.str, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef %i.ad)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ae = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit42, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit42

_ZN7testing7MessageD2Ev.exit42:                   ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn19 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.aj, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.al = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.al, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %bb.t
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %bb.t, %bb.q
  %.pn19.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %.pn19, %bb.t ], [ %.pn19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit42
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103 ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i46, label %_ZN7testing15AssertionResultD2Ev.exit50, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47: ; preds = %bb.v
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit50

_ZN7testing15AssertionResultD2Ev.exit50:          ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.aw, ptr %1, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aw, ptr noundef nonnull align 1 dereferenceable(7) @.str.212, i64 7, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.ay, align 1, !tbaa !17
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.az = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt13random_deviceC2Ev.exit

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aw
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.x
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit36, %_ZN7testing7MessageD2Ev.exit45, %_ZNSt13random_deviceD2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %.pn26.pn.pn.pn.pn, %_ZNSt13random_deviceD2Ev.exit81 ], [ %.pn19.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit36 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bi = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.ad

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  store i64 %i.bj, ptr %9, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.bj, %_ZNSt13random_deviceclEv.exit ], [ %i.bw, %bb.z ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.bx, %bb.z ] ; 4 uses
  %i.bk = getelementptr [8 x i8], ptr %9, i64 %.011.i.i
  %i.bl = lshr i64 %store_forwarded, 30
  %i.bm = xor i64 %i.bl, %store_forwarded
  %i.bn = mul nuw nsw i64 %i.bm, 1812433253
  %i.bo = add nuw i64 %i.bn, %.011.i.i            ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295               ; 2 uses
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !13
  %i.bq = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bq, 624
  br i1 %exitcond.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr [8 x i8], ptr %9, i64 %i.bq
  %i.bs = lshr i64 %i.bp, 30
  %i.bt = xor i64 %i.bs, %i.bo
  %i.bu = mul i64 %i.bt, 1812433253
  %i.bv = add i64 %i.bu, %i.bq
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !13
  %i.bx = add nuw nsw i64 %.011.i.i, 2
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 4992
  store i64 624, ptr %i.by, align 8, !tbaa !248
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.ad:                                            ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ae:                                            ; preds = %bb.aa, %_ZN7testing15AssertionResultD2Ev.exit80
  %.082 = phi i32 [ 0, %bb.aa ], [ %i.ea, %_ZN7testing15AssertionResultD2Ev.exit80 ]
  %i.ce = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %9)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal11CmpHelperLEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ah

_ZN7testing8internal11CmpHelperLEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.af
  %i.cf = load i8, ptr %10, align 8, !tbaa !104, !range !113, !noundef !114
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ar, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ah:                                            ; preds = %bb.af
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ai:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i52, label %_ZNK7testing15AssertionResult15failure_messageEv.exit53, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit53

_ZNK7testing15AssertionResult15failure_messageEv.exit53: ; preds = %bb.ak, %bb.aj
  %i.cl = phi ptr [ %i.ck, %bb.ak ], [ @.str, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef %i.cl)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.cm = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i54, label %_ZN7testing7MessageD2Ev.exit56, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55: ; preds = %bb.am
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit56

_ZN7testing7MessageD2Ev.exit56:                   ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit59

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit53
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn22 = phi { ptr, i32 } [ %i.cs, %bb.ap ], [ %i.cr, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ct = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i57, label %_ZN7testing7MessageD2Ev.exit59, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58: ; preds = %bb.aq
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit59

_ZN7testing7MessageD2Ev.exit59:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58, %bb.aq, %bb.an
  %.pn22.pn = phi { ptr, i32 } [ %i.cq, %bb.an ], [ %.pn22, %bb.aq ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  br label %bb.au

bb.ar:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit56
  %i.cx = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 4 uses
  %.not.i.i60 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i60, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !15 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61: ; preds = %bb.as
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #26
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.av

_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.at
  %i.dd = load i8, ptr %13, align 8, !tbaa !104, !range !113, !noundef !114
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.bf, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit59, %bb.ah
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit59 ], [ %i.ci, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.bi

bb.av:                                            ; preds = %bb.at
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.dg = load ptr, ptr %i.ca, align 8, !tbaa !103 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i68, label %_ZNK7testing15AssertionResult15failure_messageEv.exit69, label %bb.ay
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_139FastUniformBitsTypedTest_BasicTest_TestImE8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.s, null
  br i1 %.not.i.i37, label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #26
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.y = load i8, ptr %5, align 8, !tbaa !104, !range !113, !noundef !114
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i38, label %_ZNK7testing15AssertionResult15failure_messageEv.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit39

_ZNK7testing15AssertionResult15failure_messageEv.exit39: ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ @.str, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef %i.ad)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ae = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit42, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit42

_ZN7testing7MessageD2Ev.exit42:                   ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn19 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.aj, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.al = load ptr, ptr %6, align 8, !tbaa !115   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.al, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %bb.t
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %bb.t, %bb.q
  %.pn19.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %.pn19, %bb.t ], [ %.pn19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit42
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103 ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i46, label %_ZN7testing15AssertionResultD2Ev.exit50, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47: ; preds = %bb.v
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit50

_ZN7testing15AssertionResultD2Ev.exit50:          ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.aw, ptr %1, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aw, ptr noundef nonnull align 1 dereferenceable(7) @.str.212, i64 7, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.ay, align 1, !tbaa !17
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.az = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt13random_deviceC2Ev.exit

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit50
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aw
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.x
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit36, %_ZN7testing7MessageD2Ev.exit45, %_ZNSt13random_deviceD2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %.pn26.pn.pn.pn.pn, %_ZNSt13random_deviceD2Ev.exit83 ], [ %.pn19.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit36 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bi = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.ad

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  store i64 %i.bj, ptr %9, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.bj, %_ZNSt13random_deviceclEv.exit ], [ %i.bw, %bb.z ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.bx, %bb.z ] ; 4 uses
  %i.bk = getelementptr [8 x i8], ptr %9, i64 %.011.i.i
  %i.bl = lshr i64 %store_forwarded, 30
  %i.bm = xor i64 %i.bl, %store_forwarded
  %i.bn = mul nuw nsw i64 %i.bm, 1812433253
  %i.bo = add nuw i64 %i.bn, %.011.i.i            ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295               ; 2 uses
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !13
  %i.bq = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bq, 624
  br i1 %exitcond.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr [8 x i8], ptr %9, i64 %i.bq
  %i.bs = lshr i64 %i.bp, 30
  %i.bt = xor i64 %i.bs, %i.bo
  %i.bu = mul i64 %i.bt, 1812433253
  %i.bv = add i64 %i.bu, %i.bq
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !13
  %i.bx = add nuw nsw i64 %.011.i.i, 2
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 4992
  store i64 624, ptr %i.by, align 8, !tbaa !248
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit82
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %8)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.ad:                                            ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ae:                                            ; preds = %bb.aa, %_ZN7testing15AssertionResultD2Ev.exit82
  %.084 = phi i32 [ 0, %bb.aa ], [ %i.eb, %_ZN7testing15AssertionResultD2Ev.exit82 ]
  %i.ce = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %9)
          to label %.noexc unwind label %bb.ag    ; 0 uses

.noexc:                                           ; preds = %bb.ae
  %i.cf = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %9)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ah

_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.af
  %i.cg = load i8, ptr %10, align 8, !tbaa !104, !range !113, !noundef !114
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ar, label %bb.ai

bb.ag:                                            ; preds = %.noexc, %bb.ae
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ah:                                            ; preds = %bb.af
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ai:                                            ; preds = %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i54, label %_ZNK7testing15AssertionResult15failure_messageEv.exit55, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !15
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit55

_ZNK7testing15AssertionResult15failure_messageEv.exit55: ; preds = %bb.ak, %bb.aj
  %i.cm = phi ptr [ %i.cl, %bb.ak ], [ @.str, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef %i.cm)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit55
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.cn = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i56, label %_ZN7testing7MessageD2Ev.exit58, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57: ; preds = %bb.am
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit58

_ZN7testing7MessageD2Ev.exit58:                   ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit61

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit55
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn22 = phi { ptr, i32 } [ %i.ct, %bb.ap ], [ %i.cs, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.cu = load ptr, ptr %11, align 8, !tbaa !115  ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit61, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60: ; preds = %bb.aq
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #22, !inline_history !117
  br label %_ZN7testing7MessageD2Ev.exit61

_ZN7testing7MessageD2Ev.exit61:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60, %bb.aq, %bb.an
  %.pn22.pn = phi { ptr, i32 } [ %i.cr, %bb.an ], [ %.pn22, %bb.aq ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  br label %bb.au

bb.ar:                                            ; preds = %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit58
  %i.cy = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 4 uses
  %.not.i.i62 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i62, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !15 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63: ; preds = %bb.as
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !17
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #26
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.av

_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.at
  %i.de = load i8, ptr %13, align 8, !tbaa !104, !range !113, !noundef !114
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.bf, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit61, %bb.ah
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit61 ], [ %i.cj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.bi

bb.av:                                            ; preds = %bb.at
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
end_hunk_3
