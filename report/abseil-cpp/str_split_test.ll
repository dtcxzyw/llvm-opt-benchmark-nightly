Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/str_split_test?download=true
inline.NumInlined: 29934
inline.NumDeleted: 9696
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE18DescribeNegationToEPSo:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #26, !inline_history !30
  br label %_ZN7testing8internal22ElementsAreMatcherImplIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8ElementsEm.exit

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %4, align 8, !tbaa !222, !noalias !1983 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #26, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit6.i

common.resume:                                    ; preds = %bb.i, %_ZN7testing7MessageD2Ev.exit15, %_ZN7testing7MessageD2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %_ZN7testing7MessageD2Ev.exit6.i ], [ %eh.lpad-body, %_ZN7testing7MessageD2Ev.exit15 ], [ %i.bq, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1983
  br label %common.resume

_ZN7testing8internal22ElementsAreMatcherImplIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8ElementsEm.exit: ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1983
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN7testing8internal22ElementsAreMatcherImplIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8ElementsEm.exit
  %i.af = load ptr, ptr %3, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !206
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.aj = load ptr, ptr %3, align 8, !tbaa !205   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !207
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %3, align 8, !tbaa !205   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.f
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !207
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.151, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.av = load ptr, ptr %5, align 8, !tbaa !222   ; 3 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !187
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !323
  %.not16 = icmp eq ptr %i.az, %i.ba
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8ElementsEm.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bc = load ptr, ptr %5, align 8, !tbaa !222   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !187
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.k
  %.017 = phi i64 [ %i.bu, %bb.k ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.143, i64 noundef 9) ; 0 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.144, i64 noundef 1) ; 0 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.017 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !333
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bn)
  br i1 %i.bo, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.136, i32 noundef 252)
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.h
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit

bb.i:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !333
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !337
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !339
  %i.bu = add i64 %.017, 1                        ; 3 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 24                ; 2 uses
  %i.cb = icmp ult i64 %i.bu, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.151, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !324
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !323
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.k

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, %bb.j
  %.pre-phi25 = phi i64 [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.j ]
  %.not = icmp eq i64 %i.bu, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1982

.loopexit:                                        ; preds = %bb.k, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE15MatchAndExplainESE_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !323  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.126) #31
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit181

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !224
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !226
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !203
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !206
  store i8 0, ptr %i.q, align 8, !tbaa !207
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1984

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa305.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit181, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !203
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !206
  store i8 0, ptr %i.v, align 8, !tbaa !207
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !203
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !206
  store i8 0, ptr %i.y, align 8, !tbaa !207
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !203
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !206
  store i8 0, ptr %i.ab, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !203
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !206
  store i8 0, ptr %i.ae, align 8, !tbaa !207
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit181, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

.loopexit181:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa305.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !225
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !258 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.not176203 = icmp eq ptr %i.ak, %i.al
  br i1 %.not176203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit181
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.aw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %storemerge205 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.v ] ; 12 uses
  %.sroa.0150.0204 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ei, %bb.v ] ; 5 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !324
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !323 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %.not = icmp eq i64 %storemerge205, %i.bn       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !262
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !187
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.an)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %storemerge205 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0150.0204, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !333
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bt)
          to label %.noexc69 unwind label %bb.r

.noexc69:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bu, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.136, i32 noundef 234)
          to label %.noexc70 unwind label %bb.r

.noexc70:                                         ; preds = %bb.e
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc70
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.g

