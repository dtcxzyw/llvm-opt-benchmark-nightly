Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_rep_btree_test?download=true
inline.NumInlined: 12640
inline.NumDeleted: 3950
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !96
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !92    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !96
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.142, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !221   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #31, !inline_history !18
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !276
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !221   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #31, !inline_history !18
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.135, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.111, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !268
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.114, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.115, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !268
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !277
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !279
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.142, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !273
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !276
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !911

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.203", align 8   ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !273  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !276  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.149) #30
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !281
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !282
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !94
  store i8 0, ptr %i.q, align 8, !tbaa !96
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !913

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
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !94
  store i8 0, ptr %i.v, align 8, !tbaa !96
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !94
  store i8 0, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !94
  store i8 0, ptr %i.ab, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !94
  store i8 0, ptr %i.ae, align 8, !tbaa !96
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !284
  %i.aj = load ptr, ptr %1, align 8, !tbaa !287   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !288
  %.not202 = icmp eq i64 %i.al, 0
  br i1 %.not202, label %.critedge, label %.lr.ph

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
  %.047204 = phi ptr [ %i.aj, %.lr.ph ], [ %i.eh, %bb.w ] ; 6 uses
  %storemerge203 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %bb.w ] ; 8 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !273
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !276 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %.not62 = icmp eq i64 %storemerge203, %i.bn
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !228
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !91
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.an)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %storemerge203 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !268
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bt, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.114, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.115, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !268
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !289
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %.047204, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !30

_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  store ptr %i.aq, ptr %11, align 8, !tbaa !93, !alias.scope !927
  store i64 0, ptr %i.ar, align 8, !tbaa !94, !alias.scope !927
  store i8 0, ptr %i.aq, align 8, !tbaa !96, !alias.scope !927
  %i.bz = load ptr, ptr %i.as, align 8, !tbaa !234, !noalias !927 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.at, align 8, !noalias !927 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !235, !noalias !927 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !92, !alias.scope !927 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aq
  br i1 %i.cj, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ck = load i64, ptr %i.aq, align 8, !tbaa !96, !alias.scope !927
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #33
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cm = load ptr, ptr %9, align 8, !tbaa !281
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge203 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !92 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !92   ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.aq                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.ar, align 8, !tbaa !94 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !108

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ct, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !96
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !94
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !92
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !96
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !92
  %i.db = load i64, ptr %i.ar, align 8, !tbaa !94
  store i64 %i.db, ptr %i.da, align 8, !tbaa !94
  %i.dc = load i64, ptr %i.aq, align 8, !tbaa !96
  store i64 %i.dc, ptr %i.cp, align 8, !tbaa !96
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ConditionalMatcherINS0_9NeMatcherIPN4absl12lts_2026052613cord_internal12CordRepBtreeEEENS0_9EqMatcherIS8_EEEEEclIS8_EENS_15AssertionResultEPKcRKT_:bb.a
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.du, ptr %i.ai, align 8, !tbaa !91
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.du, i64 -24    ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr %i.ai, i64 %i.dx
  store ptr %i.dv, ptr %i.dy, align 8, !tbaa !91
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.dz, align 8, !tbaa !238
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ea) #31, !inline_history !236
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  store ptr %i.dg, ptr %9, align 8, !tbaa !91
  %i.eb = load i64, ptr %i.di, align 8
  %i.ec = getelementptr inbounds i8, ptr %9, i64 %i.eb
  store ptr %i.dh, ptr %i.ec, align 8, !tbaa !91
  store ptr %i.dl, ptr %i.n, align 8, !tbaa !91
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ed, align 8, !tbaa !91
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !92 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !96
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ed, align 8, !tbaa !91
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #31
  store ptr %i.du, ptr %9, align 8, !tbaa !91
  %i.el = load i64, ptr %i.dw, align 8
  %i.em = getelementptr inbounds i8, ptr %9, i64 %i.el
  store ptr %i.dv, ptr %i.em, align 8, !tbaa !91
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.en, align 8, !tbaa !238
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.eo) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ak

