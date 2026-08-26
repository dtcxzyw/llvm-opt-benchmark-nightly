Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_any_adapter?download=true
inline.NumInlined: 1108
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt11_Tuple_implILm0EJN5boost6system6resultIiNS0_5redis7adapter5errorEEENS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEED2Ev:bb.a
bb.d:                                             ; preds = %_ZNSt10_Head_baseILm0EN5boost6system6resultIiNS0_5redis7adapter5errorEEELb0EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt10_Head_baseILm1EN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5redis7adapter5errorEEELb0EED2Ev.exit, label %_ZNSt10_Head_baseILm1EN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5redis7adapter5errorEEELb0EED2Ev.exit.sink.split

_ZNSt10_Head_baseILm1EN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5redis7adapter5errorEEELb0EED2Ev.exit.sink.split: ; preds = %bb.d, %bb.c
  %.sink9.in = phi ptr [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %.sink = phi ptr [ %i.l, %bb.c ], [ %i.p, %bb.d ]
  %.sink9 = load i64, ptr %.sink9.in, align 8, !tbaa !16
  %i.s = add i64 %.sink9, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.s) #26
  br label %_ZNSt10_Head_baseILm1EN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5redis7adapter5errorEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm1EN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5redis7adapter5errorEEELb0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm1EN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5redis7adapter5errorEEELb0EED2Ev.exit.sink.split, %bb.d, %bb.c, %_ZNSt10_Head_baseILm0EN5boost6system6resultIiNS0_5redis7adapter5errorEEELb0EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultIiNS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::variant2::detail::variant_ma_base_impl<true, false, int, boost::redis::adapter::error>::L4", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.boost::system::result", align 8 ; 8 uses
  %4 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !75     ; 2 uses
  switch i32 %i.b, label %bb.i [
    i32 11, label %bb.b
    i32 6, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 %i.b, ptr %4, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !82   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 10 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.g, ptr %i.a, align 8, !tbaa !83
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %i.c, align 8, !tbaa !28
  %i.l = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.l, ptr %i.h, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !16
  store i8 %i.n, ptr %i.m, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  store i64 %i.o, ptr %i.i, align 8, !tbaa !13
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.r = load i32, ptr %4, align 8, !tbaa !79
  store i32 %i.r, ptr %3, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !9
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.i, align 8, !tbaa !13   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.y, i1 false)
  br label %_ZN5boost6system6resultIiNS_5redis7adapter5errorEEC2IS4_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleIS8_iEE5valueEiE4typeELi0EEEOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.s, align 8, !tbaa !28
  %i.z = load i64, ptr %i.h, align 8, !tbaa !16
  store i64 %i.z, ptr %i.t, align 8, !tbaa !16
  %.pre = load i64, ptr %i.i, align 8, !tbaa !13
  br label %_ZN5boost6system6resultIiNS_5redis7adapter5errorEEC2IS4_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleIS8_iEE5valueEiE4typeELi0EEEOS8_.exit

