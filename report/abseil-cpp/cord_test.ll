Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_test?download=true
inline.NumInlined: 17618
inline.NumDeleted: 3825
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN38CordTest_AdvanceAndReadOnDataEdge_Test13AddToRegistryEv:._crit_edge.i.i
  %i.bl = icmp eq ptr %i.bk, %i.ad
  br i1 %i.bl, label %_ZN7testing8internal12CodeLocationD2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.g
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !78
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit31

_ZN7testing8internal12CodeLocationD2Ev.exit31:    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  %i.bo = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.y
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit31
  %i.bq = load i64, ptr %i.y, align 8, !tbaa !78
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit31, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bi, %bb.f ], [ %i.bj, %_ZN7testing8internal12CodeLocationD2Ev.exit31 ] ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.m
  br i1 %i.bt, label %_ZN7testing8internal12CodeLocationD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.bu = load i64, ptr %i.m, align 8, !tbaa !78
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit37

_ZN7testing8internal12CodeLocationD2Ev.exit37:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  %i.bw = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.h
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit37
  %i.by = load i64, ptr %i.h, align 8, !tbaa !78
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.e ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit37 ]
  %i.ca = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.e
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !78
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN38CordTest_AdvanceAndReadOnDataEdge_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::mersenne_twister_engine", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 15 uses
  %5 = alloca %"class.absl::lts_20260526::Cord::CharIterator", align 8 ; 11 uses
  %6 = alloca %"class.absl::lts_20260526::Cord::CharIterator", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 29 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.absl::lts_20260526::Cord::CharIterator", align 8 ; 5 uses
  %17 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.d = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !86
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  store i64 %i.e, ptr %1, align 8, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.e, %bb.a ], [ %i.p, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.q, %bb.c ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %1, i64 %.011.i.i
  %i.g = lshr i64 %store_forwarded, 62
  %i.h = xor i64 %i.g, %store_forwarded
  %i.i = mul i64 %i.h, 6364136223846793005
  %i.j = add i64 %i.i, %.011.i.i                  ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !77
  %i.k = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.k, 312
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr [8 x i8], ptr %1, i64 %i.k
  %i.m = lshr i64 %i.j, 62
  %i.n = xor i64 %i.m, %i.j
  %i.o = mul i64 %i.n, 6364136223846793005
  %i.p = add i64 %i.o, %i.k                       ; 2 uses
  store i64 %i.p, ptr %i.l, align 8, !tbaa !77
  %i.q = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store i64 312, ptr %i.r, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call fastcc void @_ZL21RandomLowercaseStringB5cxx11PSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEm(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %1, i64 noundef 2000)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2026052613cord_internal17cordz_next_sampleE) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit284
  %i.bb = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !78
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret void

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, %_ZN4absl12lts_202605264CordD2Ev.exit284
  %.not.a = phi i1 [ true, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit ], [ false, %_ZN4absl12lts_202605264CordD2Ev.exit284 ] ; 2 uses
  %.0.idx512.sroa.phi.sroa.speculated = phi i1 [ false, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit ], [ true, %_ZN4absl12lts_202605264CordD2Ev.exit284 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.bg = select i1 %.not.a, ptr @.str.395, ptr @.str.396
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.1, i32 noundef 2489, ptr noundef nonnull %i.bg)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.bh = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !76  ; 3 uses
  br i1 %.not.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.bi, ptr %i.bh, i32 noundef 9)
          to label %bb.l unwind label %bb.r

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !1555
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.bk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #39
          to label %.noexc.i unwind label %bb.k, !noalias !1555 ; 4 uses

.noexc.i:                                         ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 2, ptr %i.bl, align 4, !tbaa !118, !noalias !1555
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr @"_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZN38CordTest_AdvanceAndReadOnDataEdge_Test8TestBodyEvE3$_0E7ReleaseEPNS1_15CordRepExternalE", ptr %i.bm, align 8, !tbaa !124, !noalias !1555
  invoke void @_ZN4absl12lts_2026052613cord_internal25InitializeCordRepExternalESt17basic_string_viewIcSt11char_traitsIcEEPNS1_15CordRepExternalE(i64 %i.bi, ptr %i.bh, ptr noundef nonnull %i.bk)
          to label %"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN38CordTest_AdvanceAndReadOnDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i" unwind label %bb.k, !noalias !1555

"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN38CordTest_AdvanceAndReadOnDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i": ; preds = %.noexc.i
  store ptr %i.bk, ptr %i.t, align 8, !tbaa !78, !alias.scope !1555
  store i64 1, ptr %4, align 8, !tbaa !78, !alias.scope !1555
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !126, !noalias !1555 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 1
  br i1 %i.bo, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i.i, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i, !prof !127

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i.i: ; preds = %"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN38CordTest_AdvanceAndReadOnDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i"
  %i.bp = add nsw i64 %i.bn, -1
  store i64 %i.bp, ptr %i.u, align 8, !tbaa !126, !noalias !1555
  br label %bb.l

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i: ; preds = %"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN38CordTest_AdvanceAndReadOnDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i"
  %i.bq = invoke noundef i64 @_ZN4absl12lts_2026052613cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %.noexc8.i unwind label %bb.k, !noalias !1555 ; 2 uses

.noexc8.i:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %bb.j, label %bb.l, !prof !128

bb.j:                                             ; preds = %.noexc8.i
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 14, i64 noundef %i.bq)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i, %.noexc.i, %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #38
  br label %.body

bb.l:                                             ; preds = %bb.g, %bb.h, %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i.i, %.noexc8.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  invoke void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  invoke void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit96 unwind label %bb.t

_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit96: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(152) %6, i64 152, i1 false), !tbaa.struct !153
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZN4absl12lts_202605264Cord13ChunkIterator19AdvanceAndReadBytesEm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %7, ptr noundef nonnull align 8 dereferenceable(152) %5, i64 noundef 2000)
          to label %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit unwind label %bb.u

