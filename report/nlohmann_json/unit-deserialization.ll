Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-deserialization?download=true
inline.NumInlined: 24803
inline.NumDeleted: 2361
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN12_GLOBAL__N_114SaxEventLogger6stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add nsw i64 %i.e, 1                      ; 3 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !65, !noalias !1460 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = icmp ult i64 %i.e, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !46, !noalias !1460
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  store i8 41, ptr %i.n, align 1, !tbaa !46, !noalias !1460
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.e, i64 noundef 0, ptr noundef nonnull @.str.356, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d, %bb.c
  store i64 %i.g, ptr %i.d, align 8, !tbaa !64, !noalias !1460
  %i.o = load ptr, ptr %4, align 8, !tbaa !65, !noalias !1460
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !46, !noalias !1460
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !61, !alias.scope !1460
  %i.r = load ptr, ptr %4, align 8, !tbaa !65, !noalias !1460 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !64, !noalias !1460 ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.v, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.r, ptr %3, align 8, !tbaa !65, !alias.scope !1460
  %i.w = load i64, ptr %i.i, align 8, !tbaa !46, !noalias !1460
  store i64 %i.w, ptr %i.q, align 8, !tbaa !46, !alias.scope !1460
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !64, !noalias !1460
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !64, !alias.scope !1460
  store ptr %i.i, ptr %4, align 8, !tbaa !65, !noalias !1460
  store i64 0, ptr %i.d, align 8, !tbaa !64, !noalias !1460
  store i8 0, ptr %i.i, align 8, !tbaa !46, !noalias !1460
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !61
  %i.ae = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6: ; preds = %bb.g
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !65
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !46
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.x, ptr %i.aj, align 8, !tbaa !64
  store ptr %i.q, ptr %3, align 8, !tbaa !65
  store i64 0, ptr %i.y, align 8, !tbaa !64
  store i8 0, ptr %i.q, align 8, !tbaa !46
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.z, align 8, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.an = icmp eq ptr %.pre, %i.q
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !46
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ap) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.aq = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.i
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.i, align 8, !tbaa !46
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i1 true

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.k:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.k
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !46
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.j
  %.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.av, %bb.k ]
  %i.ba = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !46
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_114SaxEventLogger6binaryERN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.363, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i64 7, ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !64
  store i8 0, ptr %i.d, align 8, !tbaa !46
  %i.f = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 17
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !64  ; 2 uses
  %i.m = icmp eq i64 %.pre, 9223372036854775807
  br i1 %i.m, label %.noexc.i.i.i.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %._crit_edge.i.i, %._crit_edge
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 7, %._crit_edge.i.i ] ; 4 uses
  %i.o = add nsw i64 %i.n, 1                      ; 3 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.r = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.o, %i.t
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 41, ptr %i.u, align 1, !tbaa !46
  br label %bb.s

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.n, i64 noundef 0, ptr noundef nonnull @.str.356, i64 noundef 1)
          to label %bb.s unwind label %bb.z

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.sroa.050.062 = phi ptr [ %i.f, %.lr.ph ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %i.v = load i8, ptr %.sroa.050.062, align 1, !tbaa !46 ; 7 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !65     ; 3 uses
  %i.x = load i64, ptr %i.e, align 8, !tbaa !64   ; 6 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !64   ; 5 uses
  %i.z = sub i64 9223372036854775807, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.279) #35
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.c
  %i.ab = add i64 %i.y, %i.x                      ; 3 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ab, %i.ag
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not8.i.i.i, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.x, 1
  br i1 %cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i8, ptr %i.w, align 1, !tbaa !46
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !46
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.w, i64 %i.x, i1 false)
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.y, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.x)
          to label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i unwind label %.loopexit

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.i
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !64
  %i.aj = load ptr, ptr %2, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i8 0, ptr %i.ak, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.al = icmp ult i8 %i.v, 10                    ; 3 uses
  %i.am = icmp ult i8 %i.v, 100
  %. = select i1 %i.am, i32 2, i32 3              ; 3 uses
  %i.an = zext nneg i32 %. to i64
  %i.ao = select i1 %i.al, i64 1, i64 %i.an       ; 9 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !61, !alias.scope !1463
  br i1 %i.al, label %.thread, label %bb.j

.thread:                                          ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  store i64 %i.ao, ptr %i.k, align 8, !tbaa !64, !alias.scope !1463
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 45, i64 %i.ao, i1 false)
  store i64 %i.ao, ptr %i.k, align 8, !tbaa !64, !alias.scope !1463
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !46
  %i.aq = icmp ugt i8 %i.v, 99
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i18

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.ar = urem i8 %i.v, 100
  %i.as = shl nuw i8 %i.ar, 1
  %i.at = udiv i8 %i.v, 100
  %i.au = zext i8 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !46, !noalias !1463
  %5 = zext nneg i32 %. to i64
  %6 = getelementptr i8, ptr %i.j, i64 %5
  %i.ay = getelementptr i8, ptr %6, i64 -1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !46
  %i.az = load i8, ptr %i.av, align 2, !tbaa !46, !noalias !1463
  %i.ba = add nsw i32 %., -2
  %i.bb = zext nneg i32 %i.ba to i64
  br label %bb.k, !llvm.loop !10

