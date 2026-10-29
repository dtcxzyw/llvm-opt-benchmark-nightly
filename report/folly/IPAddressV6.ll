Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IPAddressV6?download=true
inline.NumInlined: 1256
inline.NumDeleted: 592
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3fmt2v96detail15write_codepointILm4EcNS0_8appenderEEET1_S4_cj:bb.a

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %.01419.i.i.ptr, align 1, !tbaa !28
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !28
  br label %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i

_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !125
  %i.as = add i64 %i.ar, %spec.select.i.i         ; 2 uses
  store i64 %i.as, ptr %i.b, align 8, !tbaa !125
  %.01419.i.i.add = add nuw nsw i64 %spec.select.i.i, %.01419.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.01419.i.i.add, 4
  br i1 %.not.i.i, label %_ZN3fmt2v96detail8copy_strIcPcEENS0_8appenderET0_S5_S4_.exit, label %bb.e, !llvm.loop !3

_ZN3fmt2v96detail8copy_strIcPcEENS0_8appenderET0_S5_S4_.exit: ; preds = %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail15write_codepointILm8EcNS0_8appenderEEET1_S4_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !31
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !call_target !134, !inline_history !6
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !125 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit: ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
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
  %1 = or i8 %.fr34, %.fr35
  %2 = icmp eq i8 %1, 0
  %3 = and i1 %i.i, %2
  %op.rdx33 = select i1 %3, i1 %i.h, i1 false
  br i1 %op.rdx33, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %i.l = icmp eq i8 %i.k, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b
  %.1 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = load i8, ptr %0, align 4, !tbaa !28
  %i.d = zext i8 %i.c to i16
  %i.e = shl nuw i16 %i.d, 8
  %i.f = zext i8 %i.b to i16
  %i.g = or disjoint i16 %i.e, %i.f               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !28    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = zext i8 %i.i to i32
  %i.o = or disjoint i32 %i.m, %i.n
  %i.p = zext i16 %i.g to i32
  %i.q = shl nuw i32 %i.p, 16
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp ne i32 %i.r, 536936448
  %i.t = icmp eq i16 %i.g, 8194
  %i.u = and i1 %i.t, %i.s
  br i1 %i.u, label %_ZN5follyL10unpackIntoEPKhPtm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZNK5folly11IPAddressV63strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(18) %0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !271
  %i.w = load ptr, ptr %4, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !27
  %i.z = ptrtoint ptr %i.w to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.y to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.z to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %1, align 16, !noalias !271
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.40, i64 35, i64 13, ptr nonnull %1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !271
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !28
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #34
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ar) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.07, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.07, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn20.ph = phi { ptr, i32 } [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn20 = phi { ptr, i32 } [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn20.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.v) #33
  br label %bb.g

_ZN5follyL10unpackIntoEPKhPtm.exit:               ; preds = %bb.a
  %i.as = zext i8 %i.k to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = zext i8 %i.i to i16
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = zext i8 %i.ax to i32
  %trunc = or disjoint i32 %i.bb, %i.bc
  %rev = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %rev32 = tail call i16 @llvm.bswap.i16(i16 %i.av)
  %.sroa.4.0.insert.insert = zext i16 %rev32 to i32
  %.sroa.01.0.insert.insert = or disjoint i32 %rev, %.sroa.4.0.insert.insert
  call void @_ZN5folly11IPAddressV4C1E7in_addr(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 %.sroa.01.0.insert.insert) #33
  %i.bd = load i32, ptr %2, align 4
  ret i32 %i.bd

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.f
  %.pn.pn19 = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn20, %bb.f ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
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
end_hunk_0