bb.f:                                             ; preds = %.noexc70
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc69
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !333
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !340
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !21

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  store ptr %i.aq, ptr %11, align 8, !tbaa !203, !alias.scope !2000
  store i64 0, ptr %i.ar, align 8, !tbaa !206, !alias.scope !2000
  store i8 0, ptr %i.aq, align 8, !tbaa !207, !alias.scope !2000
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !272, !noalias !2000 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.at, align 8, !noalias !2000 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  %i.cd = load ptr, ptr %i.au, align 8, !tbaa !273, !noalias !2000 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %11, align 8, !tbaa !205, !alias.scope !2000 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.aq
  br i1 %i.ck, label %.body72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.aq, align 8, !tbaa !207, !alias.scope !2000
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #28
  br label %.body72

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cn = load ptr, ptr %9, align 8, !tbaa !224
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %storemerge205 ; 9 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !205 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %11, align 8, !tbaa !205  ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.aq                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.ar, align 8, !tbaa !206 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %11, %i.co
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !341

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cu, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !207
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !207
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cx = load i64, ptr %i.ar, align 8, !tbaa !206 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !206
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !205
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !207
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !205
  %i.dc = load i64, ptr %i.ar, align 8, !tbaa !206
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !206
  %i.dd = load i64, ptr %i.aq, align 8, !tbaa !207
  store i64 %i.dd, ptr %i.cq, align 8, !tbaa !207
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.de = load i64, ptr %i.cq, align 8, !tbaa !207
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !205
  %i.df = load i64, ptr %i.ar, align 8, !tbaa !206
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !206
  %i.dh = load i64, ptr %i.aq, align 8, !tbaa !207
  store i64 %i.dh, ptr %i.cq, align 8, !tbaa !207
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cp, ptr %11, align 8, !tbaa !205
  store i64 %i.de, ptr %i.aq, align 8, !tbaa !207
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %11, align 8, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.di = phi ptr [ %i.cp, %bb.o ], [ %i.aq, %bb.p ], [ %i.cs, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ar, align 8, !tbaa !206
  store i8 0, ptr %i.di, align 1, !tbaa !207
  %i.dj = load ptr, ptr %11, align 8, !tbaa !205  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.aq
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dl = load i64, ptr %i.aq, align 8, !tbaa !207
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !187
  store ptr %i.aw, ptr %i.an, align 8, !tbaa !187
  %i.dn = load i64, ptr %i.ay, align 8
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn
  store ptr %i.ax, ptr %i.do, align 8, !tbaa !187
  store ptr %i.az, ptr %i.ao, align 8, !tbaa !187
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ba, align 8, !tbaa !187
  %i.dp = load ptr, ptr %i.av, align 8, !tbaa !205 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bb
  br i1 %i.dq, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = load i64, ptr %i.bb, align 8, !tbaa !207
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #28, !inline_history !274
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ba, align 8, !tbaa !187
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #26, !inline_history !274
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !187
  %i.dt = load i64, ptr %i.bf, align 8
  %i.du = getelementptr inbounds i8, ptr %i.an, i64 %i.dt
  store ptr %i.be, ptr %i.du, align 8, !tbaa !187
  store i64 0, ptr %i.bg, align 8, !tbaa !276
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bh) #26, !inline_history !274
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.bz, label %bb.v, label %.critedge

bb.q:                                             ; preds = %bb.d
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.g, %bb.e, %_ZN7testing25StringMatchResultListenerC2Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body72:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body

.body:                                            ; preds = %bb.r, %bb.f, %.body72
  %.pn = phi { ptr, i32 } [ %i.ci, %.body72 ], [ %i.dw, %bb.r ], [ %i.bw, %bb.f ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #26
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dv, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body76

bb.t:                                             ; preds = %bb.c
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %storemerge205 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0150.0204, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr null, ptr %i.am, align 8, !tbaa !262
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !187
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !333
  %i.eb = icmp ne ptr %i.ea, null
  %i.ec = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.eb)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.t
  br i1 %i.ec, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc74
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.136, i32 noundef 234)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %.noexc3.i
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc75
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc75
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body76

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc74
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !333
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !340
  %i.eh = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull %7)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !22

bb.u:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.eh, label %bb.v, label %.critedge

bb.v:                                             ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %bb.u
  %i.ei = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0150.0204) #30 ; 2 uses
  %i.ej = add i64 %storemerge205, 1               ; 2 uses
  %.not176 = icmp eq ptr %i.ei, %i.al
  br i1 %.not176, label %._crit_edge, label %bb.b, !llvm.loop !1991

.critedge:                                        ; preds = %bb.b, %bb.u, %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %.not177223 = icmp eq ptr %.sroa.0150.0204, %i.al
  br i1 %.not177223, label %.lr.ph226, label %.critedge.a

.critedge.a:                                      ; preds = %.critedge, %.critedge.a
  %.033225 = phi i64 [ %14, %.critedge.a ], [ %storemerge205, %.critedge ]
  %.sroa.0150.1224 = phi ptr [ %15, %.critedge.a ], [ %.sroa.0150.0204, %.critedge ]
  %14 = add i64 %.033225, 1                       ; 2 uses
  %15 = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0150.1224) #30 ; 2 uses
  %.not177223.a = icmp eq ptr %15, %i.al
  br i1 %.not177223.a, label %.lr.ph226, label %.critedge.a, !llvm.loop !1992

