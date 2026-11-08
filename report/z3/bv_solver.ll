Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bv_solver?download=true
inline.NumInlined: 1624
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6bufferIP4sortLb0ELj16EED2Ev:bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIP4sortLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIP4sortLb0ELj16EE7destroyEv.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2bv6solver8assertedEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(936) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK2bv6solver8get_bv2aEj.exit.thread, label %_ZNK6vectorIPN2bv6solver4atomELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN2bv6solver4atomELb0EjE4sizeEv.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65
  %.not.i.i = icmp ult i32 %i.a, %i.f
  br i1 %.not.i.i, label %_ZNK2bv6solver8get_bv2aEj.exit, label %_ZNK2bv6solver8get_bv2aEj.exit.thread

_ZNK2bv6solver8get_bv2aEj.exit:                   ; preds = %_ZNK6vectorIPN2bv6solver4atomELb0EjE4sizeEv.exit.i.i
  %i.g = zext nneg i32 %i.a to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.h, align 8, !tbaa !203 ; 3 uses
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not, label %_ZNK2bv6solver8get_bv2aEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2bv6solver8get_bv2aEj.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !204
  %.not1.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(108) %0), !inline_history !4
  %i.n = load i32, ptr %i.i, align 8, !tbaa !204
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.i, align 8, !tbaa !204
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i, !llvm.loop !5

_ZN3euf13th_euf_solver10force_pushEv.exit:        ; preds = %.lr.ph.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145  ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !65   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %_ZN6vectorIN2bv6solver16propagation_itemELb0EjE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.c, %_ZN3euf13th_euf_solver10force_pushEv.exit
  tail call void @_ZN6vectorIN2bv6solver16propagation_itemELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !65
  br label %_ZN6vectorIN2bv6solver16propagation_itemELb0EjE9push_backEOS2_.exit

_ZN6vectorIN2bv6solver16propagation_itemELb0EjE9push_backEOS2_.exit: ; preds = %bb.c, %bb.d
  %i.x = phi i32 [ %.pre2.i, %bb.d ], [ %i.t, %bb.c ]
  %i.y = phi ptr [ %.pre.i, %bb.d ], [ %i.q, %bb.c ]
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z ; 3 uses
  store i32 0, ptr %i.aa, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 0, ptr %.sroa.415.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.0.i.sroa.speculate.load..i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !145
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !65
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !737 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK2bv6solver8get_bv2aEj.exit.thread, label %_ZN6vectorISt4pairIPN2bv6solver4atomEPNS2_9eq_occursEELb0EjE3endEv.exit

_ZN6vectorISt4pairIPN2bv6solver4atomEPNS2_9eq_occursEELb0EjE3endEv.exit: ; preds = %_ZN6vectorIN2bv6solver16propagation_itemELb0EjE9push_backEOS2_.exit
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !65 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %.not1319 = icmp eq i32 %i.aj, 0
  br i1 %.not1319, label %_ZNK2bv6solver8get_bv2aEj.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorISt4pairIPN2bv6solver4atomEPNS2_9eq_occursEELb0EjE3endEv.exit, %.lr.ph
  %.020 = phi ptr [ %i.an, %.lr.ph ], [ %i.ag, %_ZN6vectorISt4pairIPN2bv6solver4atomEPNS2_9eq_occursEELb0EjE3endEv.exit ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.020, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.sroa_idx, align 8
  tail call void @_ZN2bv6solver13del_eq_occursEPNS0_4atomEPNS0_9eq_occursE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.4.0.copyload)
  %i.an = getelementptr inbounds nuw i8, ptr %.020, i64 16 ; 2 uses
  %.not13 = icmp eq ptr %i.an, %i.am
  br i1 %.not13, label %_ZNK2bv6solver8get_bv2aEj.exit.thread, label %.lr.ph

_ZNK2bv6solver8get_bv2aEj.exit.thread:            ; preds = %.lr.ph, %_ZN6vectorIN2bv6solver16propagation_itemELb0EjE9push_backEOS2_.exit, %_ZN6vectorISt4pairIPN2bv6solver4atomEPNS2_9eq_occursEELb0EjE3endEv.exit, %bb.a, %_ZNK6vectorIPN2bv6solver4atomELb0EjE4sizeEv.exit.i.i, %_ZNK2bv6solver8get_bv2aEj.exit
  ret void
}

