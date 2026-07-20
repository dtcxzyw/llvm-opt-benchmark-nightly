inline.NumInlined: 420
inline.NumDeleted: 171
begin_hunk_0_@_ZN8facebook5velox4util26fromTimeWithTimezoneStringEPKcmb:bb.a

bb.al:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit60, %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit71, %_ZN8facebook5velox6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status9UserErrorIJRA44_KcEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(44) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !210
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %3), !noalias !210
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !23, !noalias !210 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !10, !noalias !210
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !23, !noalias !210 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10, !noalias !210
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !210
  resume { ptr, i32 } %i.g

_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4util12_GLOBAL__N_122parseFractionalSecondsEPKcmRm(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %10 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %11 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %12 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !56     ; 4 uses
  %.not = icmp ult i64 %i.a, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10
  %.not27 = icmp eq i8 %i.c, 46
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.d, align 8, !tbaa !57
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.a, 1                      ; 5 uses
  store i64 %i.e, ptr %3, align 8, !tbaa !56
  %.not28 = icmp ult i64 %i.e, %2
  br i1 %.not28, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !216
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.18, i64 50, i64 0, ptr nonnull %9), !noalias !216
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 1, ptr noundef nonnull %8)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %8, align 8, !tbaa !23, !noalias !216 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN8facebook5velox6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !10, !noalias !216
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #17
  br label %_ZN8facebook5velox6StatusD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %8, align 8, !tbaa !23, !noalias !216 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.m, align 8, !tbaa !10, !noalias !216
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i38 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !216
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !213
  %i.q = load ptr, ptr %10, align 8, !tbaa !29, !noalias !219
  store ptr %i.q, ptr %0, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.r, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.s

bb.h:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.u = load i8, ptr %i.s, align 1, !tbaa !10
  %i.v = icmp eq i8 %i.u, 45                      ; 3 uses
  %.066.i.idx = zext i1 %i.v to i64               ; 2 uses
  %.066.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.066.i.idx ; 3 uses
  %i.w = add nuw nsw i64 %i.e, %.066.i.idx        ; 2 uses
  %.not37.i.i = icmp samesign eq i64 %i.w, %2
  br i1 %.not37.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph.i41.preheader.i

.lr.ph.i41.preheader.i:                           ; preds = %bb.h
  %gepdiff = sub nsw i64 %2, %i.w
  %scevgep118.i = getelementptr i8, ptr %.066.i, i64 %gepdiff
  br label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.critedge.i42.i, %.lr.ph.i41.preheader.i
  %.470.i = phi ptr [ %i.ak, %.critedge.i42.i ], [ %.066.i, %.lr.ph.i41.preheader.i ] ; 3 uses
  %.9.i = phi i32 [ %.10.i, %.critedge.i42.i ], [ 0, %.lr.ph.i41.preheader.i ] ; 3 uses
  %.02338.i.i = phi i32 [ %i.aa, %.critedge.i42.i ], [ 32, %.lr.ph.i41.preheader.i ]
  %i.x = load i8, ptr %.470.i, align 1, !tbaa !10
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %.not31.i.i = icmp ult i8 %i.y, 10
  br i1 %.not31.i.i, label %bb.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i

bb.i:                                             ; preds = %.lr.ph.i41.i
  %i.aa = add i32 %.02338.i.i, -4                 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ac = mul i32 %.9.i, 10
  %i.ad = add i32 %i.ac, %i.z
  br label %.critedge.i42.i

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i, i32 10) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ag = extractvalue { i32, i1 } %i.ae, 0
  %i.ah = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ag, i32 %i.z) ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  %i.aj = extractvalue { i32, i1 } %i.ah, 0
  br i1 %i.ai, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.critedge.i42.i, !prof !13

.critedge.i42.i:                                  ; preds = %bb.l, %bb.j
  %.10.i = phi i32 [ %i.ad, %bb.j ], [ %i.aj, %bb.l ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.470.i, i64 1 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ak, %i.t
  br i1 %.not.i.i36, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i41.i, !llvm.loop !14

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i42.i, %.lr.ph.i41.i
  %.167.i = phi ptr [ %.470.i, %.lr.ph.i41.i ], [ %scevgep118.i, %.critedge.i42.i ] ; 3 uses
  %.0.i = phi i32 [ %.9.i, %.lr.ph.i41.i ], [ %.10.i, %.critedge.i42.i ] ; 3 uses
  %.not68 = icmp eq ptr %.167.i, %.066.i
  %i.al = select i1 %i.v, i32 -2147483648, i32 2147483647
  %i.am = icmp ugt i32 %.0.i, %i.al
  %or.cond = select i1 %.not68, i1 true, i1 %i.am, !prof !16
  br i1 %or.cond, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %bb.o, !prof !16

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %bb.k, %bb.l, %bb.h, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !225
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.19, i64 55, i64 0, ptr nonnull %7), !noalias !225
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1, ptr noundef nonnull %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i
  %i.an = load ptr, ptr %6, align 8, !tbaa !23, !noalias !225 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN8facebook5velox6StatusD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40: ; preds = %bb.m
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !10, !noalias !225
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #17
  br label %_ZN8facebook5velox6StatusD2Ev.exit45

