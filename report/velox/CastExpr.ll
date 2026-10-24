Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CastExpr?download=true
inline.NumInlined: 87477
inline.NumDeleted: 10539
loop-unroll.NumCompletelyUnrolled: 4850
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 4945
begin_hunk_0_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %.body

bb.bx:                                            ; preds = %.noexc.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 1)
          to label %.noexc30 unwind label %bb.bm

.noexc30:                                         ; preds = %bb.bx
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %.noexc30
  %i.jh = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i153 = icmp eq ptr %i.jh, null
  br i1 %.not.i153, label %_ZN8facebook5velox6StatusD2Ev.exit154, label %bb.bz, !prof !516

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit154

_ZN8facebook5velox6StatusD2Ev.exit154:            ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit

bb.ca:                                            ; preds = %.noexc30
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i155 = icmp eq ptr %i.jj, null
  br i1 %.not.i155, label %_ZN8facebook5velox6StatusD2Ev.exit156, label %bb.cb, !prof !516

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

_ZN8facebook5velox6StatusD2Ev.exit156:            ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %.body

_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %.noexc.thread
  call void @__cxa_end_catch()
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN5folly15expected_detail15ExpectedStorageIiN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  ret void

bb.cd:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.at
  %.merged = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn23.pn, %bb.at ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.merged

bb.ce:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #48
  unreachable

bb.cf:                                            ; preds = %_ZNK8facebook5velox14VeloxException11isUserErrorEv.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE3EvNS1_15SparkCastPolicyEE18convertStringToIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.1465") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %17 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 7 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !12839
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39, !noalias !12840
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.208, i64 49, i64 0, ptr nonnull %16), !noalias !12840
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, i8 noundef signext 1, ptr noundef nonnull align 8 %15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %15, align 8, !tbaa !459, !noalias !12840 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !461, !noalias !12840
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !459, !noalias !12840 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !461, !noalias !12840
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50 ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !12840
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !12840
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !12839
  %i.n = load ptr, ptr %17, align 8, !tbaa !1030, !noalias !12841
  store ptr %i.n, ptr %0, align 8, !tbaa !1030
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.o, align 8, !tbaa !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %i.p = load i8, ptr %2, align 1, !tbaa !461     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  switch i8 %i.p, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %bb.g

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @_ZN8facebook5velox6Status9UserErrorIJRA49_KcRS3_EEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %18, ptr noundef nonnull align 1 dereferenceable(49) @.str.209, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = load ptr, ptr %18, align 8, !tbaa !1030, !noalias !12842
  store ptr %i.s, ptr %0, align 8, !tbaa !1030
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.t, align 8, !tbaa !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.al

bb.g:                                             ; preds = %bb.e, %bb.f
  %.029 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]      ; 3 uses
  %i.u = icmp slt i32 %.029, %i.a                 ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader98

.preheader98:                                     ; preds = %bb.g
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.g
  br i1 %i.u, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader, %bb.v
  %.0118 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130117 = phi i32 [ %i.bp, %bb.v ], [ %.029, %.preheader ] ; 4 uses
  %.093116 = phi i32 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0118 to i1
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph119
  %i.w = sext i32 %.130117 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !461
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %.130117, 1                 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.a
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph119
  %.231 = phi i32 [ %.130117, %.lr.ph119 ], [ %i.aa, %bb.i ], [ %.130117, %bb.h ] ; 2 uses
  %.1 = phi i8 [ 1, %.lr.ph119 ], [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ac = sext i32 %.231 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !461
  %21 = sext i8 %i.ae to i32
  %isdigittmp36 = add nsw i32 %21, -48            ; 3 uses
  %isdigit37 = icmp ult i32 %isdigittmp36, 10
  br i1 %isdigit37, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !12843
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !12844
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %14), !noalias !12844
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %19, i8 noundef signext 1, ptr noundef nonnull align 8 %13)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %13, align 8, !tbaa !459, !noalias !12844 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !461, !noalias !12844
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %13, align 8, !tbaa !459, !noalias !12844 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !461, !noalias !12844
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !12844
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !12844
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !12843
  %i.aq = load ptr, ptr %19, align 8, !tbaa !1030, !noalias !12845
  store ptr %i.aq, ptr %0, align 8, !tbaa !1030
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ar, align 8, !tbaa !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.al

bb.n:                                             ; preds = %bb.j
  %i.as = trunc nuw i8 %.1 to i1
  br i1 %i.as, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.093116, i32 10) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.au, label %bb.p, label %_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit, !prof !526

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39, !noalias !12846
  store ptr @.str.37, ptr %11, align 16, !tbaa !461, !alias.scope !12847, !noalias !12846
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.093116, ptr %i.av, align 16, !tbaa !461, !alias.scope !12847, !noalias !12846
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 10, ptr %i.aw, align 16, !tbaa !461, !alias.scope !12847, !noalias !12846
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.74, i64 20, i64 284, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39, !noalias !12846
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.74) #47
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %12, align 8, !tbaa !459  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !461
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit: ; preds = %bb.o
  %i.bd = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %i.be = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bd, i32 %isdigittmp36) ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.s, label %_ZN8facebook5velox12checkedMinusIiEET_S2_S2_PKc.exit, !prof !526

bb.s:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !12848
  store ptr @.str.37, ptr %9, align 16, !tbaa !461, !alias.scope !12849, !noalias !12848
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.bd, ptr %i.bg, align 16, !tbaa !461, !alias.scope !12849, !noalias !12848
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %isdigittmp36, ptr %i.bh, align 16, !tbaa !461, !alias.scope !12849, !noalias !12848
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.212, i64 20, i64 284, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !12848
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12checkedMinusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.212) #47
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %10, align 8, !tbaa !459  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.u
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !461
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %common.resume

_ZN8facebook5velox12checkedMinusIiEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit
  %i.bo = extractvalue { i32, i1 } %i.be, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN8facebook5velox12checkedMinusIiEET_S2_S2_PKc.exit
  %.194 = phi i32 [ %.093116, %bb.n ], [ %i.bo, %_ZN8facebook5velox12checkedMinusIiEET_S2_S2_PKc.exit ] ; 2 uses
  %i.bp = add nsw i32 %.231, 1                    ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.a
  br i1 %i.bq, label %.lr.ph119, label %.loopexit, !llvm.loop !12823

.lr.ph:                                           ; preds = %.preheader98, %bb.ak
  %.2113 = phi i8 [ %.3, %bb.ak ], [ 0, %.preheader98 ]
  %.332112 = phi i32 [ %i.dl, %bb.ak ], [ %.029, %.preheader98 ] ; 4 uses
  %.295111 = phi i32 [ %.396, %bb.ak ], [ 0, %.preheader98 ] ; 4 uses
  %i.br = trunc nuw i8 %.2113 to i1
  br i1 %i.br, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.bs = sext i32 %.332112 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !461
  %i.bv = icmp eq i8 %i.bu, 46
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = add nsw i32 %.332112, 1                 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, %i.a
  br i1 %i.bx, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph
  %.4 = phi i32 [ %.332112, %.lr.ph ], [ %i.bw, %bb.x ], [ %.332112, %bb.w ] ; 2 uses
  %.3 = phi i8 [ 1, %.lr.ph ], [ 1, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.by = sext i32 %.4 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !461
  %22 = sext i8 %i.ca to i32
  %isdigittmp = add nsw i32 %22, -48              ; 3 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !12850
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !12851
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %8), !noalias !12851
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 1, ptr noundef nonnull align 8 %7)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cb = load ptr, ptr %7, align 8, !tbaa !459, !noalias !12851 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN8facebook5velox6StatusD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %bb.aa
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !461, !noalias !12851
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit72

bb.ab:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %7, align 8, !tbaa !459, !noalias !12851 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63: ; preds = %bb.ab
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !461, !noalias !12851
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !12851
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit72:             ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !12851
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !12850
  %i.cm = load ptr, ptr %20, align 8, !tbaa !1030, !noalias !12852
  store ptr %i.cm, ptr %0, align 8, !tbaa !1030
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.cn, align 8, !tbaa !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.al

bb.ac:                                            ; preds = %bb.y
  %i.co = trunc nuw i8 %.3 to i1
  br i1 %i.co, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.295111, i32 10) ; 2 uses
  %i.cq = extractvalue { i32, i1 } %i.cp, 1
  br i1 %i.cq, label %bb.ae, label %_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit78, !prof !526

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !12853
  store ptr @.str.37, ptr %5, align 16, !tbaa !461, !alias.scope !12854, !noalias !12853
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.295111, ptr %i.cr, align 16, !tbaa !461, !alias.scope !12854, !noalias !12853
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 10, ptr %i.cs, align 16, !tbaa !461, !alias.scope !12854, !noalias !12853
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.74, i64 20, i64 284, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !12853
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.74) #47
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %6, align 8, !tbaa !459   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.ag
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !461
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit78: ; preds = %bb.ad
  %i.cz = extractvalue { i32, i1 } %i.cp, 0       ; 2 uses
  %i.da = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cz, i32 %isdigittmp) ; 2 uses
  %i.db = extractvalue { i32, i1 } %i.da, 1
  br i1 %i.db, label %bb.ah, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit, !prof !526

bb.ah:                                            ; preds = %_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !12855
  store ptr @.str.37, ptr %3, align 16, !tbaa !461, !alias.scope !12856, !noalias !12855
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.cz, ptr %i.dc, align 16, !tbaa !461, !alias.scope !12856, !noalias !12855
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %isdigittmp, ptr %i.dd, align 16, !tbaa !461, !alias.scope !12856, !noalias !12855
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.76, i64 20, i64 284, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !12855
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.76) #47
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %4, align 8, !tbaa !459   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.aj
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !461
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %common.resume

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIiEET_S2_S2_PKc.exit78
  %i.dk = extractvalue { i32, i1 } %i.da, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ac, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit
  %.396 = phi i32 [ %.295111, %bb.ac ], [ %i.dk, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit ] ; 2 uses
  %i.dl = add nsw i32 %.4, 1                      ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.a
  br i1 %i.dm, label %.lr.ph, label %.loopexit, !llvm.loop !12838

.loopexit:                                        ; preds = %bb.x, %bb.ak, %bb.i, %bb.v, %.preheader98, %.preheader
  %.497 = phi i32 [ 0, %.preheader98 ], [ 0, %.preheader ], [ %.194, %bb.v ], [ %.093116, %bb.i ], [ %.295111, %bb.x ], [ %.396, %bb.ak ]
  store i32 %.497, ptr %0, align 8, !tbaa !461
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dn, align 8, !tbaa !2016
  br label %bb.al

bb.al:                                            ; preds = %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, %_ZN8facebook5velox6StatusD2Ev.exit57, %_ZN8facebook5velox6StatusD2Ev.exit72, %.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status9UserErrorIJRA49_KcRS3_EEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(49) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.1792", align 16 ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !12859
  %i.b = load i8, ptr %2, align 1, !tbaa !461, !noalias !12859
  %.sroa.08.0.insert.ext.i = zext i8 %i.b to i128
  store i128 %.sroa.08.0.insert.ext.i, ptr %4, align 16, !noalias !12859
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %1, i64 %i.a, i64 8, ptr nonnull %4), !noalias !12859
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !459, !noalias !12859 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6Status8fromArgsIJRKcEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !461, !noalias !12859
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #49
  br label %_ZN8facebook5velox6Status8fromArgsIJRKcEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !459, !noalias !12859 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !461, !noalias !12859
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !12859
  resume { ptr, i32 } %i.h

