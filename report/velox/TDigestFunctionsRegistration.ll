Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TDigestFunctionsRegistration?download=true
inline.NumInlined: 17435
inline.NumDeleted: 4964
loop-unroll.NumCompletelyUnrolled: 145
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZNK8facebook5velox9functions7TDigestISaIdEE16estimateQuantileEd:bb.a
  %.pn56 = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  resume { ptr, i32 } %.pn56
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions7TDigestISaIdEED2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !500  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !501
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #37
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !500    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !501
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #37
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit2

_ZNSt6vectorIdSaIdEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.517", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.433", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.433", align 16 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.433", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.0.copyload.i.i = load i8, ptr %2, align 1     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = icmp slt i8 %.0.copyload.i.i, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !82

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !1612
  %i.c = sext i8 %.0.copyload.i.i to i32
  store i32 %i.c, ptr %10, align 16, !tbaa !78, !noalias !1612
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.d, align 16, !tbaa !78, !alias.scope !1613, !noalias !1612
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.46, i64 11, i64 17, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33, !noalias !1612
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKcE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.46) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %11, align 8, !tbaa !67    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !78
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.aw

bb.e:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i8 %.0.copyload.i.i, 1
  br i1 %i.k, label %bb.f, label %bb.i, !prof !82

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !1614
  %i.l = zext nneg i8 %.0.copyload.i.i to i32
  store i32 %i.l, ptr %9, align 16, !tbaa !78, !alias.scope !1615, !noalias !1614
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 1, ptr %i.m, align 16, !tbaa !78, !alias.scope !1615, !noalias !1614
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.46, i64 11, i64 17, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33, !noalias !1614
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKcE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.46) #38
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %12, align 8, !tbaa !67    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.h
  %i.r = load i64, ptr %i.p, align 8, !tbaa !78
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.aw

bb.i:                                             ; preds = %bb.e
  %.0.copyload.i.i42 = load i8, ptr %i.a, align 1 ; 2 uses
  %.not = icmp eq i8 %.0.copyload.i.i42, 0
  br i1 %.not, label %bb.m, label %bb.j, !prof !187

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !1616
  %i.t = sext i8 %.0.copyload.i.i42 to i32
  store i32 %i.t, ptr %8, align 16, !tbaa !78, !noalias !1616
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 16, !tbaa !78, !alias.scope !1617, !noalias !1616
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.46, i64 11, i64 17, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !1616
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKcE18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr nonnull @.str.46) #38
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %13, align 8, !tbaa !67    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.l
  %i.z = load i64, ptr %i.x, align 8, !tbaa !78
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.aw

bb.m:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %.not132 = icmp eq i8 %.0.copyload.i.i, 0
  br i1 %.not132, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i.i48 = load double, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0131 = phi double [ %.0.copyload.i.i48, %bb.n ], [ undef, %bb.m ]
  %.0130 = phi ptr [ %i.ac, %bb.n ], [ %i.ab, %bb.m ] ; 4 uses
  %.0.copyload.i.i49 = load double, ptr %.0130, align 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0130, i64 8
  %i.ae = load ptr, ptr %0, align 8, !tbaa !467
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !467
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox9functions7TDigestISaIdEE14setCompressionEd(ptr noundef nonnull align 8 dereferenceable(81) %0, double noundef %.0.copyload.i.i49)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.copyload.i.i50 = load double, ptr %i.ad, align 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0130, i64 16
  %.0.copyload.i.i51 = load i32, ptr %i.ai, align 1
  %.0.copyload.i.i51.fr = freeze i32 %.0.copyload.i.i51 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0130, i64 20 ; 2 uses
  %i.ak = icmp sgt i32 %.0.copyload.i.i51.fr, 0
  br i1 %i.ak, label %bb.r, label %bb.al

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load double, ptr %i.al, align 8, !tbaa !514 ; 2 uses
  %i.an = fcmp une double %.0.copyload.i.i49, %i.am
  br i1 %i.an, label %bb.s, label %bb.v, !prof !82

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !1618
  store double %.0.copyload.i.i49, ptr %7, align 16, !tbaa !78, !alias.scope !1619, !noalias !1618
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.am, ptr %i.ao, align 16, !tbaa !78, !alias.scope !1619, !noalias !1618
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull @.str.113, i64 71, i64 170, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1618
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKcE18veloxCheckFailArgs_5, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull @.str.113) #38
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %14, align 8, !tbaa !67   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.u
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !78
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.aw

