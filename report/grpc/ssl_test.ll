Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_test?download=true
inline.NumInlined: 32411
inline.NumDeleted: 5042
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN4bssl12_GLOBAL__N_142SSLTest_WriteWhileExplicitRenegotiate_Test8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677: ; preds = %bb.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #45
  %i.aab = load ptr, ptr %96, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i678 = icmp eq ptr %i.aab, null
  br i1 %.not.i.i678, label %_ZN7testing7MessageD2Ev.exit680, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i679

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i679: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !195
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8
  call void %i.aae(ptr noundef nonnull align 8 dereferenceable(128) %i.aab) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit680

_ZN7testing7MessageD2Ev.exit680:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i679
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #45
  br label %bb.oo

bb.oj:                                            ; preds = %bb.oe
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit686

bb.ok:                                            ; preds = %bb.of
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

bb.ol:                                            ; preds = %bb.og
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.on

bb.om:                                            ; preds = %bb.oh
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %97) #45
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %.pn283 = phi { ptr, i32 } [ %i.aai, %bb.om ], [ %i.aah, %bb.ol ] ; 2 uses
  %i.aaj = load ptr, ptr %98, align 8, !tbaa !1102 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 2 uses
  %i.aal = icmp eq ptr %i.aaj, %i.aak
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681: ; preds = %bb.on
  %i.aam = load i64, ptr %i.aak, align 8, !tbaa !1106
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aaj, i64 noundef %i.aan) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683: ; preds = %bb.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681, %bb.ok
  %.pn283.pn = phi { ptr, i32 } [ %i.aag, %bb.ok ], [ %.pn283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681 ], [ %.pn283, %bb.on ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #45
  %i.aao = load ptr, ptr %96, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i684 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i684, label %_ZN7testing7MessageD2Ev.exit686, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !195
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8
  call void %i.aar(ptr noundef nonnull align 8 dereferenceable(128) %i.aao) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit686

_ZN7testing7MessageD2Ev.exit686:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %bb.oj
  %.pn283.pn.pn = phi { ptr, i32 } [ %i.aaf, %bb.oj ], [ %.pn283.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ], [ %.pn283.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %95) #45
  br label %bb.oy

bb.oo:                                            ; preds = %bb.ob, %_ZN7testing7MessageD2Ev.exit680
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %95) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #45
  br label %bb.op

bb.op:                                            ; preds = %_ZN7testing7MessageD2Ev.exit671, %_ZN7testing7MessageD2Ev.exit663, %_ZN7testing7MessageD2Ev.exit655, %_ZN7testing7MessageD2Ev.exit647, %_ZN7testing7MessageD2Ev.exit636, %_ZN7testing7MessageD2Ev.exit627, %_ZN7testing7MessageD2Ev.exit619, %_ZN7testing7MessageD2Ev.exit601, %_ZN7testing7MessageD2Ev.exit593, %_ZN7testing7MessageD2Ev.exit575, %_ZN7testing7MessageD2Ev.exit567, %bb.hc, %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #45
  br label %bb.oq

bb.oq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit522, %_ZN7testing7MessageD2Ev.exit514, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ea, %.thread, %_ZN7testing15AssertionResultD2Ev.exit454, %_ZN7testing15AssertionResultD2Ev.exit428, %_ZN7testing7MessageD2Ev.exit503, %bb.oq
  %i.aas = load ptr, ptr %19, align 8, !tbaa !1607 ; 2 uses
  %.not.i = icmp eq ptr %i.aas, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.or

bb.or:                                            ; preds = %.loopexit
  invoke void @SSL_free(ptr noundef nonnull %i.aas)
          to label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.aat = landingpad { ptr, i32 }
          catch ptr null
  %i.aau = extractvalue { ptr, i32 } %i.aat, 0
  call void @__clang_call_terminate(ptr %i.aau) #46
  unreachable

_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %.loopexit, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  %i.aav = load ptr, ptr %18, align 8, !tbaa !1607 ; 2 uses
  %.not.i687 = icmp eq ptr %i.aav, null
  br i1 %.not.i687, label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit688, label %bb.ot

bb.ot:                                            ; preds = %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit
  invoke void @SSL_free(ptr noundef nonnull %i.aav)
          to label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit688 unwind label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.aaw = landingpad { ptr, i32 }
          catch ptr null
  %i.aax = extractvalue { ptr, i32 } %i.aaw, 0
  call void @__clang_call_terminate(ptr %i.aax) #46
  unreachable