_ZN8facebook5velox6Status8fromArgsIJRKcEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !12859
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE3ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.1795, align 8           ; 7 uses
  %7 = alloca %class.anon.1794, align 8           ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE3ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE3ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE3ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE3ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE3ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE3ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !12860

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE3ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE3ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %.body

bb.bx:                                            ; preds = %.noexc.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 1)
          to label %.noexc30 unwind label %bb.bm

.noexc30:                                         ; preds = %bb.bx
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %.noexc30
  %i.jh = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i153 = icmp eq ptr %i.jh, null
  br i1 %.not.i153, label %_ZN8facebook5velox6StatusD2Ev.exit154, label %bb.bz, !prof !516

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit154

_ZN8facebook5velox6StatusD2Ev.exit154:            ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit

bb.ca:                                            ; preds = %.noexc30
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i155 = icmp eq ptr %i.jj, null
  br i1 %.not.i155, label %_ZN8facebook5velox6StatusD2Ev.exit156, label %bb.cb, !prof !516

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

_ZN8facebook5velox6StatusD2Ev.exit156:            ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %.body

_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %.noexc.thread
  call void @__cxa_end_catch()
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN5folly15expected_detail15ExpectedStorageIaN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  ret void

bb.cd:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.at
  %.merged = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn23.pn, %bb.at ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.merged

bb.ce:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #48
  unreachable

bb.cf:                                            ; preds = %_ZNK8facebook5velox14VeloxException11isUserErrorEv.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE1EvNS1_15SparkCastPolicyEE18convertStringToIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.1983") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %17 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 7 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !14555
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39, !noalias !14556
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.208, i64 49, i64 0, ptr nonnull %16), !noalias !14556
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, i8 noundef signext 1, ptr noundef nonnull align 8 %15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %15, align 8, !tbaa !459, !noalias !14556 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !461, !noalias !14556
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !459, !noalias !14556 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !461, !noalias !14556
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !14556
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !14556
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !14555
  %i.n = load ptr, ptr %17, align 8, !tbaa !1030, !noalias !14557
  store ptr %i.n, ptr %0, align 8, !tbaa !1030
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.o, align 8, !tbaa !2611
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %i.p = load i8, ptr %2, align 1, !tbaa !461     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  switch i8 %i.p, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %bb.g

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @_ZN8facebook5velox6Status9UserErrorIJRA49_KcRS3_EEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %18, ptr noundef nonnull align 1 dereferenceable(49) @.str.209, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = load ptr, ptr %18, align 8, !tbaa !1030, !noalias !14558
  store ptr %i.s, ptr %0, align 8, !tbaa !1030
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.t, align 8, !tbaa !2611
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.al

bb.g:                                             ; preds = %bb.e, %bb.f
  %.029 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]      ; 3 uses
  %i.u = icmp slt i32 %.029, %i.a                 ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader98

.preheader98:                                     ; preds = %bb.g
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.g
  br i1 %i.u, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.br, %bb.v ], [ %.029, %.preheader ] ; 4 uses
  %.093114 = phi i8 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph117
  %i.w = sext i32 %.130115 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !461
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %.130115, 1                 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.a
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph117
  %.231 = phi i32 [ %.130115, %.lr.ph117 ], [ %i.aa, %bb.i ], [ %.130115, %bb.h ] ; 2 uses
  %.1 = phi i8 [ 1, %.lr.ph117 ], [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ac = sext i32 %.231 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !461 ; 2 uses
  %21 = sext i8 %i.ae to i32
  %isdigittmp36 = add nsw i32 %21, -48
  %isdigit37 = icmp ult i32 %isdigittmp36, 10
  br i1 %isdigit37, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !14559
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !14560
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %14), !noalias !14560
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %19, i8 noundef signext 1, ptr noundef nonnull align 8 %13)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %13, align 8, !tbaa !459, !noalias !14560 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !461, !noalias !14560
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %13, align 8, !tbaa !459, !noalias !14560 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !461, !noalias !14560
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !14560
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !14560
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !14559
  %i.aq = load ptr, ptr %19, align 8, !tbaa !1030, !noalias !14561
  store ptr %i.aq, ptr %0, align 8, !tbaa !1030
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ar, align 8, !tbaa !2611
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.al

bb.n:                                             ; preds = %bb.j
  %i.as = trunc nuw i8 %.1 to i1
  br i1 %i.as, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %.093114, i8 10) ; 2 uses
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %bb.p, label %_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit, !prof !526

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39, !noalias !14562
  store ptr @.str.213, ptr %11, align 16, !tbaa !461, !alias.scope !14563, !noalias !14562
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aw = sext i8 %.093114 to i32
  store i32 %i.aw, ptr %i.av, align 16, !tbaa !461, !noalias !14562
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 10, ptr %i.ax, align 16, !tbaa !461, !noalias !14562
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.74, i64 20, i64 284, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39, !noalias !14562
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.74) #47
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %12, align 8, !tbaa !459  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !461
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit: ; preds = %bb.o
  %i.be = extractvalue { i8, i1 } %i.at, 0        ; 2 uses
  %22 = add nsw i8 %i.ae, -48                     ; 2 uses
  %i.bf = tail call { i8, i1 } @llvm.ssub.with.overflow.i8(i8 %i.be, i8 %22) ; 2 uses
  %i.bg = extractvalue { i8, i1 } %i.bf, 1
  br i1 %i.bg, label %bb.s, label %_ZN8facebook5velox12checkedMinusIaEET_S2_S2_PKc.exit, !prof !526

bb.s:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !14564
  store ptr @.str.213, ptr %9, align 16, !tbaa !461, !alias.scope !14565, !noalias !14564
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bi = sext i8 %i.be to i32
  store i32 %i.bi, ptr %i.bh, align 16, !tbaa !461, !noalias !14564
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %23 = sext i8 %22 to i32
  store i32 %23, ptr %i.bj, align 16, !tbaa !461, !noalias !14564
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.212, i64 20, i64 284, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !14564
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12checkedMinusIaEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.212) #47
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %10, align 8, !tbaa !459  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.u
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !461
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %common.resume

_ZN8facebook5velox12checkedMinusIaEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit
  %i.bq = extractvalue { i8, i1 } %i.bf, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN8facebook5velox12checkedMinusIaEET_S2_S2_PKc.exit
  %.194 = phi i8 [ %.093114, %bb.n ], [ %i.bq, %_ZN8facebook5velox12checkedMinusIaEET_S2_S2_PKc.exit ] ; 2 uses
  %i.br = add nsw i32 %.231, 1                    ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.a
  br i1 %i.bs, label %.lr.ph117, label %.loopexit, !llvm.loop !14539

.lr.ph:                                           ; preds = %.preheader98, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %.preheader98 ]
  %.332110 = phi i32 [ %i.dp, %bb.ak ], [ %.029, %.preheader98 ] ; 4 uses
  %.295109 = phi i8 [ %.396, %bb.ak ], [ 0, %.preheader98 ] ; 4 uses
  %i.bt = trunc nuw i8 %.2111 to i1
  br i1 %i.bt, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.bu = sext i32 %.332110 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !461
  %i.bx = icmp eq i8 %i.bw, 46
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = add nsw i32 %.332110, 1                 ; 2 uses
  %i.bz = icmp eq i32 %i.by, %i.a
  br i1 %i.bz, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph
  %.4 = phi i32 [ %.332110, %.lr.ph ], [ %i.by, %bb.x ], [ %.332110, %bb.w ] ; 2 uses
  %.3 = phi i8 [ 1, %.lr.ph ], [ 1, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.ca = sext i32 %.4 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !461 ; 2 uses
  %24 = sext i8 %i.cc to i32
  %isdigittmp = add nsw i32 %24, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !14566
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !14567
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %8), !noalias !14567
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 1, ptr noundef nonnull align 8 %7)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %7, align 8, !tbaa !459, !noalias !14567 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN8facebook5velox6StatusD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %bb.aa
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !461, !noalias !14567
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit72

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %7, align 8, !tbaa !459, !noalias !14567 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63: ; preds = %bb.ab
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !461, !noalias !14567
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !14567
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit72:             ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !14567
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !14566
  %i.co = load ptr, ptr %20, align 8, !tbaa !1030, !noalias !14568
  store ptr %i.co, ptr %0, align 8, !tbaa !1030
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.cp, align 8, !tbaa !2611
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.al

bb.ac:                                            ; preds = %bb.y
  %i.cq = trunc nuw i8 %.3 to i1
  br i1 %i.cq, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = tail call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %.295109, i8 10) ; 2 uses
  %i.cs = extractvalue { i8, i1 } %i.cr, 1
  br i1 %i.cs, label %bb.ae, label %_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit78, !prof !526

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !14569
  store ptr @.str.213, ptr %5, align 16, !tbaa !461, !alias.scope !14570, !noalias !14569
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = sext i8 %.295109 to i32
  store i32 %i.cu, ptr %i.ct, align 16, !tbaa !461, !noalias !14569
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 10, ptr %i.cv, align 16, !tbaa !461, !noalias !14569
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.74, i64 20, i64 284, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !14569
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.74) #47
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %6, align 8, !tbaa !459   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.ag
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !461
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit78: ; preds = %bb.ad
  %i.dc = extractvalue { i8, i1 } %i.cr, 0        ; 2 uses
  %25 = add nsw i8 %i.cc, -48                     ; 2 uses
  %i.dd = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %i.dc, i8 %25) ; 2 uses
  %i.de = extractvalue { i8, i1 } %i.dd, 1
  br i1 %i.de, label %bb.ah, label %_ZN8facebook5velox11checkedPlusIaEET_S2_S2_PKc.exit, !prof !526

bb.ah:                                            ; preds = %_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !14571
  store ptr @.str.213, ptr %3, align 16, !tbaa !461, !alias.scope !14572, !noalias !14571
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = sext i8 %i.dc to i32
  store i32 %i.dg, ptr %i.df, align 16, !tbaa !461, !noalias !14571
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %26 = sext i8 %25 to i32
  store i32 %26, ptr %i.dh, align 16, !tbaa !461, !noalias !14571
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.76, i64 20, i64 284, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !14571
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIaEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.76) #47
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %4, align 8, !tbaa !459   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.aj
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !461
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %common.resume

_ZN8facebook5velox11checkedPlusIaEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIaEET_S2_S2_PKc.exit78
  %i.do = extractvalue { i8, i1 } %i.dd, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ac, %_ZN8facebook5velox11checkedPlusIaEET_S2_S2_PKc.exit
  %.396 = phi i8 [ %.295109, %bb.ac ], [ %i.do, %_ZN8facebook5velox11checkedPlusIaEET_S2_S2_PKc.exit ] ; 2 uses
  %i.dp = add nsw i32 %.4, 1                      ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.a
  br i1 %i.dq, label %.lr.ph, label %.loopexit, !llvm.loop !14554

.loopexit:                                        ; preds = %bb.x, %bb.ak, %bb.i, %bb.v, %.preheader98, %.preheader
  %.497 = phi i8 [ 0, %.preheader98 ], [ 0, %.preheader ], [ %.194, %bb.v ], [ %.093114, %bb.i ], [ %.295109, %bb.x ], [ %.396, %bb.ak ]
  store i8 %.497, ptr %0, align 8, !tbaa !461
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dr, align 8, !tbaa !2611
  br label %bb.al