bb.v:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !520 ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !500   ; 5 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = ashr exact i64 %i.az, 3                 ; 3 uses
  %i.bb = zext nneg i32 %.0.copyload.i.i51.fr to i64 ; 3 uses
  %i.bc = add nsw i64 %i.ba, %i.bb                ; 7 uses
  %i.bd = icmp ugt i64 %i.bc, %i.ba
  br i1 %i.bd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bb)
  %.pre = load ptr, ptr %0, align 8, !tbaa !500
  br label %.lr.ph.preheader

bb.x:                                             ; preds = %bb.v
  %i.be = icmp ult i64 %i.bc, %i.ba
  br i1 %i.be, label %bb.y, label %.lr.ph.preheader

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bc ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.bf
  br i1 %.not.i.i, label %.lr.ph.preheader, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.y
  store ptr %i.bf, ptr %i.af, align 8, !tbaa !520
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.y, %bb.x, %bb.w
  %i.bg = phi ptr [ %.pre, %bb.w ], [ %i.aw, %bb.x ], [ %i.aw, %bb.y ], [ %i.aw, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.az ; 9 uses
  %i.bi = shl nuw nsw i64 %i.bb, 3                ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bh, ptr nonnull align 1 %i.aj, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bi
  %wide.trip.count = zext nneg i32 %.0.copyload.i.i51.fr to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bk = icmp ult i32 %.0.copyload.i.i51.fr, 4
  br i1 %i.bk, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !428 ; 2 uses
  %i.bo = fcmp ule double %i.bn, 0.000000e+00
  br i1 %i.bo, label %.loopexit, label %.lr.ph.2, !prof !82

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !428 ; 2 uses
  %i.bs = fcmp ule double %i.br, 0.000000e+00
  br i1 %i.bs, label %.loopexit, label %.lr.ph.3, !prof !82

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !428 ; 2 uses
  %i.bw = fcmp ule double %i.bv, 0.000000e+00
  br i1 %i.bw, label %.loopexit, label %bb.z, !prof !82

bb.z:                                             ; preds = %.lr.ph.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1590

._crit_edge.unr-lcssa:                            ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod181 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod181)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.aa, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.epil
  %i.by = load double, ptr %i.bx, align 8, !tbaa !428 ; 2 uses
  %i.bz = fcmp ule double %i.by, 0.000000e+00
  br i1 %i.bz, label %.loopexit, label %bb.aa, !prof !82

bb.aa:                                            ; preds = %.lr.ph.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1591

._crit_edge:                                      ; preds = %bb.aa, %._crit_edge.unr-lcssa
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !520 ; 2 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !500 ; 5 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3                 ; 3 uses
  %i.ci = icmp ugt i64 %i.bc, %i.ch
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %i.cj = sub nuw nsw i64 %i.bc, %i.ch
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef %i.cj)
  %.pre148 = load ptr, ptr %i.ca, align 8, !tbaa !500
  br label %.lr.ph137.preheader

bb.ac:                                            ; preds = %._crit_edge
  %i.ck = icmp ult i64 %i.bc, %i.ch
  br i1 %i.ck, label %bb.ad, label %.lr.ph137.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bc ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.cc, %i.cl
  br i1 %.not.i.i55, label %.lr.ph137.preheader, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i56

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i56:      ; preds = %bb.ad
  store ptr %i.cl, ptr %i.cb, align 8, !tbaa !520
  br label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i56, %bb.ad, %bb.ac, %bb.ab
  %i.cm = phi ptr [ %.pre148, %bb.ab ], [ %i.cd, %bb.ac ], [ %i.cd, %bb.ad ], [ %i.cd, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i56 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.az ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cn, ptr nonnull align 1 %i.bj, i64 %i.bi, i1 false)
  %xtraiter184 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.co = icmp ult i32 %.0.copyload.i.i51.fr, 4
  br i1 %i.co, label %.lr.ph137.epil.preheader, label %.lr.ph137.preheader.new