_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit: ; preds = %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.bt = load ptr, ptr %2, align 8, !tbaa !74, !noalias !1556
  %i.bu = load i64, ptr %i.s, align 8, !tbaa !76, !noalias !1556 ; 3 uses
  %i.bv = load i8, ptr %7, align 8, !tbaa !78, !noalias !1556 ; 2 uses
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit
  %i.bx = load ptr, ptr %i.v, align 8, !tbaa !78, !noalias !1556
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !129, !noalias !1556
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i

bb.o:                                             ; preds = %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit
  %i.bz = sext i8 %i.bv to i64
  %i.ca = lshr exact i64 %i.bz, 1
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i

_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i:   ; preds = %bb.o, %bb.n
  %i.cb = phi i64 [ %i.by, %bb.n ], [ %i.ca, %bb.o ]
  %.not.i.i.i = icmp eq i64 %i.cb, %i.bu
  br i1 %.not.i.i.i, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i

_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i
  %i.cc = invoke noundef zeroext i1 @_ZNK4absl12lts_202605264Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %i.bu, ptr %i.bt, i64 noundef %i.bu)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i
  br i1 %i.cc, label %bb.p, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i

bb.p:                                             ; preds = %.noexc
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit unwind label %bb.v

_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i: ; preds = %.noexc, %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.371, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit unwind label %bb.v

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit: ; preds = %bb.p, %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i
  %i.cd = load i8, ptr %8, align 8, !tbaa !110, !range !111, !noundef !112
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.af, label %bb.w

bb.q:                                             ; preds = %bb.e
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.r:                                             ; preds = %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.l
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.t:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.fg

bb.u:                                             ; preds = %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit96
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.v:                                             ; preds = %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i, %bb.p, %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.cl = load ptr, ptr %i.w, align 8, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.y, %bb.x
  %i.cn = phi ptr [ %i.cm, %bb.y ], [ @.str.57, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2501, ptr noundef %i.cn)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.co = load ptr, ptr %9, align 8, !tbaa !115   ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.co, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !73
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit102

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #38
end_hunk_0
begin_hunk_1_@_ZN38CordTest_AdvanceAndReadOnDataEdge_Test8TestBodyEv:bb.a
  %.not.i.i259 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i259, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !74 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260: ; preds = %bb.el
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !78
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i260
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef 32) #40
  br label %bb.em

bb.em:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i261, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  %i.nl = load i64, ptr %i.x, align 8, !tbaa !150
  %i.nm = icmp eq i64 %i.nl, 0                    ; 2 uses
  %i.nn = zext i1 %i.nm to i8
  store i8 %i.nn, ptr %42, align 8, !tbaa !110
  store ptr null, ptr %i.aw, align 8, !tbaa !133
  store i8 1, ptr %i.ax, align 8, !tbaa !135
  br i1 %i.nm, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit282, label %bb.eo

bb.en:                                            ; preds = %_ZN7testing7MessageD2Ev.exit258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %_ZN7testing7MessageD2Ev.exit258 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %bb.fe

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.ep unwind label %bb.et

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull @.str.398, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.eq unwind label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.no = load ptr, ptr %46, align 8, !tbaa !74
  %i.np = load i64, ptr %i.ay, align 8, !tbaa !76
  store i64 %i.np, ptr %45, align 8
  store ptr %i.no, ptr %i.az, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef 1, i64 63, ptr nonnull @.str.1, i32 noundef 2515, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %45)
          to label %bb.er unwind label %bb.ev

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.es unwind label %bb.ew

bb.es:                                            ; preds = %bb.er
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #38
  %i.nq = load ptr, ptr %46, align 8, !tbaa !74   ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.ba
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.es
  %i.ns = load i64, ptr %i.ba, align 8, !tbaa !78
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  %i.nu = load ptr, ptr %43, align 8, !tbaa !115  ; 3 uses
  %.not.i.i269 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i269, label %bb.ey, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i270

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !73
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(128) %i.nu) #38, !inline_history !2
  br label %bb.ey

bb.et:                                            ; preds = %bb.eo
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit277

bb.eu:                                            ; preds = %bb.ep
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

bb.ev:                                            ; preds = %bb.eq
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.er
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #38
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pn84 = phi { ptr, i32 } [ %i.ob, %bb.ew ], [ %i.oa, %bb.ev ] ; 2 uses
  %i.oc = load ptr, ptr %46, align 8, !tbaa !74   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.ba
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %bb.ex
  %i.oe = load i64, ptr %i.ba, align 8, !tbaa !78
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272, %bb.eu
  %.pn84.pn = phi { ptr, i32 } [ %i.nz, %bb.eu ], [ %.pn84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %.pn84, %bb.ex ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  %i.og = load ptr, ptr %43, align 8, !tbaa !115  ; 3 uses
  %.not.i.i275 = icmp eq ptr %i.og, null
  br i1 %.not.i.i275, label %_ZN7testing7MessageD2Ev.exit277, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !73
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(128) %i.og) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit277

_ZN7testing7MessageD2Ev.exit277:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %bb.et
  %.pn84.pn.pn = phi { ptr, i32 } [ %i.ny, %bb.et ], [ %.pn84.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.pn84.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %42) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  br label %bb.fe