bb.al:                                            ; preds = %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, %_ZN8facebook5velox6StatusD2Ev.exit57, %_ZN8facebook5velox6StatusD2Ev.exit72, %.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.smul.with.overflow.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.ssub.with.overflow.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.sadd.with.overflow.i8(i8, i8) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE1ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.2308, align 8           ; 7 uses
  %7 = alloca %class.anon.2307, align 8           ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE1ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE1ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE1ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE1ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE1ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE1ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14573

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE1ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE1ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE1ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE1ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14576, !range !435, !noundef !436
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14577
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !455
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit11, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE1ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit
  %.019 = phi i64 [ %i.k, %.preheader ], [ %i.bm, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE1ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit ] ; 3 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.019, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !2919, !nonnull !436, !align !475 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2487
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !2915, !nonnull !436, !align !475
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2916, !nonnull !436, !align !475
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !530
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2917, !nonnull !436, !align !475
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2415
  invoke void @_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE(ptr noundef nonnull align 8 dereferenceable(537) %i.t, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef %i.x, ptr noundef %i.aa)
          to label %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE1ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %.body

bb.bx:                                            ; preds = %.noexc.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 1)
          to label %.noexc30 unwind label %bb.bm

.noexc30:                                         ; preds = %bb.bx
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %.noexc30
  %i.jh = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i153 = icmp eq ptr %i.jh, null
  br i1 %.not.i153, label %_ZN8facebook5velox6StatusD2Ev.exit154, label %bb.bz, !prof !516

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit154

_ZN8facebook5velox6StatusD2Ev.exit154:            ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit

bb.ca:                                            ; preds = %.noexc30
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i155 = icmp eq ptr %i.jj, null
  br i1 %.not.i155, label %_ZN8facebook5velox6StatusD2Ev.exit156, label %bb.cb, !prof !516

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

_ZN8facebook5velox6StatusD2Ev.exit156:            ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %.body

_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %.noexc.thread
  call void @__cxa_end_catch()
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN5folly15expected_detail15ExpectedStorageIsN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  ret void

bb.cd:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.at
  %.merged = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn23.pn, %bb.at ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.merged

bb.ce:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #48
  unreachable

bb.cf:                                            ; preds = %_ZNK8facebook5velox14VeloxException11isUserErrorEv.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE2EvNS1_15SparkCastPolicyEE18convertStringToIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.2482") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.1793", align 16 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %17 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 7 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !16300
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39, !noalias !16301
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.208, i64 49, i64 0, ptr nonnull %16), !noalias !16301
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, i8 noundef signext 1, ptr noundef nonnull align 8 %15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %15, align 8, !tbaa !459, !noalias !16301 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !461, !noalias !16301
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !459, !noalias !16301 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !461, !noalias !16301
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61 ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !16301
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !16301
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !16300
  %i.n = load ptr, ptr %17, align 8, !tbaa !1030, !noalias !16302
  store ptr %i.n, ptr %0, align 8, !tbaa !1030
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.o, align 8, !tbaa !3197
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %i.p = load i8, ptr %2, align 1, !tbaa !461     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  switch i8 %i.p, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %bb.g

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @_ZN8facebook5velox6Status9UserErrorIJRA49_KcRS3_EEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %18, ptr noundef nonnull align 1 dereferenceable(49) @.str.209, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = load ptr, ptr %18, align 8, !tbaa !1030, !noalias !16303
  store ptr %i.s, ptr %0, align 8, !tbaa !1030
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.t, align 8, !tbaa !3197
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.al

bb.g:                                             ; preds = %bb.e, %bb.f
  %.029 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]      ; 3 uses
  %i.u = icmp slt i32 %.029, %i.a                 ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader98

.preheader98:                                     ; preds = %bb.g
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.g
  br i1 %i.u, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.bs, %bb.v ], [ %.029, %.preheader ] ; 4 uses
  %.093114 = phi i16 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph117
  %i.w = sext i32 %.130115 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !461
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %.130115, 1                 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.a
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph117
  %.231 = phi i32 [ %.130115, %.lr.ph117 ], [ %i.aa, %bb.i ], [ %.130115, %bb.h ] ; 2 uses
  %.1 = phi i8 [ 1, %.lr.ph117 ], [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ac = sext i32 %.231 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !461 ; 2 uses
  %21 = sext i8 %i.ae to i32
  %isdigittmp36 = add nsw i32 %21, -48
  %isdigit37 = icmp ult i32 %isdigittmp36, 10
  br i1 %isdigit37, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !16304
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !16305
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %14), !noalias !16305
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %19, i8 noundef signext 1, ptr noundef nonnull align 8 %13)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %13, align 8, !tbaa !459, !noalias !16305 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !461, !noalias !16305
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %13, align 8, !tbaa !459, !noalias !16305 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !461, !noalias !16305
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !16305
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !16305
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !16304
  %i.aq = load ptr, ptr %19, align 8, !tbaa !1030, !noalias !16306
  store ptr %i.aq, ptr %0, align 8, !tbaa !1030
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ar, align 8, !tbaa !3197
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.al

bb.n:                                             ; preds = %bb.j
  %i.as = trunc nuw i8 %.1 to i1
  br i1 %i.as, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.093114, i16 10) ; 2 uses
  %i.au = extractvalue { i16, i1 } %i.at, 1
  br i1 %i.au, label %bb.p, label %_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit, !prof !526

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39, !noalias !16307
  store ptr @.str.214, ptr %11, align 16, !tbaa !461, !alias.scope !16308, !noalias !16307
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aw = sext i16 %.093114 to i32
  store i32 %i.aw, ptr %i.av, align 16, !tbaa !461, !noalias !16307
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 10, ptr %i.ax, align 16, !tbaa !461, !noalias !16307
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.74, i64 20, i64 284, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39, !noalias !16307
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.74) #47
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %12, align 8, !tbaa !459  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !461
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit: ; preds = %bb.o
  %i.be = extractvalue { i16, i1 } %i.at, 0       ; 2 uses
  %22 = sext i8 %i.ae to i16
  %i.bf = add nsw i16 %22, -48                    ; 2 uses
  %i.bg = tail call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.be, i16 %i.bf) ; 2 uses
  %i.bh = extractvalue { i16, i1 } %i.bg, 1
  br i1 %i.bh, label %bb.s, label %_ZN8facebook5velox12checkedMinusIsEET_S2_S2_PKc.exit, !prof !526

bb.s:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !16309
  store ptr @.str.214, ptr %9, align 16, !tbaa !461, !alias.scope !16310, !noalias !16309
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bj = sext i16 %i.be to i32
  store i32 %i.bj, ptr %i.bi, align 16, !tbaa !461, !noalias !16309
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 32
  %23 = sext i16 %i.bf to i32
  store i32 %23, ptr %i.bk, align 16, !tbaa !461, !noalias !16309
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.212, i64 20, i64 284, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !16309
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12checkedMinusIsEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.212) #47
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %10, align 8, !tbaa !459  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.u
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !461
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %common.resume

_ZN8facebook5velox12checkedMinusIsEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit
  %i.br = extractvalue { i16, i1 } %i.bg, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN8facebook5velox12checkedMinusIsEET_S2_S2_PKc.exit
  %.194 = phi i16 [ %.093114, %bb.n ], [ %i.br, %_ZN8facebook5velox12checkedMinusIsEET_S2_S2_PKc.exit ] ; 2 uses
  %i.bs = add nsw i32 %.231, 1                    ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.a
  br i1 %i.bt, label %.lr.ph117, label %.loopexit, !llvm.loop !16284

.lr.ph:                                           ; preds = %.preheader98, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %.preheader98 ]
  %.332110 = phi i32 [ %i.dr, %bb.ak ], [ %.029, %.preheader98 ] ; 4 uses
  %.295109 = phi i16 [ %.396, %bb.ak ], [ 0, %.preheader98 ] ; 4 uses
  %i.bu = trunc nuw i8 %.2111 to i1
  br i1 %i.bu, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.bv = sext i32 %.332110 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !461
  %i.by = icmp eq i8 %i.bx, 46
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = add nsw i32 %.332110, 1                 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, %i.a
  br i1 %i.ca, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph
  %.4 = phi i32 [ %.332110, %.lr.ph ], [ %i.bz, %bb.x ], [ %.332110, %bb.w ] ; 2 uses
  %.3 = phi i8 [ 1, %.lr.ph ], [ 1, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.cb = sext i32 %.4 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !461 ; 2 uses
  %24 = sext i8 %i.cd to i32
  %isdigittmp = add nsw i32 %24, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !16311
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !16312
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %8), !noalias !16312
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 1, ptr noundef nonnull align 8 %7)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = load ptr, ptr %7, align 8, !tbaa !459, !noalias !16312 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN8facebook5velox6StatusD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %bb.aa
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !461, !noalias !16312
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit72

bb.ab:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %7, align 8, !tbaa !459, !noalias !16312 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63: ; preds = %bb.ab
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !461, !noalias !16312
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !16312
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit72:             ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !16312
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !16311
  %i.cp = load ptr, ptr %20, align 8, !tbaa !1030, !noalias !16313
  store ptr %i.cp, ptr %0, align 8, !tbaa !1030
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.cq, align 8, !tbaa !3197
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.al

bb.ac:                                            ; preds = %bb.y
  %i.cr = trunc nuw i8 %.3 to i1
  br i1 %i.cr, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.295109, i16 10) ; 2 uses
  %i.ct = extractvalue { i16, i1 } %i.cs, 1
  br i1 %i.ct, label %bb.ae, label %_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit78, !prof !526

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !16314
  store ptr @.str.214, ptr %5, align 16, !tbaa !461, !alias.scope !16315, !noalias !16314
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = sext i16 %.295109 to i32
  store i32 %i.cv, ptr %i.cu, align 16, !tbaa !461, !noalias !16314
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 10, ptr %i.cw, align 16, !tbaa !461, !noalias !16314
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.74, i64 20, i64 284, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !16314
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.74) #47
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %6, align 8, !tbaa !459   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.ag
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !461
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit78: ; preds = %bb.ad
  %i.dd = extractvalue { i16, i1 } %i.cs, 0       ; 2 uses
  %25 = sext i8 %i.cd to i16
  %i.de = add nsw i16 %25, -48                    ; 2 uses
  %i.df = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.dd, i16 %i.de) ; 2 uses
  %i.dg = extractvalue { i16, i1 } %i.df, 1
  br i1 %i.dg, label %bb.ah, label %_ZN8facebook5velox11checkedPlusIsEET_S2_S2_PKc.exit, !prof !526

bb.ah:                                            ; preds = %_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !16316
  store ptr @.str.214, ptr %3, align 16, !tbaa !461, !alias.scope !16317, !noalias !16316
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.di = sext i16 %i.dd to i32
  store i32 %i.di, ptr %i.dh, align 16, !tbaa !461, !noalias !16316
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %26 = sext i16 %i.de to i32
  store i32 %26, ptr %i.dj, align 16, !tbaa !461, !noalias !16316
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.76, i64 20, i64 284, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !16316
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIsEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.76) #47
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %4, align 8, !tbaa !459   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.aj
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !461
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %common.resume

_ZN8facebook5velox11checkedPlusIsEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIsEET_S2_S2_PKc.exit78
  %i.dq = extractvalue { i16, i1 } %i.df, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ac, %_ZN8facebook5velox11checkedPlusIsEET_S2_S2_PKc.exit
  %.396 = phi i16 [ %.295109, %bb.ac ], [ %i.dq, %_ZN8facebook5velox11checkedPlusIsEET_S2_S2_PKc.exit ] ; 2 uses
  %i.dr = add nsw i32 %.4, 1                      ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.a
  br i1 %i.ds, label %.lr.ph, label %.loopexit, !llvm.loop !16299

