Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/hole_punching_tests.hole_punching_tests.c9f93ab45a8f7f17-cgu.14?download=true
inline.NumInlined: 1618
inline.NumDeleted: 890
begin_hunk_0_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterIBQ_INtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all7IterMutINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB2b_8provider5tokio8ProviderEENCNvMB29_INtB29_12GenTransportB2V_E17eligible_listener0ENCB3x_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCshl6eeJekvqJ_19hole_punching_tests:bb.a
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2356
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.s

_RNCNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtB4_12GenTransportNtNtNtB6_8provider5tokio8ProviderE17eligible_listener0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2353
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.u = load i16, ptr %.val.i.i.i.i, align 4, !range !2357, !noalias !2350, !noundef !10
  %.not.i.i.i.i = icmp eq i16 %i.o, %i.u
  br i1 %.not.i.i.i.i, label %bb.h, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldQINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB1b_8provider5tokio8ProviderEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMB19_INtB19_12GenTransportB1V_E17eligible_listener0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3h_s_0E0E0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i

bb.h:                                             ; preds = %_RNCNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtB4_12GenTransportNtNtNtB6_8provider5tokio8ProviderE17eligible_listener0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2353
  store ptr %i.i, ptr %i.a, align 8, !noalias !2358
  %i.v = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtBT_12GenTransportNtNtNtBV_8provider5tokio8ProviderE17eligible_listeners_0INtB7_5FnMutTRQINtBT_8ListenerB1Q_EEE8call_mutCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2353
  br i1 %i.v, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all7IterMutINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB22_8provider5tokio8ProviderEENCNvMB20_INtB20_12GenTransportB2M_E17eligible_listener0ENtNtNtBa_6traits8iterator8Iterator4findQNCB3o_s_0ECshl6eeJekvqJ_19hole_punching_tests.exit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldQINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB1b_8provider5tokio8ProviderEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMB19_INtB19_12GenTransportB1V_E17eligible_listener0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3h_s_0E0E0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldQINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB1b_8provider5tokio8ProviderEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMB19_INtB19_12GenTransportB1V_E17eligible_listener0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3h_s_0E0E0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i: ; preds = %bb.h, %_RNCNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtB4_12GenTransportNtNtNtB6_8provider5tokio8ProviderE17eligible_listener0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.w = call noundef align 8 ptr @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util6stream10select_allINtB5_7IterMutINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB1d_8provider5tokio8ProviderEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all7IterMutINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB22_8provider5tokio8ProviderEENCNvMB20_INtB20_12GenTransportB2M_E17eligible_listener0ENtNtNtBa_6traits8iterator8Iterator4findQNCB3o_s_0ECshl6eeJekvqJ_19hole_punching_tests.exit, label %.lr.ph.i.i.i

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all7IterMutINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB22_8provider5tokio8ProviderEENCNvMB20_INtB20_12GenTransportB2M_E17eligible_listener0ENtNtNtBa_6traits8iterator8Iterator4findQNCB3o_s_0ECshl6eeJekvqJ_19hole_punching_tests.exit: ; preds = %bb.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldQINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB1b_8provider5tokio8ProviderEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMB19_INtB19_12GenTransportB1V_E17eligible_listener0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3h_s_0E0E0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i, %bb.a
  %.lcssa.i.i.i = phi ptr [ null, %bb.a ], [ null, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldQINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB1b_8provider5tokio8ProviderEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMB19_INtB19_12GenTransportB1V_E17eligible_listener0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3h_s_0E0E0Cshl6eeJekvqJ_19hole_punching_tests.exit.i.i.i ], [ %i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2348
  ret ptr %.lcssa.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1e_NtCs5hzaM3VbZx4_5redis5typesNtB6_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 17 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = load i8, ptr %1, align 8, !range !34, !noundef !10
  switch i8 %i.i, label %default.unreachable24 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.n
    i8 9, label %bb.o
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.u
    i8 14, label %bb.v
  ]

default.unreachable24:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.u, %bb.q
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.ah

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  store i8 1, ptr %0, align 8
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !2389, !nonnull !10, !noundef !10
  %i.p = load i64, ptr %i.m, align 8, !alias.scope !2389, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2390
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.p, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2390
  %i.q = load i64, ptr %i.c, align 8, !range !23, !noalias !2390, !noundef !10
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !50, !noalias !2390, !noundef !10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.r, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.u, align 8, !noalias !2390
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #31, !noalias !2390
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i: ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !noalias !2390, !nonnull !10, !noundef !10 ; 2 uses
  %i.x = icmp ule i64 %i.p, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2390
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.o, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !noalias !2391
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.y, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 2, ptr %0, align 8
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
  store i8 3, ptr %0, align 8
  br label %bb.ah

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
  store i8 4, ptr %0, align 8
  br label %bb.ah

bb.j:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  br label %bb.ah

