Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DecimalUtil?download=true
inline.NumInlined: 403
inline.NumDeleted: 225
begin_hunk_0_@_ZN8facebook5velox11DecimalUtil17divideWithRoundUpIoolEET_RS3_T0_T1_bhh:bb.a
  br i1 %i.l, label %bb.f, label %_ZN8facebook5velox15checkedMultiplyIoEET_S2_S2_PKc.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !42
  store ptr @.str.23, ptr %6, align 16, !tbaa !14, !alias.scope !45, !noalias !42
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i128 %1, ptr %i.m, align 16, !tbaa !14, !noalias !42
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i128 %i.j, ptr %i.n, align 16, !tbaa !14, !noalias !42
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.26, i64 20, i64 1644, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !42
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIoEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.26) #23
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %7, align 8, !tbaa !24     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIoEET_S2_S2_PKc.exit: ; preds = %bb.e
  %i.u = icmp slt i64 %2, 0
  %spec.select27 = tail call i64 @llvm.abs.i64(i64 %2, i1 true) ; 2 uses
  %i.v = extractvalue { i128, i1 } %i.k, 0
  %i.w = zext nneg i64 %spec.select27 to i128     ; 2 uses
  %.frozen = freeze i128 %i.v                     ; 2 uses
  %i.x = udiv i128 %.frozen, %i.w                 ; 2 uses
  %i.y = mul i128 %i.x, %i.w
  %.decomposed = sub i128 %.frozen, %i.y          ; 2 uses
  %i.z = trunc nuw nsw i128 %.decomposed to i64
  %i.aa = shl nuw nsw i64 %i.z, 1
  %.not26 = icmp samesign uge i64 %i.aa, %spec.select27
  %not. = xor i1 %3, true
  %or.cond = select i1 %not., i1 %.not26, i1 false
  %i.ab = zext i1 %or.cond to i128
  %.0 = add i128 %i.x, %i.ab
  %i.ac = select i1 %i.u, i128 -1, i128 1         ; 2 uses
  %i.ad = mul i128 %.0, %i.ac
  store i128 %i.ad, ptr %0, align 16, !tbaa !22
  %i.ae = mul nsw i128 %.decomposed, %i.ac
  ret i128 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZN8facebook5velox11DecimalUtil17maxStringViewSizeEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.inv = icmp slt i32 %1, 1
  %spec.select.v = select i1 %.inv, i32 1, i32 2
  %spec.select = add nsw i32 %spec.select.v, %0
  %i.a = icmp eq i32 %0, %1
  %i.b = zext i1 %i.a to i32
  %.1 = add nsw i32 %spec.select, %i.b
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox11DecimalUtil30parseStringToDecimalComponentsERKNS0_10StringViewEiRiS5_Rn(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %10 = alloca %"class.folly::Range", align 8     ; 7 uses
  %11 = alloca %"class.folly::Expected.17", align 16 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %16 = alloca %"class.folly::Range", align 8     ; 7 uses
  %17 = alloca %"class.folly::Expected.17", align 16 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"struct.fmt::v11::detail::format_arg_store.6", align 16 ; 4 uses
  %31 = alloca %"class.facebook::velox::Status", align 8 ; 17 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.facebook::velox::Status", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  %i.a = load i32, ptr %1, align 8, !tbaa !48     ; 3 uses
  %i.b = icmp ult i32 %i.a, 13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 10 uses
  %i.g = zext i32 %i.a to i64                     ; 12 uses
  %i.h = icmp eq i32 %i.a, 0
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21, !noalias !55
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull @.str.11, i64 15, i64 0, ptr nonnull %30), !noalias !55
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext 1, ptr noundef nonnull align 8 %29)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %29, align 8, !tbaa !24, !noalias !55 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !14, !noalias !55
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %29, align 8, !tbaa !24, !noalias !55 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !14, !noalias !55
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i34.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i92.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i96, %_ZN8facebook5velox6StatusD2Ev.exit79
  %common.resume.op = phi { ptr, i32 } [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i96 ], [ %.pn, %_ZN8facebook5velox6StatusD2Ev.exit79 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72.i ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i86.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i92.i ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i85 ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i17.i ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i34.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21, !noalias !55
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !50
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

bb.e:                                             ; preds = %bb.a
  %i.t = load i8, ptr %i.f, align 1, !tbaa !14, !noalias !58
  switch i8 %i.t, label %bb.g [
    i8 45, label %.sink.split.i
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

.sink.split.i:                                    ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.sink.split.i, %bb.e
  %.sroa.37.0 = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ -1, %.sink.split.i ] ; 9 uses
  %.062.i = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.sink.split.i ] ; 6 uses
  %i.u = icmp samesign ult i64 %.062.i, %i.g
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.09.i.i = phi i64 [ %i.y, %bb.h ], [ %.062.i, %bb.g ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %.09.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14, !noalias !58
  %i.x = sext i8 %i.w to i32
  %isdigittmp.i.i = add nsw i32 %i.x, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.h, label %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = add i64 %.09.i.i, 1                      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.g
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !59

_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.thread.i: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062.i
  %i.aa = sub nuw nsw i64 %i.g, %.062.i
  br label %bb.i

_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.0.lcssa.i.i = phi i64 [ 1, %bb.g ], [ %.09.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062.i ; 8 uses
  %i.ac = sub nuw i64 %.0.lcssa.i.i, %.062.i      ; 9 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i, %i.g
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.i, %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.thread.i
  %.sroa.9.0 = phi ptr [ %i.z, %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.thread.i ], [ %i.ab, %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.i ] ; 2 uses
  %.sroa.0113.0 = phi i64 [ %i.aa, %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.thread.i ], [ %i.ac, %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.i ] ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0113.0, 0
  br i1 %i.ae, label %bb.j, label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21, !noalias !64
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr nonnull @.str.12, i64 27, i64 0, ptr nonnull %28), !noalias !64
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext 1, ptr noundef nonnull align 8 %27)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %27, align 8, !tbaa !24, !noalias !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !14, !noalias !64
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %27, align 8, !tbaa !24, !noalias !64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i71.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i71.i: ; preds = %bb.l
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !14, !noalias !64
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i72.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21, !noalias !64
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !61
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %.lr.ph.i82.preheader