bb.ey:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  %.pr326 = load ptr, ptr %i.aw, align 8, !tbaa !113 ; 4 uses
  %.not.i.i.i278 = icmp eq ptr %.pr326, null
  br i1 %.not.i.i.i278, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit282, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ok = load ptr, ptr %.pr326, align 8, !tbaa !74 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.pr326, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i279: ; preds = %bb.ez
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !78
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i280

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i280: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i279
  call void @_ZdlPvm(ptr noundef nonnull %.pr326, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit282

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit282: ; preds = %bb.em, %bb.ey, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  %i.op = load i8, ptr %7, align 8, !tbaa !78
  %i.oq = trunc i8 %i.op to i1
  br i1 %i.oq, label %bb.fa, label %_ZN4absl12lts_202605264CordD2Ev.exit283

bb.fa:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit282
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit283 unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit283:          ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit282, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.ot = load i8, ptr %4, align 8, !tbaa !78
  %i.ou = trunc i8 %i.ot to i1
  br i1 %i.ou, label %bb.fc, label %_ZN4absl12lts_202605264CordD2Ev.exit284

bb.fc:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit283
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit284 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  call void @__clang_call_terminate(ptr %i.ow) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit284:          ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit283, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br i1 %.0.idx512.sroa.phi.sroa.speculated, label %bb.d, label %bb.e

bb.fe:                                            ; preds = %_ZN7testing7MessageD2Ev.exit277, %bb.en, %bb.dz, %_ZN7testing7MessageD2Ev.exit220, %bb.dd, %bb.cp, %_ZN7testing7MessageD2Ev.exit164, %bb.bt, %bb.be, %bb.bd, %_ZN7testing7MessageD2Ev.exit117, %bb.ai
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn, %_ZN7testing7MessageD2Ev.exit277 ], [ %.pn80.pn.pn, %bb.en ], [ %i.ml, %bb.dz ], [ %.pn73.pn.pn, %_ZN7testing7MessageD2Ev.exit220 ], [ %.pn69.pn.pn, %bb.dd ], [ %i.ja, %bb.cp ], [ %.pn62.pn.pn, %_ZN7testing7MessageD2Ev.exit164 ], [ %.pn58.pn.pn, %bb.bt ], [ %i.fo, %bb.be ], [ %i.fn, %bb.bd ], [ %.pn51.pn.pn, %_ZN7testing7MessageD2Ev.exit117 ], [ %.pn.pn.pn, %bb.ai ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #38
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.u
  %.pn84.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn, %bb.fe ], [ %i.cj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.t, %bb.s
  %.pn84.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn, %bb.ff ], [ %i.ci, %bb.t ], [ %i.ch, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #38
  br label %.body

.body:                                            ; preds = %bb.k, %bb.fg, %bb.r
  %.pn84.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn, %bb.fg ], [ %i.cg, %bb.r ], [ %i.bs, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #38
  br label %bb.fh

bb.fh:                                            ; preds = %.body, %bb.q
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.cf, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.ox = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %bb.fh
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !78
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %.pn84.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %3, null
  %i.b = select i1 %.not, ptr @.str.899, ptr %3   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !75
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.d, ptr %i.a, align 8, !tbaa !77
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !74
  %i.g = load i64, ptr %i.a, align 8, !tbaa !77
  store i64 %i.g, ptr %i.c, align 8, !tbaa !78
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !78
  store i8 %i.i, ptr %i.h, align 1, !tbaa !78
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !76
  %i.l = load ptr, ptr %4, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.c, align 8, !tbaa !78
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.u = load i64, ptr %i.c, align 8, !tbaa !78
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %i.r
}

; Function Attrs: nounwind
declare void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test13AddToRegistryEv() local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = tail call noundef ptr @_ZN7testing8UnitTest11GetInstanceEv()
  %i.d = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN7testing8UnitTest27parameterized_test_registryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !75
  store i64 8391161943858245443, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 63, ptr %i.b, align 8, !tbaa !77
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc11 unwind label %bb.e   ; 3 uses

.noexc11:                                         ; preds = %._crit_edge.i.i
  store ptr %i.i, ptr %2, align 8, !tbaa !74
  %i.j = load i64, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.i, ptr noundef nonnull align 1 dereferenceable(63) @.str.1, i64 63, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !75
  %i.n = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %.noexc11
  %i.p = load i64, ptr %i.k, align 8, !tbaa !76   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.r, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc11
  store ptr %i.n, ptr %1, align 8, !tbaa !74
  %i.s = load i64, ptr %i.h, align 8, !tbaa !78
  store i64 %i.s, ptr %i.m, align 8, !tbaa !78
  %.pre = load i64, ptr %i.k, align 8, !tbaa !76
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.a ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !76
  store ptr %i.h, ptr %2, align 8, !tbaa !74
  store i64 0, ptr %i.k, align 8, !tbaa !76
  store i8 0, ptr %i.h, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2519, ptr %i.v, align 8, !tbaa !80
  %i.w = invoke noundef ptr @_ZN7testing8internal30ParameterizedTestSuiteRegistry25GetTestSuitePatternHolderI8CordTestEEPNS0_26ParameterizedTestSuiteInfoIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.x = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc.i14 unwind label %bb.f ; 2 uses

.noexc.i14:                                       ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test13AddToRegistryEv:._crit_edge.i.i
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit31

_ZN7testing8internal12CodeLocationD2Ev.exit31:    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  %i.bo = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.y
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit31
  %i.bq = load i64, ptr %i.y, align 8, !tbaa !78
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit31, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bi, %bb.f ], [ %i.bj, %_ZN7testing8internal12CodeLocationD2Ev.exit31 ] ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.m
  br i1 %i.bt, label %_ZN7testing8internal12CodeLocationD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.bu = load i64, ptr %i.m, align 8, !tbaa !78
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit37