_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit688: ; preds = %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit, %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  br label %bb.ov

bb.ov:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit406, %_ZN7testing15AssertionResultD2Ev.exit384, %_ZN7testing15AssertionResultD2Ev.exit362, %_ZN7testing15AssertionResultD2Ev.exit, %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit688
  %i.aay = load ptr, ptr %1, align 8, !tbaa !1555 ; 2 uses
  %.not.i689 = icmp eq ptr %i.aay, null
  br i1 %.not.i689, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  invoke void @SSL_CTX_free(ptr noundef nonnull %i.aay)
          to label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.aaz = landingpad { ptr, i32 }
          catch ptr null
  %i.aba = extractvalue { ptr, i32 } %i.aaz, 0
  call void @__clang_call_terminate(ptr %i.aba) #46
  unreachable

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.ov, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  ret void

bb.oy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit686, %bb.od
  %.pn283.pn.pn.pn = phi { ptr, i32 } [ %.pn283.pn.pn, %_ZN7testing7MessageD2Ev.exit686 ], [ %i.zu, %bb.od ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #45
  br label %bb.oz

bb.oz:                                            ; preds = %bb.go, %bb.hb, %bb.oy, %bb.oc, %bb.no, %bb.na, %bb.mm, %bb.ly, %bb.lj, %bb.kw, %bb.ki, %bb.ju, %bb.jh, %bb.it, %bb.if, %bb.hs
  %.pn288.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn230.pn.pn, %bb.hs ], [ %.pn283.pn.pn.pn, %bb.oy ], [ %.pn279.pn.pn, %bb.oc ], [ %.pn275.pn.pn, %bb.no ], [ %.pn271.pn.pn, %bb.na ], [ %.pn267.pn.pn, %bb.mm ], [ %.pn262.pn.pn.pn, %bb.ly ], [ %.pn258.pn.pn, %bb.lj ], [ %.pn254.pn.pn, %bb.kw ], [ %.pn250.pn.pn, %bb.ki ], [ %.pn246.pn.pn, %bb.ju ], [ %.pn242.pn.pn, %bb.jh ], [ %.pn238.pn.pn, %bb.it ], [ %.pn234.pn.pn, %bb.if ], [ %.pn288.pn.pn, %bb.hb ], [ %.pn225.pn.pn, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #45
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.fx, %bb.fl
  %.pn288.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn288.pn.pn.pn.pn, %bb.oz ], [ %.pn221.pn.pn, %bb.fx ], [ %.pn217.pn.pn, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  br label %bb.pb

bb.pb:                                            ; preds = %bb.eb, %bb.eh, %bb.el, %_ZN7testing7MessageD2Ev.exit506, %bb.pa, %bb.cq, %bb.bz, %bb.by
  %.pn288.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn, %bb.by ], [ %.pn198.pn.pn.pn, %bb.cq ], [ %i.hd, %bb.bz ], [ %.pn288.pn.pn.pn.pn.pn, %bb.pa ], [ %.pn214.pn, %_ZN7testing7MessageD2Ev.exit506 ], [ %.pn212, %bb.el ], [ %i.lc, %bb.eh ], [ %.pn207.pn.pn.pn, %bb.eb ]
  call void @_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #45
  call void @_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.bg, %bb.ar, %bb.ac, %_ZN7testing7MessageD2Ev.exit346
  %.pn288.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn288.pn.pn.pn.pn.pn.pn.pn, %bb.pb ], [ %.pn188.pn.pn.pn, %bb.bg ], [ %.pn183.pn.pn.pn, %bb.ar ], [ %.pn178.pn.pn.pn, %bb.ac ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit346 ]
  call void @_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  resume { ptr, i32 } %.pn288.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @SSL_set_renegotiate_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4bssl12_GLOBAL__N_117WriteHelloRequestEP6ssl_st(ptr noundef %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.h = alloca [88 x i8], align 16               ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = alloca [13 x i8], align 8                ; 7 uses
  %i.j = alloca [25 x i8], align 16               ; 7 uses
  %14 = alloca %"class.bssl::internal::StackAllocated.943", align 8 ; 8 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.o = tail call i32 @SSL_version(ptr noundef %0) ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !1114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store i32 771, ptr %i.b, align 4, !tbaa !1114
  %i.p = icmp eq i32 %i.o, 771
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.1434, ptr noundef nonnull @.str.802, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.q = load i8, ptr %1, align 8, !tbaa !1564, !range !1577, !noundef !741
  %i.r = trunc nuw i8 %i.q to i1                  ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1575 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1102
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.u, %bb.f ], [ @.str.370, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8463, ptr noundef %i.v)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.w = load ptr, ptr %2, align 8, !tbaa !1567   ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.w, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !195
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit111

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.ab, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.ad = load ptr, ptr %2, align 8, !tbaa !1567  ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i109, label %_ZN7testing7MessageD2Ev.exit111, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110: ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !195
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit111