.loopexit:                                        ; preds = %bb.x, %bb.ak, %bb.i, %bb.v, %.preheader98, %.preheader
  %.497 = phi i16 [ 0, %.preheader98 ], [ 0, %.preheader ], [ %.194, %bb.v ], [ %.093114, %bb.i ], [ %.295109, %bb.x ], [ %.396, %bb.ak ]
  store i16 %.497, ptr %0, align 8, !tbaa !461
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dt, align 8, !tbaa !3197
  br label %bb.al

bb.al:                                            ; preds = %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, %_ZN8facebook5velox6StatusD2Ev.exit57, %_ZN8facebook5velox6StatusD2Ev.exit72, %.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.smul.with.overflow.i16(i16, i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.ssub.with.overflow.i16(i16, i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE2ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.2807, align 8           ; 7 uses
  %7 = alloca %class.anon.2806, align 8           ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE2ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE2ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE2ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE2ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE2ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE2ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16318

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE2ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE2ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE2ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE2ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !16321, !range !435, !noundef !436
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16322
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !455
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit11, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE2ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit
  %.019 = phi i64 [ %i.k, %.preheader ], [ %i.bm, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE2ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit ] ; 3 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.019, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !3505, !nonnull !436, !align !475 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3078
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !3501, !nonnull !436, !align !475
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3502, !nonnull !436, !align !475
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !530
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3503, !nonnull !436, !align !475
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3006
  invoke void @_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE(ptr noundef nonnull align 8 dereferenceable(537) %i.t, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef %i.x, ptr noundef %i.aa)
          to label %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE2ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %.body

bb.bx:                                            ; preds = %.noexc.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 1)
          to label %.noexc30 unwind label %bb.bm

.noexc30:                                         ; preds = %bb.bx
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %.noexc30
  %i.jh = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i153 = icmp eq ptr %i.jh, null
  br i1 %.not.i153, label %_ZN8facebook5velox6StatusD2Ev.exit154, label %bb.bz, !prof !516

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit154

_ZN8facebook5velox6StatusD2Ev.exit154:            ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit

bb.ca:                                            ; preds = %.noexc30
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i155 = icmp eq ptr %i.jj, null
  br i1 %.not.i155, label %_ZN8facebook5velox6StatusD2Ev.exit156, label %bb.cb, !prof !516

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

_ZN8facebook5velox6StatusD2Ev.exit156:            ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %.body

_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %.noexc.thread
  call void @__cxa_end_catch()
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  ret void

bb.cd:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.at
  %.merged = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn23.pn, %bb.at ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.merged

bb.ce:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #48
  unreachable

bb.cf:                                            ; preds = %_ZNK8facebook5velox14VeloxException11isUserErrorEv.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE4EvNS1_15SparkCastPolicyEE18convertStringToIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.1850") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.3206", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.3206", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.3206", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.3206", align 16 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %17 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 7 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !17630
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39, !noalias !17631
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.208, i64 49, i64 0, ptr nonnull %16), !noalias !17631
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, i8 noundef signext 1, ptr noundef nonnull align 8 %15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %15, align 8, !tbaa !459, !noalias !17631 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !461, !noalias !17631
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !459, !noalias !17631 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !461, !noalias !17631
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50 ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !17631
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !17631
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !17630
  %i.n = load ptr, ptr %17, align 8, !tbaa !1030, !noalias !17632
  store ptr %i.n, ptr %0, align 8, !tbaa !1030
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.o, align 8, !tbaa !2380
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %i.p = load i8, ptr %2, align 1, !tbaa !461     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  switch i8 %i.p, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %bb.g

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @_ZN8facebook5velox6Status9UserErrorIJRA49_KcRS3_EEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %18, ptr noundef nonnull align 1 dereferenceable(49) @.str.209, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = load ptr, ptr %18, align 8, !tbaa !1030, !noalias !17633
  store ptr %i.s, ptr %0, align 8, !tbaa !1030
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.t, align 8, !tbaa !2380
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.al

bb.g:                                             ; preds = %bb.e, %bb.f
  %.029 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]      ; 3 uses
  %i.u = icmp slt i32 %.029, %i.a                 ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader98

.preheader98:                                     ; preds = %bb.g
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.g
  br i1 %i.u, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.bq, %bb.v ], [ %.029, %.preheader ] ; 4 uses
  %.093114 = phi i64 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph117
  %i.w = sext i32 %.130115 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !461
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %.130115, 1                 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.a
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph117
  %.231 = phi i32 [ %.130115, %.lr.ph117 ], [ %i.aa, %bb.i ], [ %.130115, %bb.h ] ; 2 uses
  %.1 = phi i8 [ 1, %.lr.ph117 ], [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ac = sext i32 %.231 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !461 ; 2 uses
  %21 = sext i8 %i.ae to i32
  %isdigittmp36 = add nsw i32 %21, -48
  %isdigit37 = icmp ult i32 %isdigittmp36, 10
  br i1 %isdigit37, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !17634
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !17635
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %14), !noalias !17635
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %19, i8 noundef signext 1, ptr noundef nonnull align 8 %13)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %13, align 8, !tbaa !459, !noalias !17635 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !461, !noalias !17635
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %13, align 8, !tbaa !459, !noalias !17635 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !461, !noalias !17635
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !17635
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !17635
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !17634
  %i.aq = load ptr, ptr %19, align 8, !tbaa !1030, !noalias !17636
  store ptr %i.aq, ptr %0, align 8, !tbaa !1030
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ar, align 8, !tbaa !2380
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.al

bb.n:                                             ; preds = %bb.j
  %i.as = trunc nuw i8 %.1 to i1
  br i1 %i.as, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.093114, i64 10) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %bb.p, label %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit, !prof !526

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39, !noalias !17637
  store ptr @.str.51, ptr %11, align 16, !tbaa !461, !alias.scope !17638, !noalias !17637
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.093114, ptr %i.av, align 16, !tbaa !461, !noalias !17637
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 10, ptr %i.aw, align 16, !tbaa !461, !noalias !17637
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.74, i64 20, i64 828, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39, !noalias !17637
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.74) #47
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %12, align 8, !tbaa !459  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !461
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit: ; preds = %bb.o
  %i.bd = extractvalue { i64, i1 } %i.at, 0       ; 2 uses
  %22 = sext i8 %i.ae to i64
  %i.be = add nsw i64 %22, -48                    ; 2 uses
  %i.bf = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bd, i64 %i.be) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  br i1 %i.bg, label %bb.s, label %_ZN8facebook5velox12checkedMinusIlEET_S2_S2_PKc.exit, !prof !526

bb.s:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !17639
  store ptr @.str.51, ptr %9, align 16, !tbaa !461, !alias.scope !17640, !noalias !17639
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.bd, ptr %i.bh, align 16, !tbaa !461, !noalias !17639
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.be, ptr %i.bi, align 16, !tbaa !461, !noalias !17639
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.212, i64 20, i64 828, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !17639
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12checkedMinusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.212) #47
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %10, align 8, !tbaa !459  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.u
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !461
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %common.resume

_ZN8facebook5velox12checkedMinusIlEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit
  %i.bp = extractvalue { i64, i1 } %i.bf, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN8facebook5velox12checkedMinusIlEET_S2_S2_PKc.exit
  %.194 = phi i64 [ %.093114, %bb.n ], [ %i.bp, %_ZN8facebook5velox12checkedMinusIlEET_S2_S2_PKc.exit ] ; 2 uses
  %i.bq = add nsw i32 %.231, 1                    ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.a
  br i1 %i.br, label %.lr.ph117, label %.loopexit, !llvm.loop !17614

.lr.ph:                                           ; preds = %.preheader98, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %.preheader98 ]
  %.332110 = phi i32 [ %i.dn, %bb.ak ], [ %.029, %.preheader98 ] ; 4 uses
  %.295109 = phi i64 [ %.396, %bb.ak ], [ 0, %.preheader98 ] ; 4 uses
  %i.bs = trunc nuw i8 %.2111 to i1
  br i1 %i.bs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.bt = sext i32 %.332110 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !461
  %i.bw = icmp eq i8 %i.bv, 46
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bx = add nsw i32 %.332110, 1                 ; 2 uses
  %i.by = icmp eq i32 %i.bx, %i.a
  br i1 %i.by, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph
  %.4 = phi i32 [ %.332110, %.lr.ph ], [ %i.bx, %bb.x ], [ %.332110, %bb.w ] ; 2 uses
  %.3 = phi i8 [ 1, %.lr.ph ], [ 1, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.bz = sext i32 %.4 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !461 ; 2 uses
  %23 = sext i8 %i.cb to i32
  %isdigittmp = add nsw i32 %23, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !17641
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !17642
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %8), !noalias !17642
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 1, ptr noundef nonnull align 8 %7)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr %7, align 8, !tbaa !459, !noalias !17642 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN8facebook5velox6StatusD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %bb.aa
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !461, !noalias !17642
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit72

bb.ab:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %7, align 8, !tbaa !459, !noalias !17642 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63: ; preds = %bb.ab
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !461, !noalias !17642
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !17642
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit72:             ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !17642
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !17641
  %i.cn = load ptr, ptr %20, align 8, !tbaa !1030, !noalias !17643
  store ptr %i.cn, ptr %0, align 8, !tbaa !1030
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.co, align 8, !tbaa !2380
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.al

bb.ac:                                            ; preds = %bb.y
  %i.cp = trunc nuw i8 %.3 to i1
  br i1 %i.cp, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.295109, i64 10) ; 2 uses
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  br i1 %i.cr, label %bb.ae, label %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit78, !prof !526

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !17644
  store ptr @.str.51, ptr %5, align 16, !tbaa !461, !alias.scope !17645, !noalias !17644
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.295109, ptr %i.cs, align 16, !tbaa !461, !noalias !17644
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 10, ptr %i.ct, align 16, !tbaa !461, !noalias !17644
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.74, i64 20, i64 828, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !17644
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.74) #47
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %6, align 8, !tbaa !459   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.ag
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !461
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit78: ; preds = %bb.ad
  %i.da = extractvalue { i64, i1 } %i.cq, 0       ; 2 uses
  %24 = sext i8 %i.cb to i64
  %i.db = add nsw i64 %24, -48                    ; 2 uses
  %i.dc = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.da, i64 %i.db) ; 2 uses
  %i.dd = extractvalue { i64, i1 } %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %_ZN8facebook5velox11checkedPlusIlEET_S2_S2_PKc.exit, !prof !526

bb.ah:                                            ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !17646
  store ptr @.str.51, ptr %3, align 16, !tbaa !461, !alias.scope !17647, !noalias !17646
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.da, ptr %i.de, align 16, !tbaa !461, !noalias !17646
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.db, ptr %i.df, align 16, !tbaa !461, !noalias !17646
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.76, i64 20, i64 828, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !17646
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.76) #47
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %4, align 8, !tbaa !459   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.aj
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !461
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %common.resume

_ZN8facebook5velox11checkedPlusIlEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit78
  %i.dm = extractvalue { i64, i1 } %i.dc, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ac, %_ZN8facebook5velox11checkedPlusIlEET_S2_S2_PKc.exit
  %.396 = phi i64 [ %.295109, %bb.ac ], [ %i.dm, %_ZN8facebook5velox11checkedPlusIlEET_S2_S2_PKc.exit ] ; 2 uses
  %i.dn = add nsw i32 %.4, 1                      ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.a
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !17629