.lr.ph226:                                        ; preds = %.critedge.a, %.critedge
  %.033225.a = phi i64 [ %storemerge205, %.critedge ], [ %14, %.critedge.a ] ; 2 uses
  %16 = load ptr, ptr %i.e, align 8, !tbaa !324   ; 2 uses
  %17 = load ptr, ptr %i.d, align 8, !tbaa !323   ; 2 uses
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 24
  %.not177 = icmp eq i64 %.033225.a, %21
  br i1 %.not177, label %bb.ag, label %bb.w

._crit_edge:                                      ; preds = %bb.v, %.loopexit181
  %.033.lcssa = phi i64 [ 0, %.loopexit181 ], [ %i.ej, %bb.v ] ; 2 uses
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !324 ; 2 uses
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !323 ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = sdiv exact i64 %i.eo, 24
  %.not54 = icmp eq i64 %.033.lcssa, %i.ep
  br i1 %.not54, label %bb.av, label %bb.w

bb.w:                                             ; preds = %._crit_edge, %.lr.ph226
  %.033.lcssa304 = phi i64 [ %.033.lcssa, %._crit_edge ], [ %.033225.a, %.lr.ph226 ] ; 3 uses
  %i.eq = icmp ne i64 %.033.lcssa304, 0
  %or.cond = and i1 %i.c, %i.eq
  br i1 %or.cond, label %bb.x, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

bb.x:                                             ; preds = %bb.w
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i79 = icmp eq ptr %i.er, null
  br i1 %.not.i79, label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull @.str.152, i64 noundef 10)
          to label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !2001
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc83 unwind label %bb.ae

.noexc83:                                         ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.et = load ptr, ptr %5, align 8, !tbaa !222, !noalias !2001
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i64 noundef %.033.lcssa304)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i81 unwind label %bb.aa, !noalias !2001 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i81: ; preds = %.noexc83
  %i.ew = icmp eq i64 %.033.lcssa304, 1           ; 2 uses
  %i.ex = select i1 %i.ew, ptr @.str.146, ptr @.str.147
  %i.ey = load ptr, ptr %5, align 8, !tbaa !222, !noalias !2001
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = select i1 %i.ew, i64 8, i64 9
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.ex, i64 noundef %i.fa)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.aa, !noalias !2001 ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i81
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.fc = load ptr, ptr %5, align 8, !tbaa !222, !noalias !2001 ; 3 uses
  %.not.i.i.i82 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i82, label %bb.ab, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.z
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !187
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #26, !inline_history !30
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i81, %.noexc83
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %5, align 8, !tbaa !222, !noalias !2001 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.aa
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !187
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(128) %i.fh) #26, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !2001
  br label %.body84

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !2001
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i86 = icmp eq ptr %i.fl, null
  br i1 %.not.i86, label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc87 unwind label %bb.af

.noexc87:                                         ; preds = %bb.ac
  %i.fm = load ptr, ptr %4, align 8, !tbaa !205
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !206
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef %i.fm, i64 noundef %i.fo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ad ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc87
  %i.fq = load ptr, ptr %4, align 8, !tbaa !205   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN7testinglsERSoRKNS_7MessageE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !207
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #28
  br label %_ZN7testinglsERSoRKNS_7MessageE.exit.i

bb.ad:                                            ; preds = %.noexc87
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %4, align 8, !tbaa !205   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ad
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !207
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body88

_ZN7testinglsERSoRKNS_7MessageE.exit.i:           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit: ; preds = %_ZN7testinglsERSoRKNS_7MessageE.exit.i, %bb.ab
  %i.gb = load ptr, ptr %12, align 8, !tbaa !222  ; 3 uses
  %.not.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !187
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(128) %i.gb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

bb.ae:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body84

bb.af:                                            ; preds = %bb.ac
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body88

.body88:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.af
  %eh.lpad-body89 = phi { ptr, i32 } [ %i.gg, %bb.af ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ] ; 2 uses
  %i.gh = load ptr, ptr %12, align 8, !tbaa !222  ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i90, label %.body84, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %.body88
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !187
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #26, !inline_history !0
  br label %.body84