bb.m:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113extractDigitsEPKcmm.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.lcssa.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14, !noalias !58
  %i.as = icmp eq i8 %i.ar, 46
  br i1 %i.as, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.at = add i64 %.0.lcssa.i.i, 1                ; 5 uses
  %i.au = icmp ult i64 %i.at, %i.g
  br i1 %i.au, label %.lr.ph.i79.i, label %.loopexit

.lr.ph.i79.i:                                     ; preds = %bb.n, %bb.o
  %.09.i80.i = phi i64 [ %i.ay, %bb.o ], [ %i.at, %bb.n ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 %.09.i80.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14, !noalias !58
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp.i81.i = add nsw i32 %i.ax, -48
  %isdigit.i82.i = icmp ult i32 %isdigittmp.i81.i, 10
  br i1 %isdigit.i82.i, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph.i79.i
  %i.ay = add i64 %.09.i80.i, 1                   ; 2 uses
  %exitcond.not.i83.i = icmp eq i64 %i.ay, %i.g
  br i1 %exitcond.not.i83.i, label %.loopexit, label %.lr.ph.i79.i, !llvm.loop !59

.loopexit:                                        ; preds = %.lr.ph.i79.i, %bb.o, %bb.n
  %.0.lcssa.i76.i = phi i64 [ %i.at, %bb.n ], [ %.09.i80.i, %.lr.ph.i79.i ], [ %i.g, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.at ; 2 uses
  %i.ba = sub nuw i64 %.0.lcssa.i76.i, %i.at      ; 2 uses
  %34 = icmp eq i64 %i.ac, 0
  %or.cond.a = icmp eq i64 %i.ba, 0
  %or.cond = select i1 %34, i1 %or.cond.a, i1 false
  br i1 %or.cond, label %.thread144, label %bb.r

.thread:                                          ; preds = %bb.m
  %i.bb = icmp eq i64 %i.ac, 0
  br i1 %i.bb, label %.thread144, label %bb.r

.thread144:                                       ; preds = %.loopexit, %.thread
  %.sroa.22.1138149 = phi ptr [ %i.az, %.loopexit ], [ null, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21, !noalias !70
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr nonnull @.str.12, i64 27, i64 0, ptr nonnull %26), !noalias !70
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext 1, ptr noundef nonnull align 8 %25)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.thread144
  %i.bc = load ptr, ptr %25, align 8, !tbaa !24, !noalias !70 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88.i: ; preds = %bb.p
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !14, !noalias !70
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #24
  br label %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i

bb.q:                                             ; preds = %.thread144
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %25, align 8, !tbaa !24, !noalias !70 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i85.i: ; preds = %bb.q
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !14, !noalias !70
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i86.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !70
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !67
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

bb.r:                                             ; preds = %.thread, %.loopexit
  %.1.i142 = phi i64 [ %.0.lcssa.i.i, %.thread ], [ %.0.lcssa.i76.i, %.loopexit ] ; 4 uses
  %.sroa.13.1141 = phi i64 [ 0, %.thread ], [ %i.ba, %.loopexit ] ; 6 uses
  %.sroa.22.1139 = phi ptr [ null, %.thread ], [ %i.az, %.loopexit ] ; 6 uses
  %i.bn = icmp eq i64 %.1.i142, %i.g
  br i1 %i.bn, label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i142
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14, !noalias !58
  switch i8 %i.bp, label %bb.ac [
    i8 101, label %bb.t
    i8 69, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bq = add i64 %.1.i142, 1                     ; 3 uses
  %i.br = icmp eq i64 %i.bq, %i.g
  br i1 %i.br, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21, !noalias !76
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.13, i64 27, i64 0, ptr nonnull %24), !noalias !76
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext 1, ptr noundef nonnull align 8 %23)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %23, align 8, !tbaa !24, !noalias !76 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i: ; preds = %bb.v
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !14, !noalias !76
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #24
  br label %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i