.loopexit:                                        ; preds = %bb.x, %bb.ak, %bb.i, %bb.v, %.preheader98, %.preheader
  %.497 = phi i64 [ 0, %.preheader98 ], [ 0, %.preheader ], [ %.194, %bb.v ], [ %.093114, %bb.i ], [ %.295109, %bb.x ], [ %.396, %bb.ak ]
  store i64 %.497, ptr %0, align 8, !tbaa !461
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dp, align 8, !tbaa !2380
  br label %bb.al

bb.al:                                            ; preds = %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, %_ZN8facebook5velox6StatusD2Ev.exit57, %_ZN8facebook5velox6StatusD2Ev.exit72, %.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE4ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.3208, align 8           ; 7 uses
  %7 = alloca %class.anon.3207, align 8           ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE4ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE4ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE4ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE4ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE4ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE4ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17648

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE4ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE4ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE4ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE4ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !17651, !range !435, !noundef !436
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17652
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !455
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit11, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE4ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit
  %.019 = phi i64 [ %i.k, %.preheader ], [ %i.bm, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE4ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit ] ; 3 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.019, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !3989, !nonnull !436, !align !475 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3660
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !3985, !nonnull !436, !align !475
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %.body

bb.bx:                                            ; preds = %.noexc.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 1)
          to label %.noexc30 unwind label %bb.bm

.noexc30:                                         ; preds = %bb.bx
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %.noexc30
  %i.jh = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i153 = icmp eq ptr %i.jh, null
  br i1 %.not.i153, label %_ZN8facebook5velox6StatusD2Ev.exit154, label %bb.bz, !prof !516

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit154

_ZN8facebook5velox6StatusD2Ev.exit154:            ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit

bb.ca:                                            ; preds = %.noexc30
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %16, align 8, !tbaa !1030
  %.not.i155 = icmp eq ptr %i.jj, null
  br i1 %.not.i155, label %_ZN8facebook5velox6StatusD2Ev.exit156, label %bb.cb, !prof !516

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

_ZN8facebook5velox6StatusD2Ev.exit156:            ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %.body

_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %.noexc.thread
  call void @__cxa_end_catch()
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN5folly15expected_detail15ExpectedStorageInN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util15SparkCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  ret void

bb.cd:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.at
  %.merged = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn23.pn, %bb.at ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.merged

bb.ce:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #48
  unreachable

bb.cf:                                            ; preds = %_ZNK8facebook5velox14VeloxException11isUserErrorEv.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE10EvNS1_15SparkCastPolicyEE18convertStringToIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.3381") align 16 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.3708", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.3708", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.3708", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.3708", align 16 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %17 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 7 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !19400
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39, !noalias !19401
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.208, i64 49, i64 0, ptr nonnull %16), !noalias !19401
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, i8 noundef signext 1, ptr noundef nonnull align 8 %15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %15, align 8, !tbaa !459, !noalias !19401 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !461, !noalias !19401
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !459, !noalias !19401 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !461, !noalias !19401
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50 ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !19401
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39, !noalias !19401
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !19400
  %i.n = load ptr, ptr %17, align 8, !tbaa !1030, !noalias !19402
  store ptr %i.n, ptr %0, align 16, !tbaa !1030
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.o, align 16, !tbaa !4275
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %i.p = load i8, ptr %2, align 1, !tbaa !461     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  switch i8 %i.p, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %bb.g

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @_ZN8facebook5velox6Status9UserErrorIJRA49_KcRS3_EEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %18, ptr noundef nonnull align 1 dereferenceable(49) @.str.209, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = load ptr, ptr %18, align 8, !tbaa !1030, !noalias !19403
  store ptr %i.s, ptr %0, align 16, !tbaa !1030
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.t, align 16, !tbaa !4275
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.al

bb.g:                                             ; preds = %bb.e, %bb.f
  %.029 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]      ; 3 uses
  %i.u = icmp slt i32 %.029, %i.a                 ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader98

.preheader98:                                     ; preds = %bb.g
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.g
  br i1 %i.u, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.bq, %bb.v ], [ %.029, %.preheader ] ; 4 uses
  %.093114 = phi i128 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph117
  %i.w = sext i32 %.130115 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !461
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %.130115, 1                 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.a
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph117
  %.231 = phi i32 [ %.130115, %.lr.ph117 ], [ %i.aa, %bb.i ], [ %.130115, %bb.h ] ; 2 uses
  %.1 = phi i8 [ 1, %.lr.ph117 ], [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ac = sext i32 %.231 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !461
  %21 = sext i8 %i.ae to i32
  %isdigittmp36 = add nsw i32 %21, -48            ; 2 uses
  %isdigit37 = icmp ult i32 %isdigittmp36, 10
  br i1 %isdigit37, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !19404
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !19405
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %14), !noalias !19405
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %19, i8 noundef signext 1, ptr noundef nonnull align 8 %13)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %13, align 8, !tbaa !459, !noalias !19405 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !461, !noalias !19405
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %13, align 8, !tbaa !459, !noalias !19405 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !461, !noalias !19405
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !19405
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !19405
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !19404
  %i.aq = load ptr, ptr %19, align 8, !tbaa !1030, !noalias !19406
  store ptr %i.aq, ptr %0, align 16, !tbaa !1030
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ar, align 16, !tbaa !4275
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.al

bb.n:                                             ; preds = %bb.j
  %i.as = trunc nuw i8 %.1 to i1
  br i1 %i.as, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.093114, i128 10) ; 2 uses
  %i.au = extractvalue { i128, i1 } %i.at, 1
  br i1 %i.au, label %bb.p, label %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit, !prof !526

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39, !noalias !19407
  store ptr @.str.67, ptr %11, align 16, !tbaa !461, !alias.scope !19408, !noalias !19407
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i128 %.093114, ptr %i.av, align 16, !tbaa !461, !noalias !19407
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i128 10, ptr %i.aw, align 16, !tbaa !461, !noalias !19407
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.74, i64 20, i64 1372, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39, !noalias !19407
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.74) #47
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %12, align 8, !tbaa !459  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !461
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit: ; preds = %bb.o
  %i.bd = extractvalue { i128, i1 } %i.at, 0      ; 2 uses
  %i.be = zext nneg i32 %isdigittmp36 to i128     ; 2 uses
  %i.bf = tail call { i128, i1 } @llvm.ssub.with.overflow.i128(i128 %i.bd, i128 %i.be) ; 2 uses
  %i.bg = extractvalue { i128, i1 } %i.bf, 1
  br i1 %i.bg, label %bb.s, label %_ZN8facebook5velox12checkedMinusInEET_S2_S2_PKc.exit, !prof !526

bb.s:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !19409
  store ptr @.str.67, ptr %9, align 16, !tbaa !461, !alias.scope !19410, !noalias !19409
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i128 %i.bd, ptr %i.bh, align 16, !tbaa !461, !noalias !19409
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i128 %i.be, ptr %i.bi, align 16, !tbaa !461, !noalias !19409
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.212, i64 20, i64 1372, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !19409
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12checkedMinusInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.212) #47
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %10, align 8, !tbaa !459  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.u
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !461
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %common.resume

_ZN8facebook5velox12checkedMinusInEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  %i.bp = extractvalue { i128, i1 } %i.bf, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN8facebook5velox12checkedMinusInEET_S2_S2_PKc.exit
  %.194 = phi i128 [ %.093114, %bb.n ], [ %i.bp, %_ZN8facebook5velox12checkedMinusInEET_S2_S2_PKc.exit ] ; 2 uses
  %i.bq = add nsw i32 %.231, 1                    ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.a
  br i1 %i.br, label %.lr.ph117, label %.loopexit, !llvm.loop !19384

.lr.ph:                                           ; preds = %.preheader98, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %.preheader98 ]
  %.332110 = phi i32 [ %i.dn, %bb.ak ], [ %.029, %.preheader98 ] ; 4 uses
  %.295109 = phi i128 [ %.396, %bb.ak ], [ 0, %.preheader98 ] ; 4 uses
  %i.bs = trunc nuw i8 %.2111 to i1
  br i1 %i.bs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.bt = sext i32 %.332110 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !461
  %i.bw = icmp eq i8 %i.bv, 46
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bx = add nsw i32 %.332110, 1                 ; 2 uses
  %i.by = icmp eq i32 %i.bx, %i.a
  br i1 %i.by, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph
  %.4 = phi i32 [ %.332110, %.lr.ph ], [ %i.bx, %bb.x ], [ %.332110, %bb.w ] ; 2 uses
  %.3 = phi i8 [ 1, %.lr.ph ], [ 1, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.bz = sext i32 %.4 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !461
  %22 = sext i8 %i.cb to i32
  %isdigittmp = add nsw i32 %22, -48              ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !19411
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !19412
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.210, i64 33, i64 0, ptr nonnull %8), !noalias !19412
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 1, ptr noundef nonnull align 8 %7)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr %7, align 8, !tbaa !459, !noalias !19412 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN8facebook5velox6StatusD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %bb.aa
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !461, !noalias !19412
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #49
  br label %_ZN8facebook5velox6StatusD2Ev.exit72

bb.ab:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %7, align 8, !tbaa !459, !noalias !19412 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63: ; preds = %bb.ab
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !461, !noalias !19412
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i64: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !19412
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit72:             ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !19412
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !19411
  %i.cn = load ptr, ptr %20, align 8, !tbaa !1030, !noalias !19413
  store ptr %i.cn, ptr %0, align 16, !tbaa !1030
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.co, align 16, !tbaa !4275
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.al

bb.ac:                                            ; preds = %bb.y
  %i.cp = trunc nuw i8 %.3 to i1
  br i1 %i.cp, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.295109, i128 10) ; 2 uses
  %i.cr = extractvalue { i128, i1 } %i.cq, 1
  br i1 %i.cr, label %bb.ae, label %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit78, !prof !526

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !19414
  store ptr @.str.67, ptr %5, align 16, !tbaa !461, !alias.scope !19415, !noalias !19414
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i128 %.295109, ptr %i.cs, align 16, !tbaa !461, !noalias !19414
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i128 10, ptr %i.ct, align 16, !tbaa !461, !noalias !19414
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.74, i64 20, i64 1372, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !19414
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.74) #47
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %6, align 8, !tbaa !459   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.ag
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !461
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit78: ; preds = %bb.ad
  %i.da = extractvalue { i128, i1 } %i.cq, 0      ; 2 uses
  %i.db = zext nneg i32 %isdigittmp to i128       ; 2 uses
  %i.dc = tail call { i128, i1 } @llvm.sadd.with.overflow.i128(i128 %i.da, i128 %i.db) ; 2 uses
  %i.dd = extractvalue { i128, i1 } %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %_ZN8facebook5velox11checkedPlusInEET_S2_S2_PKc.exit, !prof !526

bb.ah:                                            ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !19416
  store ptr @.str.67, ptr %3, align 16, !tbaa !461, !alias.scope !19417, !noalias !19416
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i128 %i.da, ptr %i.de, align 16, !tbaa !461, !noalias !19416
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i128 %i.db, ptr %i.df, align 16, !tbaa !461, !noalias !19416
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.76, i64 20, i64 1372, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !19416
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.76) #47
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %4, align 8, !tbaa !459   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.aj
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !461
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %common.resume

_ZN8facebook5velox11checkedPlusInEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit78
  %i.dm = extractvalue { i128, i1 } %i.dc, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ac, %_ZN8facebook5velox11checkedPlusInEET_S2_S2_PKc.exit
  %.396 = phi i128 [ %.295109, %bb.ac ], [ %i.dm, %_ZN8facebook5velox11checkedPlusInEET_S2_S2_PKc.exit ] ; 2 uses
  %i.dn = add nsw i32 %.4, 1                      ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.a
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !19399

