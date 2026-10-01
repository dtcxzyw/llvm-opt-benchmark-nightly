Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiSt4lessIiESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiSt4lessIiESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1735
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1737
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !12255

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiSt4lessIiESaIiEEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1723 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12257

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !851
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !876 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !876 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJEEEEERKiPS8_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !1723
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !1722
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1738
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !457

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !12269)
  call void @llvm.experimental.noalias.scope.decl(metadata !12270)
  call void @llvm.experimental.noalias.scope.decl(metadata !12271)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !12272
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !12272
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !12272
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !12272 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !12272 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !12272 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !12272 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !12272
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_0
begin_hunk_1_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetIiSt4lessIiESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetIiSt4lessIiESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1735
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1737
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !12694

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetIiSt4lessIiESaIiEEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1723 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12696

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1133
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1138 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1138 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !1723
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !1722
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1738
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !457

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !12708)
  call void @llvm.experimental.noalias.scope.decl(metadata !12709)
  call void @llvm.experimental.noalias.scope.decl(metadata !12710)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !12711
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !12711
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !12711
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !12711 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !12711 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !12711 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !12711 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !12711
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_1
begin_hunk_2_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !1796
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !1795
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1795
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1803
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !1803
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1807
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1814
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !1796
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1795
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1796
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1795
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !12988

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiSt4lessIiESaISt4pairIKiiEEEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1796 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1795 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12990

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1004
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1015 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1015 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJEEEEERKSt4pairIKiiEPSB_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJEEEEERKSt4pairIKiiEPSB_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJEEEEERKSt4pairIKiiEPSB_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJEEEEERKSt4pairIKiiEPSB_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !1796
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !1795 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !1795
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 12
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1803
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1803
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1815
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !489

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !13002)
  call void @llvm.experimental.noalias.scope.decl(metadata !13003)
  call void @llvm.experimental.noalias.scope.decl(metadata !13004)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !13005
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !13005
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !13005
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !13005 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !13005 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !13005 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !13005 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !13005
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_2
begin_hunk_3_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !1796
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !1795
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1795
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1803
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !1803
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1807
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1814
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !1796
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1795
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1796
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1795
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !13132

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1796 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1795 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !13134

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1193
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1198 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1198 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERKS9_PSH_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERKS9_PSH_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERKS9_PSH_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEERKS9_PSH_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !1796
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !1795 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !1795
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 12
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1803
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1803
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1815
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !489

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !13146)
  call void @llvm.experimental.noalias.scope.decl(metadata !13147)
  call void @llvm.experimental.noalias.scope.decl(metadata !13148)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !13149
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !13149
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !13149
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !13149 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !13149 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !13149 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !13149 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !13149
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_3
begin_hunk_4_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !1848
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !1849
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !1848
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1853
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !1853
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1878
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1879
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1848
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !1849
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !1848
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !1849
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !13743

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEE15MatchAndExplainESC_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !1848 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !1849 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !13745

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !1875
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !1843 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93318 = load ptr, ptr %i.ah, align 8, !tbaa !1843 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSF_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSF_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSF_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSF_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !1848 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !1849
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !1848
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1853
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !1853
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !13759
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !13746

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !13760)
  call void @llvm.experimental.noalias.scope.decl(metadata !13761)
  call void @llvm.experimental.noalias.scope.decl(metadata !13762)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !13763
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !13763
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !13763
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !13763 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !13763 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !13763 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !13763 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !13763
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_119InsertMultiHintDataEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_4
begin_hunk_5_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiNS3_18container_internal12_GLOBAL__N_115IntCompareToCmpESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1323 = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.val1424 = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.not25 = icmp eq ptr %.val1424, %.val1323
  br i1 %.not25, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiNS3_18container_internal12_GLOBAL__N_115IntCompareToCmpESaIiEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.026 = phi i64 [ %i.bp, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.026)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.026 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1731
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bi)
  br i1 %i.bj, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1731
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1735
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1737
  %i.bp = add i64 %.026, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bq = ptrtoint ptr %.val12 to i64
  %i.br = ptrtoint ptr %.val to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 24                ; 2 uses
  %i.bu = icmp ult i64 %i.bp, %i.bt
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre29 = ptrtoint ptr %.val13.pre to i64
  %.pre31 = sub i64 %.pre, %.pre29
  %.pre33 = sdiv exact i64 %.pre31, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi34 = phi i64 [ %i.bt, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre33, %bb.l ]
  %.not = icmp eq i64 %i.bp, %.pre-phi34
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !13989

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiNS3_18container_internal12_GLOBAL__N_115IntCompareToCmpESaIiEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !1723 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !13991

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa438.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa438.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !1885
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !1886 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93315 = load ptr, ptr %i.ah, align 8, !tbaa !1886 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93315, i64 10
  %.val.i.i316 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93315
  %i.ak = icmp ne i8 %.val.i.i316, 0
  %.not6.i317 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i317, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEEERKiPSA_EppEv.exit
  %storemerge320 = phi i64 [ 0, %.lr.ph ], [ %i.fd, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEEERKiPSA_EppEv.exit ] ; 8 uses
  %.sroa.12253.0319 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12253.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEEERKiPSA_EppEv.exit ] ; 7 uses
  %.sroa.0251.0318 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0251.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEEERKiPSA_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !1723
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge320, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !1722
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %storemerge320 ; 2 uses
  %i.bn = and i32 %.sroa.12253.0319, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0251.0318, i64 12
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1731
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bt)
          to label %.noexc112 unwind label %bb.s

.noexc112:                                        ; preds = %bb.e
  br i1 %i.bu, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc112
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc113 unwind label %bb.s