bb.n:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !23, !noalias !225 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i37: ; preds = %bb.n
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !10, !noalias !225
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i38: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !225
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit45:             ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !222
  %i.ay = load ptr, ptr %11, align 8, !tbaa !29, !noalias !228
  store ptr %i.ay, ptr %0, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.az, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.s

bb.o:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  %i.ba = ptrtoint ptr %.167.i to i64
  %i.bb = ptrtoint ptr %i.s to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = add i64 %i.bc, %i.e
  store i64 %i.bd, ptr %3, align 8, !tbaa !56
  %i.be = icmp ugt i64 %i.bc, 3
  br i1 %i.be, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.bf = sub i32 0, %.0.i
  %i.bg = select i1 %i.v, i32 %i.bf, i32 %.0.i    ; 2 uses
  %.not72 = icmp eq i64 %i.bc, 3
  br i1 %.not72, label %._crit_edge, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %13 = ptrtoaddr ptr %1 to i64
  %i.bh = add i64 %i.a, %13
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 2)
  %i.bj = add i64 %i.bh, %i.bi
  %14 = ptrtoaddr ptr %.167.i to i64
  %i.bk = sub i64 %i.bj, %14                      ; 2 uses
  %n.rnd.up = add i64 %i.bk, 5
  %n.vec = and i64 %n.rnd.up, -4
  %trip.count.minus.1 = add i64 %i.bk, 1
  %i.bl = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.bg, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.bl, %vector.ph ], [ %i.bm, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bm = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %._crit_edge.loopexit, label %vector.body, !llvm.loop !231

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !237
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.20, i64 56, i64 0, ptr nonnull %5), !noalias !237
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 1, ptr noundef nonnull %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %4, align 8, !tbaa !23, !noalias !237 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN8facebook5velox6StatusD2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51: ; preds = %bb.q
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !10, !noalias !237
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #17
  br label %_ZN8facebook5velox6StatusD2Ev.exit56

bb.r:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %4, align 8, !tbaa !23, !noalias !237 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i48: ; preds = %bb.r
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !10, !noalias !237
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i49: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !237
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit56:             ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !234
  %i.bz = load ptr, ptr %12, align 8, !tbaa !29, !noalias !240
  store ptr %i.bz, ptr %0, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ca, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.s

._crit_edge.loopexit:                             ; preds = %vector.body
  %.not92 = icmp ugt <4 x i64> %vec.ind, %broadcast.splat
  %i.cb = select <4 x i1> %.not92, <4 x i32> %vec.phi, <4 x i32> %i.bm
  %i.cc = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.cb)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.061.lcssa = phi i32 [ %i.bg, %.preheader ], [ %i.cc, %._crit_edge.loopexit ]
  store i32 %.061.lcssa, ptr %0, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cd, align 8, !tbaa !57
  br label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit45, %._crit_edge, %_ZN8facebook5velox6StatusD2Ev.exit56, %_ZN8facebook5velox6StatusD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNR5folly8ExpectedIiN8facebook5velox6StatusEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  switch i8 %i.b, label %bb.c [
    i8 1, label %_ZNK5folly8ExpectedIiN8facebook5velox6StatusEE12requireValueEv.exit
    i8 2, label %bb.b
  ], !prof !243

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #9
  unreachable

_ZNK5folly8ExpectedIiN8facebook5velox6StatusEE12requireValueEv.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status9UserErrorIJRA67_KcRmEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(67) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.47", align 16 ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !244
  %i.b = load i64, ptr %2, align 8, !tbaa !56, !noalias !244
  %.sroa.08.0.insert.ext.i = zext i64 %i.b to i128
  store i128 %.sroa.08.0.insert.ext.i, ptr %4, align 16, !noalias !244
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %1, i64 %i.a, i64 4, ptr nonnull %4), !noalias !244
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !23, !noalias !244 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN8facebook5velox6Status8fromArgsIJRmEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !10, !noalias !244
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #17
  br label %_ZN8facebook5velox6Status8fromArgsIJRmEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !23, !noalias !244 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10, !noalias !244
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !244
  resume { ptr, i32 } %i.h

_ZN8facebook5velox6Status8fromArgsIJRmEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #3

declare void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !247
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !247
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #19
  unreachable
}
end_hunk_0