._crit_edge.i.i18:                                ; preds = %bb.j
  %i.bc = shl nuw i8 %i.v, 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !46, !noalias !1463
  store i8 %i.bg, ptr %i.l, align 1, !tbaa !46
  %i.bh = load i8, ptr %i.be, align 2, !tbaa !46, !noalias !1463
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.k:                                             ; preds = %.lr.ph.preheader.i.i, %.thread
  %.sink89 = phi i64 [ %i.bb, %.lr.ph.preheader.i.i ], [ %i.ao, %.thread ]
  %.sink = phi i8 [ %i.az, %.lr.ph.preheader.i.i ], [ 0, %.thread ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.at, %.lr.ph.preheader.i.i ], [ %i.v, %.thread ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink89
  store i8 %.sink, ptr %i.bi, align 1, !tbaa !46
  %i.bj = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %._crit_edge.i.i18, %bb.k
  %i.bk = phi i8 [ %i.bj, %bb.k ], [ %i.bh, %._crit_edge.i.i18 ] ; 2 uses
  store i8 %i.bk, ptr %i.j, align 8, !tbaa !46
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !64  ; 5 uses
  %i.bm = sub i64 9223372036854775807, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.ao
  br i1 %i.bn, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i20

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.279) #35
          to label %.noexc27 unwind label %.loopexit.split-lp55

.noexc27:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i20: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bo = add i64 %i.bl, %i.ao                    ; 3 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i20
  %i.br = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i20
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i26
  %i.bt = phi i64 [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i26 ]
  %.not.i.i.i23 = icmp ugt i64 %i.bo, %i.bt
  br i1 %.not.i.i.i23, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bl ; 2 uses
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.bk, ptr %i.bu, align 1, !tbaa !46
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.ao, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bl, i64 noundef 0, ptr noundef nonnull %i.j, i64 noundef %i.ao)
          to label %bb.q unwind label %.loopexit54

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.p
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !64
  %i.bv = load ptr, ptr %2, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bo
  store i8 0, ptr %i.bw, align 1, !tbaa !46
  %i.bx = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.j
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bz = load i64, ptr %i.j, align 8, !tbaa !46
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !64
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.cb, ptr noundef nonnull @.str.333, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.050.062, i64 1 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.h
  br i1 %i.ce, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit54:                                      ; preds = %bb.p
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp55:                             ; preds = %bb.l
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp55, %.loopexit54
  %lpad.phi58 = phi { ptr, i32 } [ %lpad.loopexit56, %.loopexit54 ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp55 ]
  %i.cf = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.j
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.r
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !46
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.aa

bb.s:                                             ; preds = %bb.a, %bb.b
  store i64 %i.o, ptr %i.b, align 8, !tbaa !64
  %i.cj = load ptr, ptr %2, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.o
  store i8 0, ptr %i.ck, align 1, !tbaa !46
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !56 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !61
  %i.cq = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !64  ; 8 uses
  %i.cs = icmp ugt i64 %i.cr, 15
  br i1 %i.cs, label %bb.u, label %._crit_edge.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp slt i64 %i.cr, 0
  br i1 %i.ct, label %.noexc.i.i.i.invoke, label %bb.v

.noexc.i.i.i.invoke:                              ; preds = %bb.u, %._crit_edge
  %i.cu = phi ptr [ @.str.279, %._crit_edge ], [ @.str.278, %bb.u ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.cu) #35
          to label %.noexc.i.i.i.cont unwind label %bb.z

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cv = add nuw i64 %i.cr, 1                    ; 2 uses
  %i.cw = icmp slt i64 %i.cv, 0
  br i1 %i.cw, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !117

.noexc6.i.i.i:                                    ; preds = %bb.v
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc35 unwind label %bb.z

.noexc35:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.v
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #32
          to label %.noexc36 unwind label %bb.z   ; 2 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.cx, ptr %i.cm, align 8, !tbaa !65
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc36, %bb.t
  %i.cy = phi ptr [ %i.cx, %.noexc36 ], [ %i.cp, %bb.t ] ; 3 uses
  switch i64 %i.cr, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cz = load i8, ptr %i.cq, align 1, !tbaa !46
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !46
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %i.cq, i64 %i.cr, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.cr, ptr %i.da, align 8, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cr
  store i8 0, ptr %i.db, align 1, !tbaa !46
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.y:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.z
end_hunk_0