.noexc113:                                        ; preds = %bb.f
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc113
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc113
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc112
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !1731
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1738
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !457

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !14003)
  call void @llvm.experimental.noalias.scope.decl(metadata !14004)
  call void @llvm.experimental.noalias.scope.decl(metadata !14005)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !14006
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !14006
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !14006
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !14006 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.as, align 8, !noalias !14006 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !14006 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !14006 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ap
  br i1 %i.ck, label %.body115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cl = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !14006
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #36
  br label %.body115

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cn = load ptr, ptr %9, align 8, !tbaa !832
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %storemerge320 ; 9 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !810 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.ap                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %11, %i.co
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.cu, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !813
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cx = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !811
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !810
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_5
begin_hunk_6_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetIiNS3_18container_internal12_GLOBAL__N_115IntCompareToCmpESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1323 = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.val1424 = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.not25 = icmp eq ptr %.val1424, %.val1323
  br i1 %.not25, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetIiNS3_18container_internal12_GLOBAL__N_115IntCompareToCmpESaIiEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.026 = phi i64 [ %i.bp, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.026)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.026 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1731
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bi)
  br i1 %i.bj, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1731
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1735
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1737
  %i.bp = add i64 %.026, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bq = ptrtoint ptr %.val12 to i64
  %i.br = ptrtoint ptr %.val to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 24                ; 2 uses
  %i.bu = icmp ult i64 %i.bp, %i.bt
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre29 = ptrtoint ptr %.val13.pre to i64
  %.pre31 = sub i64 %.pre, %.pre29
  %.pre33 = sdiv exact i64 %.pre31, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi34 = phi i64 [ %i.bt, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre33, %bb.l ]
  %.not = icmp eq i64 %i.bp, %.pre-phi34
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !14284

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetIiNS3_18container_internal12_GLOBAL__N_115IntCompareToCmpESaIiEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !1723 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !14286

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa438.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa438.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !1909
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !1921 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93315 = load ptr, ptr %i.ah, align 8, !tbaa !1921 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93315, i64 10
  %.val.i.i316 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93315
  %i.ak = icmp ne i8 %.val.i.i316, 0
  %.not6.i317 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i317, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit
  %storemerge320 = phi i64 [ 0, %.lr.ph ], [ %i.fd, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit ] ; 8 uses
  %.sroa.12253.0319 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12253.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit ] ; 7 uses
  %.sroa.0251.0318 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0251.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEERKiPSE_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !1723
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge320, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !1722
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %storemerge320 ; 2 uses
  %i.bn = and i32 %.sroa.12253.0319, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0251.0318, i64 12
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1731
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bt)
          to label %.noexc112 unwind label %bb.s

.noexc112:                                        ; preds = %bb.e
  br i1 %i.bu, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc112
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc113 unwind label %bb.s

.noexc113:                                        ; preds = %bb.f
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc113
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc113
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc112
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !1731
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1738
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !457

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !14298)
  call void @llvm.experimental.noalias.scope.decl(metadata !14299)
  call void @llvm.experimental.noalias.scope.decl(metadata !14300)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !14301
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !14301
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !14301
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !14301 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.as, align 8, !noalias !14301 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !14301 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !14301 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ap
  br i1 %i.ck, label %.body115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cl = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !14301
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #36
  br label %.body115

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cn = load ptr, ptr %9, align 8, !tbaa !832
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %storemerge320 ; 9 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !810 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.ap                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %11, %i.co
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.cu, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !813
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cx = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !811
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !810
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_6
begin_hunk_7_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2030
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2038
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2038
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2034
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2034
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2039
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2040
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2030
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2038
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2030
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2038
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !15121

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EEEEE15MatchAndExplainESJ_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2030 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2038 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15123

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2001
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2004 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2004 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !2030
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2038 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !2038
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 16
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2034
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !2034
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15137
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !15124

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !15138)
  call void @llvm.experimental.noalias.scope.decl(metadata !15139)
  call void @llvm.experimental.noalias.scope.decl(metadata !15140)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !15141
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !15141
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !15141
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !15141 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !15141 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !15141 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !15141 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !15141
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_7
begin_hunk_8_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2148
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2150
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2150
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2113
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2113
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2120
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2152
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2148
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2150
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2148
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2150
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !16488

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEEE15MatchAndExplainESG_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2148 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2150 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !16490

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !921
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !926 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !926 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSA_PSE_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSA_PSE_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSA_PSE_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSA_PSE_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !2148
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2150 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !2150
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 16
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2113
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !2113
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2153
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !575

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !16503)
  call void @llvm.experimental.noalias.scope.decl(metadata !16504)
  call void @llvm.experimental.noalias.scope.decl(metadata !16505)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !16506
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !16506
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !16506
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !16506 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !16506 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !16506 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !16506 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !16506
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_8
begin_hunk_9_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_118ConstructorCountedENS6_25ConstructorCountedCompareESaIS7_EEEE18DescribeNegationToEPSo:bb.a
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !2163
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !2164
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_118ConstructorCountedENS6_25ConstructorCountedCompareESaIS7_EEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !2163
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2168
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2168
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2184
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2186
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2163
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !2164
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !2163
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !2164
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !16655

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_118ConstructorCountedENS6_25ConstructorCountedCompareESaIS7_EEEE15MatchAndExplainESC_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %9 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !2163 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !2164 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !16657

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa457.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa457.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !2159
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !2179 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93330 = load ptr, ptr %i.ah, align 8, !tbaa !2179 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93330, i64 10
  %.val.i.i331 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93330
  %i.ak = icmp ne i8 %.val.i.i331, 0
  %.not6.i332 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i332, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS5_25ConstructorCountedCompareEEEEEERKS6_PSB_EppEv.exit
  %storemerge335 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS5_25ConstructorCountedCompareEEEEEERKS6_PSB_EppEv.exit ] ; 8 uses
  %.sroa.12268.0334 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12268.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS5_25ConstructorCountedCompareEEEEEERKS6_PSB_EppEv.exit ] ; 7 uses
  %.sroa.0266.0333 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0266.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS5_25ConstructorCountedCompareEEEEEERKS6_PSB_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !2163 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !2164
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge335, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %11, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !2163
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge335 ; 2 uses
  %i.bm = and i32 %.sroa.12268.0334, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0266.0333, i64 12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2168
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %9, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2168
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2187
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull %11)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !583

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !16676)
  call void @llvm.experimental.noalias.scope.decl(metadata !16677)
  call void @llvm.experimental.noalias.scope.decl(metadata !16678)
  store ptr %i.ap, ptr %12, align 8, !tbaa !814, !alias.scope !16679
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !16679
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !16679
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !16679 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !16679 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !16679 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %12, align 8, !tbaa !810, !alias.scope !16679 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !16679
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge335 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %12, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %12, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_9
begin_hunk_10_@_ZNK7testing8internal22ElementsAreMatcherImplIRKSt6vectorIPvSaIS3_EEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2231
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2230
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKSt6vectorIPvSaIS3_EEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2230
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2235
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKPvE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKPvE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKPvE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2235
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2239
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2242
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2231
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2230
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPvE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2231
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2230
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPvE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKPvE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !16843

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKSt6vectorIPvSaIS3_EEE15MatchAndExplainES7_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2231 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2230 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !16845

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2226  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2226
  %.not176199 = icmp eq ptr %i.aj, %i.al
  br i1 %.not176199, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
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

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %storemerge201 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %bb.w ] ; 8 uses
  %.sroa.0150.0200 = phi ptr [ %i.aj, %.lr.ph ], [ %i.eh, %bb.w ] ; 6 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !2231
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !2230 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %.not = icmp eq i64 %storemerge201, %i.bn
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.an)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2230
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %storemerge201 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2235
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc69 unwind label %bb.r