.lr.ph137.preheader.new:                          ; preds = %.lr.ph137.preheader
  %unroll_iter188 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph137

.lr.ph:                                           ; preds = %bb.z, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %bb.z ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.z ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !428 ; 2 uses
  %i.cr = fcmp ule double %i.cq, 0.000000e+00
  br i1 %i.cr, label %.loopexit, label %.lr.ph.1, !prof !82

.loopexit:                                        ; preds = %.lr.ph.epil, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3
  %.lcssa179 = phi double [ %i.bv, %.lr.ph.3 ], [ %i.cq, %.lr.ph ], [ %i.bn, %.lr.ph.1 ], [ %i.br, %.lr.ph.2 ], [ %i.by, %.lr.ph.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !1620
  store double %.lcssa179, ptr %6, align 16, !tbaa !78, !noalias !1620
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.cs, align 16, !tbaa !78, !alias.scope !1621, !noalias !1620
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.46, i64 11, i64 26, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !1620
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKcE18veloxCheckFailArgs_8, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr nonnull @.str.46) #38
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.loopexit
  unreachable

bb.af:                                            ; preds = %.loopexit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %15, align 8, !tbaa !67   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.af
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !78
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.aw

.lr.ph137.1:                                      ; preds = %.lr.ph137
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv142
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load double, ptr %i.da, align 8, !tbaa !428
  %i.dc = fcmp uno double %i.db, 0.000000e+00
  br i1 %i.dc, label %.loopexit190, label %.lr.ph137.2, !prof !82

.lr.ph137.2:                                      ; preds = %.lr.ph137.1
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv142
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load double, ptr %i.de, align 8, !tbaa !428
  %i.dg = fcmp uno double %i.df, 0.000000e+00
  br i1 %i.dg, label %.loopexit190, label %.lr.ph137.3, !prof !82

.lr.ph137.3:                                      ; preds = %.lr.ph137.2
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv142
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load double, ptr %i.di, align 8, !tbaa !428
  %i.dk = fcmp uno double %i.dj, 0.000000e+00
  br i1 %i.dk, label %.loopexit190, label %bb.ag, !prof !82

bb.ag:                                            ; preds = %.lr.ph137.3
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %niter189.next.3 = add i64 %niter189, 4         ; 2 uses
  %niter189.ncmp.3 = icmp eq i64 %niter189.next.3, %unroll_iter188
  br i1 %niter189.ncmp.3, label %._crit_edge138.unr-lcssa, label %.lr.ph137, !llvm.loop !1596

._crit_edge138.unr-lcssa:                         ; preds = %bb.ag
  %lcmp.mod186.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod186.not, label %._crit_edge138, label %.lr.ph137.epil.preheader