_ZN5boost6system6resultIiNS_5redis7adapter5errorEEC2IS4_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleIS8_iEE5valueEiE4typeELi0EEEOS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = phi i64 [ %i.w, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !13
  store ptr %i.h, ptr %i.c, align 8, !tbaa !28
  store i64 0, ptr %i.i, align 8, !tbaa !13
  store i8 0, ptr %i.h, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i8 2, ptr %i.ac, align 8, !tbaa !19
  %i.ad = load ptr, ptr %0, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.ad, ptr %2, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.ae, align 8, !tbaa !91
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm2EE4callILm0ENS_8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4EEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSD_(i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5boost6system6resultIiNS_5redis7adapter5errorEEaSEOS5_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN5boost6system6resultIiNS_5redis7adapter5errorEEC2IS4_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleIS8_iEE5valueEiE4typeELi0EEEOS8_.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #25
  unreachable

_ZN5boost6system6resultIiNS_5redis7adapter5errorEEaSEOS5_.exit: ; preds = %_ZN5boost6system6resultIiNS_5redis7adapter5errorEEC2IS4_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleIS8_iEE5valueEiE4typeELi0EEEOS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ah = load i8, ptr %i.ac, align 8, !tbaa !19
  %i.ai = icmp eq i8 %i.ah, 2
  br i1 %i.ai, label %bb.h, label %_ZN5boost6system6resultIiNS_5redis7adapter5errorEED2Ev.exit

bb.h:                                             ; preds = %_ZN5boost6system6resultIiNS_5redis7adapter5errorEEaSEOS5_.exit
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !28  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.t
  br i1 %i.ak, label %_ZN5boost6system6resultIiNS_5redis7adapter5errorEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.t, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #26
  br label %_ZN5boost6system6resultIiNS_5redis7adapter5errorEED2Ev.exit

_ZN5boost6system6resultIiNS_5redis7adapter5errorEED2Ev.exit: ; preds = %bb.h, %_ZN5boost6system6resultIiNS_5redis7adapter5errorEEaSEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.h
  br i1 %i.ao, label %_ZN5boost5redis7adapter5errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5boost6system6resultIiNS_5redis7adapter5errorEED2Ev.exit
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !16
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZN5boost5redis7adapter5errorD2Ev.exit

_ZN5boost5redis7adapter5errorD2Ev.exit:           ; preds = %_ZN5boost6system6resultIiNS_5redis7adapter5errorEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN5boost5redis7adapter5errorD2Ev.exit
  %.0 = phi i1 [ true, %_ZN5boost5redis7adapter5errorD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0

bb.j:                                             ; preds = %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5redis7adapter6detail11simple_implIiE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRiRKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %6 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !75
  %switch.i = icmp ult i32 %i.a, 5
  br i1 %switch.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %5, i32 noundef 6)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  call void @__clang_call_terminate(ptr %i.c) #25
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 5 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 3 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %.not.i.i.i.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !16
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.067.i.i.i.i = phi ptr [ %i.f, %bb.d ], [ %i.l, %bb.f ], [ %i.f, %bb.e ] ; 5 uses
  %i.m = phi i1 [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.e ] ; 3 uses
  %.017.i.i.i.i = phi i32 [ 1, %bb.d ], [ -1, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %.not37.i.i.i.i.i = icmp eq ptr %.067.i.i.i.i, %i.h
  br i1 %.not37.i.i.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %.lr.ph.i41.preheader.i.i.i.i

.lr.ph.i41.preheader.i.i.i.i:                     ; preds = %bb.g
  %.067117.i.i.i.i = ptrtoaddr ptr %.067.i.i.i.i to i64
  %i.n = sub i64 %i.i, %.067117.i.i.i.i
  %scevgep119.i.i.i.i = getelementptr i8, ptr %.067.i.i.i.i, i64 %i.n
  br label %.lr.ph.i41.i.i.i.i

.lr.ph.i41.i.i.i.i:                               ; preds = %.critedge.i42.i.i.i.i, %.lr.ph.i41.preheader.i.i.i.i
  %.471.i.i.i.i = phi ptr [ %i.ab, %.critedge.i42.i.i.i.i ], [ %.067.i.i.i.i, %.lr.ph.i41.preheader.i.i.i.i ] ; 3 uses
  %.9.i.i.i.i = phi i32 [ %.10.i.i.i.i, %.critedge.i42.i.i.i.i ], [ 0, %.lr.ph.i41.preheader.i.i.i.i ] ; 3 uses
  %.02338.i.i.i.i.i = phi i32 [ %i.r, %.critedge.i42.i.i.i.i ], [ 32, %.lr.ph.i41.preheader.i.i.i.i ]
  %i.o = load i8, ptr %.471.i.i.i.i, align 1, !tbaa !16
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %.not31.i.i.i.i.i = icmp ult i8 %i.p, 10
  br i1 %.not31.i.i.i.i.i, label %bb.h, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i41.i.i.i.i
  %i.r = add i32 %.02338.i.i.i.i.i, -4            ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.j, !prof !93

bb.i:                                             ; preds = %bb.h
  %i.t = mul i32 %.9.i.i.i.i, 10
  %i.u = add i32 %i.t, %i.q
  br label %.critedge.i42.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i.i.i.i, i32 10) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  br i1 %i.w, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %.split.i.i.i.i.i, !prof !94

.split.i.i.i.i.i:                                 ; preds = %bb.j
  %i.x = extractvalue { i32, i1 } %i.v, 0
  %i.y = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.x, i32 %i.q) ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  br i1 %i.z, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %.critedge.i42.i.i.i.i, !prof !95

.critedge.i42.i.i.i.i:                            ; preds = %.split.i.i.i.i.i, %bb.i
  %.10.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.aa, %.split.i.i.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.471.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i, label %.lr.ph.i41.i.i.i.i, !llvm.loop !96

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i: ; preds = %.critedge.i42.i.i.i.i, %.lr.ph.i41.i.i.i.i
  %.168.i.i.i.i = phi ptr [ %.471.i.i.i.i, %.lr.ph.i41.i.i.i.i ], [ %scevgep119.i.i.i.i, %.critedge.i42.i.i.i.i ]
  %.0.i.i.i.i = phi i32 [ %.9.i.i.i.i, %.lr.ph.i41.i.i.i.i ], [ %.10.i.i.i.i, %.critedge.i42.i.i.i.i ]
  %.not.i.i.i = icmp eq ptr %.168.i.i.i.i, %.067.i.i.i.i
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %bb.k, !prof !97

bb.k:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i
  %i.ac = sub nsw i32 0, %.017.i.i.i.i
  %i.ad = select i1 %i.m, i32 %i.ac, i32 %.017.i.i.i.i
  %i.ae = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ad, i32 %.0.i.i.i.i) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  %i.ag = extractvalue { i32, i1 } %i.ae, 0       ; 3 uses
  %i.ah = select i1 %i.m, i32 -2147483648, i32 2147483647
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  %i.aj = or i1 %i.af, %i.ai
  br i1 %i.aj, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %_ZSt10from_charsIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i.i.i

