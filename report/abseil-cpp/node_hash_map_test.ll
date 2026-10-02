Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/node_hash_map_test?download=true
inline.NumInlined: 21966
inline.NumDeleted: 5252
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS3_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !94
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !91    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !94
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.243, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !153   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !106
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !407
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !406
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS3_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !153   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.238, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.182, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !406
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !413
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.180, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.181, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !413
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !417
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !427
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !407
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !406
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.243, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !407
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !406
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2435

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS3_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEE15MatchAndExplainESK_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !406  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #35
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit205

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #38 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !104
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !95
  store i8 0, ptr %i.q, align 8, !tbaa !94
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2437

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa453.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit205, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !95
  store i8 0, ptr %i.v, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !95
  store i8 0, ptr %i.y, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !95
  store i8 0, ptr %i.ab, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !95
  store i8 0, ptr %i.ae, align 8, !tbaa !94
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit205, label %.lr.ph.i.i.i.i.i, !llvm.loop !2438

.loopexit205:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa453.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !103
  %i.aj = load i64, ptr %1, align 8               ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.aj, 131072
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.b, !prof !159

bb.b:                                             ; preds = %.loopexit205
  %i.ak = and i64 %i.aj, 254
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.al, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !94, !nonnull !86, !noundef !86 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !94 ; 2 uses
  %i.ao = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1, !tbaa !169
  %i.ap = icmp slt i8 %i.ao, -1
  br i1 %i.ap, label %.lr.ph.i.i.i, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aq = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  %i.ar = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !169
  %i.av = icmp slt i8 %i.au, -1
  br i1 %i.av, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !31

.lr.ph:                                           ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c
  %.sroa.6.0.i.i.ph = phi ptr [ %i.am, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ %i.at, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ], [ %i.as, %.lr.ph.i.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !407
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !406 ; 2 uses
  %.not424.not = icmp eq ptr %i.bs, %i.bt
  br i1 %.not424.not, label %.lr.ph264.preheader, label %.lr.ph429

.lr.ph429:                                        ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit
  %i.bu = phi ptr [ %i.fe, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ %i.bt, %.lr.ph ]
  %.sroa.14.0240427 = phi ptr [ %.sroa.14.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ %.sroa.6.0.i.i.ph, %.lr.ph ] ; 3 uses
  %.sroa.0175.0241426 = phi ptr [ %.sroa.0175.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ %.sroa.0.0.i.i.ph, %.lr.ph ] ; 3 uses
  %storemerge242425 = phi i64 [ %i.fc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %.lr.ph429
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !106
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ax)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !406
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %storemerge242425 ; 2 uses
  %i.bx = load ptr, ptr %.sroa.14.0240427, align 8, !tbaa !390
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !413
  %i.ca = icmp ne ptr %i.bz, null
  %i.cb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ca)
          to label %.noexc73 unwind label %bb.s

.noexc73:                                         ; preds = %bb.e
  br i1 %i.cb, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc73
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.180, i32 noundef 234)
          to label %.noexc74 unwind label %bb.s

.noexc74:                                         ; preds = %bb.f
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.181, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc74
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.h

bb.g:                                             ; preds = %.noexc74
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc73
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !413
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !428
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !38

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  store ptr %i.ba, ptr %11, align 8, !tbaa !92, !alias.scope !2454
  store i64 0, ptr %i.bb, align 8, !tbaa !95, !alias.scope !2454
  store i8 0, ptr %i.ba, align 8, !tbaa !94, !alias.scope !2454
  %i.ch = load ptr, ptr %i.bc, align 8, !tbaa !171, !noalias !2454 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr %i.bd, align 8, !noalias !2454 ; 2 uses
  %i.cj = icmp ugt ptr %i.ch, %i.ci
  %.08.i.i.i.i = select i1 %i.cj, ptr %i.ch, ptr %i.ci ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i76 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i76, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !172, !noalias !2454 ; 2 uses
  %i.cl = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ck, i64 noundef %i.cn)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %11, align 8, !tbaa !91, !alias.scope !2454 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ba
  br i1 %i.cr, label %.body77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cs = load i64, ptr %i.ba, align 8, !tbaa !94, !alias.scope !2454
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #36
  br label %.body77

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cu = load ptr, ptr %9, align 8, !tbaa !102
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %storemerge242425 ; 9 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !91 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 4 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  %i.cz = load ptr, ptr %11, align 8, !tbaa !91   ; 6 uses
  %i.da = icmp eq ptr %i.cz, %i.ba                ; 2 uses
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.da, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.da, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = load i64, ptr %i.bb, align 8, !tbaa !95 ; 3 uses
  %i.dc = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.dc)
  %.not21.i = icmp eq ptr %11, %i.cv
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !159