.body84:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %.body88, %bb.ae, %_ZN7testing7MessageD2Ev.exit6.i
  %.pn62 = phi { ptr, i32 } [ %i.fg, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.gf, %bb.ae ], [ %eh.lpad-body89, %.body88 ], [ %eh.lpad-body89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.body76

bb.ag:                                            ; preds = %.lr.ph226
  br i1 %.not, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.c, label %bb.ai, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

bb.ai:                                            ; preds = %bb.ah
  %i.gl = load ptr, ptr %i.aj, align 8, !tbaa !258 ; 2 uses
  %.not57232 = icmp eq i64 %storemerge205, 0
  br i1 %.not57232, label %._crit_edge237, label %.lr.ph236

._crit_edge237:                                   ; preds = %.lr.ph236, %bb.ai
  %.sroa.0.0.lcssa = phi ptr [ %i.gl, %bb.ai ], [ %i.go, %.lr.ph236 ]
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i93 = icmp eq ptr %i.gm, null
  br i1 %.not.i93, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge237
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull @.str.153, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph236:                                        ; preds = %bb.ai, %.lr.ph236
  %.032234 = phi i64 [ %i.gp, %.lr.ph236 ], [ 0, %bb.ai ]
  %.sroa.0.0233 = phi ptr [ %i.go, %.lr.ph236 ], [ %i.gl, %bb.ai ]
  %i.go = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0.0233) #30 ; 2 uses
  %i.gp = add nuw i64 %.032234, 1                 ; 2 uses
  %.not57 = icmp eq i64 %i.gp, %storemerge205
  br i1 %.not57, label %._crit_edge237, label %.lr.ph236, !llvm.loop !1995

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit: ; preds = %bb.aj
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !262  ; 2 uses
  %.not.i95 = icmp eq ptr %.pr, null
  br i1 %.not.i95, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge205)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.ak
  %.pr160 = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i97 = icmp eq ptr %.pr160, null
  br i1 %.not.i97, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.al

bb.al:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr160, ptr noundef nonnull @.str.154, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %._crit_edge237, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 32
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.gs)
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i99 = icmp eq ptr %i.gt, null
  br i1 %.not.i99, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit103, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = load ptr, ptr %13, align 8, !tbaa !205
  %i.gv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !206
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gu, i64 noundef %i.gw)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.au ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.an
  %.pr162 = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i101 = icmp eq ptr %.pr162, null
  br i1 %.not.i101, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit103, label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr162, ptr noundef nonnull @.str.155, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit103 unwind label %bb.au ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit103: ; preds = %bb.am, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.ao
  %i.gz = load ptr, ptr %13, align 8, !tbaa !205  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit103
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !207
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.he = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.he, i64 %storemerge205 ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !262
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !333
  %i.hj = icmp ne ptr %i.hi, null
  %i.hk = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.hj)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  br i1 %i.hk, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.noexc108
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.136, i32 noundef 252)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %bb.ap
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i107 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i107: ; preds = %.noexc109
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ar

bb.aq:                                            ; preds = %.noexc109
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body76

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i107, %.noexc108
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !333
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !337
  invoke void %i.hp(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef %i.hg, i1 noundef zeroext true)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !339

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit: ; preds = %bb.ar
  %i.hq = load ptr, ptr %9, align 8, !tbaa !224
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hq, i64 %storemerge205 ; 2 uses
  %i.hs = load ptr, ptr %i.a, align 8, !tbaa !262 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !206
  %i.hv = icmp eq i64 %i.hu, 0
  %i.hw = icmp eq ptr %i.hs, null
  %or.cond.not.i = or i1 %i.hw, %i.hv
  br i1 %or.cond.not.i, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %bb.as