.lr.ph137.epil.preheader:                         ; preds = %._crit_edge138.unr-lcssa, %.lr.ph137.preheader
  %indvars.iv142.epil.init = phi i64 [ 0, %.lr.ph137.preheader ], [ %indvars.iv.next143.3, %._crit_edge138.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter184, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph137.epil

.lr.ph137.epil:                                   ; preds = %bb.ah, %.lr.ph137.epil.preheader
  %indvars.iv142.epil = phi i64 [ %indvars.iv142.epil.init, %.lr.ph137.epil.preheader ], [ %indvars.iv.next143.epil, %bb.ah ] ; 2 uses
  %epil.iter185 = phi i64 [ 0, %.lr.ph137.epil.preheader ], [ %epil.iter185.next, %bb.ah ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv142.epil
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !428
  %i.dn = fcmp uno double %i.dm, 0.000000e+00
  br i1 %i.dn, label %.loopexit190, label %bb.ah, !prof !82

bb.ah:                                            ; preds = %.lr.ph137.epil
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter185.next = add i64 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i64 %epil.iter185.next, %xtraiter184
  br i1 %epil.iter185.cmp.not, label %._crit_edge138, label %.lr.ph137.epil, !llvm.loop !1597

._crit_edge138:                                   ; preds = %bb.ah, %._crit_edge138.unr-lcssa
  %i.do = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.dp = add nsw i64 %i.bi, -8                   ; 2 uses
  %i.dq = lshr exact i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1
  %xtraiter192 = and i64 %i.dr, 7                 ; 2 uses
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %._crit_edge138, %.lr.ph.i.prol
  %.09.i.prol = phi double [ %i.dt, %.lr.ph.i.prol ], [ 0.000000e+00, %._crit_edge138 ]
  %.068.i.prol = phi ptr [ %i.du, %.lr.ph.i.prol ], [ %i.bh, %._crit_edge138 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %._crit_edge138 ]
  %i.ds = load double, ptr %.068.i.prol, align 8, !tbaa !428
  %i.dt = fadd double %.09.i.prol, %i.ds          ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter192
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1598

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %._crit_edge138
  %.lcssa.unr = phi double [ poison, %._crit_edge138 ], [ %i.dt, %.lr.ph.i.prol ]
  %.09.i.unr = phi double [ 0.000000e+00, %._crit_edge138 ], [ %i.dt, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %i.bh, %._crit_edge138 ], [ %i.du, %.lr.ph.i.prol ]
  %i.dv = icmp ult i64 %i.dp, 56
  br i1 %i.dv, label %_ZSt10accumulateIPddET0_T_S2_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi double [ %i.es, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.068.i = phi ptr [ %i.et, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.dw = load double, ptr %.068.i, align 8, !tbaa !428
  %i.dx = fadd double %.09.i, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !428
  %i.ea = fadd double %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.068.i, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !428
  %i.ed = fadd double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.068.i, i64 24
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !428
  %i.eg = fadd double %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.068.i, i64 32
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !428
  %i.ej = fadd double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.068.i, i64 40
  %i.el = load double, ptr %i.ek, align 8, !tbaa !428
  %i.em = fadd double %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.068.i, i64 48
  %i.eo = load double, ptr %i.en, align 8, !tbaa !428
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.068.i, i64 56
  %i.er = load double, ptr %i.eq, align 8, !tbaa !428
  %i.es = fadd double %i.ep, %i.er                ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.068.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.et, %i.do
  br i1 %.not.i.7, label %_ZSt10accumulateIPddET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !1599

_ZSt10accumulateIPddET0_T_S2_S1_.exit:            ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.es, %.lr.ph.i ]
  %i.eu = fsub double %.lcssa, %.0.copyload.i.i50
  %i.ev = tail call noundef double @llvm.fabs.f64(double %i.eu) ; 2 uses
  %i.ew = fcmp uge double %i.ev, 1.000000e-03
  br i1 %i.ew, label %bb.ai, label %bb.at, !prof !82

.lr.ph137:                                        ; preds = %bb.ag, %.lr.ph137.preheader.new
  %indvars.iv142 = phi i64 [ 0, %.lr.ph137.preheader.new ], [ %indvars.iv.next143.3, %bb.ag ] ; 5 uses
  %niter189 = phi i64 [ 0, %.lr.ph137.preheader.new ], [ %niter189.next.3, %bb.ag ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv142
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !428
  %i.ez = fcmp uno double %i.ey, 0.000000e+00
  br i1 %i.ez, label %.loopexit190, label %.lr.ph137.1, !prof !82

.loopexit190:                                     ; preds = %.lr.ph137.epil, %.lr.ph137, %.lr.ph137.1, %.lr.ph137.2, %.lr.ph137.3
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKcE18veloxCheckFailArgs_9) #38
  unreachable

bb.ai:                                            ; preds = %_ZSt10accumulateIPddET0_T_S2_S1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !1622
  store double %i.ev, ptr %5, align 16, !tbaa !78, !alias.scope !1623, !noalias !1622
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 1.000000e-03, ptr %i.fa, align 16, !tbaa !78, !alias.scope !1623, !noalias !1622
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.46, i64 11, i64 170, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !1622
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE17mergeDeserializedERSt6vectorIsSaIsEEPKcE18veloxCheckFailArgs__11_, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr nonnull @.str.46) #38
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %16, align 8, !tbaa !67   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ak
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !78
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
end_hunk_0