_ZSt10from_charsIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i.i.i: ; preds = %bb.k
  %i.ak = sub i32 0, %i.ag
  %i.al = select i1 %i.m, i32 %i.ak, i32 %i.ag
  store i32 %i.al, ptr %1, align 4, !tbaa !39
  br label %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.j, %bb.k, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 2)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #25
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i.i.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit

_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i.i.i, %_ZSt10from_charsIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i.i.i, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm2EE4callILm0ENS_8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4EEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSD_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = load ptr, ptr %1, align 8, !tbaa !88     ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !nonnull !99, !align !100 ; 7 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !19
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.c, label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !16
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit

_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit: ; preds = %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  store i32 %i.e, ptr %i.b, align 8, !tbaa !39
  store i8 1, ptr %i.f, align 8, !tbaa !19
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = load i32, ptr %i.d, align 8, !tbaa !79   ; 3 uses
  store i32 %i.o, ptr %2, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !9
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !28   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.p, align 8, !tbaa !28
  %i.z = load i64, ptr %i.t, align 8, !tbaa !16
  store i64 %i.z, ptr %i.r, align 8, !tbaa !16
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !13
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i

_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %i.aa = phi ptr [ %i.r, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !13
  store ptr %i.t, ptr %i.q, align 8, !tbaa !28
  store i64 0, ptr %i.ac, align 8, !tbaa !13
  store i8 0, ptr %i.t, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !19
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %bb.f, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJiNS_5redis7adapter5errorEEE8_destroyEv.exit.i.i

bb.f:                                             ; preds = %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJiNS_5redis7adapter5errorEEE8_destroyEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  %.pre6.i.i = load i32, ptr %2, align 8, !tbaa !79
  %.pre7.i.i = load ptr, ptr %i.p, align 8, !tbaa !28
  br label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJiNS_5redis7adapter5errorEEE8_destroyEv.exit.i.i

_ZN5boost8variant26detail17variant_base_implILb0ELb1EJiNS_5redis7adapter5errorEEE8_destroyEv.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2, %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i
  %i.an = phi ptr [ %i.aa, %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i ], [ %.pre7.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2 ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ao = phi i32 [ %i.o, %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i ], [ %.pre6.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2 ], [ %i.o, %bb.f ]
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !9
  %i.ar = icmp eq ptr %i.an, %i.r
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJiNS_5redis7adapter5errorEEE8_destroyEv.exit.i.i
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !13 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.au, i1 false)
  br label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJiNS_5redis7adapter5errorEEE8_destroyEv.exit.i.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !28
  %i.av = load i64, ptr %i.r, align 8, !tbaa !16
  store i64 %i.av, ptr %i.aq, align 8, !tbaa !16
  %.pre8.i.i = load i64, ptr %i.ad, align 8, !tbaa !13
  br label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit

_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aw = phi i64 [ %.pre8.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.as, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !13
  store i8 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit, %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJiNS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit
  ret void
}

declare void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind writable sret(%"class.boost::system::error_code") align 8, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #16

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %3 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = load i32, ptr %0, align 8, !tbaa !79     ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.b, 12
  %switch.select.i = select i1 %switch.selectcmp.i, i32 12, i32 11
  %switch.selectcmp2.i = icmp eq i32 %i.b, 11
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 15, i32 %switch.select.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %2, i32 noundef %switch.select3.i)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost6system12system_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.d:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @__cxa_free_exception(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.a = load ptr, ptr %2, align 8, !tbaa !28, !noalias !101
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZN5boost5redis11any_adapter11create_implISt5tupleIJNS_6system6resultIiNS0_7adapter5errorEEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEEEESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSC_EEERNS4_10error_codeEEERT_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #25, !noalias !135
  unreachable

_ZN5boost5redis7adapter17boost_redis_adaptISt5tupleIJNS_6system6resultIiNS1_5errorEEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEEEEDaRT_.exit: ; preds = %_ZN5boost5redis7adapter6detail14internal_adaptINS_6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5errorEEEEEDaRT_.exit.i.i.i.i
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc i64 %.fca.1.load.i.i.i.i.i.i to i16
  store i32 0, ptr %i.c, align 8, !tbaa !39, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !135
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8
  %i.m = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !140 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.m, align 16, !noalias !140
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i16 0, ptr %.sroa.0.i.sroa.4.0..sroa_idx, align 8, !noalias !140
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i8 0, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 16, !noalias !140
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.fca.0.load.i.i.i.i.i.i, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !140
  %.sroa.0.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i16 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.0.i.sroa.9.0..sroa_idx, align 16, !noalias !140
  %.sroa.0.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 1, ptr %.sroa.0.i.sroa.11.0..sroa_idx, align 8, !noalias !140
  %.sroa.0.i.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 0, ptr %.sroa.0.i.sroa.13.0..sroa_idx, align 16, !tbaa !83, !noalias !140
  store ptr %i.m, ptr %0, align 8, !tbaa !32, !alias.scope !140
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS1_6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNSD_6resultIiNSJ_5errorEEENSN_INSt7__cxx1112basic_stringIcS8_SaIcEEESO_EEEEEEEESt8functionISG_EOT_EUlS3_SC_SF_E_E9_M_invokeERKSt9_Any_dataOS3_SC_SF_, ptr %i.o, align 8, !tbaa !29, !alias.scope !140
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS1_6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNSD_6resultIiNSJ_5errorEEENSN_INSt7__cxx1112basic_stringIcS8_SaIcEEESO_EEEEEEEESt8functionISG_EOT_EUlS3_SC_SF_E_E10_M_managerERSt9_Any_dataRKS13_St18_Manager_operation, ptr %i.n, align 8, !tbaa !23, !alias.scope !140
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS1_6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNSD_6resultIiNSJ_5errorEEENSN_INSt7__cxx1112basic_stringIcS8_SaIcEEESO_EEEEEEEESt8functionISG_EOT_EUlS3_SC_SF_E_E9_M_invokeERKSt9_Any_dataOS3_SC_SF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !143
  switch i32 %i.b, label %_ZSt10__invoke_rIvRZN5boost5redis6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS4_5errorEEENS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEEEEEESt8functionIFvNS1_11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSF_EEERNS8_10error_codeEEEOT_EUlSN_SU_SW_E_JSN_SU_SW_EENSt9enable_ifIX16is_invocable_r_vISZ_T0_DpT1_EESZ_E4typeEOS14_DpOS15_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZSt10__invoke_rIvRZN5boost5redis6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS4_5errorEEENS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEEEEEESt8functionIFvNS1_11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSF_EEERNS8_10error_codeEEEOT_EUlSN_SU_SW_E_JSN_SU_SW_EENSt9enable_ifIX16is_invocable_r_vISZ_T0_DpT1_EESZ_E4typeEOS14_DpOS15_.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, i64 noundef %i.d, i64 noundef 2) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS_6system6resultIiNS1_5errorEEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEEE7on_nodeISt17basic_string_viewIcSC_EEEvRKNS0_5resp310basic_nodeIT_EERNS5_10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZSt10__invoke_rIvRZN5boost5redis6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS4_5errorEEENS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEEEEEESt8functionIFvNS1_11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSF_EEERNS8_10error_codeEEEOT_EUlSN_SU_SW_E_JSN_SU_SW_EENSt9enable_ifIX16is_invocable_r_vISZ_T0_DpT1_EESZ_E4typeEOS14_DpOS15_.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !145  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %_ZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS_6system6resultIiNS1_5errorEEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEEE7on_doneEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, i64 noundef %i.g, i64 noundef 2) #27
  unreachable

_ZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS_6system6resultIiNS1_5errorEEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEEE7on_doneEv.exit.i.i.i: ; preds = %bb.e
  %i.i = add nuw nsw i64 %i.g, 1
  store i64 %i.i, ptr %i.f, align 8, !tbaa !145
  br label %_ZSt10__invoke_rIvRZN5boost5redis6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS4_5errorEEENS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEEEEEESt8functionIFvNS1_11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSF_EEERNS8_10error_codeEEEOT_EUlSN_SU_SW_E_JSN_SU_SW_EENSt9enable_ifIX16is_invocable_r_vISZ_T0_DpT1_EESZ_E4typeEOS14_DpOS15_.exit

_ZSt10__invoke_rIvRZN5boost5redis6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS4_5errorEEENS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEEEEEESt8functionIFvNS1_11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSF_EEERNS8_10error_codeEEEOT_EUlSN_SU_SW_E_JSN_SU_SW_EENSt9enable_ifIX16is_invocable_r_vISZ_T0_DpT1_EESZ_E4typeEOS14_DpOS15_.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS_6system6resultIiNS1_5errorEEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEEE7on_doneEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS1_6detail21make_any_adapter_implINS1_7adapter6detail14static_adapterISt5tupleIJNSD_6resultIiNSJ_5errorEEENSN_INSt7__cxx1112basic_stringIcS8_SaIcEEESO_EEEEEEEESt8functionISG_EOT_EUlS3_SC_SF_E_E10_M_managerERSt9_Any_dataRKS13_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail21make_any_adapter_implINS2_7adapter6detail14static_adapterISt5tupleIJNS1_6system6resultIiNS5_5errorEEENSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEEEEEEESt8functionIFvNS2_11any_adapter11parse_eventERKNS2_5resp310basic_nodeISt17basic_string_viewIcSG_EEERNS9_10error_codeEEEOT_EUlSO_SV_SX_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5boost5redis6detail21make_any_adapter_implINS0_7adapter6detail14static_adapterISt5tupleIJNS_6system6resultIiNS3_5errorEEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEEEEEEESt8functionIFvNS0_11any_adapter11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSE_EEERNS7_10error_codeEEEOT_EUlSM_ST_SV_E_, ptr %0, align 8, !tbaa !148
  br label %_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail21make_any_adapter_implINS2_7adapter6detail14static_adapterISt5tupleIJNS1_6system6resultIiNS5_5errorEEENSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEEEEEEESt8functionIFvNS2_11any_adapter11parse_eventERKNS2_5resp310basic_nodeISt17basic_string_viewIcSG_EEERNS9_10error_codeEEEOT_EUlSO_SV_SX_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail21make_any_adapter_implINS2_7adapter6detail14static_adapterISt5tupleIJNS1_6system6resultIiNS5_5errorEEENSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEEEEEEESt8functionIFvNS2_11any_adapter11parse_eventERKNS2_5resp310basic_nodeISt17basic_string_viewIcSG_EEERNS9_10error_codeEEEOT_EUlSO_SV_SX_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !tbaa.struct !150
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail21make_any_adapter_implINS2_7adapter6detail14static_adapterISt5tupleIJNS1_6system6resultIiNS5_5errorEEENSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEEEEEEESt8functionIFvNS2_11any_adapter11parse_eventERKNS2_5resp310basic_nodeISt17basic_string_viewIcSG_EEERNS9_10error_codeEEEOT_EUlSO_SV_SX_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail21make_any_adapter_implINS2_7adapter6detail14static_adapterISt5tupleIJNS1_6system6resultIiNS5_5errorEEENSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEEEEEEESt8functionIFvNS2_11any_adapter11parse_eventERKNS2_5resp310basic_nodeISt17basic_string_viewIcSG_EEERNS9_10error_codeEEEOT_EUlSO_SV_SX_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 56) #26
  br label %_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail21make_any_adapter_implINS2_7adapter6detail14static_adapterISt5tupleIJNS1_6system6resultIiNS5_5errorEEENSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEEEEEEESt8functionIFvNS2_11any_adapter11parse_eventERKNS2_5resp310basic_nodeISt17basic_string_viewIcSG_EEERNS9_10error_codeEEEOT_EUlSO_SV_SX_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail21make_any_adapter_implINS2_7adapter6detail14static_adapterISt5tupleIJNS1_6system6resultIiNS5_5errorEEENSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEEEEEEESt8functionIFvNS2_11any_adapter11parse_eventERKNS2_5resp310basic_nodeISt17basic_string_viewIcSG_EEERNS9_10error_codeEEEOT_EUlSO_SV_SX_E_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS_6system6resultIiNS1_5errorEEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEEE7on_nodeISt17basic_string_viewIcSC_EEEvRKNS0_5resp310basic_nodeIT_EERNS5_10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNSt5arrayISt7variantIJN5boost5redis7adapter6detail7wrapperINS1_6system6resultIiNS3_5errorEEEEENS5_INS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEEELm2EE2atEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, i64 noundef %i.b, i64 noundef 2) #27
  unreachable