bb.m:                                             ; preds = %bb.l
  switch i64 %i.db, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !94
  store i8 %i.dd, ptr %i.cw, align 1, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cz, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
end_hunk_0
begin_hunk_1_@_ZN7testing13PrintToStringIN4absl12lts_2026052613node_hash_mapIiiNS2_18container_internal19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !94
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #33
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !106
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !174
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.258, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !106
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.887", align 16   ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::NodeHashMapPolicy<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %class.anon.893, align 8            ; 5 uses
  %4 = alloca %"struct.absl::lts_20260526::container_internal::UniqueGenerator.806", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 15 uses
  %6 = alloca %"struct.std::pair.574", align 8    ; 11 uses
  %7 = alloca %"struct.std::pair.818", align 8    ; 4 uses
  %8 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 14 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %10 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 7 uses
  %11 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 7 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %15 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %16 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %21 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i64 1, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store i64 %i.a, ptr %i.f, align 8, !tbaa !432
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 %i.c, ptr %i.g, align 8, !tbaa !434
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !436
  invoke void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, i64 noundef 123)
          to label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader unwind label %bb.f

_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %27 = insertelement <2 x ptr> poison, ptr %6, i64 0
  %28 = insertelement <2 x ptr> %27, ptr %i.i, i64 1
  br label %bb.g