_ZN7testing8internal12CodeLocationD2Ev.exit37:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  %i.bw = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.h
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit37
  %i.by = load i64, ptr %i.h, align 8, !tbaa !78
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.e ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit37 ]
  %i.ca = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.e
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !78
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::mersenne_twister_engine", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 19 uses
  %5 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.absl::lts_20260526::Cord::CharIterator", align 8 ; 11 uses
  %8 = alloca %"class.absl::lts_20260526::Cord::CharIterator", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 29 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.absl::lts_20260526::Cord::CharIterator", align 8 ; 5 uses
  %19 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %45 = alloca %"class.testing::Message", align 8 ; 7 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %47 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.e = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !86
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  store i64 %i.f, ptr %1, align 8, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.f, %bb.a ], [ %i.q, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.r, %bb.c ] ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %1, i64 %.011.i.i
  %i.h = lshr i64 %store_forwarded, 62
  %i.i = xor i64 %i.h, %store_forwarded
  %i.j = mul i64 %i.i, 6364136223846793005
  %i.k = add i64 %i.j, %.011.i.i                  ; 3 uses
  store i64 %i.k, ptr %i.g, align 8, !tbaa !77
  %i.l = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, 312
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr [8 x i8], ptr %1, i64 %i.l
  %i.n = lshr i64 %i.k, 62
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, %i.l                       ; 2 uses
  store i64 %i.q, ptr %i.m, align 8, !tbaa !77
  %i.r = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store i64 312, ptr %i.s, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call fastcc void @_ZL21RandomLowercaseStringB5cxx11PSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEm(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %1, i64 noundef 2500)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2026052613cord_internal17cordz_next_sampleE) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit304
  %i.be = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !78
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret void

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, %_ZN4absl12lts_202605264CordD2Ev.exit304
  %.not.a = phi i1 [ true, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit ], [ false, %_ZN4absl12lts_202605264CordD2Ev.exit304 ] ; 2 uses
  %.0.idx690.sroa.phi.sroa.speculated = phi i1 [ false, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit ], [ true, %_ZN4absl12lts_202605264CordD2Ev.exit304 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.bj = select i1 %.not.a, ptr @.str.395, ptr @.str.396
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.1, i32 noundef 2523, ptr noundef nonnull %i.bj)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.bk = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.bl = load i64, ptr %i.t, align 8, !tbaa !76  ; 3 uses
  br i1 %.not.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.bl, ptr %i.bk, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.x

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !1589
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.bn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #39
          to label %.noexc.i unwind label %bb.k, !noalias !1589 ; 4 uses

.noexc.i:                                         ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 2, ptr %i.bo, align 4, !tbaa !118, !noalias !1589
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr @"_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test8TestBodyEvE3$_0E7ReleaseEPNS1_15CordRepExternalE", ptr %i.bp, align 8, !tbaa !124, !noalias !1589
  invoke void @_ZN4absl12lts_2026052613cord_internal25InitializeCordRepExternalESt17basic_string_viewIcSt11char_traitsIcEEPNS1_15CordRepExternalE(i64 %i.bl, ptr %i.bk, ptr noundef nonnull %i.bn)
          to label %"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i" unwind label %bb.k, !noalias !1589

"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i": ; preds = %.noexc.i
  store ptr %i.bn, ptr %i.u, align 8, !tbaa !78, !alias.scope !1589
  store i64 1, ptr %4, align 8, !tbaa !78, !alias.scope !1589
  %i.bq = load i64, ptr %i.v, align 8, !tbaa !126, !noalias !1589 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i.i, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i, !prof !127

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i.i: ; preds = %"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i"
  %i.bs = add nsw i64 %i.bq, -1
  store i64 %i.bs, ptr %i.v, align 8, !tbaa !126, !noalias !1589
  br label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i: ; preds = %"_ZN4absl12lts_2026052613cord_internal14NewExternalRepIZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test8TestBodyEvE3$_0EEPNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit.i"
  %i.bt = invoke noundef i64 @_ZN4absl12lts_2026052613cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %.noexc8.i unwind label %bb.k, !noalias !1589 ; 2 uses

.noexc8.i:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !128

bb.j:                                             ; preds = %.noexc8.i
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 14, i64 noundef %i.bt)
          to label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i.i, %.noexc.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #38
  br label %.body

_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.j, %.noexc8.i, %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  invoke void @_ZNK4absl12lts_202605264Cord7SubcordEmm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 200, i64 noundef 2000)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bw = load i8, ptr %4, align 8, !tbaa !78
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_202605264Cord9InlineRep9UnrefTreeEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !132
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.ca = load i64, ptr %i.t, align 8, !tbaa !76, !noalias !1590 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 200
  br i1 %i.cb, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.o:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.749, ptr noundef nonnull @.str.993, i64 noundef 200, i64 noundef %i.ca) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  store ptr %i.w, ptr %6, align 8, !tbaa !75, !alias.scope !1590
  %i.cc = load ptr, ptr %2, align 8, !tbaa !74, !noalias !1590
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 200 ; 2 uses
  %i.ce = add i64 %i.ca, -200                     ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 2000) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38, !noalias !1590
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !77, !noalias !1590
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc100:                                        ; preds = %.noexc10.i.i
  store ptr %i.cg, ptr %6, align 8, !tbaa !74, !alias.scope !1590
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1590
  store i64 %i.ch, ptr %i.w, align 8, !tbaa !78, !alias.scope !1590
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ci = phi ptr [ %i.cg, %.noexc100 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !78
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !78
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr nonnull align 1 %i.cd, i64 %spec.select.i.i.i, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i, %bb.p, %bb.q
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1590 ; 2 uses
  store i64 %i.ck, ptr %i.x, align 8, !tbaa !76, !alias.scope !1590
  %i.cl = load ptr, ptr %6, align 8, !tbaa !74, !alias.scope !1590
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38, !noalias !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit103 unwind label %bb.aa

_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit103: ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull align 8 dereferenceable(152) %8, i64 152, i1 false), !tbaa.struct !153
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZN4absl12lts_202605264Cord13ChunkIterator19AdvanceAndReadBytesEm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %9, ptr noundef nonnull align 8 dereferenceable(152) %7, i64 noundef 2000)
          to label %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit unwind label %bb.ab