bb.as:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.158, i64 noundef 2)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc113:                                        ; preds = %bb.as
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !205
  %i.hz = load i64, ptr %i.ht, align 8, !tbaa !206
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef %i.hy, i64 noundef %i.hz)
          to label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.at:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.au:                                            ; preds = %bb.ao, %bb.an
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %13, align 8, !tbaa !205  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.au
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !207
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.at
  %.pn58 = phi { ptr, i32 } [ %i.ib, %bb.at ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.ic, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.body76

bb.av:                                            ; preds = %._crit_edge, %bb.ag
  %22 = phi ptr [ %16, %bb.ag ], [ %i.ek, %._crit_edge ]
  %23 = phi ptr [ %17, %bb.ag ], [ %i.el, %._crit_edge ]
  %.not56228 = icmp ne ptr %22, %23
  %or.cond295.not = and i1 %.not56228, %i.c
  br i1 %or.cond295.not, label %.lr.ph231.preheader, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

.lr.ph231.preheader:                              ; preds = %bb.av
  %.pre = load ptr, ptr %9, align 8, !tbaa !224
  br label %.lr.ph231

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131
  %.0230 = phi i1 [ %.1, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131 ], [ false, %.lr.ph231.preheader ] ; 2 uses
  %storemerge55229 = phi i64 [ %i.it, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131 ], [ 0, %.lr.ph231.preheader ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %storemerge55229 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !206
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph231
  %.pr164.pre244 = load ptr, ptr %i.a, align 8, !tbaa !262 ; 3 uses
  br i1 %.0230, label %bb.ax, label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.ax:                                            ; preds = %bb.aw
  %.not.i118 = icmp eq ptr %.pr164.pre244, null
  br i1 %.not.i118, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr164.pre244, ptr noundef nonnull @.str.156, i64 noundef 6)
          to label %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.ay
  %.pr164.pre = load ptr, ptr %i.a, align 8, !tbaa !262
  br label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %bb.t, %bb.aj, %bb.ak, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.ap, %bb.ar, %bb.as, %.noexc113, %bb.y
  %lpad.loopexit.split-lp303 = landingpad { ptr, i32 }
          cleanup
  br label %.body76

_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge, %bb.aw
  %.pr164 = phi ptr [ %.pr164.pre, %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge ], [ %.pr164.pre244, %bb.aw ] ; 2 uses
  %.not.i120 = icmp eq ptr %.pr164, null
  br i1 %.not.i120, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131, label %bb.az

bb.az:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr164, ptr noundef nonnull @.str.153, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit122: ; preds = %bb.az
  %.pr166 = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i123 = icmp eq ptr %.pr166, null
  br i1 %.not.i123, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131, label %bb.ba

bb.ba:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit122
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr166, i64 noundef %storemerge55229)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit125: ; preds = %bb.ba
  %.pr168.pr = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i126 = icmp eq ptr %.pr168.pr, null
  br i1 %.not.i126, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131, label %bb.bb

bb.bb:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit125
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr168.pr, ptr noundef nonnull @.str.157, i64 noundef 10)
          to label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit128: ; preds = %bb.bb
  %.pr170 = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.not.i129 = icmp eq ptr %.pr170, null
  br i1 %.not.i129, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131, label %bb.bc

bb.bc:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit128
  %i.iq = load ptr, ptr %i.ii, align 8, !tbaa !205
  %i.ir = load i64, ptr %i.ij, align 8, !tbaa !206
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr170, ptr noundef %i.iq, i64 noundef %i.ir)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131: ; preds = %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit, %bb.ax, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit122, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit125, %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit128, %bb.bc, %.lr.ph231
  %.1 = phi i1 [ %.0230, %.lr.ph231 ], [ true, %bb.bc ], [ true, %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit128 ], [ true, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit125 ], [ true, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit122 ], [ true, %bb.ax ], [ true, %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit ]
  %i.it = add i64 %storemerge55229, 1             ; 2 uses
  %i.iu = load ptr, ptr %i.e, align 8, !tbaa !324
  %i.iv = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = sdiv exact i64 %i.iy, 24
  %.not56 = icmp eq i64 %i.it, %i.iz
  br i1 %.not56, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %.lr.ph231, !llvm.loop !1996

_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit: ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131, %.noexc113, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, %bb.av, %bb.ah, %bb.w, %_ZN7testing7MessageD2Ev.exit
  %.050 = phi i1 [ false, %bb.ah ], [ false, %bb.w ], [ false, %_ZN7testing7MessageD2Ev.exit ], [ true, %bb.av ], [ false, %.noexc113 ], [ false, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit ], [ true, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit131 ]
  %i.ja = load ptr, ptr %9, align 8, !tbaa !224   ; 5 uses
  %i.jb = load ptr, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ja, %i.jb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ja, %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit ] ; 3 uses
  %i.jc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !205 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i132: ; preds = %.lr.ph.i.i.i
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !207
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i132
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.jh, %i.jb
  br i1 %.not.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit
  %.not.i.i1.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !226
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ja to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.jm) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret i1 %.050

.body76:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.aq, %.body.i, %.body84, %bb.s
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn.pn, %bb.s ], [ %.pn62, %.body84 ], [ %i.ee, %.body.i ], [ %i.hm, %bb.aq ], [ %lpad.loopexit.split-lp303, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  resume { ptr, i32 } %.pn62.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEE, i64 16), ptr %0, align 8, !tbaa !187
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !303
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !207
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEED2Ev.exit unwind label %bb.d, !inline_history !13

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #27, !inline_history !304
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.136, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