.loopexit:                                        ; preds = %bb.x, %bb.ak, %bb.i, %bb.v, %.preheader98, %.preheader
  %.497 = phi i128 [ 0, %.preheader98 ], [ 0, %.preheader ], [ %.194, %bb.v ], [ %.093114, %bb.i ], [ %.295109, %bb.x ], [ %.396, %bb.ak ]
  store i128 %.497, ptr %0, align 16, !tbaa !461
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.dp, align 16, !tbaa !4275
  br label %bb.al

bb.al:                                            ; preds = %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, %_ZN8facebook5velox6StatusD2Ev.exit57, %_ZN8facebook5velox6StatusD2Ev.exit72, %.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.smul.with.overflow.i128(i128, i128) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.ssub.with.overflow.i128(i128, i128) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.sadd.with.overflow.i128(i128, i128) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE10ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.3710, align 8           ; 7 uses
  %7 = alloca %class.anon.3709, align 8           ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE10ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE10ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE10ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE10ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE10ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE10ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !19418

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE10ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE10ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE10ELS8_7EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE1_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE10ELS7_7EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE1_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !19421, !range !435, !noundef !436
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19422
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !455
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit11, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE10ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit
  %.019 = phi i64 [ %i.k, %.preheader ], [ %i.bm, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE10ELS5_7EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE1_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit ] ; 3 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.019, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !4585, !nonnull !436, !align !475 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4148
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !4581, !nonnull !436, !align !475
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE7ELS4_5ENS0_4util16LegacyCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %.body

bb.bn:                                            ; preds = %.noexc.thread167
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 1)
          to label %.noexc28 unwind label %bb.bc

.noexc28:                                         ; preds = %bb.bn
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %.noexc28
  %i.ha = load ptr, ptr %13, align 8, !tbaa !1030
  %.not.i105 = icmp eq ptr %i.ha, null
  br i1 %.not.i105, label %_ZN8facebook5velox6StatusD2Ev.exit106, label %bb.bp, !prof !516

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %_ZN8facebook5velox6StatusD2Ev.exit106

_ZN8facebook5velox6StatusD2Ev.exit106:            ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE7ELS4_5ENS0_4util16LegacyCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit

bb.bq:                                            ; preds = %.noexc28
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %13, align 8, !tbaa !1030
  %.not.i107 = icmp eq ptr %i.hc, null
  br i1 %.not.i107, label %_ZN8facebook5velox6StatusD2Ev.exit108, label %bb.br, !prof !516

bb.br:                                            ; preds = %bb.bq
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %_ZN8facebook5velox6StatusD2Ev.exit108

_ZN8facebook5velox6StatusD2Ev.exit108:            ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %.body

_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE7ELS4_5ENS0_4util16LegacyCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %.noexc.thread
  call void @__cxa_end_catch()
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN5folly15expected_detail15ExpectedStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE7ELS4_5ENS0_4util16LegacyCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit
  ret void

bb.bt:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.aj
  %.merged = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn20.pn.pn, %bb.aj ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.merged

bb.bu:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #48
  unreachable

bb.bv:                                            ; preds = %_ZNK8facebook5velox14VeloxException11isUserErrorEv.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_16LegacyCastPolicyEE7tryCastIfEEN5folly8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6StatusEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.4766") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.a = load float, ptr %1, align 4, !tbaa !1023
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !560, !alias.scope !23618
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !460, !alias.scope !23618
  store i8 0, ptr %i.b, align 8, !tbaa !461, !alias.scope !23618
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_NS_8DtoaModeEjNS_9DtoaFlagsE(float noundef %i.a, ptr noundef nonnull align 8 %2, i32 noundef 0, i32 noundef 0, i32 noundef 0)
          to label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !459, !alias.scope !23618 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !461, !alias.scope !23618
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #49
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_.exit: ; preds = %bb.a
  invoke void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_16LegacyCastPolicyEE25normalizeStandardNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !560
  %i.j = load ptr, ptr %2, align 8, !tbaa !459    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !tbaa !460  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.j, ptr %0, align 8, !tbaa !459
  %i.o = load i64, ptr %i.b, align 8, !tbaa !461
  store i64 %i.o, ptr %i.i, align 8, !tbaa !461
  %.pre = load i64, ptr %i.c, align 8, !tbaa !460
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %i.l, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !460
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.r, align 8, !tbaa !5940
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.e:                                             ; preds = %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !459    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !461
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_16LegacyCastPolicyEE25normalizeStandardNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZN3fLB37FLAGS_experimental_enable_legacy_castE, align 1, !tbaa !441, !range !435, !noundef !436
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !460  ; 8 uses
  %.not.i.i.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !459   ; 5 uses
  br i1 %.not.i.i.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %.02740.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.i, %bb.c ]
  %i.g = tail call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef 46, i64 noundef %.041.i.i) #39 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.g, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %lhsc = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %lhsc, 46
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %.not33.i.i = icmp eq i64 %i.k, 0
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %.pre to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.p = getelementptr i8, ptr %.pre, i64 %i.d    ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !461
  %1 = sext i8 %i.r to i32
  %isdigittmp = add nsw i32 %1, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.s = and i64 %i.d, -2
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.u = add nsw i64 %i.d, 2                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %.pre, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = load i64, ptr %i.v, align 8, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  store i16 12334, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull @.str.223, i64 noundef 2)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.f, %bb.g
  store i64 %i.u, ptr %i.c, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ab, align 1, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE7ELS7_5EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.5000, align 8           ; 7 uses
  %7 = alloca %class.anon.4999, align 8           ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE7ELS8_5EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE7ELS7_5EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE7ELS8_5EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE7ELS7_5EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE7ELS8_5EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE7ELS7_5EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23619

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE7ELS7_5EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE7ELS8_5EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS5_19applyCastPrimitivesILNS0_8TypeKindE7ELS8_5EEEvRKNS0_17SelectivityVectorERNS4_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISE_EEUliE_EEvSD_SB_SJ_OT_EUlSL_E_EEvPKmiibSL_EUlimE_ZNS3_ISN_EEvSP_iibSL_EUliE_EEviiSL_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_19applyCastPrimitivesILNS0_8TypeKindE7ELS7_5EEEvRKNS0_17SelectivityVectorERNS3_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISD_EEUliE_EEvSC_SA_SI_OT_EUlSK_E_EEvPKmiibSK_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !23622, !range !435, !noundef !436
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23623
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !455
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit11, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE7ELS5_5EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit
  %.019 = phi i64 [ %i.k, %.preheader ], [ %i.bm, %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE7ELS5_5EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit ] ; 3 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.019, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !6168, !nonnull !436, !align !475 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5897
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !6164, !nonnull !436, !align !475
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !6165, !nonnull !436, !align !475
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1218
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !6166, !nonnull !436, !align !475
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !351
  invoke void @_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE7ELS4_5ENS0_4util16LegacyCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE(ptr noundef nonnull align 8 dereferenceable(537) %i.t, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef %i.x, ptr noundef %i.aa)
          to label %_ZZN8facebook5velox4exec8CastExpr27applyToSelectedNoThrowLocalIZNS2_19applyCastPrimitivesILNS0_8TypeKindE7ELS5_5EEEvRKNS0_17SelectivityVectorERNS1_7EvalCtxERKNS0_10BaseVectorERSt10shared_ptrISB_EEUliE_EEvSA_S8_SG_OT_ENKUlSI_E_clIiEEDaSI_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { ptr, i32 } %i.ab, 1      ; 2 uses
  %i.ae = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #39
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_16PrestoCastPolicyEE7tryCastIfEEN5folly8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6StatusEEERKT_:bb.a
  br label %.body

bb.j:                                             ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !23643
  %i.ba = load ptr, ptr %7, align 8, !tbaa !459   ; 6 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  %i.bc = load ptr, ptr %8, align 8, !tbaa !459   ; 5 uses
  %i.bd = icmp eq ptr %i.bc, %i.aq                ; 2 uses
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.bd, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.bd, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !460 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !461
  store i8 %i.bg, ptr %i.ba, align 1, !tbaa !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.ar, align 8, !tbaa !460 ; 2 uses
  store i64 %i.bh, ptr %i.an, align 8, !tbaa !460
  %i.bi = load ptr, ptr %7, align 8, !tbaa !459
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !461
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bc, ptr %7, align 8, !tbaa !459
  %i.bk = load <2 x i64>, ptr %i.ar, align 8, !tbaa !461
  store <2 x i64> %i.bk, ptr %i.an, align 8, !tbaa !461
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !461
  store ptr %i.bc, ptr %7, align 8, !tbaa !459
  %i.bm = load <2 x i64>, ptr %i.ar, align 8, !tbaa !461
  store <2 x i64> %i.bm, ptr %i.an, align 8, !tbaa !461
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %8, align 8, !tbaa !459
  store i64 %i.bl, ptr %i.aq, align 8, !tbaa !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %8, align 8, !tbaa !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.n ], [ %i.aq, %bb.o ]
  store i64 0, ptr %i.ar, align 8, !tbaa !460
  store i8 0, ptr %i.bn, align 1, !tbaa !461
  %i.bo = load ptr, ptr %8, align 8, !tbaa !459   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aq
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.aq, align 8, !tbaa !461
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_16PrestoCastPolicyEE27normalizeScientificNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !560
  %i.bt = load ptr, ptr %7, align 8, !tbaa !459   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.am
  br i1 %i.bu, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35

bb.q:                                             ; preds = %bb.p
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !460 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35: ; preds = %bb.p
  store ptr %i.bt, ptr %0, align 8, !tbaa !459
  %i.by = load i64, ptr %i.am, align 8, !tbaa !461
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !461
  %.pre = load i64, ptr %i.an, align 8, !tbaa !460
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35
  %i.bz = phi i64 [ %i.bv, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !460
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.cb, align 8, !tbaa !5940
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.t

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.body
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %i.av, %.body ]
  %i.cd = load ptr, ptr %7, align 8, !tbaa !459   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.s
  %i.cf = load i64, ptr %i.am, align 8, !tbaa !461
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn15 = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ]
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_16PrestoCastPolicyEE25normalizeStandardNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZN3fLB37FLAGS_experimental_enable_legacy_castE, align 1, !tbaa !441, !range !435, !noundef !436
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !460  ; 8 uses
  %.not.i.i.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !459   ; 5 uses
  br i1 %.not.i.i.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %.02740.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.i, %bb.c ]
  %i.g = tail call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef 46, i64 noundef %.041.i.i) #39 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.g, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %lhsc = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %lhsc, 46
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %.not33.i.i = icmp eq i64 %i.k, 0
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %.pre to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.p = getelementptr i8, ptr %.pre, i64 %i.d    ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !461
  %1 = sext i8 %i.r to i32
  %isdigittmp = add nsw i32 %1, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.s = and i64 %i.d, -2
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.u = add nsw i64 %i.d, 2                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %.pre, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = load i64, ptr %i.v, align 8, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  store i16 12334, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull @.str.223, i64 noundef 2)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.f, %bb.g
  store i64 %i.u, ptr %i.c, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ab, align 1, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_16PrestoCastPolicyEE27normalizeScientificNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !460  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %.pre = load ptr, ptr %0, align 8               ; 5 uses
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %.pre, i32 noundef 69, i64 noundef %i.b) #39 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.pre to i64
  %i.f = sub i64 %i.d, %i.e
  %.0.i = select i1 %.not.i, i64 -1, i64 %i.f
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.1.i = phi i64 [ %.0.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ -1, %bb.a ] ; 4 uses
  %i.g = trunc i64 %.1.i to i32
  %i.h = and i64 %.1.i, 4294967295                ; 2 uses
  %i.i = add i32 %i.g, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.i, i32 -1) ; 3 uses
  %i.j = add nsw i32 %smin, 1                     ; 2 uses
  %indvars.iv.next67 = add nsw i64 %i.h, -1       ; 2 uses
  %indvars68 = trunc i64 %indvars.iv.next67 to i32 ; 2 uses
  %i.k = icmp sgt i32 %indvars68, -1
  br i1 %i.k, label %.lr.ph72, label %.critedge