_ZN7testing7MessageD2Ev.exit111:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  br label %bb.dz

bb.m:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1575 ; 4 uses
  %.not.i.i112 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i112, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1102 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !1106
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #43
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  br i1 %i.r, label %bb.o, label %bb.ds

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  %i.ao = call ptr @SSL_get_current_cipher(ptr noundef %0)
  %i.ap = call i32 @SSL_CIPHER_get_cipher_nid(ptr noundef %i.ao) ; 2 uses
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !1114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  store i32 950, ptr %i.d, align 4, !tbaa !1114
  %i.aq = icmp eq i32 %i.ap, 950
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113

bb.q:                                             ; preds = %bb.o
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.1435, ptr noundef nonnull @.str.1436, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  %i.ar = load i8, ptr %4, align 8, !tbaa !1564, !range !1577, !noundef !741
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  br i1 %i.as, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #45
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1575 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.au, null
  br i1 %.not.i.i114, label %_ZNK7testing15AssertionResult15failure_messageEv.exit115, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1102
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit115

_ZNK7testing15AssertionResult15failure_messageEv.exit115: ; preds = %bb.t, %bb.s
  %i.aw = phi ptr [ %i.av, %bb.t ], [ @.str.370, %bb.s ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8465, ptr noundef %i.aw)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.v unwind label %bb.y
end_hunk_0
begin_hunk_1_@_ZN4bssl12_GLOBAL__N_117WriteHelloRequestEP6ssl_st:bb.a

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit128
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #45
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn70 = phi { ptr, i32 } [ %i.ck, %bb.an ], [ %i.cj, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  %i.cl = load ptr, ptr %8, align 8, !tbaa !1567  ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i137, label %_ZN7testing7MessageD2Ev.exit139, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138: ; preds = %bb.ao
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !195
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit139

_ZN7testing7MessageD2Ev.exit139:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138, %bb.ao, %bb.al
  %.pn70.pn = phi { ptr, i32 } [ %i.ci, %bb.al ], [ %.pn70, %bb.ao ], [ %.pn70, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  br label %bb.dy

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1575 ; 4 uses
  %.not.i.i140 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i140, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1102 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141: ; preds = %bb.ap
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !1106
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 32) #43
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #45
  %i.cw = call i32 @SSL_generate_key_block(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef 88)
  %i.cx = icmp ne i32 %i.cw, 0                    ; 2 uses
  %i.cy = zext i1 %i.cx to i8
  store i8 %i.cy, ptr %10, align 8, !tbaa !1564
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !1565
  br i1 %i.cx, label %_ZNK4bssl4SpanIhE7subspanEmm.exit167, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #45
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.1439, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.da = load ptr, ptr %13, align 8, !tbaa !1102
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8474, ptr noundef %i.da)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #45
  %i.db = load ptr, ptr %13, align 8, !tbaa !1102 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !1106
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.dg = load ptr, ptr %11, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !195
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !1575 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i148, label %_ZN7testing15AssertionResultD2Ev.exit152, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit147
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1102 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.aw
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !1106
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 32) #43
  br label %_ZN7testing15AssertionResultD2Ev.exit152

_ZN7testing15AssertionResultD2Ev.exit152:         ; preds = %_ZN7testing7MessageD2Ev.exit147, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.dq