bb.ad:                                            ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.as
  br i1 %i.er, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ad, %bb.s
  %.sink = phi ptr [ %i.bg, %bb.s ], [ %i.eq, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.ep, %bb.ad ]
  %i.es = load i64, ptr %i.as, align 8, !tbaa !96
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.et) #33
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ad, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.ep, %bb.ad ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.aa
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.af
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.ev, %bb.af ], [ %i.cq, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.ew = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.bq
  br i1 %i.ex, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.w
  %.sink90 = phi ptr [ %i.ce, %bb.w ], [ %i.ew, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.cd, %bb.w ], [ %eh.lpad-body51, %.body50 ]
  %i.ey = load i64, ptr %i.bq, align 8, !tbaa !96
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %.sink90, i64 noundef %i.ez) #33
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.w
  %.pn14 = phi { ptr, i32 } [ %i.cd, %bb.w ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  br label %bb.ag

bb.ag:                                            ; preds = %.body46, %bb.ae
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.eu, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body43, %bb.q
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ag ], [ %.pn, %.body43 ], [ %i.aq, %bb.q ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.p
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ah ], [ %i.ap, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body35

.body35:                                          ; preds = %bb.o, %bb.j, %bb.ai
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.ai ], [ %i.ao, %bb.o ], [ %i.ae, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #31
  br label %bb.aj

bb.aj:                                            ; preds = %.body35, %bb.n
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.an, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

bb.ak:                                            ; preds = %bb.c, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEEE, i64 16), ptr %8, align 8, !tbaa !91
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEE8IsSharedEv.exit.i.i: ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !303
  %.not.i.i67 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEE8IsSharedEv.exit.i.i
  %i.fd = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.fe = atomicrmw sub ptr %i.fd, i32 1 acq_rel, align 4
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.am, label %_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !298
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !303
  %i.fj = load ptr, ptr %i.e, align 8, !tbaa !96
  invoke void %i.fi(ptr noundef %i.fj)
          to label %_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev.exit unwind label %bb.an, !inline_history !35

bb.an:                                            ; preds = %bb.am
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #34, !inline_history !304
  unreachable

_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev.exit: ; preds = %bb.ak, %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEE8IsSharedEv.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void

.body:                                            ; preds = %bb.d, %.body.i, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.aj ], [ %i.m, %bb.d ], [ %i.i, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEENS0_29PredicateFormatterFromMatcherIT_EESA_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::PredicateFormatterFromMatcher.332") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !370    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i, !prof !108

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
  %.pre = load ptr, ptr %1, align 8, !tbaa !374   ; 3 uses
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !374 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi14           ; 9 uses
  %i.m = icmp sgt i64 %i.l, 8                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !381

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit.thread, label %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit

_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.f

_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !291
  store ptr %i.o, ptr %i.k, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i.i

.thread:                                          ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit.thread, %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !369
  br label %bb.i

bb.f:                                             ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !1264

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEC2EOS7_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #32
          to label %.noexc1 unwind label %bb.k    ; 4 uses

.noexc1:                                          ; preds = %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !370
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !369
  br i1 %i.m, label %bb.g, label %bb.h, !prof !373

bb.g:                                             ; preds = %.noexc1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc1
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !291
  store ptr %i.y, ptr %i.t, align 8, !tbaa !291
  store ptr %i.v, ptr %i.u, align 8, !tbaa !368
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.z = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ]
  %i.aa = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !368
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #33
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEED2Ev.exit

_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEED2Ev.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIPN4absl12lts_2026052613cord_internal7CordRepEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i2, label %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEED2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #33
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEED2Ev.exit3

_ZN7testing8internal23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEED2Ev.exit3: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclINS4_4SpanIKS7_EEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::Matcher.190", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32, !noalias !1290 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !374, !noalias !1290
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !374, !noalias !1290
  invoke void @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEEC2IN9__gnu_cxx17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEET_SL_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %i.b, ptr %i.d)
          to label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605264SpanIKPNS2_13cord_internal7CordRepEEENS_8internal23ElementsAreArrayMatcherIS6_EEEENS_7MatcherIT_EERKT0_.exit unwind label %bb.b, !noalias !1290

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn21, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #33, !noalias !1290
  br label %common.resume

