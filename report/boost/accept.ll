Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/accept?download=true
inline.NumInlined: 28610
inline.NumDeleted: 8922
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZZN5boost5beast9websocket11accept_test13testOversizedINS1_14test_async_apiEEEvRKT_ENKUlvE_clB5cxx11Ev:bb.a
  %i.am = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.u
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !308
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.aq = load ptr, ptr %4, align 8, !tbaa !307   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.e, align 8, !tbaa !308
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.au = load ptr, ptr %5, align 8, !tbaa !307   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.c
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !308
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !303
  %i.az = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.a
  br i1 %i.ba, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !309 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  store ptr %i.az, ptr %0, align 8, !tbaa !307
  %i.be = load i64, ptr %i.a, align 8, !tbaa !308
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !308
  %.pre = load i64, ptr %i.b, align 8, !tbaa !309
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = phi i64 [ %i.bb, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !309
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.u
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.l
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !308
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.k ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bk, %bb.l ] ; 2 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !307   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.e
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.br = load i64, ptr %i.e, align 8, !tbaa !308
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !307   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.c
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !308
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.bx = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.a
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !308
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN5boost5beast9websocket11accept_test17testInvalidInputsEvENKUlNS_6system10error_codeENS_4core17basic_string_viewIcEEE_clES4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, ptr %2, i64 %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.boost::beast::unit_test::suite::abort_exception", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 8 uses
  %8 = alloca %"class.boost::system::system_error", align 8 ; 5 uses
  %9 = alloca %"struct.boost::source_location", align 16 ; 6 uses
  %10 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %11 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %12 = alloca %"class.boost::beast::websocket::stream", align 8 ; 10 uses
  %13 = alloca %"class.boost::beast::test::basic_stream", align 8 ; 10 uses
  %14 = alloca %"class.boost::asio::const_buffer", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = lshr i64 %3, 1
  %i.d = add i64 %3, -1
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEELb1EED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEELb1EED2Ev.exit
  %.01790 = phi i32 [ 0, %bb.a ], [ %i.el, %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEELb1EED2Ev.exit ] ; 2 uses
  switch i32 %.01790, label %bb.f [
    i32 2, label %bb.e
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.018 = phi i64 [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ 1, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.q = load ptr, ptr %0, align 8, !tbaa !7360, !nonnull !338, !align !341
  call void @_ZN5boost11make_sharedINS_5beast9websocket6streamINS1_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEELb1EE9impl_typeEJRS7_EEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.r = load ptr, ptr %12, align 8, !tbaa !420
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  invoke void @_ZN5boost5beast4test7connectINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEENS1_12basic_streamIT_EERSA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::test::basic_stream") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %bb.g unwind label %bb.ac

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %12, align 8, !tbaa !420
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.v = sub nuw i64 %3, %.018                    ; 2 uses
  %i.w = icmp ugt i64 %.018, %3
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.144)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  store ptr @.str.59, ptr %11, align 8, !tbaa !422
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.145, ptr %i.x, align 8, !tbaa !423
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 589, ptr %i.y, align 8, !tbaa !424
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 87, ptr %i.z, align 4, !tbaa !425
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11) #37
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !429
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #35 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ae) #37
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.l
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.k
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !429 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ah = invoke { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 noundef %i.v)
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.v) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ab, i64 %i.aj, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #35 ; 0 uses
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 128 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !751 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !752
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.aj)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.speculated.i.i
  store ptr %i.au, ptr %i.an, align 8, !tbaa !751
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #35 ; 0 uses
  invoke void @_ZN5boost5beast4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEE5closeEv(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  store ptr %2, ptr %14, align 8
  store i64 %.018, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store ptr @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEELb1EE20default_decorate_resERNS0_4http7messageILb0ENSC_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSC_12basic_fieldsISH_EEEE, ptr %i.a, align 8, !tbaa !342
  invoke void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEELb1EE9do_acceptINS5_12const_bufferEPFvRNS0_4http7messageILb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsISJ_EEEEEEEvRKT_RKT0_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.noexc39 unwind label %bb.ad

.noexc39:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !318 ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %.not.i.i.i38 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i38, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.noexc39
  %i.ay = icmp ne i64 %i.aw, 1
  %i.az = load i32, ptr %7, align 8
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i, label %bb.u

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.noexc40 unwind label %bb.ad

.noexc40:                                         ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store <2 x ptr> <ptr @.str.49, ptr @.str>, ptr %9, align 16, !tbaa !404
  store i32 567, ptr %i.g, align 16, !tbaa !424
  store i32 47, ptr %i.h, align 4, !tbaa !425
  invoke void @_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #37
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc40
  unreachable

bb.t:                                             ; preds = %.noexc40
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost6system12system_errorE
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %.body41

bb.u:                                             ; preds = %bb.r, %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.bc = load i64, ptr %i.i, align 8, !tbaa !318 ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread61, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = icmp ne i64 %i.bc, 1
  %i.bf = load i32, ptr %1, align 8
  %i.bg = icmp ne i32 %i.bf, 0
  %or.cond = select i1 %i.be, i1 true, i1 %i.bg
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread61

_ZNK5boost6system10error_codecvbEv.exit.thread61: ; preds = %bb.v, %bb.u
  %i.bh = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !344 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !361, !range !337, !noundef !338
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  %i.bm = load i8, ptr %i.bl, align 1, !range !337
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond.i.i = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i

bb.w:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %5, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store <2 x ptr> <ptr @.str.35, ptr @.str.36>, ptr %6, align 16, !tbaa !404
  store i32 592, ptr %i.l, align 16, !tbaa !424
  store i32 48, ptr %i.m, align 4, !tbaa !425
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #37
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost6system12system_errorE
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %.body43

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !363
  invoke void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.bq)
          to label %.critedge unwind label %bb.ae

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.v
  %i.br = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  invoke void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.29, i32 noundef 511)
          to label %.noexc46 unwind label %bb.ag

end_hunk_0