_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit: ; preds = %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.cn = load ptr, ptr %6, align 8, !tbaa !74, !noalias !1591
  %i.co = load i64, ptr %i.x, align 8, !tbaa !76, !noalias !1591 ; 3 uses
  %i.cp = load i8, ptr %9, align 8, !tbaa !78, !noalias !1591 ; 2 uses
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !78, !noalias !1591
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !129, !noalias !1591
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i

bb.u:                                             ; preds = %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit
  %i.ct = sext i8 %i.cp to i64
  %i.cu = lshr exact i64 %i.ct, 1
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i

_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i:   ; preds = %bb.u, %bb.t
  %i.cv = phi i64 [ %i.cs, %bb.t ], [ %i.cu, %bb.u ]
  %.not.i.i.i = icmp eq i64 %i.cv, %i.co
  br i1 %.not.i.i.i, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i

_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i
  %i.cw = invoke noundef zeroext i1 @_ZNK4absl12lts_202605264Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 %i.co, ptr %i.cn, i64 noundef %i.co)
          to label %.noexc105 unwind label %bb.ac

.noexc105:                                        ; preds = %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i
  br i1 %i.cw, label %bb.v, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i

bb.v:                                             ; preds = %.noexc105
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit unwind label %bb.ac

_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i: ; preds = %.noexc105, %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.403, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit unwind label %bb.ac

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit: ; preds = %bb.v, %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i
  %i.cx = load i8, ptr %10, align 8, !tbaa !110, !range !111, !noundef !112
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.am, label %bb.ad

bb.w:                                             ; preds = %bb.e
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.x:                                             ; preds = %bb.g
  %i.da = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN47CordTest_AdvanceAndReadOnSubstringDataEdge_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef 32) #40
  br label %bb.et

bb.et:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38
  %i.og = load i64, ptr %i.aa, align 8, !tbaa !150
  %i.oh = icmp eq i64 %i.og, 0                    ; 2 uses
  %i.oi = zext i1 %i.oh to i8
  store i8 %i.oi, ptr %44, align 8, !tbaa !110
  store ptr null, ptr %i.az, align 8, !tbaa !133
  store i8 1, ptr %i.ba, align 8, !tbaa !135
  br i1 %i.oh, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit299, label %bb.ev

bb.eu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit275 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  br label %bb.fl

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.ew unwind label %bb.fa

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull @.str.398, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.oj = load ptr, ptr %48, align 8, !tbaa !74
  %i.ok = load i64, ptr %i.bb, align 8, !tbaa !76
  store i64 %i.ok, ptr %47, align 8
  store ptr %i.oj, ptr %i.bc, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %46, i32 noundef 1, i64 63, ptr nonnull @.str.1, i32 noundef 2552, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %47)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.ez unwind label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #38
  %i.ol = load ptr, ptr %48, align 8, !tbaa !74   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.bd
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.ez
  %i.on = load i64, ptr %i.bd, align 8, !tbaa !78
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  %i.op = load ptr, ptr %45, align 8, !tbaa !115  ; 3 uses
  %.not.i.i286 = icmp eq ptr %i.op, null
  br i1 %.not.i.i286, label %bb.ff, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i287

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !73
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(128) %i.op) #38, !inline_history !2
  br label %bb.ff

bb.fa:                                            ; preds = %bb.ev
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit294

bb.fb:                                            ; preds = %bb.ew
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

bb.fc:                                            ; preds = %bb.ex
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fd:                                            ; preds = %bb.ey
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #38
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.pn86 = phi { ptr, i32 } [ %i.ow, %bb.fd ], [ %i.ov, %bb.fc ] ; 2 uses
  %i.ox = load ptr, ptr %48, align 8, !tbaa !74   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.bd
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.fe
  %i.oz = load i64, ptr %i.bd, align 8, !tbaa !78
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %bb.fb
  %.pn86.pn = phi { ptr, i32 } [ %i.ou, %bb.fb ], [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.pn86, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  %i.pb = load ptr, ptr %45, align 8, !tbaa !115  ; 3 uses
  %.not.i.i292 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i292, label %_ZN7testing7MessageD2Ev.exit294, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !73
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(128) %i.pb) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit294

_ZN7testing7MessageD2Ev.exit294:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %bb.fa
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.ot, %bb.fa ], [ %.pn86.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.pn86.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %44) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  br label %bb.fl