bb.b:                                             ; preds = %.lr.ph72
  %indvars.iv.next = add nsw i64 %indvars.iv.next70, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.l = icmp sgt i32 %indvars, -1
  br i1 %i.l, label %.lr.ph72, label %.critedge, !llvm.loop !23644

.lr.ph72:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %bb.b
  %indvars71 = phi i32 [ %indvars, %bb.b ], [ %indvars68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ]
  %indvars.iv.next70 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ] ; 3 uses
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.b ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ]
  %i.m = and i64 %indvars.iv.next70, 2147483647
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !461
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.b, label %.critedge.split.loop.exit, !llvm.loop !23644

.critedge.split.loop.exit:                        ; preds = %.lr.ph72
  %i.q = trunc nuw i64 %indvars.iv69 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %.critedge.split.loop.exit
  %.041.in.lcssa = phi i32 [ %i.q, %.critedge.split.loop.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ], [ %i.j, %bb.b ]
  %.041.lcssa = phi i32 [ %indvars71, %.critedge.split.loop.exit ], [ %smin, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ], [ %smin, %bb.b ]
  %i.r = sext i32 %.041.lcssa to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !461
  %i.u = icmp eq i8 %i.t, 46
  %i.v = zext i1 %i.u to i32
  %spec.select = add nsw i32 %.041.in.lcssa, %i.v ; 3 uses
  %i.w = add nsw i32 %spec.select, 1              ; 2 uses
  %i.x = sext i32 %spec.select to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.x
  store i8 69, ptr %i.y, align 1, !tbaa !461
  %i.z = add i64 %.1.i, 1                         ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !461
  %i.ad = icmp eq i8 %i.ac, 45
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.ae = add nsw i32 %spec.select, 2
  %i.af = sext i32 %i.w to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  store i8 45, ptr %i.ag, align 1, !tbaa !461
  %i.ah = add i64 %.1.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.140 = phi i32 [ %i.ae, %bb.c ], [ %i.w, %.critedge ] ; 2 uses
  %.0 = phi i64 [ %i.ah, %bb.c ], [ %i.z, %.critedge ] ; 3 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !460 ; 9 uses
  %i.aj = icmp ult i64 %.0, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !459
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge4
  %.142 = phi i64 [ %.0, %.lr.ph ], [ %i.an, %.critedge4 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.142
  %i.am = load i8, ptr %i.al, align 1, !tbaa !461
  switch i8 %i.am, label %.critedge2 [
    i8 48, label %.critedge4
    i8 43, label %.critedge4
  ]

.critedge4:                                       ; preds = %bb.e, %bb.e
  %i.an = add i64 %.142, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.ai
  br i1 %exitcond.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, label %bb.e, !llvm.loop !23645

.critedge2:                                       ; preds = %bb.e, %bb.d
  %.1.lcssa = phi i64 [ %.0, %bb.d ], [ %.142, %bb.e ] ; 4 uses
  %i.ao = sub nuw i64 %i.ai, %.1.lcssa
  %i.ap = icmp ugt i64 %.1.lcssa, %i.ai
  br i1 %i.ap, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.f:                                             ; preds = %.critedge2
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i64 noundef %.1.lcssa, i64 noundef %i.ai) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %.critedge4, %.critedge2
  %i.aq = phi i64 [ %i.ao, %.critedge2 ], [ 0, %.critedge4 ] ; 2 uses
  %.1.lcssa59 = phi i64 [ %.1.lcssa, %.critedge2 ], [ %i.ai, %.critedge4 ] ; 2 uses
  %i.ar = sext i32 %.140 to i64                   ; 4 uses
  %i.as = icmp ult i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i64 noundef %i.ar, i64 noundef %i.ai) #47
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.at = load ptr, ptr %0, align 8, !tbaa !459
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.1.lcssa59
  %i.av = sub nuw i64 %i.ai, %i.ar
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.av)
  %i.aw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar, i64 noundef %spec.select.i.i.i, ptr noundef %i.au, i64 noundef %i.aq) ; 0 uses
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !460 ; 8 uses
  %i.ay = sub i64 %i.ax, %.1.lcssa59
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %.140, %i.az
  %i.bb = sext i32 %i.ba to i64                   ; 6 uses
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit
  %i.bd = sub nuw i64 %i.bb, %i.ax                ; 4 uses
  %i.be = sub i64 9223372036854775807, %i.ax
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.bg = load ptr, ptr %0, align 8, !tbaa !459   ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_15SparkCastPolicyEE7tryCastIfEEN5folly8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6StatusEEERKT_:bb.a
  br label %.body

bb.j:                                             ; preds = %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !23876
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39, !noalias !23876
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !23876
  %i.ba = load ptr, ptr %7, align 8, !tbaa !459   ; 6 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  %i.bc = load ptr, ptr %8, align 8, !tbaa !459   ; 5 uses
  %i.bd = icmp eq ptr %i.bc, %i.aq                ; 2 uses
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.bd, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.bd, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !460 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !461
  store i8 %i.bg, ptr %i.ba, align 1, !tbaa !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.ar, align 8, !tbaa !460 ; 2 uses
  store i64 %i.bh, ptr %i.an, align 8, !tbaa !460
  %i.bi = load ptr, ptr %7, align 8, !tbaa !459
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !461
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bc, ptr %7, align 8, !tbaa !459
  %i.bk = load <2 x i64>, ptr %i.ar, align 8, !tbaa !461
  store <2 x i64> %i.bk, ptr %i.an, align 8, !tbaa !461
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !461
  store ptr %i.bc, ptr %7, align 8, !tbaa !459
  %i.bm = load <2 x i64>, ptr %i.ar, align 8, !tbaa !461
  store <2 x i64> %i.bm, ptr %i.an, align 8, !tbaa !461
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %8, align 8, !tbaa !459
  store i64 %i.bl, ptr %i.aq, align 8, !tbaa !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %8, align 8, !tbaa !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.n ], [ %i.aq, %bb.o ]
  store i64 0, ptr %i.ar, align 8, !tbaa !460
  store i8 0, ptr %i.bn, align 1, !tbaa !461
  %i.bo = load ptr, ptr %8, align 8, !tbaa !459   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aq
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.aq, align 8, !tbaa !461
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_15SparkCastPolicyEE27normalizeScientificNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !560
  %i.bt = load ptr, ptr %7, align 8, !tbaa !459   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.am
  br i1 %i.bu, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

bb.q:                                             ; preds = %bb.p
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !460 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.p
  store ptr %i.bt, ptr %0, align 8, !tbaa !459
  %i.by = load i64, ptr %i.am, align 8, !tbaa !461
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !461
  %.pre = load i64, ptr %i.an, align 8, !tbaa !460
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  %i.bz = phi i64 [ %i.bv, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !460
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.cb, align 8, !tbaa !5940
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.t

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.body
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %i.av, %.body ]
  %i.cd = load ptr, ptr %7, align 8, !tbaa !459   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.s
  %i.cf = load i64, ptr %i.am, align 8, !tbaa !461
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn15 = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_15SparkCastPolicyEE25normalizeStandardNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZN3fLB37FLAGS_experimental_enable_legacy_castE, align 1, !tbaa !441, !range !435, !noundef !436
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !460  ; 8 uses
  %.not.i.i.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !459   ; 5 uses
  br i1 %.not.i.i.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %.02740.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.i, %bb.c ]
  %i.g = tail call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef 46, i64 noundef %.041.i.i) #39 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.g, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %lhsc = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %lhsc, 46
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %.not33.i.i = icmp eq i64 %i.k, 0
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %.pre to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.p = getelementptr i8, ptr %.pre, i64 %i.d    ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !461
  %1 = sext i8 %i.r to i32
  %isdigittmp = add nsw i32 %1, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.s = and i64 %i.d, -2
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.u = add nsw i64 %i.d, 2                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %.pre, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = load i64, ptr %i.v, align 8, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  store i16 12334, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull @.str.223, i64 noundef 2)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.f, %bb.g
  store i64 %i.u, ptr %i.c, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ab, align 1, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_15SparkCastPolicyEE27normalizeScientificNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !460  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %.pre = load ptr, ptr %0, align 8               ; 5 uses
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %.pre, i32 noundef 69, i64 noundef %i.b) #39 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.pre to i64
  %i.f = sub i64 %i.d, %i.e
  %.0.i = select i1 %.not.i, i64 -1, i64 %i.f
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.1.i = phi i64 [ %.0.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ -1, %bb.a ] ; 4 uses
  %i.g = trunc i64 %.1.i to i32
  %i.h = and i64 %.1.i, 4294967295                ; 2 uses
  %i.i = add i32 %i.g, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.i, i32 -1) ; 3 uses
  %i.j = add nsw i32 %smin, 1                     ; 2 uses
  %indvars.iv.next67 = add nsw i64 %i.h, -1       ; 2 uses
  %indvars68 = trunc i64 %indvars.iv.next67 to i32 ; 2 uses
  %i.k = icmp sgt i32 %indvars68, -1
  br i1 %i.k, label %.lr.ph72, label %.critedge

bb.b:                                             ; preds = %.lr.ph72
  %indvars.iv.next = add nsw i64 %indvars.iv.next70, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.l = icmp sgt i32 %indvars, -1
  br i1 %i.l, label %.lr.ph72, label %.critedge, !llvm.loop !23877

.lr.ph72:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %bb.b
  %indvars71 = phi i32 [ %indvars, %bb.b ], [ %indvars68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ]
  %indvars.iv.next70 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ] ; 3 uses
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.b ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ]
  %i.m = and i64 %indvars.iv.next70, 2147483647
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !461
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.b, label %.critedge.split.loop.exit, !llvm.loop !23877