bb.k:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !2392, !nonnull !10, !noundef !10
  %i.ag = load i64, ptr %i.ad, align 8, !alias.scope !2392, !noundef !10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inTNtNtCs5hzaM3VbZx4_5redis5types5ValueBL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ag) #25
  store i8 6, ptr %0, align 8
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  %i.aj = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueE13new_uninit_inCshl6eeJekvqJ_19hole_punching_tests(), !noalias !2393, !inline_history !2369 ; 4 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !2393, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2394
  invoke fastcc void @_RNvXs1e_NtCs5hzaM3VbZx4_5redis5typesNtB6_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ak) #25
          to label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit unwind label %bb.m, !noalias !2393, !inline_history !2372

common.resume:                                    ; preds = %bb.ai, %bb.ap, %bb.ao, %bb.bf, %bb.be, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.df, %bb.ai ], [ %i.dj, %bb.ao ], [ %i.dj, %bb.ap ], [ %i.do, %bb.bf ], [ %i.do, %bb.be ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef 56, i64 noundef 8) #28, !noalias !2393
  br label %common.resume

_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !2394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !2395, !nonnull !10, !noundef !10
  %i.ap = load i64, ptr %i.am, align 8, !alias.scope !2395, !noundef !10
  invoke fastcc void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inTNtNtCs5hzaM3VbZx4_5redis5types5ValueBL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.ap) #25
          to label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit unwind label %bb.ai, !noalias !2395, !inline_history !2375

bb.n:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
  store i8 8, ptr %0, align 8
  br label %bb.ah

bb.o:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load double, ptr %i.as, align 8, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.at, ptr %i.au, align 8
  store i8 9, ptr %0, align 8
  br label %bb.ah

bb.p:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !43, !noundef !10
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aw, ptr %2, align 1
  store i8 10, ptr %0, align 8
  br label %bb.ah

bb.q:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !24, !noundef !10 ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  %i.bb = add i64 %i.az, -9223372036854775807
  %i.bc = select i1 %i.ba, i64 %i.bb, i64 0
  switch i64 %i.bc, label %bb.b [
    i64 0, label %bb.ak
    i64 1, label %bb.al
    i64 2, label %bb.am
  ]

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !2396, !nonnull !10, !noundef !10
  %i.bg = load i64, ptr %i.bd, align 8, !alias.scope !2396, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2397
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.bg, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2397
  %i.bh = load i64, ptr %i.b, align 8, !range !23, !noalias !2397, !noundef !10
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !50, !noalias !2397, !noundef !10 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bi, label %bb.s, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i2, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !2397
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bm) #31, !noalias !2397
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i2: ; preds = %bb.r
  %i.bn = load ptr, ptr %i.bl, align 8, !noalias !2397, !nonnull !10, !noundef !10 ; 2 uses
  %i.bo = icmp ule i64 %i.bg, %i.bk
  tail call void @llvm.assume(i1 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2397
  %.not.i.i3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i3, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit4, label %bb.t

bb.t:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %i.bf, i64 range(i64 0, -9223372036854775808) %i.bg, i1 false), !noalias !2398
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit4

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit4: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshl6eeJekvqJ_19hole_punching_tests.exit.i.i2, %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bp, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bg, ptr %.sroa.511.0..sroa_idx, align 8
  store i8 12, ptr %0, align 8
  br label %bb.ah

bb.u:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !range !35, !noundef !10 ; 3 uses
  %i.bt = icmp ne i64 %i.bs, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = xor i64 %i.bs, -9223372036854775808
  %i.bv = icmp slt i64 %i.bs, 0
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 1
  switch i64 %i.bw, label %bb.b [
    i64 0, label %bb.ar
    i64 1, label %bb.as
    i64 2, label %bb.at
    i64 3, label %bb.au
    i64 4, label %bb.av
    i64 5, label %bb.aw
    i64 6, label %bb.ax
    i64 7, label %bb.ay
    i64 8, label %bb.az
    i64 9, label %bb.ba
    i64 10, label %bb.bb
    i64 11, label %bb.bc
  ]