_ZNSt5arrayISt7variantIJN5boost5redis7adapter6detail7wrapperINS1_6system6resultIiNS3_5errorEEEEENS5_INS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEEELm2EE2atEm.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.b ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !151
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNSt5arrayISt7variantIJN5boost5redis7adapter6detail7wrapperINS1_6system6resultIiNS3_5errorEEEEENS5_INS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEEELm2EE2atEm.exit
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !84   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i8, ptr %i.i, align 8, !tbaa !19    ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %_ZSt5visitIZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS2_5errorEEENS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEE7on_nodeISt17basic_string_viewIcSD_EEEvRKNS1_5resp310basic_nodeIT_EERNS6_10error_codeEEUlRSO_E_JRSt7variantIJNS3_7wrapperIS9_EENSX_ISG_EEEEEENSt13invoke_resultISO_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeEOSO_DpOS14_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !153, !range !133, !noundef !99
  %i.n = trunc nuw i8 %i.m to i1
  store i8 1, ptr %i.l, align 1, !tbaa !153
  br i1 %i.n, label %.critedge.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultIiNS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1) #24
  br i1 %i.o, label %_ZSt5visitIZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS2_5errorEEENS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEE7on_nodeISt17basic_string_viewIcSD_EEEvRKNS1_5resp310basic_nodeIT_EERNS6_10error_codeEEUlRSO_E_JRSt7variantIJNS3_7wrapperIS9_EENSX_ISG_EEEEEENSt13invoke_resultISO_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeEOSO_DpOS14_.exit, label %..critedge_crit_edge.i.i.i.i.i.i.i