declare void @_ZN2bv6solver13del_eq_occursEPNS0_4atomEPNS0_9eq_occursE(ptr noundef nonnull align 8 dereferenceable(936), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2bv6solver14unit_propagateEv(ptr noundef nonnull align 8 dereferenceable(936) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !739  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !65
  br label %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit

_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.h = icmp ne i32 %i.b, %.0.i                  ; 2 uses
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !204
  %.not1.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(108) %0), !inline_history !4
  %i.n = load i32, ptr %i.i, align 8, !tbaa !204
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.i, align 8, !tbaa !204
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !5

_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i32, ptr %i.a, align 8, !tbaa !65
  br label %_ZN3euf13th_euf_solver10force_pushEv.exit

_ZN3euf13th_euf_solver10force_pushEv.exit:        ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit, %bb.c
  %i.p = phi i32 [ %.pre, %_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit ], [ %i.b, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45, !nonnull !37, !align !38 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2184 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2200
  %i.u = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV11value_trailIjE, i64 16), ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.a, ptr %i.v, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.p, ptr %.sroa.6.8..sroa_idx, align 8
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !224  ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.noexc13, label %bb.d

bb.d:                                             ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !65   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !65
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %.noexc13, label %bb.e

.noexc13:                                         ; preds = %bb.d, %_ZN3euf13th_euf_solver10force_pushEv.exit
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
  %.pre.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !224 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %.noexc13, %bb.d
  %i.ad = phi i32 [ %.pre2.i.i.i, %.noexc13 ], [ %i.z, %bb.d ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i.i.i, %.noexc13 ], [ %i.w, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %i.u, ptr %i.ah, align 8, !tbaa !226
  %i.ai = add i32 %i.ad, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !65
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !145 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge, label %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15.lr.ph

_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15.lr.ph: ; preds = %bb.e
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre37 = load i32, ptr %i.a, align 8, !tbaa !739
  br label %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15

_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15: ; preds = %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15.lr.ph, %.loopexit
  %i.al = phi i32 [ %.pre37, %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15.lr.ph ], [ %i.be, %.loopexit ] ; 2 uses
  %i.am = phi ptr [ %i.aj, %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15.lr.ph ], [ %i.bf, %.loopexit ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !65
  %i.ap = icmp ult i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15
  %i.aq = load ptr, ptr %1, align 8, !tbaa !163
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3168
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !432, !range !359, !noundef !37
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = zext i32 %i.al to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.au ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %.sroa.021.028 = load ptr, ptr %i.aw, align 8, !tbaa !194 ; 2 uses
  %.not2629 = icmp eq ptr %.sroa.021.028, null
  br i1 %.not2629, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %.sroa.016.031 = load ptr, ptr %i.ax, align 8, !tbaa !434 ; 2 uses
  %.not2732 = icmp eq ptr %.sroa.016.031, null
  br i1 %.not2732, label %.loopexit, label %.lr.ph35

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.sroa.021.030 = phi ptr [ %.sroa.021.0, %.lr.ph ], [ %.sroa.021.028, %bb.h ] ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.021.030, align 8
  %i.ay = tail call noundef zeroext i1 @_ZN2bv6solver14propagate_bitsESt4pairIijE(ptr noundef nonnull align 8 dereferenceable(936) %0, i64 %.sroa.0.0.copyload.i) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.021.030, i64 8
  %.sroa.021.0 = load ptr, ptr %i.az, align 8, !tbaa !194 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.021.0, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph35:                                         ; preds = %._crit_edge, %.lr.ph35
  %.sroa.016.033 = phi ptr [ %.sroa.016.0, %.lr.ph35 ], [ %.sroa.016.031, %._crit_edge ] ; 2 uses
  %i.ba = tail call noundef zeroext i1 @_ZN2bv6solver19propagate_eq_occursERKNS0_9eq_occursE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.016.033) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.016.033, i64 32
  %.sroa.016.0 = load ptr, ptr %i.bb, align 8, !tbaa !434 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.016.0, null
  br i1 %.not27, label %.loopexit, label %.lr.ph35

bb.i:                                             ; preds = %bb.g
  %.sroa.07.0.copyload = load i64, ptr %i.av, align 8
  %i.bc = tail call noundef zeroext i1 @_ZN2bv6solver14propagate_bitsESt4pairIijE(ptr noundef nonnull align 8 dereferenceable(936) %0, i64 %.sroa.07.0.copyload) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph35, %._crit_edge, %bb.i
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !739
  %i.be = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.be, ptr %i.a, align 8, !tbaa !739
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !145 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.critedge, label %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15, !llvm.loop !738

.critedge:                                        ; preds = %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit15, %bb.f, %.loopexit, %bb.e, %_ZNK6vectorIN2bv6solver16propagation_itemELb0EjE4sizeEv.exit
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2bv6solver14propagate_bitsESt4pairIijE(ptr noundef nonnull align 8 dereferenceable(936) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.055.0.extract.trunc = trunc i64 %1 to i32 ; 5 uses
  %.sroa.12.0.extract.shift = lshr i64 %1, 32     ; 3 uses
  %.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.12.0.extract.shift to i32 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.c = and i64 %1, 4294967295                   ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = icmp eq i32 %i.e, %.sroa.12.0.extract.trunc
  br i1 %i.f, label %bb.b, label %_ZN2bv6solver9find_wposEi.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge24.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !65   ; 3 uses
  %.not2227.i = icmp eq i32 %i.m, 0
  br i1 %.not2227.i, label %.critedge24.i, label %.critedge.lr.ph.i

.critedge.lr.ph.i:                                ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !163
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3272
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !165
  br label %.critedge.i

bb.c:                                             ; preds = %.critedge.i
  %i.r = add nuw i32 %.02028.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.r, %i.m
  br i1 %exitcond.not.i, label %.critedge24.i, label %.critedge.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.c, %.critedge.lr.ph.i
  %.02028.i = phi i32 [ 0, %.critedge.lr.ph.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = add i32 %.02028.i, %.sroa.12.0.extract.trunc
  %i.t = urem i32 %i.s, %i.m                      ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.u
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 4, !tbaa !65
  %i.w = zext i32 %.sroa.0.0.copyload.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !167
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.critedge.i
  store i32 %i.t, ptr %i.d, align 4, !tbaa !65
  br label %_ZN2bv6solver9find_wposEi.exit

.critedge24.i:                                    ; preds = %bb.c, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.b
  tail call void @_ZN2bv6solver12fixed_var_ehEi(ptr noundef nonnull align 8 dereferenceable(936) %0, i32 noundef %.sroa.055.0.extract.trunc)
  br label %_ZN2bv6solver9find_wposEi.exit

_ZN2bv6solver9find_wposEi.exit:                   ; preds = %.critedge24.i, %bb.d, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !146 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.sroa.12.0.extract.shift
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !65 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3272
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !165 ; 2 uses
  %i.aj = zext i32 %i.ae to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !167 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN2bv6solver9find_wposEi.exit49, label %bb.e

bb.e:                                             ; preds = %_ZN2bv6solver9find_wposEi.exit
  %i.an = icmp eq i32 %i.al, -1
  %i.ao = zext i1 %i.an to i32                    ; 2 uses
  %spec.select = xor i32 %i.ae, %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !144 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.c
  %.03373 = load i32, ptr %i.ar, align 4, !tbaa !65 ; 2 uses
  %.not74 = icmp eq i32 %.03373, %.sroa.055.0.extract.trunc
  br i1 %.not74, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %select.unfold
  %i.as = phi ptr [ %i.bl, %select.unfold ], [ %i.aq, %bb.e ]
  %.03377 = phi i32 [ %.033, %select.unfold ], [ %.03373, %bb.e ] ; 2 uses
  %.03476 = phi i32 [ %.1, %select.unfold ], [ 0, %bb.e ] ; 3 uses
  %.03575 = phi i32 [ %i.az, %select.unfold ], [ 0, %bb.e ]
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !156
  %i.au = zext i32 %.03377 to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !146
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.12.0.extract.shift
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !65
  %spec.select69 = xor i32 %i.ay, %i.ao           ; 2 uses
  %i.az = add i32 %.03575, 1                      ; 2 uses
  %i.ba = icmp ugt i32 %i.az, 3
  %i.bb = icmp eq i32 %.03476, 0
  %or.cond = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond, label %.thread.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !163
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3272
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !165
  %i.bf = zext i32 %spec.select69 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !167
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = add i32 %.03476, 1                      ; 2 uses
  %i.bk = tail call noundef zeroext i1 @_ZN2bv6solver10assign_bitEN3sat7literalEiijS2_b(ptr noundef nonnull align 8 dereferenceable(936) %0, i32 %spec.select69, i32 noundef %.sroa.055.0.extract.trunc, i32 noundef %.03377, i32 noundef %.sroa.12.0.extract.trunc, i32 %spec.select, i1 noundef zeroext false)
  br i1 %i.bk, label %.select.unfold_crit_edge, label %.thread.loopexit

.select.unfold_crit_edge:                         ; preds = %bb.g
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !144
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.f
  %i.bl = phi ptr [ %i.as, %bb.f ], [ %.pre, %.select.unfold_crit_edge ] ; 2 uses
  %.1 = phi i32 [ %.03476, %bb.f ], [ %i.bj, %.select.unfold_crit_edge ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.au
  %.033 = load i32, ptr %i.bm, align 4, !tbaa !65 ; 2 uses
  %.not = icmp eq i32 %.033, %.sroa.055.0.extract.trunc
  br i1 %.not, label %.thread.loopexit, label %.lr.ph, !llvm.loop !740

end_hunk_0