bb.ff:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  %.pr349 = load ptr, ptr %i.az, align 8, !tbaa !113 ; 4 uses
  %.not.i.i.i295 = icmp eq ptr %.pr349, null
  br i1 %.not.i.i.i295, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit299, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.pf = load ptr, ptr %.pr349, align 8, !tbaa !74 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.pr349, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i296: ; preds = %bb.fg
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !78
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i297

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i297: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i296
  call void @_ZdlPvm(ptr noundef nonnull %.pr349, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit299

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit299: ; preds = %bb.et, %bb.ff, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  %i.pk = load i8, ptr %9, align 8, !tbaa !78
  %i.pl = trunc i8 %i.pk to i1
  br i1 %i.pl, label %bb.fh, label %_ZN4absl12lts_202605264CordD2Ev.exit300

bb.fh:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit299
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit300 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.pm = landingpad { ptr, i32 }
          catch ptr null
  %i.pn = extractvalue { ptr, i32 } %i.pm, 0
  call void @__clang_call_terminate(ptr %i.pn) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit300:          ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit299, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.po = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.w
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit300
  %i.pq = load i64, ptr %i.w, align 8, !tbaa !78
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.ps = load i8, ptr %4, align 8, !tbaa !78
  %i.pt = trunc i8 %i.ps to i1
  br i1 %i.pt, label %bb.fj, label %_ZN4absl12lts_202605264CordD2Ev.exit304

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit304 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit304:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br i1 %.0.idx690.sroa.phi.sroa.speculated, label %bb.d, label %bb.e

bb.fl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit294, %bb.eu, %bb.eg, %_ZN7testing7MessageD2Ev.exit237, %bb.dk, %bb.cw, %_ZN7testing7MessageD2Ev.exit180, %bb.ca, %bb.bl, %bb.bk, %_ZN7testing7MessageD2Ev.exit126, %bb.ap
  %.pn86.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %_ZN7testing7MessageD2Ev.exit294 ], [ %.pn82.pn.pn, %bb.eu ], [ %i.ng, %bb.eg ], [ %.pn75.pn.pn, %_ZN7testing7MessageD2Ev.exit237 ], [ %.pn71.pn.pn, %bb.dk ], [ %i.jv, %bb.cw ], [ %.pn64.pn.pn, %_ZN7testing7MessageD2Ev.exit180 ], [ %.pn60.pn.pn, %bb.ca ], [ %i.gj, %bb.bl ], [ %i.gi, %bb.bk ], [ %.pn53.pn.pn, %_ZN7testing7MessageD2Ev.exit126 ], [ %.pn.pn.pn, %bb.ap ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #38
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.ab
  %.pn86.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn, %bb.fl ], [ %i.de, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.aa, %bb.z
  %.pn86.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn, %bb.fm ], [ %i.dd, %bb.aa ], [ %i.dc, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.pw = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.w
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.fn
  %i.py = load i64, ptr %i.w, align 8, !tbaa !78
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.fn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  %.pn86.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305 ], [ %lpad.loopexit.split-lp1059, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn86.pn.pn.pn.pn.pn.pn, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %bb.y
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %i.db, %bb.y ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #38
  br label %.body

.body:                                            ; preds = %bb.k, %bb.fo, %bb.x
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fo ], [ %i.da, %bb.x ], [ %i.bv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #38
  br label %bb.fp

bb.fp:                                            ; preds = %.body, %bb.w
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.cz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.qa = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.fp
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !78
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN32CordTest_CharIteratorTraits_Test13AddToRegistryEv() local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = tail call noundef ptr @_ZN7testing8UnitTest11GetInstanceEv()
  %i.d = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN7testing8UnitTest27parameterized_test_registryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !75
  store i64 8391161943858245443, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 63, ptr %i.b, align 8, !tbaa !77
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc11 unwind label %bb.e   ; 3 uses

.noexc11:                                         ; preds = %._crit_edge.i.i
  store ptr %i.i, ptr %2, align 8, !tbaa !74
  %i.j = load i64, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.i, ptr noundef nonnull align 1 dereferenceable(63) @.str.1, i64 63, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !75
  %i.n = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %.noexc11
  %i.p = load i64, ptr %i.k, align 8, !tbaa !76   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.r, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc11
  store ptr %i.n, ptr %1, align 8, !tbaa !74
  %i.s = load i64, ptr %i.h, align 8, !tbaa !78
  store i64 %i.s, ptr %i.m, align 8, !tbaa !78
  %.pre = load i64, ptr %i.k, align 8, !tbaa !76
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.a ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !76
  store ptr %i.h, ptr %2, align 8, !tbaa !74
  store i64 0, ptr %i.k, align 8, !tbaa !76
  store i8 0, ptr %i.h, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2556, ptr %i.v, align 8, !tbaa !80
  %i.w = invoke noundef ptr @_ZN7testing8internal30ParameterizedTestSuiteRegistry25GetTestSuitePatternHolderI8CordTestEEPNS0_26ParameterizedTestSuiteInfoIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.x = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc.i14 unwind label %bb.f ; 2 uses

.noexc.i14:                                       ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestMetaFactoryI32CordTest_CharIteratorTraits_TestEE, i64 16), ptr %i.x, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 63, ptr %i.a, align 8, !tbaa !77
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.f   ; 3 uses