.critedge.split.loop.exit:                        ; preds = %.lr.ph72
  %i.q = trunc nuw i64 %indvars.iv69 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %.critedge.split.loop.exit
  %.041.in.lcssa = phi i32 [ %i.q, %.critedge.split.loop.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ], [ %i.j, %bb.b ]
  %.041.lcssa = phi i32 [ %indvars71, %.critedge.split.loop.exit ], [ %smin, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ], [ %smin, %bb.b ]
  %i.r = sext i32 %.041.lcssa to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !461
  %i.u = icmp eq i8 %i.t, 46
  %i.v = zext i1 %i.u to i32
  %spec.select = add nsw i32 %.041.in.lcssa, %i.v ; 3 uses
  %i.w = add nsw i32 %spec.select, 1              ; 2 uses
  %i.x = sext i32 %spec.select to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.x
  store i8 69, ptr %i.y, align 1, !tbaa !461
  %i.z = add i64 %.1.i, 1                         ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !461
  %i.ad = icmp eq i8 %i.ac, 45
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.ae = add nsw i32 %spec.select, 2
  %i.af = sext i32 %i.w to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  store i8 45, ptr %i.ag, align 1, !tbaa !461
  %i.ah = add i64 %.1.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.140 = phi i32 [ %i.ae, %bb.c ], [ %i.w, %.critedge ] ; 2 uses
  %.0 = phi i64 [ %i.ah, %bb.c ], [ %i.z, %.critedge ] ; 3 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !460 ; 9 uses
  %i.aj = icmp ult i64 %.0, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !459
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge4
  %.142 = phi i64 [ %.0, %.lr.ph ], [ %i.an, %.critedge4 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.142
  %i.am = load i8, ptr %i.al, align 1, !tbaa !461
  switch i8 %i.am, label %.critedge2 [
    i8 48, label %.critedge4
    i8 43, label %.critedge4
  ]

.critedge4:                                       ; preds = %bb.e, %bb.e
  %i.an = add i64 %.142, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.ai
  br i1 %exitcond.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, label %bb.e, !llvm.loop !23878

.critedge2:                                       ; preds = %bb.e, %bb.d
  %.1.lcssa = phi i64 [ %.0, %bb.d ], [ %.142, %bb.e ] ; 4 uses
  %i.ao = sub nuw i64 %i.ai, %.1.lcssa
  %i.ap = icmp ugt i64 %.1.lcssa, %i.ai
  br i1 %i.ap, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.f:                                             ; preds = %.critedge2
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i64 noundef %.1.lcssa, i64 noundef %i.ai) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %.critedge4, %.critedge2
  %i.aq = phi i64 [ %i.ao, %.critedge2 ], [ 0, %.critedge4 ] ; 2 uses
  %.1.lcssa59 = phi i64 [ %.1.lcssa, %.critedge2 ], [ %i.ai, %.critedge4 ] ; 2 uses
  %i.ar = sext i32 %.140 to i64                   ; 4 uses
  %i.as = icmp ult i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i64 noundef %i.ar, i64 noundef %i.ai) #47
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.at = load ptr, ptr %0, align 8, !tbaa !459
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.1.lcssa59
  %i.av = sub nuw i64 %i.ai, %i.ar
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.av)
  %i.aw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar, i64 noundef %spec.select.i.i.i, ptr noundef %i.au, i64 noundef %i.aq) ; 0 uses
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !460 ; 8 uses
  %i.ay = sub i64 %i.ax, %.1.lcssa59
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %.140, %i.az
  %i.bb = sext i32 %i.ba to i64                   ; 6 uses
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit
  %i.bd = sub nuw i64 %i.bb, %i.ax                ; 4 uses
  %i.be = sub i64 9223372036854775807, %i.ax
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.bg = load ptr, ptr %0, align 8, !tbaa !459   ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_18SparkTryCastPolicyEE7tryCastIfEEN5folly8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6StatusEEERKT_:bb.a
  br label %.body

bb.j:                                             ; preds = %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !23903
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39, !noalias !23903
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !23903
  %i.ba = load ptr, ptr %7, align 8, !tbaa !459   ; 6 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  %i.bc = load ptr, ptr %8, align 8, !tbaa !459   ; 5 uses
  %i.bd = icmp eq ptr %i.bc, %i.aq                ; 2 uses
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.bd, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.bd, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !460 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !461
  store i8 %i.bg, ptr %i.ba, align 1, !tbaa !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.ar, align 8, !tbaa !460 ; 2 uses
  store i64 %i.bh, ptr %i.an, align 8, !tbaa !460
  %i.bi = load ptr, ptr %7, align 8, !tbaa !459
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !461
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bc, ptr %7, align 8, !tbaa !459
  %i.bk = load <2 x i64>, ptr %i.ar, align 8, !tbaa !461
  store <2 x i64> %i.bk, ptr %i.an, align 8, !tbaa !461
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !461
  store ptr %i.bc, ptr %7, align 8, !tbaa !459
  %i.bm = load <2 x i64>, ptr %i.ar, align 8, !tbaa !461
  store <2 x i64> %i.bm, ptr %i.an, align 8, !tbaa !461
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %8, align 8, !tbaa !459
  store i64 %i.bl, ptr %i.aq, align 8, !tbaa !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %8, align 8, !tbaa !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.n ], [ %i.aq, %bb.o ]
  store i64 0, ptr %i.ar, align 8, !tbaa !460
  store i8 0, ptr %i.bn, align 1, !tbaa !461
  %i.bo = load ptr, ptr %8, align 8, !tbaa !459   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aq
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.aq, align 8, !tbaa !461
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_18SparkTryCastPolicyEE27normalizeScientificNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !560
  %i.bt = load ptr, ptr %7, align 8, !tbaa !459   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.am
  br i1 %i.bu, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

bb.q:                                             ; preds = %bb.p
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !460 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.p
  store ptr %i.bt, ptr %0, align 8, !tbaa !459
  %i.by = load i64, ptr %i.am, align 8, !tbaa !461
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !461
  %.pre = load i64, ptr %i.an, align 8, !tbaa !460
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  %i.bz = phi i64 [ %i.bv, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !460
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.cb, align 8, !tbaa !5940
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.t

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.body
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %i.av, %.body ]
  %i.cd = load ptr, ptr %7, align 8, !tbaa !459   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.s
  %i.cf = load i64, ptr %i.am, align 8, !tbaa !461
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn15 = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_18SparkTryCastPolicyEE25normalizeStandardNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZN3fLB37FLAGS_experimental_enable_legacy_castE, align 1, !tbaa !441, !range !435, !noundef !436
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !460  ; 8 uses
  %.not.i.i.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !459   ; 5 uses
  br i1 %.not.i.i.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %.02740.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.i, %bb.c ]
  %i.g = tail call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef 46, i64 noundef %.041.i.i) #39 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.g, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %lhsc = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %lhsc, 46
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %.not33.i.i = icmp eq i64 %i.k, 0
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %.pre to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.p = getelementptr i8, ptr %.pre, i64 %i.d    ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !461
  %1 = sext i8 %i.r to i32
  %isdigittmp = add nsw i32 %1, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.s = and i64 %i.d, -2
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.u = add nsw i64 %i.d, 2                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %.pre, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = load i64, ptr %i.v, align 8, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  store i16 12334, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull @.str.223, i64 noundef 2)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.f, %bb.g
  store i64 %i.u, ptr %i.c, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ab, align 1, !tbaa !461
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4util9ConverterILNS0_8TypeKindE7EvNS1_18SparkTryCastPolicyEE27normalizeScientificNotationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !460  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %.pre = load ptr, ptr %0, align 8               ; 5 uses
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %.pre, i32 noundef 69, i64 noundef %i.b) #39 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.pre to i64
  %i.f = sub i64 %i.d, %i.e
  %.0.i = select i1 %.not.i, i64 -1, i64 %i.f
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.1.i = phi i64 [ %.0.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ -1, %bb.a ] ; 4 uses
  %i.g = trunc i64 %.1.i to i32
  %i.h = and i64 %.1.i, 4294967295                ; 2 uses
  %i.i = add i32 %i.g, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.i, i32 -1) ; 3 uses
  %i.j = add nsw i32 %smin, 1                     ; 2 uses
  %indvars.iv.next67 = add nsw i64 %i.h, -1       ; 2 uses
  %indvars68 = trunc i64 %indvars.iv.next67 to i32 ; 2 uses
  %i.k = icmp sgt i32 %indvars68, -1
  br i1 %i.k, label %.lr.ph72, label %.critedge

bb.b:                                             ; preds = %.lr.ph72
  %indvars.iv.next = add nsw i64 %indvars.iv.next70, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.l = icmp sgt i32 %indvars, -1
  br i1 %i.l, label %.lr.ph72, label %.critedge, !llvm.loop !23904

.lr.ph72:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %bb.b
  %indvars71 = phi i32 [ %indvars, %bb.b ], [ %indvars68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ]
  %indvars.iv.next70 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ] ; 3 uses
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.b ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ]
  %i.m = and i64 %indvars.iv.next70, 2147483647
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !461
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.b, label %.critedge.split.loop.exit, !llvm.loop !23904

.critedge.split.loop.exit:                        ; preds = %.lr.ph72
  %i.q = trunc nuw i64 %indvars.iv69 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %.critedge.split.loop.exit
  %.041.in.lcssa = phi i32 [ %i.q, %.critedge.split.loop.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ], [ %i.j, %bb.b ]
  %.041.lcssa = phi i32 [ %indvars71, %.critedge.split.loop.exit ], [ %smin, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ], [ %smin, %bb.b ]
  %i.r = sext i32 %.041.lcssa to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !461
  %i.u = icmp eq i8 %i.t, 46
  %i.v = zext i1 %i.u to i32
  %spec.select = add nsw i32 %.041.in.lcssa, %i.v ; 3 uses
  %i.w = add nsw i32 %spec.select, 1              ; 2 uses
  %i.x = sext i32 %spec.select to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.x
  store i8 69, ptr %i.y, align 1, !tbaa !461
  %i.z = add i64 %.1.i, 1                         ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !461
  %i.ad = icmp eq i8 %i.ac, 45
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.ae = add nsw i32 %spec.select, 2
  %i.af = sext i32 %i.w to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  store i8 45, ptr %i.ag, align 1, !tbaa !461
  %i.ah = add i64 %.1.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.140 = phi i32 [ %i.ae, %bb.c ], [ %i.w, %.critedge ] ; 2 uses
  %.0 = phi i64 [ %i.ah, %bb.c ], [ %i.z, %.critedge ] ; 3 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !460 ; 9 uses
  %i.aj = icmp ult i64 %.0, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !459
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge4
  %.142 = phi i64 [ %.0, %.lr.ph ], [ %i.an, %.critedge4 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.142
  %i.am = load i8, ptr %i.al, align 1, !tbaa !461
  switch i8 %i.am, label %.critedge2 [
    i8 48, label %.critedge4
    i8 43, label %.critedge4
  ]

.critedge4:                                       ; preds = %bb.e, %bb.e
  %i.an = add i64 %.142, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.ai
  br i1 %exitcond.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, label %bb.e, !llvm.loop !23905

.critedge2:                                       ; preds = %bb.e, %bb.d
  %.1.lcssa = phi i64 [ %.0, %bb.d ], [ %.142, %bb.e ] ; 4 uses
  %i.ao = sub nuw i64 %i.ai, %.1.lcssa
  %i.ap = icmp ugt i64 %.1.lcssa, %i.ai
  br i1 %i.ap, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.f:                                             ; preds = %.critedge2
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i64 noundef %.1.lcssa, i64 noundef %i.ai) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %.critedge4, %.critedge2
  %i.aq = phi i64 [ %i.ao, %.critedge2 ], [ 0, %.critedge4 ] ; 2 uses
  %.1.lcssa59 = phi i64 [ %.1.lcssa, %.critedge2 ], [ %i.ai, %.critedge4 ] ; 2 uses
  %i.ar = sext i32 %.140 to i64                   ; 4 uses
  %i.as = icmp ult i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i64 noundef %i.ar, i64 noundef %i.ai) #47
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.at = load ptr, ptr %0, align 8, !tbaa !459
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.1.lcssa59
  %i.av = sub nuw i64 %i.ai, %i.ar
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.av)
  %i.aw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar, i64 noundef %spec.select.i.i.i, ptr noundef %i.au, i64 noundef %i.aq) ; 0 uses
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !460 ; 8 uses
  %i.ay = sub i64 %i.ax, %.1.lcssa59
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %.140, %i.az
  %i.bb = sext i32 %i.ba to i64                   ; 6 uses
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm.exit
  %i.bd = sub nuw i64 %i.bb, %i.ax                ; 4 uses
  %i.be = sub i64 9223372036854775807, %i.ax
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.bg = load ptr, ptr %0, align 8, !tbaa !459   ; 2 uses
end_hunk_8