bb.ax:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.ay:                                            ; preds = %bb.as
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.az:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #45
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn73 = phi { ptr, i32 } [ %i.dt, %bb.ba ], [ %i.ds, %bb.az ] ; 2 uses
  %i.du = load ptr, ptr %13, align 8, !tbaa !1102 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bb
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !1106
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.ay
  %.pn73.pn = phi { ptr, i32 } [ %i.dr, %bb.ay ], [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.pn73, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.dz = load ptr, ptr %11, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !195
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.ax
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ax ], [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.pn73.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.dx

_ZNK4bssl4SpanIhE7subspanEmm.exit167:             ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  %i.ee = call i64 @SSL_get_write_sequence(ptr noundef %0)
  %29 = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.ef = load <8 x i8>, ptr %29, align 16, !tbaa !1106
  %30 = bitcast i64 %i.ee to <8 x i8>
  %31 = shufflevector <8 x i8> %30, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.eg = xor <8 x i8> %i.ef, %31
  store <8 x i8> %i.eg, ptr %29, align 16, !tbaa !1106
  store <8 x i8> %31, ptr %i.i, align 8, !tbaa !1106
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <4 x i8> <i8 22, i8 3, i8 3, i8 0>, ptr %i.eh, align 8, !tbaa !1106
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i8 4, ptr %i.ei, align 4, !tbaa !1106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #45
  store <4 x i8> <i8 22, i8 3, i8 3, i8 0>, ptr %i.j, align 16, !tbaa !1106
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i8 20, ptr %i.ej, align 4, !tbaa !1106
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #45
  call void @EVP_AEAD_CTX_zero(ptr noundef nonnull align 8 dereferenceable(576) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #45
  %i.ek = invoke ptr @EVP_aead_chacha20_poly1305()
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZNK4bssl4SpanIhE7subspanEmm.exit167
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.em = invoke i32 @EVP_AEAD_CTX_init(ptr noundef nonnull %14, ptr noundef %i.ek, ptr noundef nonnull %i.el, i64 noundef 32, i64 noundef 0, ptr noundef null)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.en = icmp ne i32 %i.em, 0                    ; 2 uses
  %i.eo = zext i1 %i.en to i8
  store i8 %i.eo, ptr %15, align 8, !tbaa !1564
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr null, ptr %i.ep, align 8, !tbaa !1565
  br i1 %i.en, label %bb.bq, label %bb.bf

bb.be:                                            ; preds = %bb.bc, %_ZNK4bssl4SpanIhE7subspanEmm.exit167
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #45
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.1440, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.er = load ptr, ptr %18, align 8, !tbaa !1102
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8504, ptr noundef %i.er)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #45
  %i.es = load ptr, ptr %18, align 8, !tbaa !1102 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.bj
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !1106
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  %i.ex = load ptr, ptr %16, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !195
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  %i.fb = load ptr, ptr %i.ep, align 8, !tbaa !1575 ; 4 uses
  %.not.i.i174 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i174, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit173
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1102 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.bk
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !1106
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 32) #43
  br label %_ZN7testing15AssertionResultD2Ev.exit178

_ZN7testing15AssertionResultD2Ev.exit178:         ; preds = %_ZN7testing7MessageD2Ev.exit173, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  br label %bb.do

bb.bl:                                            ; preds = %bb.bf
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit184

bb.bm:                                            ; preds = %bb.bg
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

bb.bn:                                            ; preds = %bb.bh
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bi
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #45
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn77 = phi { ptr, i32 } [ %i.fk, %bb.bo ], [ %i.fj, %bb.bn ] ; 2 uses
  %i.fl = load ptr, ptr %18, align 8, !tbaa !1102 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.bp
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !1106
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179, %bb.bm
  %.pn77.pn = phi { ptr, i32 } [ %i.fi, %bb.bm ], [ %.pn77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %.pn77, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  %i.fq = load ptr, ptr %16, align 8, !tbaa !1567 ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !195
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #45, !call_target !1574, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %bb.bl
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.bl ], [ %.pn77.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %.pn77.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #45
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #45
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.fv = invoke i32 @EVP_AEAD_CTX_seal(ptr noundef nonnull %14, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.k, i64 noundef 20, ptr noundef nonnull %i.ed, i64 noundef 12, ptr noundef nonnull %i.e, i64 noundef 4, ptr noundef nonnull %i.i, i64 noundef 13)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.fw = icmp ne i32 %i.fv, 0                    ; 2 uses
  %i.fx = zext i1 %i.fw to i8
  store i8 %i.fx, ptr %19, align 8, !tbaa !1564
  %i.fy = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr null, ptr %i.fy, align 8, !tbaa !1565
  br i1 %i.fw, label %bb.cf, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit184, %bb.be
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %i.eq, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  br label %bb.dv

bb.bt:                                            ; preds = %bb.bq
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #45
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.1441, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.ga = load ptr, ptr %22, align 8, !tbaa !1102
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8508, ptr noundef %i.ga)
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
end_hunk_1
