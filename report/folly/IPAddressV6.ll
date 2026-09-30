Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IPAddressV6?download=true
inline.NumInlined: 1256
inline.NumDeleted: 592
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3fmt2v96detail15write_codepointILm8EcNS0_8appenderEEET1_S4_cj:bb.a
  store i8 92, ptr %i.m, align 1, !tbaa !28
  %i.n = load i64, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %i.p = load i64, ptr %i.e, align 8, !tbaa !126
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit7

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !31
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o), !call_target !134, !inline_history !6
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !125 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit7

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit7: ; preds = %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.o, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.t = phi i64 [ %i.n, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !138
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 %1, ptr %i.v, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 3472328296227680304, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit7
  %.09.i = phi i32 [ %2, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit7 ], [ %i.ac, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ %i.w, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit7 ], [ %i.ab, %bb.d ]
  %i.x = and i32 %.09.i, 15
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @.str.37, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ab = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !28
  %i.ac = lshr i32 %.09.i, 4                      ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %_ZN3fmt2v96detail11format_uintILj4EcjEEPT0_S4_T1_ib.exit, label %bb.d, !llvm.loop !4

_ZN3fmt2v96detail11format_uintILj4EcjEEPT0_S4_T1_ib.exit: ; preds = %bb.d
  %.pre.i.i8 = load i64, ptr %i.b, align 8, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i, %_ZN3fmt2v96detail11format_uintILj4EcjEEPT0_S4_T1_ib.exit
  %i.ad = phi i64 [ %.pre.i.i8, %_ZN3fmt2v96detail11format_uintILj4EcjEEPT0_S4_T1_ib.exit ], [ %i.as, %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i ] ; 2 uses
  %.01419.i.i.idx = phi i64 [ 0, %_ZN3fmt2v96detail11format_uintILj4EcjEEPT0_S4_T1_ib.exit ], [ %.01419.i.i.add, %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i ] ; 3 uses
  %.01419.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01419.i.i.idx ; 2 uses
  %gepdiff = sub nsw i64 8, %.01419.i.i.idx       ; 2 uses
  %i.ae = add i64 %gepdiff, %i.ad                 ; 2 uses
  %i.af = load i64, ptr %i.e, align 8, !tbaa !126 ; 2 uses
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %0, align 8, !tbaa !31
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ae), !call_target !134, !inline_history !7
  %.pre20.i.i = load i64, ptr %i.e, align 8, !tbaa !126
  %.pre21.i.i = load i64, ptr %i.b, align 8, !tbaa !125
  br label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aj = phi i64 [ %i.ad, %bb.e ], [ %.pre21.i.i, %bb.f ] ; 2 uses
  %i.ak = phi i64 [ %i.af, %bb.e ], [ %.pre20.i.i, %bb.f ]
  %i.al = sub i64 %i.ak, %i.aj
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %gepdiff) ; 5 uses
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !138
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj ; 2 uses
  %i.ao = icmp sgt i64 %spec.select.i.i, 1
  br i1 %i.ao, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %.01419.i.i.ptr, i64 %spec.select.i.i, i1 false)
  br label %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i

bb.h:                                             ; preds = %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = icmp eq i64 %spec.select.i.i, 1
  br i1 %i.ap, label %bb.i, label %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %.01419.i.i.ptr, align 1, !tbaa !28
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !28
  br label %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i

_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !125
  %i.as = add i64 %i.ar, %spec.select.i.i         ; 2 uses
  store i64 %i.as, ptr %i.b, align 8, !tbaa !125
  %.01419.i.i.add = add nuw nsw i64 %spec.select.i.i, %.01419.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.01419.i.i.add, 8
  br i1 %.not.i.i, label %_ZN3fmt2v96detail8copy_strIcPcEENS0_8appenderET0_S5_S4_.exit, label %bb.e, !llvm.loop !3

_ZN3fmt2v96detail8copy_strIcPcEENS0_8appenderET0_S5_S4_.exit: ; preds = %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::IPAddressV4", align 4 ; 2 uses
  %i.a = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 4
  %.not.8.i = icmp eq i8 %i.c, 0
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.d = icmp eq i64 %.fr.scalar, 0
  %op.rdx = select i1 %i.d, i1 %.not.8.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1
  %.not.9.i = icmp eq i8 %i.f, 0
  %or.cond = select i1 %op.rdx, i1 %.not.9.i, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 2
  %i.i = icmp eq i8 %i.h, -1
  %or.cond7 = select i1 %or.cond, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, -1
  %or.cond10 = select i1 %or.cond7, i1 %i.l, i1 false
  br i1 %or.cond10, label %bb.d, label %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread

_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread: ; preds = %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZN5folly24IPAddressFormatExceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.39)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.c:                                             ; preds = %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #33
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 4
  call void @_ZN5folly11IPAddressV4C1E7in_addr(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 %.sroa.0.0.copyload.i) #33
  %i.p = load i32, ptr %1, align 4
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 4
  %.fr35 = freeze i8 %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1
  %.fr34 = freeze i8 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 2
  %i.h = icmp eq i8 %i.g, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.i = icmp eq i64 %.fr.scalar, 0
  %i.j = or i8 %.fr34, %.fr35
  %i.k = icmp eq i8 %i.j, 0
  %i.l = and i1 %i.i, %i.k
  %op.rdx33 = select i1 %i.l, i1 %i.h, i1 false
  br i1 %op.rdx33, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = icmp eq i8 %i.n, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b
  %.1 = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly24IPAddressFormatExceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly11IPAddressV4C1E7in_addr(ptr noundef nonnull align 4 dereferenceable(4), i32) unnamed_addr #10

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i32 @_ZNK5folly11IPAddressV614getIPv4For6To4Ev(ptr noundef nonnull align 4 dereferenceable(18) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %2 = alloca %"class.folly::IPAddressV4", align 4 ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !28
  %7 = load i8, ptr %0, align 4, !tbaa !28
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = zext i8 %6 to i16
  %11 = or disjoint i16 %9, %10                   ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %13 = load i8, ptr %12, align 1, !tbaa !28      ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %15 = load i8, ptr %14, align 2, !tbaa !28      ; 2 uses
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = zext i8 %13 to i32
  %19 = or disjoint i32 %17, %18
  %20 = zext i16 %11 to i32
  %21 = shl nuw i32 %20, 16
  %22 = or disjoint i32 %19, %21
  %23 = icmp ne i32 %22, 536936448
  %i.a = icmp eq i16 %11, 8194
  %24 = and i1 %i.a, %23
  br i1 %24, label %_ZN5follyL10unpackIntoEPKhPtm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZNK5folly11IPAddressV63strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(18) %0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !271
  %i.c = load ptr, ptr %4, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = ptrtoint ptr %i.c to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.e to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.f to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %1, align 16, !noalias !271
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.40, i64 35, i64 13, ptr nonnull %1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !271
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.u = load i64, ptr %i.s, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #34
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.o, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.x) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.07, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.07, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn20.ph = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn20 = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn20.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #33
  br label %bb.g

_ZN5follyL10unpackIntoEPKhPtm.exit:               ; preds = %bb.a
  %25 = zext i8 %15 to i16
  %26 = shl nuw i16 %25, 8
  %27 = zext i8 %13 to i16
  %i.y = or disjoint i16 %26, %27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !28
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = zext i8 %i.aa to i32
  %trunc = or disjoint i32 %i.ae, %i.af
  %rev = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %rev32 = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %.sroa.4.0.insert.insert = zext i16 %rev32 to i32
  %.sroa.01.0.insert.insert = or disjoint i32 %rev, %.sroa.4.0.insert.insert
  call void @_ZN5folly11IPAddressV4C1E7in_addr(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 %.sroa.01.0.insert.insert) #33
  %i.ag = load i32, ptr %2, align 4
  ret i32 %i.ag

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.f
  %.pn.pn19 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn20, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  resume { ptr, i32 } %.pn.pn19

bb.h:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5folly11IPAddressV64typeEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #27 align 2 {
_ZN5follyL10unpackIntoEPKhPtm.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = load i8, ptr %0, align 4, !tbaa !28
  %i.d = zext i8 %i.c to i16
  %i.e = shl nuw i16 %i.d, 8
  %i.f = zext i8 %i.b to i16
  %i.g = or disjoint i16 %i.e, %i.f               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !28
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = zext i8 %i.i to i32
  %i.o = or disjoint i32 %i.m, %i.n
  %i.p = zext i16 %i.g to i32
  %i.q = shl nuw i32 %i.p, 16
  %i.r = or disjoint i32 %i.q, %i.o
  %i.s = icmp eq i32 %i.r, 536936448
  %i.t = icmp eq i16 %i.g, 8194
  %. = select i1 %i.t, i32 1, i32 2
  %.0 = select i1 %i.s, i32 0, i32 %.
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV66toJsonB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v9::format_arg_store.45", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZNK5folly11IPAddressV63strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(18) %1)
  %i.a = invoke noundef i64 @_ZNK5folly11IPAddressV64hashEv(ptr noundef nonnull align 4 dereferenceable(18) %1)
          to label %.noexc2 unwind label %bb.c

.noexc2:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !276
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.b = load ptr, ptr %3, align 8, !tbaa !26, !noalias !277
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27, !noalias !277
  %i.e = ptrtoint ptr %i.b to i64
  %.sroa.08.0.insert.ext.i = zext i64 %i.a to i128
  %.sroa.02.sroa.4.0.insert.ext.i = zext i64 %i.d to i128
  %.sroa.02.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.02.sroa.4.0.insert.ext.i, 64
  %.sroa.02.sroa.0.0.insert.ext.i = zext i64 %i.e to i128
  %.sroa.02.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.02.sroa.4.0.insert.shift.i, %.sroa.02.sroa.0.0.insert.ext.i
  store i128 %.sroa.02.sroa.0.0.insert.insert.i, ptr %2, align 16, !tbaa !28, !alias.scope !277
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i128 %.sroa.08.0.insert.ext.i, ptr %i.f, align 16, !tbaa !28, !alias.scope !277
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.41, i64 41, i64 77, ptr nonnull %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !276
  %i.g = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.c:                                             ; preds = %.noexc2, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !28
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.l
}

declare i32 @_ZN5folly9IPAddress10createIPv4ERKS0_(ptr noundef nonnull align 4 dereferenceable(22)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly9IPAddressC1ERKNS_11IPAddressV6E(ptr noundef nonnull align 4 dereferenceable(22), ptr noundef nonnull align 4 dereferenceable(18)) unnamed_addr #10

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV68inSubnetENS_5RangeIPKcEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %4 = alloca %"struct.std::pair", align 4        ; 6 uses
  %5 = alloca %"class.folly::IPAddress", align 4  ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"struct.std::array", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN5folly9IPAddress13createNetworkENS_5RangeIPKcEEib(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %4, ptr %1, ptr %2, i32 noundef -1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !280
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !140
  %i.c = icmp eq i16 %i.b, 10
  br i1 %i.c, label %_ZNK5folly9IPAddress4asV6Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZNK5folly9IPAddress6toJsonB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(22) %5)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !281
  %i.e = load ptr, ptr %7, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = ptrtoint ptr %i.e to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.g to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.h to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %3, align 16, !noalias !281
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.42, i64 32, i64 13, ptr nonnull %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !281
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.d, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.m unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !28
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
end_hunk_0