..critedge_crit_edge.i.i.i.i.i.i.i:               ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !84 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 40
  %.pre4.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !19
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %..critedge_crit_edge.i.i.i.i.i.i.i, %bb.d
  %i.p = phi i8 [ %.pre4.i.i.i.i.i.i.i, %..critedge_crit_edge.i.i.i.i.i.i.i ], [ %i.j, %bb.d ]
  %i.q = phi ptr [ %.pre.i.i.i.i.i.i.i, %..critedge_crit_edge.i.i.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr @.str.8, ptr %3, align 8, !tbaa !130
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.9, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 608, ptr %i.s, align 8, !tbaa !128
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 30, ptr %i.t, align 4, !tbaa !131
  %i.u = icmp eq i8 %i.p, 1
  br i1 %i.u, label %_ZNR5boost6system6resultIiNS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i.i.i.i.i.i
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  unreachable

_ZNR5boost6system6resultIiNS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5redis7adapter6detail11simple_implIiE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRiRKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZSt5visitIZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS2_5errorEEENS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEE7on_nodeISt17basic_string_viewIcSD_EEEvRKNS1_5resp310basic_nodeIT_EERNS6_10error_codeEEUlRSO_E_JRSt7variantIJNS3_7wrapperIS9_EENSX_ISG_EEEEEENSt13invoke_resultISO_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeEOSO_DpOS14_.exit

bb.g:                                             ; preds = %_ZNSt5arrayISt7variantIJN5boost5redis7adapter6detail7wrapperINS1_6system6resultIiNS3_5errorEEEEENS5_INS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEEELm2EE2atEm.exit
  tail call void @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcS9_EEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZSt5visitIZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS2_5errorEEENS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEE7on_nodeISt17basic_string_viewIcSD_EEEvRKNS1_5resp310basic_nodeIT_EERNS6_10error_codeEEUlRSO_E_JRSt7variantIJNS3_7wrapperIS9_EENSX_ISG_EEEEEENSt13invoke_resultISO_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeEOSO_DpOS14_.exit

_ZSt5visitIZN5boost5redis7adapter6detail14static_adapterISt5tupleIJNS0_6system6resultIiNS2_5errorEEENS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEEE7on_nodeISt17basic_string_viewIcSD_EEEvRKNS1_5resp310basic_nodeIT_EERNS6_10error_codeEEUlRSO_E_JRSt7variantIJNS3_7wrapperIS9_EENSX_ISG_EEEEEENSt13invoke_resultISO_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeEOSO_DpOS14_.exit: ; preds = %bb.c, %bb.e, %_ZNR5boost6system6resultIiNS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i.i.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcS9_EEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17    ; 2 uses
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !153, !range !133, !noundef !99
  %i.g = trunc nuw i8 %i.f to i1
  store i8 1, ptr %i.e, align 1, !tbaa !153
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcS9_EEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #24
  br i1 %i.h, label %bb.i, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre4 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b
  %i.i = phi i8 [ %.pre4, %..critedge_crit_edge ], [ %i.c, %bb.b ]
  %i.j = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.a, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr @.str.8, ptr %4, align 8, !tbaa !130
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.9, ptr %i.k, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 608, ptr %i.l, align 8, !tbaa !128
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 30, ptr %i.m, align 4, !tbaa !131
  %i.n = icmp eq i8 %i.i, 1
  br i1 %i.n, label %_ZNR5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  unreachable

_ZNR5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit: ; preds = %.critedge
  %i.o = load i32, ptr %1, align 8, !tbaa !75
  %switch.i.i = icmp ult i32 %i.o, 5
  br i1 %switch.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNR5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, i32 noundef 6)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost5redis7adapter6detail11simple_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7on_nodeISt17basic_string_viewIcS7_EEEvRS9_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE.exit