_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605264SpanIKPNS2_13cord_internal7CordRepEEENS_8internal23ElementsAreArrayMatcherIS6_EEEENS_7MatcherIT_EERKT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE9GetVTableINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEPKNSC_6VTableEvE7kVTable, ptr %i.f, align 8, !tbaa !257, !alias.scope !1290
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32, !noalias !1290 ; 3 uses
  store i32 1, ptr %i.h, align 4, !tbaa !242, !noalias !1290
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.i, align 8, !tbaa !259, !noalias !1290
  store ptr %i.h, ptr %i.g, align 8, !tbaa !96, !alias.scope !1290
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_202605264SpanIKPNS2_13cord_internal7CordRepEEEEE, i64 16), ptr %8, align 8, !tbaa !91, !alias.scope !1290
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !228
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !91
  %i.l = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605264SpanIKPNS2_13cord_internal7CordRepEEENS_8internal23ElementsAreArrayMatcherIS6_EEEENS_7MatcherIT_EERKT0_.exit
  br i1 %i.l, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.114, i32 noundef 234)
          to label %.noexc23 unwind label %bb.e

.noexc23:                                         ; preds = %.noexc3.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.115, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !257
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !261
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %7)
          to label %bb.c unwind label %bb.e, !inline_history !23

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.al unwind label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEE15MatchAndExplainESB_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %_ZN7testing15SafeMatcherCastIRKN4absl12lts_202605264SpanIKPNS2_13cord_internal7CordRepEEENS_8internal23ElementsAreArrayMatcherIS6_EEEENS_7MatcherIT_EERKT0_.exit, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.104, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !91
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !123
  %i.aa = or i32 %i.z, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %2, i64 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.h, %bb.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.105, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.106, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !257
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ag)
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.ah, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.114, i32 noundef 246)
          to label %.noexc34 unwind label %bb.p

.noexc34:                                         ; preds = %bb.j
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.115, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal22ElementsAreMatcherImplIRKSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS7_EEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !96
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !92    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !96
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.142, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !221   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #31, !inline_history !18
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !276
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS7_EEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !221   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #31, !inline_history !18
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.135, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.111, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !268
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.114, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.115, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !268
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !277
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !279
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.142, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !273
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !276
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1715

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS7_EEE15MatchAndExplainESB_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.203", align 8   ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !273  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !276  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.149) #30
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !281
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !282
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !94
  store i8 0, ptr %i.q, align 8, !tbaa !96
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1717

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
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !94
  store i8 0, ptr %i.v, align 8, !tbaa !96
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !94
  store i8 0, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !94
  store i8 0, ptr %i.ab, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !94
  store i8 0, ptr %i.ae, align 8, !tbaa !96
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !284
  %i.aj = load ptr, ptr %1, align 8, !tbaa !374   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !374
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
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !273
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !276 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %.not = icmp eq i64 %storemerge201, %i.bn
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !228
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !91
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.an)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %storemerge201 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !268
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc69 unwind label %bb.r

.noexc69:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bt, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.114, i32 noundef 234)
          to label %.noexc70 unwind label %bb.r

.noexc70:                                         ; preds = %bb.e
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.115, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc70
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.g

bb.f:                                             ; preds = %.noexc70
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc69
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !268
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !289
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0150.0200, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !30

_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  store ptr %i.aq, ptr %11, align 8, !tbaa !93, !alias.scope !1731
  store i64 0, ptr %i.ar, align 8, !tbaa !94, !alias.scope !1731
  store i8 0, ptr %i.aq, align 8, !tbaa !96, !alias.scope !1731
  %i.bz = load ptr, ptr %i.as, align 8, !tbaa !234, !noalias !1731 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.at, align 8, !noalias !1731 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !235, !noalias !1731 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !92, !alias.scope !1731 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aq
  br i1 %i.cj, label %.body72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ck = load i64, ptr %i.aq, align 8, !tbaa !96, !alias.scope !1731
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #33
  br label %.body72

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cm = load ptr, ptr %9, align 8, !tbaa !281
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge201 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !92 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !92   ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.aq                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.ar, align 8, !tbaa !94 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !108

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ct, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !96
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !94
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !92
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !96
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !92
  %i.db = load i64, ptr %i.ar, align 8, !tbaa !94
  store i64 %i.db, ptr %i.da, align 8, !tbaa !94
  %i.dc = load i64, ptr %i.aq, align 8, !tbaa !96
  store i64 %i.dc, ptr %i.cp, align 8, !tbaa !96
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
end_hunk_2