bb.b:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.m = load i64, ptr %i.h, align 8, !tbaa !436
  store i64 1, ptr %8, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.p = load <2 x i64>, ptr %i.f, align 8, !tbaa !93
  %i.q = load i64, ptr %i.f, align 8, !tbaa !432  ; 2 uses
  store <2 x i64> %i.p, ptr %i.n, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 %i.m, ptr %i.r, align 8, !tbaa !436
  %i.s = load i64, ptr %5, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.s, 131072
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i64 %i.q, ptr %10, align 8, !tbaa !432, !alias.scope !3681
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store i64 %i.q, ptr %11, align 8, !tbaa !432, !alias.scope !3682
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %8, ptr %3, align 8, !tbaa !529
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKSB_SB_EEEEEC1ERKSK_RKSJ_EUlPvPKvE_vJSP_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.m unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #32
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEED2Ev.exit112

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.0115 = phi i64 [ 0, %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader ], [ %i.af, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ELm64EvEclEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.574") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !3683
  store ptr %5, ptr %2, align 8, !tbaa !482, !noalias !3683
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !3684
  store <2 x ptr> %28, ptr %1, align 16, !tbaa !151, !alias.scope !3685, !noalias !3686
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOSF_EESO_IJOS9_EEEEESE_INSI_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.818") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !3684
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !3683
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.k
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.z = load i64, ptr %i.k, align 8, !tbaa !94
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !94
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #36
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.af = add nuw nsw i64 %.0115, 1               ; 2 uses
  %.not = icmp eq i64 %i.af, 10
  br i1 %.not, label %bb.b, label %bb.g, !llvm.loop !3670

bb.j:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn54 = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.cc

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.pre = load i64, ptr %i.f, align 8, !tbaa !432, !noalias !3687 ; 2 uses
  %.pre116 = load i64, ptr %i.n, align 8, !tbaa !432, !noalias !3688 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  store i64 %.pre, ptr %10, align 8, !tbaa !432, !alias.scope !3687
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  store i64 %.pre116, ptr %11, align 8, !tbaa !432, !alias.scope !3688
  %i.ai = icmp eq i64 %.pre, %.pre116
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal19StatefulTestingHashES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.274, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.p

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.aj = load i8, ptr %9, align 8, !tbaa !150, !range !85, !noundef !86
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.z, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ae

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.s, %bb.r
  %i.ap = phi ptr [ %i.ao, %bb.s ], [ @.str.160, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 201, ptr noundef %i.ap)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.aq = load ptr, ptr %12, align 8, !tbaa !153  ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit62

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn31 = phi { ptr, i32 } [ %i.aw, %bb.x ], [ %i.av, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.ax = load ptr, ptr %12, align 8, !tbaa !153  ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.y
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61, %bb.y, %bb.v
  %.pn31.pn = phi { ptr, i32 } [ %i.au, %bb.v ], [ %.pn31, %bb.y ], [ %.pn31, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  br label %bb.ae

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !151 ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i63, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !91 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !94
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !434, !noalias !3689 ; 2 uses
  store i64 %i.bi, ptr %15, align 8, !tbaa !434, !alias.scope !3689
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3690)
  %i.bj = load i64, ptr %i.o, align 8, !tbaa !434, !noalias !3690 ; 2 uses
  store i64 %i.bj, ptr %16, align 8, !tbaa !434, !alias.scope !3690
  %i.bk = icmp eq i64 %i.bi, %i.bj
end_hunk_1
begin_hunk_2_@_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_:bb.a
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !94
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %eh.lpad-body97, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !91   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !94
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20CopyConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20CopyConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.258, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20CopyConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20CopyConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20CopyConstructorAllocINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !106
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20CopyConstructorAllocINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20CopyConstructorAllocINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052618container_internal24CopyConstructorAllocTestINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEEEEvv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal24CopyConstructorAllocTestINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.std::pair.887", align 16   ; 5 uses
  %1 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::NodeHashMapPolicy<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::EmplaceDecomposable", align 8 ; 4 uses
  %2 = alloca %class.anon.893, align 8            ; 5 uses
  %3 = alloca %"struct.absl::lts_20260526::container_internal::UniqueGenerator.806", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 15 uses
  %5 = alloca %"struct.std::pair.574", align 8    ; 11 uses
  %6 = alloca %"struct.std::pair.818", align 8    ; 4 uses
  %7 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 14 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 7 uses
  %10 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 7 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %15 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %20 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i64 1, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store i64 %i.a, ptr %i.f, align 8, !tbaa !432
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 %i.c, ptr %i.g, align 8, !tbaa !434
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !436
  invoke void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, i64 noundef 123)
          to label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader unwind label %bb.f

_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %26 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %27 = insertelement <2 x ptr> %26, ptr %i.i, i64 1
  br label %bb.g

bb.b:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i64 1, ptr %7, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.o = load <2 x i64>, ptr %i.f, align 8, !tbaa !93
  %i.p = load i64, ptr %i.f, align 8, !tbaa !432  ; 2 uses
  store <2 x i64> %i.o, ptr %i.m, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store i64 11, ptr %i.q, align 8, !tbaa !436
  %i.r = load i64, ptr %4, align 8
  %.not.i.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store i64 %i.p, ptr %9, align 8, !tbaa !432, !alias.scope !3833
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i64 %i.p, ptr %10, align 8, !tbaa !432, !alias.scope !3834
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %7, ptr %2, align 8, !tbaa !529
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKSB_SB_EEEEEC1ERKSK_RKSJ_EUlPvPKvE_vJSP_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.m unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #32
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEED2Ev.exit113

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.0117 = phi i64 [ 0, %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader ], [ %i.ae, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ELm64EvEclEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.574") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !3835
  store ptr %4, ptr %1, align 8, !tbaa !482, !noalias !3835
  call void @llvm.lifetime.start.p0(ptr nonnull %0), !noalias !3836
  store <2 x ptr> %27, ptr %0, align 16, !tbaa !151, !alias.scope !3837, !noalias !3838
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOSF_EESO_IJOS9_EEEEESE_INSI_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.818") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0), !noalias !3836
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !3835
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.y = load i64, ptr %i.k, align 8, !tbaa !94
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = load ptr, ptr %5, align 8, !tbaa !91    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.l
  br i1 %i.ab, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !94
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ae = add nuw nsw i64 %.0117, 1               ; 2 uses
  %.not = icmp eq i64 %i.ae, 10
  br i1 %.not, label %bb.b, label %bb.g, !llvm.loop !3822

bb.j:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn54 = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.cc

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.pre = load i64, ptr %i.f, align 8, !tbaa !432, !noalias !3839 ; 2 uses
  %.pre118 = load i64, ptr %i.m, align 8, !tbaa !432, !noalias !3840 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  store i64 %.pre, ptr %9, align 8, !tbaa !432, !alias.scope !3839
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  store i64 %.pre118, ptr %10, align 8, !tbaa !432, !alias.scope !3840
  %i.ah = icmp eq i64 %.pre, %.pre118
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal19StatefulTestingHashES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.274, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.p

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.ai = load i8, ptr %8, align 8, !tbaa !150, !range !85, !noundef !86
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.z, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ae

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !91
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.s, %bb.r
  %i.ao = phi ptr [ %i.an, %bb.s ], [ @.str.160, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 220, ptr noundef %i.ao)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.ap = load ptr, ptr %11, align 8, !tbaa !153  ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit62

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn31 = phi { ptr, i32 } [ %i.av, %bb.x ], [ %i.au, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.aw = load ptr, ptr %11, align 8, !tbaa !153  ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.y
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !106
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61, %bb.y, %bb.v
  %.pn31.pn = phi { ptr, i32 } [ %i.at, %bb.v ], [ %.pn31, %bb.y ], [ %.pn31, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #33
  br label %bb.ae

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !151 ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i63, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !91 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !94
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3841)
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !434, !noalias !3841 ; 2 uses
  store i64 %i.bh, ptr %14, align 8, !tbaa !434, !alias.scope !3841
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  %i.bi = load i64, ptr %i.n, align 8, !tbaa !434, !noalias !3842 ; 2 uses
  store i64 %i.bi, ptr %15, align 8, !tbaa !434, !alias.scope !3842
  %i.bj = icmp eq i64 %i.bh, %i.bi
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:_ZN4absl12lts_2026052613node_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEECI2NS2_12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJS3_S4_S9_EEEEmRKS3_RKS4_RKS9_.exit.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.not.i.i.i.i114 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i114, label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit115, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !466
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %.pre to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ff) #36
  br label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit115

_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit115: ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn56.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEC2EOSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.512 = alloca %"struct.absl::lts_20260526::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  %.sroa.010.0.copyload = load i64, ptr %1, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.010.0.copyload, ptr %0, align 8
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <2 x i64>, ptr %i.a, align 8, !tbaa !93
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.b, align 8, !tbaa !436
  store i64 %i.f, ptr %i.e, align 8, !tbaa !436
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  store i64 1, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.258, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !106
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.887", align 16   ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::NodeHashMapPolicy<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %class.anon.893, align 8            ; 5 uses
  %4 = alloca %"struct.absl::lts_20260526::container_internal::UniqueGenerator.806", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 15 uses
  %6 = alloca %"struct.std::pair.574", align 8    ; 11 uses
  %7 = alloca %"struct.std::pair.818", align 8    ; 4 uses
  %8 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 12 uses
  %9 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 11 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %11 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 5 uses
  %12 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %17 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %21 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %22 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i64 1, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 %i.a, ptr %i.f, align 8, !tbaa !432
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 %i.c, ptr %i.g, align 8, !tbaa !434
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !436
  invoke void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, i64 noundef 123)
          to label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader unwind label %bb.g

_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %28 = insertelement <2 x ptr> poison, ptr %6, i64 0
  %29 = insertelement <2 x ptr> %28, ptr %i.i, i64 1
  br label %bb.h

bb.b:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.m = load i64, ptr %i.h, align 8, !tbaa !436
  store i64 1, ptr %8, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.o = load <2 x i64>, ptr %i.f, align 8, !tbaa !93
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.m, ptr %i.p, align 8, !tbaa !436
  %i.q = load i64, ptr %5, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.q, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %8, ptr %3, align 8, !tbaa !529
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKSB_SB_EEEEEC1ERKSK_RKSJ_EUlPvPKvE_vJSP_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #32
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEED2Ev.exit116

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.0119 = phi i64 [ 0, %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader ], [ %i.ad, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ELm64EvEclEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.574") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !3958
  store ptr %5, ptr %2, align 8, !tbaa !482, !noalias !3958
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !3959
  store <2 x ptr> %29, ptr %1, align 16, !tbaa !151, !alias.scope !3960, !noalias !3961
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOSF_EESO_IJOS9_EEEEESE_INSI_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.818") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !3959
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !3958
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.x = load i64, ptr %i.k, align 8, !tbaa !94
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.z = load ptr, ptr %6, align 8, !tbaa !91     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !94
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #36
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ad = add nuw nsw i64 %.0119, 1               ; 2 uses
  %.not = icmp eq i64 %i.ad, 10
  br i1 %.not, label %bb.b, label %bb.h, !llvm.loop !3945

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn56 = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.cg

_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit: ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEEC2EOSI_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3962)
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !432, !noalias !3962 ; 2 uses
  store i64 %i.ag, ptr %11, align 8, !tbaa !432, !alias.scope !3962
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3963)
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !432, !noalias !3963 ; 2 uses
  store i64 %i.ai, ptr %12, align 8, !tbaa !432, !alias.scope !3963
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.r

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal19StatefulTestingHashES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.274, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.ak = load i8, ptr %10, align 8, !tbaa !150, !range !85, !noundef !86
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ab, label %bb.s