bb.v:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  %i.by = load i8, ptr %i.bx, align 8, !range !43, !alias.scope !2399, !noundef !10
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !range !47, !alias.scope !2399, !noundef !10 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !2399, !noundef !10 ; 7 uses
  %.not3.i = icmp eq ptr %i.cd, null
  br i1 %.not3.i, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val6.i = load ptr, ptr %i.ce, align 8, !alias.scope !2399, !nonnull !10, !noundef !10 ; 7 uses
  %i.cf = load i64, ptr %.val6.i, align 8, !noalias !2400, !noundef !10
  %i.cg = and i64 %i.cf, 1
  %.not.i.i5 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i5, label %bb.y, label %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 3 uses
  %i.ci = load atomic i64, ptr %i.ch monotonic, align 8, !noalias !2400
  %i.cj = and i64 %i.ci, 1
  %.not2.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not2.i.i, label %bb.z, label %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ck = atomicrmw add ptr %i.ch, i64 2 monotonic, align 8, !noalias !2400
  %i.cl = and i64 %i.ck, -9223372036854775807
  %or.cond.not.i.i = icmp eq i64 %i.cl, -9223372036854775808
  br i1 %or.cond.not.i.i, label %bb.aa, label %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cm = atomicrmw or ptr %i.ch, i64 1 release, align 8, !noalias !2400 ; 0 uses
  br label %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !2399, !noundef !10 ; 7 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cp = load i64, ptr %i.co, align 8, !noalias !2400, !noundef !10
  %i.cq = and i64 %i.cp, 1
  %.not.i7.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i7.i, label %bb.ac, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8, !noalias !2400
  %i.ct = and i64 %i.cs, 1
  %.not2.i8.i = icmp eq i64 %i.ct, 0
  br i1 %.not2.i8.i, label %bb.ad, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cu = atomicrmw add ptr %i.cr, i64 2 monotonic, align 8, !noalias !2400
  %i.cv = and i64 %i.cu, -9223372036854775807
  %or.cond.not.i9.i = icmp eq i64 %i.cv, -9223372036854775808
  br i1 %or.cond.not.i9.i, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ae:                                            ; preds = %bb.w
  %i.cw = load i64, ptr %i.cd, align 8, !noalias !2400, !noundef !10
  %i.cx = and i64 %i.cw, 1
  %.not.i11.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i11.i, label %bb.af, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cz = load atomic i64, ptr %i.cy monotonic, align 8, !noalias !2400
  %i.da = and i64 %i.cz, 1
  %.not2.i12.i = icmp eq i64 %i.da, 0
  br i1 %.not2.i12.i, label %bb.ag, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ag:                                            ; preds = %bb.af
  %i.db = atomicrmw add ptr %i.cy, i64 2 monotonic, align 8, !noalias !2400
  %i.dc = and i64 %i.db, -9223372036854775807
  %or.cond.not.i13.i = icmp eq i64 %i.dc, -9223372036854775808
  br i1 %or.cond.not.i13.i, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split, label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split: ; preds = %bb.ag, %bb.ad
  %.sink = phi ptr [ %i.cr, %bb.ad ], [ %i.cy, %bb.ag ]
  %.sroa.6.0.ph = phi ptr [ %.val6.i, %bb.ad ], [ undef, %bb.ag ]
  %.sroa.413.0.ph = phi i8 [ undef, %bb.ad ], [ %i.cb, %bb.ag ]
  %.sink.i.ph = phi ptr [ %i.co, %bb.ad ], [ %i.cd, %bb.ag ]
  %storemerge.i.ph = phi i8 [ 0, %bb.ad ], [ 1, %bb.ag ]
  %i.dd = atomicrmw or ptr %.sink, i64 1 release, align 8, !noalias !2400 ; 0 uses
  br label %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split, %bb.w, %bb.ae, %bb.af, %bb.ag, %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.ab, %bb.ac, %bb.ad
  %.sroa.6.0 = phi ptr [ %.val6.i, %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.ae ], [ %.val6.i, %bb.ad ], [ %.val6.i, %bb.ac ], [ %.val6.i, %bb.ab ], [ undef, %bb.w ], [ undef, %bb.ag ], [ undef, %bb.af ], [ %.sroa.6.0.ph, %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split ]
  %.sroa.413.0 = phi i8 [ undef, %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.cb, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ %i.cb, %bb.w ], [ %i.cb, %bb.ag ], [ %i.cb, %bb.af ], [ %.sroa.413.0.ph, %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split ]
  %.sink.i = phi ptr [ null, %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.cd, %bb.ae ], [ %i.co, %bb.ad ], [ %i.co, %bb.ac ], [ %i.co, %bb.ab ], [ null, %bb.w ], [ %i.cd, %bb.ag ], [ %i.cd, %bb.af ], [ %.sink.i.ph, %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split ]
  %storemerge.i = phi i8 [ 0, %_RNvXs1_NtCscu618kbHohp_6arcstr7arc_strNtB5_6ArcStrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 1, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 1, %bb.w ], [ 1, %bb.ag ], [ 1, %bb.af ], [ %storemerge.i.ph, %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %storemerge.i, ptr %i.de, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.413.0, ptr %.sroa.417.0..sroa_idx, align 1
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink.i, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0, ptr %.sroa.7.0..sroa_idx, align 8
  store i8 14, ptr %0, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.bg, %bb.aq, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit, %_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit4, %bb.p, %bb.o, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit, %bb.d, %bb.c
  ret void

bb.ai:                                            ; preds = %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueEECshl6eeJekvqJ_19hole_punching_tests(ptr %i.aj) #26
          to label %common.resume unwind label %bb.aj
end_hunk_0