.noexc15:                                         ; preds = %.noexc.i14
  store ptr %i.z, ptr %4, align 8, !tbaa !74
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.z, ptr noundef nonnull align 1 dereferenceable(63) @.str.1, i64 63, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !75
  %i.ae = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.y
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.c:                                             ; preds = %.noexc15
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !76 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ai, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.noexc15
  store ptr %i.ae, ptr %3, align 8, !tbaa !74
  %i.aj = load i64, ptr %i.y, align 8, !tbaa !78
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !78
  %.pre46 = load i64, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit18

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit18: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.ak = phi i64 [ %i.ag, %bb.c ], [ %.pre46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !76
  store ptr %i.y, ptr %4, align 8, !tbaa !74
  store i64 0, ptr %i.ab, align 8, !tbaa !76
  store i8 0, ptr %i.y, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 2556, ptr %i.am, align 8, !tbaa !80
  invoke void @_ZN7testing8internal26ParameterizedTestSuiteInfoI8CordTestE14AddTestPatternEPKcS5_PNS0_19TestMetaFactoryBaseIbEENS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull @.str, ptr noundef nonnull @.str.901, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit18
  %i.an = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ad
  br i1 %i.ao, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !78
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.y
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
end_hunk_3
begin_hunk_4_@_ZN30CordTest_ExpectedChecksum_Test8TestBodyEv:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %94, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %102, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %106, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %109, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %113, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %117, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %118, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %122, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %125, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %129, i64 8 ; 18 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %135, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %138, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %138, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %142, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %141, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %129, i64 1 ; 14 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %76, i64 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %143, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %149, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %153, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %153, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %152, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %160, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %160, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %159, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %164, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %164, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %163, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %168, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %168, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %167, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %171, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %175, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %174, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %177, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %177, i64 16 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %176, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %180, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %181, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %184, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %184, i64 24 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %184, i64 32 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %184, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %184, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %184, i64 56 ; 9 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %184, i64 44 ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %185, i64 8 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %185, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %189, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %188, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %189, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %190, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %190, i64 24 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %190, i64 32 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %190, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i1793 = getelementptr inbounds nuw i8, ptr %190, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %190, i64 56 ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %190, i64 44 ; 9 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %191, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %195, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %195, i64 24 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %195, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %195, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i1148 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %195, i64 56 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %195, i64 44 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %194, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %194, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %199, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %198, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %199, i64 16 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %201, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %201, i64 24 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %201, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %201, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i1876 = getelementptr inbounds nuw i8, ptr %201, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %201, i64 56 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %201, i64 44 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %200, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %204, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %204, i64 24 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %204, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %204, i64 40 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i1931 = getelementptr inbounds nuw i8, ptr %204, i64 8 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %204, i64 56 ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %204, i64 44 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %206, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %205, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %209, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %212, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %212, i64 24 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %212, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %212, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i2001 = getelementptr inbounds nuw i8, ptr %212, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %212, i64 56 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %212, i64 44 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %213, i64 8 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %213, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %217, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %216, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %217, i64 16 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %218, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %221, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %65, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i1340 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %224, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i1369 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %227, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %134, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.aon
  %.0.idx3397 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.aon ] ; 2 uses
  %.0.ptr3398 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_114cord_factoriesE, i64 %.0.idx3397 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #38
  %.0.ptr.val = load i64, ptr %.0.ptr3398, align 8, !tbaa !77
  %i.ih = getelementptr i8, ptr %.0.ptr3398, i64 8
  %.0.ptr.val505 = load ptr, ptr %i.ih, align 8, !tbaa !140
  store i64 %.0.ptr.val, ptr %72, align 8
  store ptr %.0.ptr.val505, ptr %i.as, align 8
  call void @_ZN7testing11ScopedTraceC2ISt17basic_string_viewIcSt11char_traitsIcEEEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %71, ptr noundef nonnull @.str.1, i32 noundef 3160, ptr noundef nonnull align 8 dereferenceable(16) %72)
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #38
  %i.ii = getelementptr i8, ptr %.0.ptr3398, i64 16 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit1404
  br i1 %.not262, label %bb.aon, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.080.ptr.sroa.idx = phi i8 [ 0, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %.not262 = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.d
  %i.ij = trunc nuw i8 %.080.ptr.sroa.idx to i1   ; 2 uses
  %i.ik = select i1 %i.ij, ptr @.str.38, ptr @.str.37
  %i.il = load ptr, ptr %70, align 8, !tbaa !115
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = select i1 %i.ij, i64 4, i64 5
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull %i.ik, i64 noundef %i.in)
          to label %_ZN7testing7MessagelsEb.exit.i unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsEb.exit.i:                   ; preds = %.noexc
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN7testing7MessagelsEb.exit.i
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %73, ptr noundef nonnull @.str.1, i32 noundef 3162, ptr noundef nonnull align 8 %69)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ip = load ptr, ptr %69, align 8, !tbaa !74   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.at
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ir = load i64, ptr %i.at, align 8, !tbaa !78
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.it = load ptr, ptr %70, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !73
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(128) %i.it) #38, !inline_history !1876
  br label %bb.i

bb.g:                                             ; preds = %_ZN7testing7MessagelsEb.exit.i, %.noexc
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

bb.h:                                             ; preds = %bb.e
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = load ptr, ptr %69, align 8, !tbaa !74   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.at
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.h
  %i.jb = load i64, ptr %i.at, align 8, !tbaa !78
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ix, %bb.g ], [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.iy, %bb.h ]
  %i.jd = load ptr, ptr %70, align 8, !tbaa !115  ; 3 uses
  %.not.i.i10.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i10.i, label %_ZN7testing7MessageD2Ev.exit12.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !73
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(128) %i.jd) #38, !inline_history !1876
  br label %_ZN7testing7MessageD2Ev.exit12.i

_ZN7testing7MessageD2Ev.exit12.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  br label %.body

bb.i:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #38
  %.0.ptr.val508 = load ptr, ptr %i.ii, align 8, !tbaa !2013
  invoke void %.0.ptr.val508(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %74)
          to label %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit unwind label %bb.ag, !inline_history !1877

_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #38
  store i8 %.080.ptr.sroa.idx, ptr %75, align 8, !tbaa !2019
  %i.jh = load i8, ptr %74, align 8, !tbaa !78
  %i.ji = trunc i8 %i.jh to i1
  %i.jj = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not6.i.i = icmp ne ptr %i.jj, null
  %.not.not.i.i = select i1 %i.ji, i1 %.not6.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = atomicrmw add ptr %i.jk, i32 2 monotonic, align 4 ; 0 uses
  store ptr %i.jj, ptr %i.aw, align 8, !tbaa !78
  store i64 1, ptr %i.au, align 8, !tbaa !78
  %i.jm = load i64, ptr %74, align 8, !tbaa !78
  %.not.i.i.i514 = icmp ult i64 %i.jm, 2
  br i1 %.not.i.i.i514, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit, label %bb.k, !prof !127

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %74, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit unwind label %bb.ah

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %74, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit

_ZN4absl12lts_202605264CordC2ERKS1_.exit:         ; preds = %bb.l, %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %.0.ptr3398, i64 24, i1 false), !tbaa.struct !2020
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #38
  %.0.ptr.val507 = load ptr, ptr %i.ii, align 8, !tbaa !2013
  invoke void %.0.ptr.val507(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %76)
          to label %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit517 unwind label %bb.ai, !inline_history !1877

_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit517: ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #38
  %.0.ptr.val506 = load ptr, ptr %i.ii, align 8, !tbaa !2013
  invoke void %.0.ptr.val506(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %78)
          to label %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519 unwind label %bb.aj, !inline_history !1877