.noexc69:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bt, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc70 unwind label %bb.r

.noexc70:                                         ; preds = %bb.e
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc70
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.g

bb.f:                                             ; preds = %.noexc70
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc69
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2235
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !16858
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0150.0200, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKPvE15MatchAndExplainES4_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !16846

_ZNK7testing8internal11MatcherBaseIRKPvE15MatchAndExplainES4_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !16859)
  call void @llvm.experimental.noalias.scope.decl(metadata !16860)
  call void @llvm.experimental.noalias.scope.decl(metadata !16861)
  store ptr %i.aq, ptr %11, align 8, !tbaa !814, !alias.scope !16862
  store i64 0, ptr %i.ar, align 8, !tbaa !811, !alias.scope !16862
  store i8 0, ptr %i.aq, align 8, !tbaa !813, !alias.scope !16862
  %i.bz = load ptr, ptr %i.as, align 8, !tbaa !872, !noalias !16862 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.at, align 8, !noalias !16862 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPvE15MatchAndExplainES4_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !873, !noalias !16862 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !16862 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aq
  br i1 %i.cj, label %.body72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ck = load i64, ptr %i.aq, align 8, !tbaa !813, !alias.scope !16862
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body72

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPvE15MatchAndExplainES4_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge201 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.aq                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.ar, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !812

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ct, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !810
  %i.db = load i64, ptr %i.ar, align 8, !tbaa !811
  store i64 %i.db, ptr %i.da, align 8, !tbaa !811
  %i.dc = load i64, ptr %i.aq, align 8, !tbaa !813
  store i64 %i.dc, ptr %i.cp, align 8, !tbaa !813
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
end_hunk_10
begin_hunk_11_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setISt6vectorIPvSaIS6_EESt4lessIS8_ESaIS8_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2213
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2212
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setISt6vectorIPvSaIS6_EESt4lessIS8_ESaIS8_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2212
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2219
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2219
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2223
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2244
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2213
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2212
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2213
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2212
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !16879

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setISt6vectorIPvSaIS6_EESt4lessIS8_ESaIS8_EEEE15MatchAndExplainESE_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2213 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2212 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !16881

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2196
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2209 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2209 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implISt6vectorIPvSaIS6_EEJEEEEERKS8_PSC_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implISt6vectorIPvSaIS6_EEJEEEEERKS8_PSC_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implISt6vectorIPvSaIS6_EEJEEEEERKS8_PSC_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implISt6vectorIPvSaIS6_EEJEEEEERKS8_PSC_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !2213
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2212 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !2212
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 16
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2219
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !2219
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2245
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !593

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !16894)
  call void @llvm.experimental.noalias.scope.decl(metadata !16895)
  call void @llvm.experimental.noalias.scope.decl(metadata !16896)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !16897
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !16897
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !16897
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !16897 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !16897 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !16897 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !16897 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !16897
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIPvSaIS3_EEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_11
begin_hunk_12_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISA_ESaISt4pairIKSA_iEEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2267
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2266
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISA_ESaISt4pairIKSA_iEEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2266
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2273
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2273
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2277
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2283
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2267
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2266
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2267
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2266
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !17088

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISA_ESaISt4pairIKSA_iEEEEE15MatchAndExplainESJ_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2267 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2266 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !17090

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1602
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1603 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1603 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiJEEEEERKSt4pairIKSA_iEPSH_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiJEEEEERKSt4pairIKSA_iEPSH_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiJEEEEERKSt4pairIKSA_iEPSH_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiJEEEEERKSt4pairIKSA_iEPSH_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !2267
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2266 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !2266
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 16
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2273
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !2273
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !17104
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(36) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !17091

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !17105)
  call void @llvm.experimental.noalias.scope.decl(metadata !17106)
  call void @llvm.experimental.noalias.scope.decl(metadata !17107)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !17108
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !17108
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !17108
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !17108 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !17108 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !17108 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !17108 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !17108
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_12
begin_hunk_13_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS6_25ConstructorCountedCompareESaISt4pairIKS7_iEEEEE18DescribeNegationToEPSo:bb.a
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !2298
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !2299
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS6_25ConstructorCountedCompareESaISt4pairIKS7_iEEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !2298
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2303
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2303
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2319
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2320
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2298
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !2299
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !2298
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !2299
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !17350

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_118ConstructorCountedEiNS6_25ConstructorCountedCompareESaISt4pairIKS7_iEEEEE15MatchAndExplainESF_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %9 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !2298 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !2299 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !17352

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa457.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa457.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !2294
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !2316 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93330 = load ptr, ptr %i.ah, align 8, !tbaa !2316 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93330, i64 10
  %.val.i.i331 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93330
  %i.ak = icmp ne i8 %.val.i.i331, 0
  %.not6.i332 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i332, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERKSt4pairIKS6_iEPSE_EppEv.exit
  %storemerge335 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERKSt4pairIKS6_iEPSE_EppEv.exit ] ; 8 uses
  %.sroa.12268.0334 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12268.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERKSt4pairIKS6_iEPSE_EppEv.exit ] ; 7 uses
  %.sroa.0266.0333 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0266.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS5_25ConstructorCountedCompareEEEEEERKSt4pairIKS6_iEPSE_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !2298 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !2299
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge335, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %11, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !2298
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge335 ; 2 uses
  %i.bm = and i32 %.sroa.12268.0334, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0266.0333, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2303
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %9, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2303
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !17372
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %11)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !17353

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !17373)
  call void @llvm.experimental.noalias.scope.decl(metadata !17374)
  call void @llvm.experimental.noalias.scope.decl(metadata !17375)
  store ptr %i.ap, ptr %12, align 8, !tbaa !814, !alias.scope !17376
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !17376
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !17376
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !17376 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !17376 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !17376 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %12, align 8, !tbaa !810, !alias.scope !17376 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !17376
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCountedEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge335 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %12, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %12, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_13
begin_hunk_14_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapISt6vectorIPvSaIS6_EEiSt4lessIS8_ESaISt4pairIKS8_iEEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2343
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2342
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapISt6vectorIPvSaIS6_EEiSt4lessIS8_ESaISt4pairIKS8_iEEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2342
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2349
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2349
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2353
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2356
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2343
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2342
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2343
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2342
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !17597

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapISt6vectorIPvSaIS6_EEiSt4lessIS8_ESaISt4pairIKS8_iEEEEE15MatchAndExplainESH_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2343 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2342 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !17599

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2329
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2339 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2339 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implISt6vectorIPvSaIS6_EEiJEEEEERKSt4pairIKS8_iEPSF_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implISt6vectorIPvSaIS6_EEiJEEEEERKSt4pairIKS8_iEPSF_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implISt6vectorIPvSaIS6_EEiJEEEEERKSt4pairIKS8_iEPSF_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implISt6vectorIPvSaIS6_EEiJEEEEERKSt4pairIKS8_iEPSF_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !2343
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2342 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !2342
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 16
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2349
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !2349
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !17613
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(28) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !17600

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !17614)
  call void @llvm.experimental.noalias.scope.decl(metadata !17615)
  call void @llvm.experimental.noalias.scope.decl(metadata !17616)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !17617
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !17617
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !17617
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !17617 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !17617 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !17617 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !17617 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !17617
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKSt6vectorIPvSaIS4_EEiEE15MatchAndExplainESA_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_14
begin_hunk_15_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2390
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2389
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2389
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2397
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2397
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2401
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2405
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2390
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2389
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2390
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2389
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !17964

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEEE15MatchAndExplainESJ_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2390 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2389 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !17966

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1049
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1065 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1065 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !2390
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2389 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !2389
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 16
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2397
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !2397
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2406
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !638

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !17978)
  call void @llvm.experimental.noalias.scope.decl(metadata !17979)
  call void @llvm.experimental.noalias.scope.decl(metadata !17980)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !17981
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !17981
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !17981
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !17981 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !17981 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !17981 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !17981 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !17981
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_15
begin_hunk_16_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2390
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !2389
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !2389
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2397
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !2397
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2401
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2405
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !2390
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !2389
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2390
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !2389
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18013

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEEE15MatchAndExplainESJ_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2390 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !2389 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !18015

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1212
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1217 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1217 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSF_PSN_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSF_PSN_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSF_PSN_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSF_PSN_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !2390
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !2389 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !2389
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 16
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2397
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !2397
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2406
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !638

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !18027)
  call void @llvm.experimental.noalias.scope.decl(metadata !18028)
  call void @llvm.experimental.noalias.scope.decl(metadata !18029)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !18030
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !18030
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !18030
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !18030 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !18030 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !18030 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !18030 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !18030
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_16
begin_hunk_17_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiSt4lessIiENS3_18container_internal17CountingAllocatorIiEEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiSt4lessIiENS3_18container_internal17CountingAllocatorIiEEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1735
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1737
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18084

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiSt4lessIiENS3_18container_internal17CountingAllocatorIiEEEEE15MatchAndExplainESC_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1723 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !18086

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2075
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2079 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2079 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEEERKiPSC_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEEERKiPSC_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEEERKiPSC_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJSt4lessIiENS1_17CountingAllocatorIiEEEEEEERKiPSC_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !1723
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !1722
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1738
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !457

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !18098)
  call void @llvm.experimental.noalias.scope.decl(metadata !18099)
  call void @llvm.experimental.noalias.scope.decl(metadata !18100)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !18101
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !18101
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !18101
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !18101 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !18101 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !18101 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !18101 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !18101
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_17
begin_hunk_18_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiPFbiiESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiPFbiiESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !1731
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1735
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1737
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !1723
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1722
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1723
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1722
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18249

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setIiPFbiiESaIiEEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1723 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !18251

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2427
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2429 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2429 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJPFbiiEEEEEERKiPSA_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJPFbiiEEEEEERKiPSA_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJPFbiiEEEEEERKiPSA_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implIiJPFbiiEEEEEERKiPSA_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !1723
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !1722 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !1722
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1731
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1738
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !457

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !18263)
  call void @llvm.experimental.noalias.scope.decl(metadata !18264)
  call void @llvm.experimental.noalias.scope.decl(metadata !18265)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !18266
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !18266
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !18266
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !18266 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !18266 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !18266 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !18266 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !18266
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_18
begin_hunk_19_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiPFbiiESaISt4pairIKiiEEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !813
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !813
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !1796
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !1795
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiPFbiiESaISt4pairIKiiEEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !816
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1795
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1803
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !1803
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1807
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1814
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !1796
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1795
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1796
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !1795
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18322

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapIiiPFbiiESaISt4pairIKiiEEEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1796 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1795 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !832
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !831
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !811
  store i8 0, ptr %i.q, align 8, !tbaa !813
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !18324

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa425.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !811
  store i8 0, ptr %i.v, align 8, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !811
  store i8 0, ptr %i.y, align 8, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !814
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !811
  store i8 0, ptr %i.ab, align 8, !tbaa !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !814
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !811
  store i8 0, ptr %i.ae, align 8, !tbaa !813
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !830
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2436
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2464 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2464 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !813
  %i.ap = icmp ne ptr %i.ak, %i.am
  %i.aq = icmp ne i8 %i.ao, 0
  %.not3.i285 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i285, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERKSt4pairIKiiEPSD_EppEv.exit
  %storemerge288 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERKSt4pairIKiiEPSD_EppEv.exit ] ; 8 uses
  %.sroa.12220.0287 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12220.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERKSt4pairIKiiEPSD_EppEv.exit ] ; 7 uses
  %.sroa.0214.0286 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0214.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiiJPFbiiEEEEEERKSt4pairIKiiEPSD_EppEv.exit ] ; 11 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !1796
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !1795 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %.not = icmp eq i64 %storemerge288, %i.bs
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !1795
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %storemerge288 ; 2 uses
  %i.bv = and i32 %.sroa.12220.0287, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0286, i64 12
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1803
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.cb)
          to label %.noexc87 unwind label %bb.s