bb.q:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEED2Ev.exit114

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.ag

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !91
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.ar = phi ptr [ %i.aq, %bb.u ], [ @.str.160, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 245, ptr noundef %i.ar)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.as = load ptr, ptr %13, align 8, !tbaa !153  ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.as, null
  br i1 %.not.i.i61, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.w
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !106
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit64

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn32 = phi { ptr, i32 } [ %i.ay, %bb.z ], [ %i.ax, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.az = load ptr, ptr %13, align 8, !tbaa !153  ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.az, null
  br i1 %.not.i.i62, label %_ZN7testing7MessageD2Ev.exit64, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %bb.aa
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !106
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.az) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit64

_ZN7testing7MessageD2Ev.exit64:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, %bb.aa, %bb.x
  %.pn32.pn = phi { ptr, i32 } [ %i.aw, %bb.x ], [ %.pn32, %bb.aa ], [ %.pn32, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #33
  br label %bb.ag

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !151 ; 4 uses
  %.not.i.i65 = icmp eq ptr %i.be, null
  br i1 %.not.i.i65, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !91 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 32) #36
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28move_elements_allocs_unequalEOSC_:bb.a
  %.sroa.014.1 = phi ptr [ %i.aw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbEOT_.exit ], [ %i.bc, %.lr.ph.i.i11 ]
  %.sroa.8.1 = phi ptr [ %i.ax, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbEOT_.exit ], [ %i.bd, %.lr.ph.i.i11 ]
  %i.bg = phi i8 [ %i.ay, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbEOT_.exit ], [ %i.be, %.lr.ph.i.i11 ]
  %i.bh = icmp eq i8 %i.bg, -1
  br i1 %i.bh, label %._crit_edge.loopexit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit, !prof !159, !llvm.loop !4074

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7deallocEv.exit: ; preds = %._crit_edge
  %i.bi = add nsw i64 %notmask.i.i, 8589934591
  %i.bj = or i64 %i.bi, %notmask.i.i
  %i.bk = icmp eq i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i64 %notmask.i.i, -8589934593
  call void @llvm.assume(i1 %i.bm)
  %i.bn = and i64 %i.v, 65536
  %.not.i.i.i = icmp ne i64 %i.bn, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !94
  %i.bp = xor i64 %notmask.i.i, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.bq, i64 noundef %i.bp, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i)
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7deallocEv.exit, %._crit_edge
  store i64 1, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret ptr %0
}