_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519: ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit517
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  %i.jn = load i8, ptr %78, align 8, !tbaa !78    ; 2 uses
  %i.jo = trunc i8 %i.jn to i1                    ; 3 uses
  %i.jp = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.jq = icmp ne ptr %i.jp, null
  %.not3.i = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %.not3.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519
  %spec.select.i.i = select i1 %i.jo, ptr null, ptr %i.az
  br i1 %i.jo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !129
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.js = sext i8 %i.jn to i64
  %i.jt = lshr exact i64 %i.js, 1
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i: ; preds = %bb.o, %bb.n
  %i.ju = phi i64 [ %i.jr, %bb.n ], [ %i.jt, %bb.o ]
  %i.jv = insertvalue { i64, ptr } poison, i64 %i.ju, 0
  %i.jw = insertvalue { i64, ptr } %i.jv, ptr %spec.select.i.i, 1
  br label %bb.r

bb.p:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  %i.jx = invoke noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %i.jp, ptr noundef nonnull %68)
          to label %.noexc520 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc520:                                        ; preds = %bb.p
  br i1 %i.jx, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %.noexc520
  %.fca.0.load.pre.i = load i64, ptr %68, align 8
  %.fca.1.load.pre.i = load ptr, ptr %.fca.1.gep.phi.trans.insert.i, align 8
  %i.jy = insertvalue { i64, ptr } poison, i64 %.fca.0.load.pre.i, 0
  %i.jz = insertvalue { i64, ptr } %i.jy, ptr %.fca.1.load.pre.i, 1
  br label %bb.r

bb.q:                                             ; preds = %.noexc520
  %i.ka = invoke { i64, ptr } @_ZN4absl12lts_202605264Cord15FlattenSlowPathEv(ptr noundef nonnull align 8 dereferenceable(16) %78)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %._crit_edge.i, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i, %bb.q
  %.fca.1.insert.merged.i = phi { i64, ptr } [ %i.jz, %._crit_edge.i ], [ %i.jw, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i ], [ %i.ka, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  %i.kb = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 0 ; 5 uses
  %i.kc = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 1 ; 3 uses
  store ptr %i.ba, ptr %77, align 8, !tbaa !75
  %i.kd = icmp eq ptr %i.kc, null
  %i.ke = icmp ne i64 %i.kb, 0
  %or.cond.i.i.i = and i1 %i.ke, %i.kd
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.556) #37
          to label %.noexc522 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc522:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.kb, ptr %i.b, align 8, !tbaa !77
  %i.kf = icmp ugt i64 %i.kb, 15
  br i1 %i.kf, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.t
  %i.kg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc523 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc523:                                        ; preds = %.noexc.i.i.i
  store ptr %i.kg, ptr %77, align 8, !tbaa !74
  %i.kh = load i64, ptr %i.b, align 8, !tbaa !77
  store i64 %i.kh, ptr %i.ba, align 8, !tbaa !78
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc523, %bb.t
  %i.ki = phi ptr [ %i.kg, %.noexc523 ], [ %i.ba, %bb.t ] ; 2 uses
  switch i64 %i.kb, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.kj = load i8, ptr %i.kc, align 1, !tbaa !78
  store i8 %i.kj, ptr %i.ki, align 1, !tbaa !78
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ki, ptr align 1 %i.kc, i64 %i.kb, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i
  %i.kk = load i64, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  store i64 %i.kk, ptr %i.bb, align 8, !tbaa !76
  %i.kl = load ptr, ptr %77, align 8, !tbaa !74
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
  store i8 0, ptr %i.km, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.kn = load i8, ptr %78, align 8, !tbaa !78
  %i.ko = trunc i8 %i.kn to i1
  br i1 %i.ko, label %bb.x, label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %78)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  %i.kr = load i8, ptr %75, align 8, !tbaa !2019, !range !111, !noalias !2021, !noundef !112
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  %i.kt = load i8, ptr %i.au, align 8, !tbaa !78, !noalias !2021
  %i.ku = trunc i8 %i.kt to i1
  %i.kv = load ptr, ptr %i.aw, align 8, !noalias !2021 ; 3 uses
  %.not6.i.i.i = icmp ne ptr %i.kv, null
  %.not.not.i.i.i = select i1 %i.ku, i1 %.not6.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = atomicrmw add ptr %i.kw, i32 2 monotonic, align 4, !noalias !2021 ; 0 uses
  store ptr %i.kv, ptr %i.bd, align 8, !tbaa !78, !alias.scope !2021
  store i64 1, ptr %79, align 8, !tbaa !78, !alias.scope !2021
  %i.ky = load i64, ptr %i.au, align 8, !tbaa !78, !noalias !2021
  %.not.i.i.i.i = icmp ult i64 %i.ky, 2
  br i1 %.not.i.i.i.i, label %"_ZZN30CordTest_ExpectedChecksum_Test8TestBodyEvENK3$_0clEv.exit", label %bb.ab, !prof !127

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i32 noundef 8)
          to label %"_ZZN30CordTest_ExpectedChecksum_Test8TestBodyEvENK3$_0clEv.exit" unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !132
  br label %"_ZZN30CordTest_ExpectedChecksum_Test8TestBodyEvENK3$_0clEv.exit"

bb.ad:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  %.val.i = load ptr, ptr %i.bc, align 8, !tbaa !2013, !noalias !2021
  invoke void %.val.i(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %79)
          to label %"_ZZN30CordTest_ExpectedChecksum_Test8TestBodyEvENK3$_0clEv.exit" unwind label %bb.al, !inline_history !1880

"_ZZN30CordTest_ExpectedChecksum_Test8TestBodyEvENK3$_0clEv.exit": ; preds = %bb.ac, %bb.aa, %bb.ab, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #38
  %i.kz = invoke i64 @_ZNK4absl12lts_202605264Cord16ExpectedChecksumEv(ptr noundef nonnull align 8 dereferenceable(16) %79)
          to label %bb.ae unwind label %bb.am

end_hunk_4