.noexc87:                                         ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc88 unwind label %bb.s

.noexc88:                                         ; preds = %bb.f
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc88
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc87
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1803
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1815
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %i.by, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !489

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !18336)
  call void @llvm.experimental.noalias.scope.decl(metadata !18337)
  call void @llvm.experimental.noalias.scope.decl(metadata !18338)
  store ptr %i.av, ptr %11, align 8, !tbaa !814, !alias.scope !18339
  store i64 0, ptr %i.aw, align 8, !tbaa !811, !alias.scope !18339
  store i8 0, ptr %i.av, align 8, !tbaa !813, !alias.scope !18339
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !872, !noalias !18339 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.ay, align 8, !noalias !18339 ; 2 uses
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  %.08.i.i.i.i = select i1 %i.ck, ptr %i.ci, ptr %i.cj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !873, !noalias !18339 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !18339 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !813, !alias.scope !18339
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #36
  br label %.body90

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !832
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %storemerge288 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !810 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  %i.da = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.av                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.db, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !811 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %.not21.i = icmp eq ptr %11, %i.cw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.dc, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.da, align 1, !tbaa !813
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.df = load i64, ptr %i.aw, align 8, !tbaa !811 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !811
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !810
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_19
begin_hunk_20_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !2501
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !2502
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !2501
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2506
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2506
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2586
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2588
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2501
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !2502
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !2501
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !2502
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19053

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !2501 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !2502 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !19055

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !2494
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !2498 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93318 = load ptr, ptr %i.ah, align 8, !tbaa !2498 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKS6_PSD_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKS6_PSD_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKS6_PSD_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKS6_PSD_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !2501 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !2502
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !2501
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2506
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2506
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2589
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !683

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !19067)
  call void @llvm.experimental.noalias.scope.decl(metadata !19068)
  call void @llvm.experimental.noalias.scope.decl(metadata !19069)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !19070
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !19070
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19070
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !19070 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !19070 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !19070 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !19070 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19070
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_20
begin_hunk_21_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1424 = load ptr, ptr %i.a, align 8, !tbaa !2501
  %.val1525 = load ptr, ptr %i.b, align 8, !tbaa !2502
  %.not26 = icmp eq ptr %.val1525, %.val1424
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2501
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2506
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2506
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2586
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2588
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !2501
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !2502
  %i.bp = ptrtoint ptr %.val13 to i64
  %i.bq = ptrtoint ptr %.val12 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !2501
  %.val15.pre = load ptr, ptr %i.b, align 8, !tbaa !2502
  %.pre = ptrtoint ptr %.val15.pre to i64
  %.pre30 = ptrtoint ptr %.val14.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19111

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !2501 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val92 = load ptr, ptr %i.e, align 8, !tbaa !2502 ; 2 uses
  %i.f = ptrtoint ptr %.val92 to i64
  %i.g = ptrtoint ptr %.val91 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val92, %.val91
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !19113

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val94 = load ptr, ptr %1, align 8, !tbaa !2524
  %.val94.val = load ptr, ptr %.val94, align 8, !tbaa !2526 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val96318 = load ptr, ptr %i.ah, align 8, !tbaa !2526 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val96318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val94.val, %.val96318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val94.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit ] ; 11 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !2501 ; 2 uses
  %.val90 = load ptr, ptr %i.e, align 8, !tbaa !2502
  %i.bh = ptrtoint ptr %.val90 to i64
  %i.bi = ptrtoint ptr %.val89 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !2501
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val84, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2506
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2506
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2589
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !683

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !19125)
  call void @llvm.experimental.noalias.scope.decl(metadata !19126)
  call void @llvm.experimental.noalias.scope.decl(metadata !19127)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !19128
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !19128
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19128
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !19128 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !19128 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !19128 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !19128 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19128
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_21
begin_hunk_22_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !2546
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !2547
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !2546
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2551
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2551
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2596
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2598
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2546
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !2547
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !2546
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !2547
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19230

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !2546 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !2547 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !19232

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !2541
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !2543 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93318 = load ptr, ptr %i.ah, align 8, !tbaa !2543 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKSt4pairIKS6_iEPSG_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKSt4pairIKS6_iEPSG_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKSt4pairIKS6_iEPSG_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERKSt4pairIKS6_iEPSG_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !2546 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !2547
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !2546
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2551
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2551
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2599
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !691

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !19244)
  call void @llvm.experimental.noalias.scope.decl(metadata !19245)
  call void @llvm.experimental.noalias.scope.decl(metadata !19246)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !19247
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !19247
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19247
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !19247 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !19247 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !19247 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !19247 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19247
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_22
begin_hunk_23_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1424 = load ptr, ptr %i.a, align 8, !tbaa !2546
  %.val1525 = load ptr, ptr %i.b, align 8, !tbaa !2547
  %.not26 = icmp eq ptr %.val1525, %.val1424
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2546
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2551
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2551
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2596
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2598
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !2546
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !2547
  %i.bp = ptrtoint ptr %.val13 to i64
  %i.bq = ptrtoint ptr %.val12 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !2546
  %.val15.pre = load ptr, ptr %i.b, align 8, !tbaa !2547
  %.pre = ptrtoint ptr %.val15.pre to i64
  %.pre30 = ptrtoint ptr %.val14.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19290

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !2546 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val92 = load ptr, ptr %i.e, align 8, !tbaa !2547 ; 2 uses
  %i.f = ptrtoint ptr %.val92 to i64
  %i.g = ptrtoint ptr %.val91 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val92, %.val91
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !19292

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val94 = load ptr, ptr %1, align 8, !tbaa !2571
  %.val94.val = load ptr, ptr %.val94, align 8, !tbaa !2573 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val96318 = load ptr, ptr %i.ah, align 8, !tbaa !2573 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val96318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val94.val, %.val96318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKSt4pairIKS6_iEPSJ_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKSt4pairIKS6_iEPSJ_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKSt4pairIKS6_iEPSJ_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val94.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKSt4pairIKS6_iEPSJ_EppEv.exit ] ; 11 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !2546 ; 2 uses
  %.val90 = load ptr, ptr %i.e, align 8, !tbaa !2547
  %i.bh = ptrtoint ptr %.val90 to i64
  %i.bi = ptrtoint ptr %.val89 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !2546
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val84, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2551
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2551
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2599
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !691

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !19304)
  call void @llvm.experimental.noalias.scope.decl(metadata !19305)
  call void @llvm.experimental.noalias.scope.decl(metadata !19306)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !19307
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !19307
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19307
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !19307 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !19307 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !19307 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !19307 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19307
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_23
begin_hunk_24_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_113NotAssignableESt4lessIS7_ESaIS7_EEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !2615
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !2616
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_113NotAssignableESt4lessIS7_ESaIS7_EEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !2615
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2694
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2694
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2698
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2700
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2615
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !2616
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !2615
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !2616
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19862

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_113NotAssignableESt4lessIS7_ESaIS7_EEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !2615 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !2616 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !19864

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !2608
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !2612 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93318 = load ptr, ptr %i.ah, align 8, !tbaa !2612 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEEERKS6_PSA_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEEERKS6_PSA_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEEERKS6_PSA_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJEEEEERKS6_PSA_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !2615 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !2616
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !2615
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2694
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2694
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2701
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !711

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !19876)
  call void @llvm.experimental.noalias.scope.decl(metadata !19877)
  call void @llvm.experimental.noalias.scope.decl(metadata !19878)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !19879
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !19879
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19879
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !19879 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !19879 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !19879 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !19879 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19879
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_24
begin_hunk_25_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_113NotAssignableESt4lessIS7_ESaIS7_EEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1424 = load ptr, ptr %i.a, align 8, !tbaa !2615
  %.val1525 = load ptr, ptr %i.b, align 8, !tbaa !2616
  %.not26 = icmp eq ptr %.val1525, %.val1424
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_113NotAssignableESt4lessIS7_ESaIS7_EEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2615
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2694
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2694
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2698
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2700
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !2615
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !2616
  %i.bp = ptrtoint ptr %.val13 to i64
  %i.bq = ptrtoint ptr %.val12 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !2615
  %.val15.pre = load ptr, ptr %i.b, align 8, !tbaa !2616
  %.pre = ptrtoint ptr %.val15.pre to i64
  %.pre30 = ptrtoint ptr %.val14.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19978

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_113NotAssignableESt4lessIS7_ESaIS7_EEEE15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !2615 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val92 = load ptr, ptr %i.e, align 8, !tbaa !2616 ; 2 uses
  %i.f = ptrtoint ptr %.val92 to i64
  %i.g = ptrtoint ptr %.val91 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val92, %.val91
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !19980

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val94 = load ptr, ptr %1, align 8, !tbaa !2633
  %.val94.val = load ptr, ptr %.val94, align 8, !tbaa !2635 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val96318 = load ptr, ptr %i.ah, align 8, !tbaa !2635 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val96318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val94.val, %.val96318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS6_ESaIS6_ESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS6_ESaIS6_ESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS6_ESaIS6_ESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val94.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS6_ESaIS6_ESt17integral_constantIiLi256EESA_IbLb1EEEEEEERKS6_PSG_EppEv.exit ] ; 11 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !2615 ; 2 uses
  %.val90 = load ptr, ptr %i.e, align 8, !tbaa !2616
  %i.bh = ptrtoint ptr %.val90 to i64
  %i.bi = ptrtoint ptr %.val89 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !2615
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val84, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2694
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2694
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2701
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !711

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !19992)
  call void @llvm.experimental.noalias.scope.decl(metadata !19993)
  call void @llvm.experimental.noalias.scope.decl(metadata !19994)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !19995
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !19995
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19995
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !19995 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !19995 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !19995 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !19995 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !19995
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_25
begin_hunk_26_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !2658
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !2659
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !2658
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2710
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2710
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2716
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2718
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2658
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !2659
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !2658
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !2659
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !20256

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE15MatchAndExplainESG_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !2658 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !2659 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !20258

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !2651
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !2655 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93318 = load ptr, ptr %i.ah, align 8, !tbaa !2655 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERKSt4pairIKS6_iEPSD_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERKSt4pairIKS6_iEPSD_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERKSt4pairIKS6_iEPSD_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERKSt4pairIKS6_iEPSD_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !2658 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !2659
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !2658
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2710
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2710
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2719
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !723

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !20270)
  call void @llvm.experimental.noalias.scope.decl(metadata !20271)
  call void @llvm.experimental.noalias.scope.decl(metadata !20272)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !20273
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !20273
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !20273
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !20273 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !20273 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !20273 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !20273 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !20273
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_26
begin_hunk_27_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1424 = load ptr, ptr %i.a, align 8, !tbaa !2658
  %.val1525 = load ptr, ptr %i.b, align 8, !tbaa !2659
  %.not26 = icmp eq ptr %.val1525, %.val1424
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2658
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2710
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2710
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2716
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2718
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !2658
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !2659
  %i.bp = ptrtoint ptr %.val13 to i64
  %i.bq = ptrtoint ptr %.val12 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !2658
  %.val15.pre = load ptr, ptr %i.b, align 8, !tbaa !2659
  %.pre = ptrtoint ptr %.val15.pre to i64
  %.pre30 = ptrtoint ptr %.val14.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !20449

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE15MatchAndExplainESG_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !2658 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val92 = load ptr, ptr %i.e, align 8, !tbaa !2659 ; 2 uses
  %i.f = ptrtoint ptr %.val92 to i64
  %i.g = ptrtoint ptr %.val91 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val92, %.val91
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !20451

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val94 = load ptr, ptr %1, align 8, !tbaa !2676
  %.val94.val = load ptr, ptr %.val94, align 8, !tbaa !2678 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val96318 = load ptr, ptr %i.ah, align 8, !tbaa !2678 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val96318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val94.val, %.val96318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERKSB_PSJ_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERKSB_PSJ_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERKSB_PSJ_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val94.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERKSB_PSJ_EppEv.exit ] ; 11 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !2658 ; 2 uses
  %.val90 = load ptr, ptr %i.e, align 8, !tbaa !2659
  %i.bh = ptrtoint ptr %.val90 to i64
  %i.bi = ptrtoint ptr %.val89 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !2658
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val84, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2710
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2710
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2719
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !723

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !20463)
  call void @llvm.experimental.noalias.scope.decl(metadata !20464)
  call void @llvm.experimental.noalias.scope.decl(metadata !20465)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !20466
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !20466
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !20466
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !20466 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !20466 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !20466 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !20466 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !20466
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_27
begin_hunk_28_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_18MultiKeyENS6_12MultiKeyCompESaIS7_EEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1324 = load ptr, ptr %i.a, align 8, !tbaa !2798
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !2799
  %.not26 = icmp eq ptr %.val1425, %.val1324
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_18MultiKeyENS6_12MultiKeyCompESaIS7_EEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !2798
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val19, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2804
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2804
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2817
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2819
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2798
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !2799
  %i.bp = ptrtoint ptr %.val12 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val13.pre = load ptr, ptr %i.a, align 8, !tbaa !2798
  %.val14.pre = load ptr, ptr %i.b, align 8, !tbaa !2799
  %.pre = ptrtoint ptr %.val14.pre to i64
  %.pre30 = ptrtoint ptr %.val13.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !21099

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_18MultiKeyENS6_12MultiKeyCompESaIS7_EEEE15MatchAndExplainESC_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !2798 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val89 = load ptr, ptr %i.e, align 8, !tbaa !2799 ; 2 uses
  %i.f = ptrtoint ptr %.val89 to i64
  %i.g = ptrtoint ptr %.val88 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val89, %.val88
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !21101

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val91 = load ptr, ptr %1, align 8, !tbaa !2483
  %.val91.val = load ptr, ptr %.val91, align 8, !tbaa !2485 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val93318 = load ptr, ptr %i.ah, align 8, !tbaa !2485 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val93318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val91.val, %.val93318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSB_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSB_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSB_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val91.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSB_EppEv.exit ] ; 11 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !2798 ; 2 uses
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !2799
  %i.bh = ptrtoint ptr %.val87 to i64
  %i.bi = ptrtoint ptr %.val86 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !2798
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val104, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2804
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2804
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2820
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !787

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !21113)
  call void @llvm.experimental.noalias.scope.decl(metadata !21114)
  call void @llvm.experimental.noalias.scope.decl(metadata !21115)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !21116
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !21116
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !21116
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !21116 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !21116 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !21116 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !21116 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !21116
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_28
begin_hunk_29_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_18MultiKeyENS6_20MultiKeyThreeWayCompESaIS7_EEEE18DescribeNegationToEPSo:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !813
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !810   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !813
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.678, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !816
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val1424 = load ptr, ptr %i.a, align 8, !tbaa !2798
  %.val1525 = load ptr, ptr %i.b, align 8, !tbaa !2799
  %.not26 = icmp eq ptr %.val1525, %.val1424
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_18MultiKeyENS6_20MultiKeyThreeWayCompESaIS7_EEEE8ElementsEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !827   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %.body
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.027 = phi i64 [ %i.bo, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.672, i64 noundef 9) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.027)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.635, i64 noundef 1) ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2798
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.027 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2804
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bh)
  br i1 %i.bi, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !2804
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2817
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !2819
  %i.bo = add i64 %.027, 1                        ; 3 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !2798
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !2799
  %i.bp = ptrtoint ptr %.val13 to i64
  %i.bq = ptrtoint ptr %.val12 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.678, i64 noundef 5) ; 0 uses
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !2798
  %.val15.pre = load ptr, ptr %i.b, align 8, !tbaa !2799
  %.pre = ptrtoint ptr %.val15.pre to i64
  %.pre30 = ptrtoint ptr %.val14.pre to i64
  %.pre32 = sub i64 %.pre, %.pre30
  %.pre34 = sdiv exact i64 %.pre32, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi35 = phi i64 [ %i.bs, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE18DescribeNegationToEPSo.exit ], [ %.pre34, %bb.l ]
  %.not = icmp eq i64 %i.bo, %.pre-phi35
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !21224

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605269btree_setINS3_18container_internal12_GLOBAL__N_18MultiKeyENS6_20MultiKeyThreeWayCompESaIS7_EEEE15MatchAndExplainESC_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !2798 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val92 = load ptr, ptr %i.e, align 8, !tbaa !2799 ; 2 uses
  %i.f = ptrtoint ptr %.val92 to i64
  %i.g = ptrtoint ptr %.val91 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 7 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.371) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val92, %.val91
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !832
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !831
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !811
  store i8 0, ptr %i.o, align 8, !tbaa !813
  %i.q = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !21226

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa441.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 4
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !811
  store i8 0, ptr %i.t, align 8, !tbaa !813
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !814
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !811
  store i8 0, ptr %i.w, align 8, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !814
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !811
  store i8 0, ptr %i.z, align 8, !tbaa !813
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !811
  store i8 0, ptr %i.ac, align 8, !tbaa !813
  %i.ae = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa441.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !830
  %.val94 = load ptr, ptr %1, align 8, !tbaa !2787
  %.val94.val = load ptr, ptr %.val94, align 8, !tbaa !2793 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val96318 = load ptr, ptr %i.ah, align 8, !tbaa !2793 ; 3 uses
  %i.ai = getelementptr i8, ptr %.val96318, i64 10
  %.val.i.i319 = load i8, ptr %i.ai, align 1, !tbaa !813
  %i.aj = icmp ne ptr %.val94.val, %.val96318
  %i.ak = icmp ne i8 %.val.i.i319, 0
  %.not6.i320 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not6.i320, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSB_EppEv.exit
  %storemerge323 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSB_EppEv.exit ] ; 8 uses
  %.sroa.12256.0322 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12256.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSB_EppEv.exit ] ; 7 uses
  %.sroa.0254.0321 = phi ptr [ %.val94.val, %.lr.ph ], [ %.sroa.0254.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSB_EppEv.exit ] ; 11 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !2798 ; 2 uses
  %.val90 = load ptr, ptr %i.e, align 8, !tbaa !2799
  %i.bh = ptrtoint ptr %.val90 to i64
  %i.bi = ptrtoint ptr %.val89 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24
  %.not = icmp eq i64 %storemerge323, %i.bk
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1708
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !816
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !2798
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val84, i64 %storemerge323 ; 2 uses
  %i.bm = and i32 %.sroa.12256.0322, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0254.0321, i64 12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2804
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.e
  br i1 %i.bt, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 234)
          to label %.noexc116 unwind label %bb.s

.noexc116:                                        ; preds = %bb.f
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc116
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.h

bb.g:                                             ; preds = %.noexc116
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !2804
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2820
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !787

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !21238)
  call void @llvm.experimental.noalias.scope.decl(metadata !21239)
  call void @llvm.experimental.noalias.scope.decl(metadata !21240)
  store ptr %i.ap, ptr %11, align 8, !tbaa !814, !alias.scope !21241
  store i64 0, ptr %i.aq, align 8, !tbaa !811, !alias.scope !21241
  store i8 0, ptr %i.ap, align 8, !tbaa !813, !alias.scope !21241
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !872, !noalias !21241 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !21241 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !21241 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !810, !alias.scope !21241 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !813, !alias.scope !21241
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #36
  br label %.body118

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_18MultiKeyEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cm = load ptr, ptr %9, align 8, !tbaa !832
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge323 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !810 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !810  ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.aq, align 8, !tbaa !811 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !812

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !813
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = load i64, ptr %i.aq, align 8, !tbaa !811 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !811
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !810
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !813
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !810
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_29