bb.w:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %23, align 8, !tbaa !24, !noalias !76 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i91.i: ; preds = %bb.w
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !14, !noalias !76
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i92.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21, !noalias !76
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %23), !noalias !73
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

bb.x:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bq ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14, !noalias !58 ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 43
  %i.cg = icmp eq i8 %i.ce, 45
  %spec.select.i = or i1 %i.cf, %i.cg             ; 2 uses
  %i.ch = add nsw i64 %i.g, -2
  %i.ci = icmp eq i64 %.1.i142, %i.ch
  %or.cond.i = and i1 %i.ci, %spec.select.i
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN8facebook5velox6Status9UserErrorIJRA38_KcEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %31, ptr noundef nonnull align 1 dereferenceable(38) @.str.14)
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

bb.z:                                             ; preds = %bb.x
  %i.cj = zext i1 %spec.select.i to i64           ; 2 uses
  %i.ck = sub i64 %i.g, %i.bq                     ; 2 uses
  %.not110.i = icmp ugt i64 %i.ck, %i.cj
  br i1 %.not110.i, label %.lr.ph.i, label %.critedge.i

bb.aa:                                            ; preds = %.lr.ph.i
  %i.cl = add nuw i64 %.0111.i, 1                 ; 2 uses
  %.not.i = icmp ult i64 %i.cl, %i.ck
  br i1 %.not.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !79

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.0111.i = phi i64 [ %i.cl, %bb.aa ], [ %i.cj, %bb.z ] ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cd, i64 %.0111.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14, !noalias !58
  %i.co = sext i8 %i.cn to i32
  %isdigittmp.i = add nsw i32 %i.co, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.aa, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  call void @_ZN8facebook5velox6Status9UserErrorIJRA57_KcEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %31, ptr noundef nonnull align 1 dereferenceable(57) @.str.15)
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

.critedge.i:                                      ; preds = %bb.aa, %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.cq = tail call noundef i32 @_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_(ptr nonnull %i.cd, ptr nonnull %i.cp), !noalias !58
  %.sroa.0103.0.insert.ext.i = zext i32 %i.cq to i64
  %.sroa.0103.0.insert.insert.i = or disjoint i64 %.sroa.0103.0.insert.ext.i, 4294967296
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread

bb.ac:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21, !noalias !83
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nonnull @.str.16, i64 18, i64 0, ptr nonnull %22), !noalias !83
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext 1, ptr noundef nonnull align 8 %21)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load ptr, ptr %21, align 8, !tbaa !24, !noalias !83 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100.i: ; preds = %bb.ad
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !14, !noalias !83
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #24
  br label %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %21, align 8, !tbaa !24, !noalias !83 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i97.i: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !14, !noalias !83
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21, !noalias !83
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !80
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit: ; preds = %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i, %bb.y, %bb.ab, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i
  %.sroa.22.2.ph = phi ptr [ %.sroa.22.1139, %bb.ab ], [ %.sroa.22.1139, %bb.y ], [ %.sroa.22.1139, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i ], [ %.sroa.22.1139, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i ], [ %.sroa.22.1138149, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i ], [ null, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i ], [ null, %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i ]
end_hunk_0
