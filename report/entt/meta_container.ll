Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_container?download=true
inline.NumInlined: 11203
inline.NumDeleted: 3081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZSt4swapIN4entt8meta_anyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !136
  store ptr %i.n, ptr %2, align 8, !tbaa !98
  br label %_ZN4entt8meta_anyC2EOS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #29
  unreachable

_ZN4entt8meta_anyC2EOS0_.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !136
  store ptr null, ptr %i.t, align 8, !tbaa !137
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !136
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136
  store ptr null, ptr %i.w, align 8, !tbaa !136
  store ptr %i.x, ptr %i.v, align 8, !tbaa !116
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN4entt8meta_anyC2EOS0_.exit._ZN4entt8meta_anyaSEOS0_.exit_crit_edge, label %bb.e

_ZN4entt8meta_anyC2EOS0_.exit._ZN4entt8meta_anyaSEOS0_.exit_crit_edge: ; preds = %_ZN4entt8meta_anyC2EOS0_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !110
  br label %_ZN4entt8meta_anyaSEOS0_.exit

bb.e:                                             ; preds = %_ZN4entt8meta_anyC2EOS0_.exit
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i unwind label %bb.j, !inline_history !1

_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i: ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !111
  switch i8 %i.aa, label %bb.h [
    i8 2, label %bb.g
    i8 0, label %bb.i
  ]