bb.g:                                             ; preds = %_ZNR5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.h, label %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #27
  unreachable

_ZN5boost5redis7adapter6detail21boost_redis_from_bulkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit.i: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.y, i64 noundef %i.s) ; 0 uses
  br label %_ZN5boost5redis7adapter6detail11simple_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7on_nodeISt17basic_string_viewIcS7_EEEvRS9_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE.exit

_ZN5boost5redis7adapter6detail11simple_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7on_nodeISt17basic_string_viewIcS7_EEEvRS9_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i, %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.a, %_ZN5boost5redis7adapter6detail11simple_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7on_nodeISt17basic_string_viewIcS7_EEEvRS9_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcS9_EEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.boost::system::result.8", align 8 ; 8 uses
  %4 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !75     ; 2 uses
  switch i32 %i.b, label %bb.n [
    i32 11, label %bb.b
    i32 6, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 %i.b, ptr %4, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !82   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 10 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.g, ptr %i.a, align 8, !tbaa !83
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %i.c, align 8, !tbaa !28
  %i.l = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.l, ptr %i.h, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !16
  store i8 %i.n, ptr %i.m, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  store i64 %i.o, ptr %i.i, align 8, !tbaa !13
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.r = load i32, ptr %4, align 8, !tbaa !79     ; 2 uses
  store i32 %i.r, ptr %3, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.i, align 8, !tbaa !13   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.y, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.s, align 8, !tbaa !28
  %i.z = load i64, ptr %i.h, align 8, !tbaa !16
  store i64 %i.z, ptr %i.t, align 8, !tbaa !16
  %.pre = load i64, ptr %i.i, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.aa = phi ptr [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.ab = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !28
  store i64 0, ptr %i.i, align 8, !tbaa !13
  store i8 0, ptr %i.h, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i8 2, ptr %i.ad, align 8, !tbaa !17
  %i.ae = load ptr, ptr %0, align 8, !tbaa !154   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i32 %i.r, ptr %2, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !9
  %i.ah = icmp eq ptr %i.aa, %i.t
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.aj, i1 false)
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.g
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !28
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !16
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !16
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i

_ZN5boost5redis7adapter5errorC2EOS2_.exit.i:      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %i.ab, ptr %i.al, align 8, !tbaa !13
  store ptr %i.t, ptr %i.s, align 8, !tbaa !28
  store i64 0, ptr %i.ac, align 8, !tbaa !13
  store i8 0, ptr %i.t, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !17
  switch i8 %i.an, label %bb.i [
    i8 0, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i.sink.split

bb.j:                                             ; preds = %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i.sink.split

_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i.sink.split: ; preds = %bb.j, %bb.i
  %.sink35.in = phi ptr [ %i.ap, %bb.i ], [ %i.at, %bb.j ]
  %.sink = phi ptr [ %i.ao, %bb.i ], [ %i.as, %bb.j ]
  %.sink35 = load i64, ptr %.sink35.in, align 8, !tbaa !16
  %i.av = add i64 %.sink35, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.av) #26
  br label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i

_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i: ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i.sink.split, %bb.j, %bb.i, %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i
  %i.aw = load i32, ptr %2, align 8, !tbaa !79
  store i32 %i.aw, ptr %i.ae, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !9
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ag
  br i1 %i.ba, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !13 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.bd, i1 false)
  br label %_ZN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEaSEOSB_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !28
  %i.be = load i64, ptr %i.ag, align 8, !tbaa !16
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !16
  %.pre6.i = load i64, ptr %i.al, align 8, !tbaa !13
  br label %_ZN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEaSEOSB_.exit

_ZN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEaSEOSB_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.k
  %i.bf = phi i64 [ %.pre6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.bb, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !13
  store i8 2, ptr %i.am, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bh = load i8, ptr %i.ad, align 8, !tbaa !17
  switch i8 %i.bh, label %bb.l [
    i8 0, label %_ZN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEED2Ev.exit
    i8 2, label %bb.m
  ]

bb.l:                                             ; preds = %_ZN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEaSEOSB_.exit
  %i.bi = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ac
  br i1 %i.bj, label %_ZN5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
end_hunk_1