declare void @_ZN4absl12lts_2026052618container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20MoveConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20MoveConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 533)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.258, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !106
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20MoveConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20MoveConstructorAllocINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20MoveConstructorAllocINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !106
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20MoveConstructorAllocINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_20MoveConstructorAllocINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKSA_SA_EEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052618container_internal24MoveConstructorAllocTestINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEEEEvv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal24MoveConstructorAllocTestINS0_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.absl::lts_20260526::container_internal::CommonFields", align 8 ; 4 uses
  %1 = alloca %"struct.std::pair.887", align 16   ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::NodeHashMapPolicy<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, absl::lts_20260526::container_internal::StatefulTestingHash, absl::lts_20260526::container_internal::StatefulTestingEqual, absl::lts_20260526::container_internal::Alloc<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %class.anon.893, align 8            ; 5 uses
  %4 = alloca %"struct.absl::lts_20260526::container_internal::UniqueGenerator.806", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 15 uses
  %6 = alloca %"struct.std::pair.574", align 8    ; 11 uses
  %7 = alloca %"struct.std::pair.818", align 8    ; 4 uses
  %8 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 15 uses
  %9 = alloca %"class.absl::lts_20260526::node_hash_map.720", align 8 ; 14 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %11 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 5 uses
  %12 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingHash", align 8 ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %17 = alloca %"struct.absl::lts_20260526::container_internal::StatefulTestingEqual", align 8 ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %21 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %22 = alloca %"struct.absl::lts_20260526::container_internal::Alloc.747", align 8 ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i64 1, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 %i.a, ptr %i.f, align 8, !tbaa !432
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.g, align 8, !tbaa !434
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !436
  invoke void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, i64 noundef 123)
          to label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader unwind label %bb.g