bb.g:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108
  %i.ad = invoke noundef ptr %i.ac(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i
  %i.ae = load ptr, ptr %1, align 8, !tbaa !136
  store ptr null, ptr %1, align 8, !tbaa !136
  store ptr %i.ae, ptr %0, align 8, !tbaa !98
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !110
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !136
  store <2 x ptr> %i.ai, ptr %i.b, align 8, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !109
  store i32 %i.ak, ptr %i.h, align 8, !tbaa !109
  %i.al = load i8, ptr %i.z, align 4, !tbaa !111
  store i8 %i.al, ptr %i.k, align 4, !tbaa !111
  br label %_ZN4entt8meta_anyaSEOS0_.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #29
  unreachable

_ZN4entt8meta_anyaSEOS0_.exit:                    ; preds = %_ZN4entt8meta_anyC2EOS0_.exit._ZN4entt8meta_anyaSEOS0_.exit_crit_edge, %bb.i
  %i.ao = phi ptr [ %.pre, %_ZN4entt8meta_anyC2EOS0_.exit._ZN4entt8meta_anyaSEOS0_.exit_crit_edge ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !136
  store ptr null, ptr %i.aq, align 8, !tbaa !137
  store <2 x ptr> %i.ar, ptr %i.r, align 8, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !136
  store ptr null, ptr %i.as, align 8, !tbaa !136
  store ptr %i.at, ptr %i.w, align 8, !tbaa !116
  %.not.i.i.i5 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i5, label %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i6, label %bb.k

bb.k:                                             ; preds = %_ZN4entt8meta_anyaSEOS0_.exit
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i6 unwind label %bb.n, !inline_history !1

_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i6: ; preds = %bb.k, %_ZN4entt8meta_anyaSEOS0_.exit
  %i.au = load i8, ptr %i.j, align 4, !tbaa !111  ; 3 uses
  switch i8 %i.au, label %bb.m [
    i8 2, label %bb.l
    i8 0, label %_ZN4entt8meta_anyaSEOS0_.exit7
  ]

bb.l:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i6
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.aw = invoke noundef ptr %i.av(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %._ZN4entt8meta_anyaSEOS0_.exit7_crit_edge unwind label %bb.n ; 0 uses

._ZN4entt8meta_anyaSEOS0_.exit7_crit_edge:        ; preds = %bb.l
  %.pre9 = load i8, ptr %i.j, align 4, !tbaa !111
  br label %_ZN4entt8meta_anyaSEOS0_.exit7

bb.m:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i6
  %i.ax = load ptr, ptr %2, align 8, !tbaa !136
  store ptr null, ptr %2, align 8, !tbaa !136
  store ptr %i.ax, ptr %1, align 8, !tbaa !98
  br label %_ZN4entt8meta_anyaSEOS0_.exit7

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #29
  unreachable

_ZN4entt8meta_anyaSEOS0_.exit7:                   ; preds = %._ZN4entt8meta_anyaSEOS0_.exit7_crit_edge, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i6, %bb.m
  %i.ba = phi i8 [ %.pre9, %._ZN4entt8meta_anyaSEOS0_.exit7_crit_edge ], [ %i.au, %_ZN4entt9basic_anyILm16ELm8EE24invoke_deleter_if_existsEv.exit.i.i6 ], [ %i.au, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.a, align 8, !tbaa !136
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !136
  %i.be = load i32, ptr %i.g, align 8, !tbaa !109
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !109
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 %i.ba, ptr %i.bg, align 4, !tbaa !111
  %i.bh = load <2 x ptr>, ptr %i.q, align 8, !tbaa !136
  store ptr null, ptr %i.s, align 8, !tbaa !137
  store <2 x ptr> %i.bh, ptr %i.ap, align 8, !tbaa !136
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !136
  store ptr null, ptr %i.v, align 8, !tbaa !136
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !116
  %.not.i.i.i8 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i8, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4entt8meta_anyaSEOS0_.exit7
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.p, !inline_history !1

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #29
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %_ZN4entt8meta_anyaSEOS0_.exit7, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type9constructIJEEENS_8meta_anyEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !143    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #27
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !297  ; 3 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %_ZNK4entt9meta_type6lookupImZNKS0_9constructIJEEENS_8meta_anyEDpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1524 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1524 ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  %.not122155.i = icmp eq ptr %i.i, null
  %.not122.i = or i1 %.not122155.i, %i.l
  br i1 %.not122.i, label %_ZNK4entt9meta_type6lookupImZNKS0_9constructIJEEENS_8meta_anyEDpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_.exit.thread, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %bb.c
  %spec.select91.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %.lr.ph128.split.split.us.i

.lr.ph128.split.split.us.i:                       ; preds = %.lr.ph128.split.split.us.i, %.lr.ph128.i
  %.029127.us136.i = phi ptr [ %.sroa.079.0123.us140.i, %.lr.ph128.split.split.us.i ], [ %i.i, %.lr.ph128.i ] ; 2 uses
  %.030126.us137.i = phi i1 [ %cond.fr.i, %.lr.ph128.split.split.us.i ], [ false, %.lr.ph128.i ]
  %.036124.us139.i = phi ptr [ %.238.us145.i, %.lr.ph128.split.split.us.i ], [ null, %.lr.ph128.i ] ; 3 uses
  %.sroa.079.0123.us140.i = phi ptr [ %spec.select93.us149.i, %.lr.ph128.split.split.us.i ], [ %spec.select91.i, %.lr.ph128.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.029127.us136.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1526
  %2 = icmp eq i64 %i.n, 0                        ; 2 uses
  %i.o = icmp ne ptr %.036124.us139.i, null
  %.not44.us142.i.not = icmp eq ptr %.036124.us139.i, null
  %.not208.i = select i1 %2, i1 %.not44.us142.i.not, i1 false
  %.238.us145.i = select i1 %.not208.i, ptr %.029127.us136.i, ptr %.036124.us139.i ; 3 uses
  %.232.us147.i = select i1 %2, i1 %i.o, i1 %.030126.us137.i
  %cond.fr.i = freeze i1 %.232.us147.i            ; 2 uses
  %i.p = icmp eq ptr %.sroa.079.0123.us140.i, %i.k ; 2 uses
  %spec.select93.idx.us148.i = select i1 %i.p, i64 0, i64 32
  %spec.select93.us149.i = getelementptr inbounds nuw i8, ptr %.sroa.079.0123.us140.i, i64 %spec.select93.idx.us148.i
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph128.split.split.us.i, !llvm.loop !1523

._crit_edge.i:                                    ; preds = %.lr.ph128.split.split.us.i
  %.not = icmp eq ptr %.238.us145.i, null
  %or.cond = select i1 %cond.fr.i, i1 true, i1 %.not
  br i1 %or.cond, label %_ZNK4entt9meta_type6lookupImZNKS0_9constructIJEEENS_8meta_anyEDpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_.exit.thread, label %.critedge

.critedge:                                        ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %.238.us145.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1527
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !142
  tail call void %i.r(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef null)
  br label %bb.g

_ZNK4entt9meta_type6lookupImZNKS0_9constructIJEEENS_8meta_anyEDpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_.exit.thread: ; preds = %._crit_edge.i, %bb.c, %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !143    ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit13

bb.d:                                             ; preds = %_ZNK4entt9meta_type6lookupImZNKS0_9constructIJEEENS_8meta_anyEDpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !142
  %i.y = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.x) #27
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit13

_ZNK4entt9meta_type10fetch_nodeEv.exit13:         ; preds = %_ZNK4entt9meta_type6lookupImZNKS0_9constructIJEEENS_8meta_anyEDpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_.exit.thread, %bb.d
  %i.z = phi ptr [ %i.y, %bb.d ], [ %i.u, %_ZNK4entt9meta_type6lookupImZNKS0_9constructIJEEENS_8meta_anyEDpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_.exit.thread ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1528 ; 2 uses
  %.not12.not = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !142 ; 2 uses
  br i1 %.not12.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit13
  tail call void %i.ab(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
  br label %bb.g

bb.f:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ae, align 8, !tbaa !108
  store i32 1219850847, ptr %i.ag, align 8, !tbaa !109
  store ptr null, ptr %i.af, align 8, !tbaa !110
  store i8 0, ptr %i.ah, align 4, !tbaa !111
  store ptr null, ptr %0, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ai, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.critedge, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forIvEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #27
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !176  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !306
  %i.k = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, %i.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.07.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.f ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !134
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !30

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !309  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !309
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forIvEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #27
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit

_ZN4entt7type_idIvEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !295

bb.d:                                             ; preds = %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #27
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #27
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !176
  store ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.9.0..sroa_idx, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14meta_type_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