_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %28 = insertelement <2 x ptr> poison, ptr %6, i64 0
  %29 = insertelement <2 x ptr> %28, ptr %i.i, i64 1
  br label %bb.h

bb.b:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.m = load i64, ptr %i.h, align 8, !tbaa !436  ; 2 uses
  store i64 1, ptr %8, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.f, align 8, !tbaa !432  ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !432
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !434  ; 2 uses
  store i64 %i.q, ptr %i.p, align 8, !tbaa !434
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 %i.m, ptr %i.r, align 8, !tbaa !436
  %i.s = load i64, ptr %5, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.s, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %8, ptr %3, align 8, !tbaa !529
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKSB_SB_EEEEEC1ERKSK_RKSJ_EUlPvPKvE_vJSP_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.pre = load i64, ptr %i.n, align 8, !tbaa !432
  %.pre122 = load i64, ptr %i.p, align 8, !tbaa !434
  %.pre123 = load i64, ptr %i.r, align 8, !tbaa !436
  br label %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #32
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEED2Ev.exit117

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.0121 = phi i64 [ 0, %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEECI2NS8_12raw_hash_setINS8_17NodeHashMapPolicyIS7_S7_EEJS9_SA_SF_EEEEmRKS9_RKSA_RKSF_.exit.preheader ], [ %i.af, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ELm64EvEclEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.574") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !4116
  store ptr %5, ptr %2, align 8, !tbaa !482, !noalias !4116
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !4117
  store <2 x ptr> %29, ptr %1, align 16, !tbaa !151, !alias.scope !4118, !noalias !4119
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOSF_EESO_IJOS9_EEEEESE_INSI_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.818") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !4117
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !4116
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.k
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.z = load i64, ptr %i.k, align 8, !tbaa !94
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !94
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #36
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.af = add nuw nsw i64 %.0121, 1               ; 2 uses
  %.not = icmp eq i64 %i.af, 10
  br i1 %.not, label %bb.b, label %bb.h, !llvm.loop !4103

bb.k:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn56 = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ci

_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit: ; preds = %bb.d, %bb.b
  %i.ai = phi i64 [ %.pre123, %bb.d ], [ %i.m, %bb.b ]
  %i.aj = phi i64 [ %.pre122, %bb.d ], [ %i.q, %bb.b ]
  %i.ak = phi i64 [ %.pre, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store i64 1, ptr %9, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !432
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !434
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 1, ptr %i.an, align 8, !tbaa !436
  %i.ao = icmp eq i64 %i.ai, 1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %bb.p

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_18container_internal19StatefulTestingHashENS8_20StatefulTestingEqualENS8_5AllocISt4pairIKS7_S7_EEEEC2ERKSG_.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEE28move_elements_allocs_unequalEOSI_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %._crit_edge unwind label %bb.s ; 0 uses

._crit_edge:                                      ; preds = %bb.o
  %.pre124 = load i64, ptr %i.al, align 8, !tbaa !432, !noalias !4120
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.n
  %i.aq = phi i64 [ %.pre124, %._crit_edge ], [ %i.ak, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !432, !noalias !4121 ; 2 uses
  store i64 %i.ar, ptr %11, align 8, !tbaa !432, !alias.scope !4121
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  store i64 %i.aq, ptr %12, align 8, !tbaa !432, !alias.scope !4120
  %i.as = icmp eq i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal19StatefulTestingHashES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.274, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.t

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.at = load i8, ptr %10, align 8, !tbaa !150, !range !85, !noundef !86
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.ad, label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKS9_S9_EEEEED2Ev.exit115

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.ai

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal19StatefulTestingHashES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.w, %bb.v
  %i.ba = phi ptr [ %i.az, %bb.w ], [ @.str.160, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 265, ptr noundef %i.ba)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.bb = load ptr, ptr %13, align 8, !tbaa !153  ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i62, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(128) %i.bb) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ad

bb.z:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit65

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn32 = phi { ptr, i32 } [ %i.bh, %bb.ab ], [ %i.bg, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.bi = load ptr, ptr %13, align 8, !tbaa !153  ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i63, label %_ZN7testing7MessageD2Ev.exit65, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.ac
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(128) %i.bi) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit65

_ZN7testing7MessageD2Ev.exit65:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %bb.ac, %bb.z
  %.pn32.pn = phi { ptr, i32 } [ %i.bf, %bb.z ], [ %.pn32, %bb.ac ], [ %.pn32, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #33
  br label %bb.ai
end_hunk_4
