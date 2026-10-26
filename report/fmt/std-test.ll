Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/std-test?download=true
inline.NumInlined: 6377
inline.NumDeleted: 2198
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !56    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !5

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !5

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !56
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !56
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.361) #32
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1310, !nonnull !82, !align !203
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1311, !nonnull !82, !align !204
  store i32 1, ptr %i.am, align 4, !tbaa !196
  %i.an = load ptr, ptr %2, align 8, !tbaa !1312, !nonnull !82, !align !203
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !198
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.363) #32
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !198
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.361) #32
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1308

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !56  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1308

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1308

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1310, !nonnull !82, !align !203 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1311, !nonnull !82, !align !204
  store i32 2, ptr %i.bl, align 4, !tbaa !196
  %i.bm = load ptr, ptr %2, align 8, !tbaa !1312, !nonnull !82, !align !203
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !198
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNKSt10filesystem7__cxx114path14generic_stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !57
  store i8 0, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1317 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 3
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit

_ZNKSt10filesystem7__cxx114path5beginEv.exit:     ; preds = %bb.d
  %i.o = load i64, ptr %i.i, align 8, !tbaa !57, !noalias !1317
  %i.p = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.q = zext i1 %i.p to i8
  %i.r = and i64 %i.l, 3
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread

_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread: ; preds = %bb.d
  %i.t = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #33, !noalias !1317 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1318 ; 2 uses
  %.pre36 = ptrtoint ptr %.pre to i64
  %i.u = and i64 %.pre36, 3
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %.lr.ph.preheader

_ZNKSt10filesystem7__cxx114path3endEv.exit.thread: ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

_ZNKSt10filesystem7__cxx114path3endEv.exit:       ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  %.sink.i61 = phi i8 [ 0, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ %i.q, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ] ; 2 uses
  %.sink1.i58 = phi ptr [ %i.t, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ] ; 3 uses
  %i.w = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #33, !noalias !1318 ; 3 uses
  %.pre34 = load ptr, ptr %i.c, align 8, !tbaa !70
  %.pre34.fr = freeze ptr %.pre34                 ; 3 uses
  %.pre37 = ptrtoint ptr %.pre34.fr to i64
  %.pre39 = and i64 %.pre37, 3
  %i.x = icmp eq i64 %.pre39, 0
  br i1 %i.x, label %.split, label %bb.e

.split:                                           ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not66 = icmp eq ptr %.sink1.i58, %i.w
  br i1 %.not66, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

bb.e:                                             ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not = icmp eq i8 %.sink.i61, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.e
  %.sink.i62 = phi i8 [ %.sink.i61, %.split ], [ 1, %bb.e ], [ 0, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ 0, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i59 = phi ptr [ %.sink1.i58, %.split ], [ %.sink1.i58, %bb.e ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %i.t, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %i.y = phi ptr [ %.pre34.fr, %.split ], [ %.pre34.fr, %bb.e ], [ %i.k, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %.pre, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i144953 = phi ptr [ %i.w, %.split ], [ %i.w, %bb.e ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink.i155052 = phi i8 [ 0, %.split ], [ 0, %bb.e ], [ 1, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ 1, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.z = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.y, %.lr.ph.preheader ]
  %.032 = phi i1 [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ false, %.lr.ph.preheader ]
  %.sroa.13.031 = phi i8 [ %spec.select28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink.i62, %.lr.ph.preheader ]
  %.sroa.8.030 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink1.i59, %.lr.ph.preheader ] ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 3
  %i.ac = icmp eq i64 %i.ab, 0
  %.0.i.sroa.speculated = select i1 %i.ac, ptr %.sroa.8.030, ptr %1 ; 3 uses
  br i1 %.032, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !57  ; 4 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.ah = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ah)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !56
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aj = phi i64 [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ad, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.al = phi ptr [ %.pre.i.i, %.noexc ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 47, ptr %i.am, align 1, !tbaa !56
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !57
  %i.an = load ptr, ptr %3, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ae
  store i8 0, ptr %i.ao, align 1, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !57
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.364) #32
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.h
  %i.au = load ptr, ptr %.0.i.sroa.speculated, align 8, !tbaa !55
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.au, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 3
  %i.ba = icmp eq i64 %i.az, 3
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp eq i64 %i.bd, 0                    ; 3 uses
  %spec.select.idx = select i1 %i.be, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.8.030, i64 %spec.select.idx ; 2 uses
  %spec.select28 = select i1 %i.be, i8 %.sroa.13.031, i8 1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select28, %.sink.i155052
  %i.bg = icmp ne ptr %spec.select, %.sink1.i144953
  %.0.i.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %.0.i.i, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i, %bb.b, %bb.c, %bb.i
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.e, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !51
  %i.bk = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.a
  br i1 %i.bl, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !57  ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  store ptr %i.bk, ptr %0, align 8, !tbaa !55
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !56
  %.pre35 = load i64, ptr %i.b, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bq = phi i64 [ %i.bm, %bb.j ], [ %.pre35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !56
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %lpad.loopexit.split-lp67
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.ag
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !56     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1330, !noalias !1331 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp ult i32 %i.a, %i.e
  br i1 %i.f, label %bb.d, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56, !noalias !1331
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i
  br label %_ZNK3fmt3v127context3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ugt i32 %i.a, 14
  br i1 %i.k, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.a, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 %i.c, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56, !noalias !1331
  br label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !205
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !53 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1330, !noalias !1332 ; 5 uses
  %i.u = and i64 %i.t, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1332 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !177
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !9
  %.pre.i.i28 = load i64, ptr %i.n, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

_ZN3fmt3v1214basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1, !tbaa !56
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !184  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !177
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa), !inline_history !9
  %.pre.i.i33 = load i64, ptr %i.y, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i34 = add i64 %.pre.i.i33, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

_ZN3fmt3v1214basic_appenderIcEaSEc.exit35:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i32 = phi i64 [ %i.aa, %bb.f ], [ %.pre2.i.i34, %bb.g ]
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %.pre.i.i33, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i32, ptr %i.y, align 8, !tbaa !184
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 92, ptr %i.ai, align 1, !tbaa !56
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = trunc nuw nsw i32 %i.b to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !184 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !177
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !165
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am), !inline_history !9
  %.pre.i.i38 = load i64, ptr %i.ak, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i39 = add i64 %.pre.i.i38, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

_ZN3fmt3v1214basic_appenderIcEaSEc.exit40:        ; preds = %bb.h, %bb.i
  %.pre-phi.i.i37 = phi i64 [ %i.am, %bb.h ], [ %.pre2.i.i39, %bb.i ]
  %i.as = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i38, %bb.i ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !56
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v126detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !219   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !220 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !56
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !184 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !177
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !165
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk), !inline_history !9
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

_ZN3fmt3v1214basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !184
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02455, align 1, !tbaa !56
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.368, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !56
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02455, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !118
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !56    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !56  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !56  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !118
  %i.ao = lshr i32 %i.al, %i.an                   ; 8 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !118
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !118
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %.lcssa125 = phi i32 [ %i.ao, %.lr.ph ], [ %i.ao, %switch.early.test.i.i.i ], [ %i.ao, %switch.early.test.i.i.i ], [ %i.ao, %switch.early.test.i.i.i ], [ %i.bm, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i ]
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bq
  store ptr %.02455, ptr %2, align 8, !tbaa !205
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !205
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.lcssa125, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !118
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1365

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.cb = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !56
  %wide.load109 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !56
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !56
  store <16 x i8> %wide.load109, ptr %i.cd, align 1, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.bw, -8                   ; 4 uses
  %i.cf = getelementptr i8, ptr %i.b, i64 %n.vec110
  %i.cg = getelementptr i8, ptr %.2, i64 %n.vec110
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %next.gep112 = getelementptr i8, ptr %i.b, i64 %index111
  %next.gep113 = getelementptr i8, ptr %.2, i64 %index111
  %wide.load114 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !56
  store <8 x i8> %wide.load114, ptr %next.gep112, align 1, !tbaa !56
  %index.next115 = add nuw i64 %index111, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1367

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.bw, %n.vec110
  br i1 %cmp.n116, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ] ; 3 uses
  %i.ci = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph134 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.cj = sub i64 %i.ci, %.057.i.ph134
  %xtraiter = and i64 %i.cj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cm, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cl = load i8, ptr %.057.i.prol, align 1, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cl, ptr %.08.i.prol, align 1, !tbaa !56
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1368

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %i.cn = sub i64 %.057.i.ph134, %i.ci
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cq = load i8, ptr %.057.i, align 1, !tbaa !56
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cq, ptr %.08.i, align 1, !tbaa !56
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !56
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !56
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.df = load i8, ptr %i.db, align 1, !tbaa !56
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.di = load i8, ptr %i.de, align 1, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !56
  %i.dk = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !56
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !56
  %.not.i33.7 = icmp eq ptr %i.dk, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i, !llvm.loop !1369

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.ga, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 6 uses
  %i.do = load i8, ptr %.0, align 1, !tbaa !56
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @.str.368, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !56
  %i.du = sext i8 %i.dt to i64                    ; 6 uses
  %i.dv = getelementptr inbounds i8, ptr %.0, i64 %i.du
  %.not.i.i34 = lshr i32 -2130771968, %i.dq
  %i.dw = and i32 %.not.i.i34, 1
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx
  %i.dz = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.du
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !118
  %i.eb = and i32 %i.ea, %i.dp
  %i.ec = shl nuw nsw i32 %i.eb, 18
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !56  ; 2 uses
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 12
  %i.ei = or disjoint i32 %i.eh, %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !56  ; 2 uses
  %i.el = and i8 %i.ek, 63
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 6
  %i.eo = or disjoint i32 %i.en, %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !56  ; 2 uses
  %i.er = and i8 %i.eq, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eo, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.du
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !118
  %i.ew = lshr i32 %i.et, %i.ev                   ; 8 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.du
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !118
  %i.ez = icmp ult i32 %i.ew, %i.ey
  %i.fa = select i1 %i.ez, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ew, 2147481600
  %i.fb = icmp eq i32 %.mask.i.i35, 55296
  %i.fc = select i1 %i.fb, i32 128, i32 0
  %i.fd = icmp samesign ugt i32 %i.ew, 1114111
  %i.fe = select i1 %i.fd, i32 256, i32 0
  %i.ff = lshr i8 %i.ee, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = lshr i8 %i.ek, 4
  %i.fi = and i8 %i.fh, 12
  %i.fj = lshr i8 %i.eq, 6
  %i.fk = or disjoint i8 %i.fi, %i.fg
  %i.fl = or disjoint i8 %i.fk, %i.fj
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fa, %i.fm
  %i.fo = or disjoint i32 %i.fn, %i.fe
  %i.fp = or disjoint i32 %i.fo, %i.fc
  %i.fq = xor i32 %i.fp, 42
  %i.fr = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.du
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !118
  %i.ft = lshr i32 %i.fq, %i.fs
  %.not.i36 = icmp eq i32 %i.ft, 0                ; 3 uses
  %i.fu = select i1 %.not.i36, i32 %i.ew, i32 -1  ; 4 uses
  %i.fv = icmp ult i32 %i.fu, 32
  br i1 %i.fv, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit
  switch i32 %i.fu, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41:    ; preds = %switch.early.test.i.i.i37
  %i.fw = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.fu)
  br i1 %i.fw, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %.lcssa = phi i32 [ %i.ew, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %i.ew, %switch.early.test.i.i.i37 ], [ %i.ew, %switch.early.test.i.i.i37 ], [ %i.ew, %switch.early.test.i.i.i37 ], [ %i.fu, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 ]
  %i.fx = add nsw i64 %i.dx, %i.du
  %i.fy = select i1 %.not.i36, i64 %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fy
  store ptr %.3, ptr %2, align 8, !tbaa !205
  store ptr %i.fz, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !tbaa !205
  store i32 %.lcssa, ptr %.sroa.5.0..sroa_idx.i.i40, align 8, !tbaa !118
  br label %.loopexit75

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.ga = select i1 %.not.i36, ptr %i.dy, ptr %i.ed ; 3 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.0 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %i.gd
  %i.ge = icmp ult ptr %i.ga, %i.dn
  br i1 %i.ge, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %.loopexit75, !llvm.loop !1370

.loopexit75:                                      ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, %.loopexit75, %.loopexit
  ret void
}

declare noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !165
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !9
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !184
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !56
  %i.m = load i64, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !177
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n), !inline_history !9
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !184
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i16 12336, ptr %i.a, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.370, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !56
  %i.ab = lshr i32 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i.i, !llvm.loop !11

_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i8 = load i64, ptr %i.b, align 8, !tbaa !184
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ad = phi i64 [ %.pre.i.i8, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.aq, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !177
  %i.af = sub i64 %i.ae, %i.ad
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.ag = icmp ult i64 %i.af, %gepdiff
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !165
  %i.ai = add i64 %gepdiff, %i.ad
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai), !inline_history !12
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !184 ; 2 uses
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !177
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %.025.i.i = phi i64 [ %i.am, %bb.e ], [ %gepdiff, %bb.d ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.an = load ptr, ptr %0, align 8, !tbaa !176
  %i.ao = getelementptr i8, ptr %i.an, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !56
  %.pre37.i.i = load i64, ptr %i.b, align 8, !tbaa !184
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.f
  %i.ap = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.f ]
  %i.aq = add i64 %i.ap, %.025.i.i                ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !184
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i9 = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i9, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %bb.d, !llvm.loop !8

_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !165
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !9
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !184
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !56
  %i.m = load i64, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !177
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n), !inline_history !9
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !184 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !176
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !184
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 808464432, ptr %i.a, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.370, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !56
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %.0.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]      ; 2 uses
  %i.di = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.di, label %.lr.ph.i, label %.thread265

.lr.ph.i:                                         ; preds = %bb.z
  %i.dj = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.dk = zext nneg i32 %i.cs to i64              ; 3 uses
  %i.dl = and i64 %.0208, 4294967295
  %i.dm = mul nuw nsw i64 %i.dl, 100              ; 3 uses
  %i.dn = lshr i64 %i.dm, 32                      ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dj
  %i.dp = shl nuw nsw i64 %i.dn, 1
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2
  store i16 %i.dr, ptr %i.do, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.dj, 2   ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next.i, %i.dk
  br i1 %i.ds, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dt = and i64 %i.dm, 4294967292
  %i.du = mul nuw nsw i64 %i.dt, 100              ; 3 uses
  %i.dv = lshr i64 %i.du, 32                      ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.next.i
  %i.dx = shl nuw nsw i64 %i.dv, 1
  %i.dy = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2
  store i16 %i.dz, ptr %i.dw, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.dj, 4 ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next.i.1, %i.dk
  br i1 %i.ea, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.eb = and i64 %i.du, 4294967280
  %i.ec = mul nuw nsw i64 %i.eb, 100              ; 3 uses
  %i.ed = lshr i64 %i.ec, 32                      ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.next.i.1
  %i.ef = shl nuw nsw i64 %i.ed, 1
  %i.eg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2
  store i16 %i.eh, ptr %i.ee, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.dj, 6 ; 2 uses
  %i.ei = icmp samesign ult i64 %indvars.iv.next.i.2, %i.dk
  br i1 %i.ei, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ej = and i64 %i.ec, 4294967232
  %i.ek = mul nuw nsw i64 %i.ej, 100              ; 2 uses
  %i.el = lshr i64 %i.ek, 32                      ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.next.i.2
  %i.en = shl nuw nsw i64 %i.el, 1
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2
  store i16 %i.ep, ptr %i.em, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa286 = phi i64 [ %i.dm, %.lr.ph.i ], [ %i.du, %bb.aa ], [ %i.ec, %bb.ab ], [ %i.ek, %bb.ac ]
  %.lcssa285 = phi i64 [ %i.dn, %.lr.ph.i ], [ %i.dv, %bb.aa ], [ %i.ed, %bb.ab ], [ %i.el, %bb.ac ] ; 2 uses
  %i.eq = icmp samesign ult i32 %.0187, 10
  br i1 %i.eq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ae, label %.thread265

.thread265:                                       ; preds = %bb.z, %bb.ad
  %.2210262271 = phi i64 [ %.lcssa286, %bb.ad ], [ %.0208, %bb.z ]
  %.1205264270.in = phi i64 [ %.lcssa285, %bb.ad ], [ %.0204.in, %bb.z ]
  %i.er = trunc i64 %.2210262271 to i32           ; 2 uses
  %i.es = sub nuw nsw i32 8, %i.cs
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr @.str.392, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !1514
  %i.ew = zext i16 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @.str.393, i64 %i.et
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !1514
  %i.fa = zext i16 %i.ez to i32
  %i.fb = or disjoint i32 %i.ex, %i.fa
  %.not130 = icmp ugt i32 %i.fb, %i.er
  br i1 %.not130, label %bb.an, label %.critedge134

bb.ae:                                            ; preds = %bb.ad
  %i.fc = icmp ugt i64 %i.cr, 5000000000
  br i1 %i.fc, label %.critedge134.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = icmp eq i64 %i.cr, 5000000000
  %i.fe = trunc i64 %.lcssa285 to i1
  %i.ff = or i1 %i.bm, %i.fe
  %or.cond223 = select i1 %i.fd, i1 %i.ff, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ag:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.fg = tail call noundef i64 @llvm.umulh.i64(i64 %i.cr, i64 1844674407370955162) ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = trunc i64 %i.cr to i32
  %.neg127 = mul i32 %i.fh, -10
  %i.fj = add i32 %.neg127, %i.fi                 ; 3 uses
  %i.fk = add nsw i32 %.0187, -9                  ; 3 uses
  %i.fl = load ptr, ptr %4, align 8, !tbaa !176
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 9 ; 3 uses
  %i.fn = and i32 %i.fk, 1
  %.not.i142 = icmp eq i32 %i.fn, 0
  %i.fo = and i64 %i.fg, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fp = mul nuw nsw i64 %i.fo, 720575941
  %i.fq = lshr i64 %i.fp, 24
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %i.fs = lshr i64 %i.fr, 32                      ; 2 uses
  %i.ft = trunc nuw nsw i64 %i.fs to i8
  %i.fu = add nuw nsw i8 %i.ft, 48
  store i8 %i.fu, ptr %i.fm, align 1, !tbaa !56
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fv = mul nuw nsw i64 %i.fo, 450359963
  %i.fw = lshr i64 %i.fv, 20
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.fy = lshr i64 %i.fx, 32                      ; 2 uses
  %i.fz = shl nuw nsw i64 %i.fy, 1
  %i.ga = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2
  store i16 %i.gb, ptr %i.fm, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3211 = phi i64 [ %i.fx, %bb.ai ], [ %i.fr, %bb.ah ] ; 2 uses
  %.2206.in = phi i64 [ %i.fy, %bb.ai ], [ %i.fs, %bb.ah ]
  %.0.i143 = phi i32 [ 2, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.gc = icmp samesign ult i32 %.0.i143, %i.fk
  br i1 %i.gc, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.aj
  %i.gd = zext nneg i32 %.0.i143 to i64
  %i.ge = zext nneg i32 %i.fk to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.gg, %bb.ak ]
  %indvars.iv.i145 = phi i64 [ %i.gd, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.ak ] ; 2 uses
  %i.gf = and i64 %.4, 4294967295
  %i.gg = mul nuw nsw i64 %i.gf, 100              ; 3 uses
  %i.gh = lshr i64 %i.gg, 32                      ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i145
  %i.gj = shl nuw nsw i64 %i.gh, 1
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2
  store i16 %i.gl, ptr %i.gi, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next.i146, %i.ge
  br i1 %i.gm, label %bb.ak, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1510

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.ak
  %i.gn = icmp samesign ult i32 %.0187, 18
  br i1 %i.gn, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.al

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.aj, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.gh, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.aj ]
  %.5214 = phi i64 [ %i.gg, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.aj ]
  %i.go = trunc i64 %.5214 to i32                 ; 2 uses
  %i.gp = sub nuw nsw i32 17, %.0187
  %i.gq = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr @.str.392, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !1514
  %i.gt = zext i16 %i.gs to i32
  %i.gu = shl nuw i32 %i.gt, 16
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr @.str.393, i64 %i.gq
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !1514
  %i.gx = zext i16 %i.gw to i32
  %i.gy = or disjoint i32 %i.gu, %i.gx
  %.not128 = icmp ugt i32 %i.gy, %i.go
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.gz = lshr i32 %i.go, 31
  %i.ha = icmp ne i32 %i.fj, 0
  %i.hb = or i1 %i.ha, %i.bm
  %i.hc = zext i1 %i.hb to i32
  %i.hd = or i32 %i.hc, %.3207215
  %i.he = and i32 %i.gz, %i.hd
  %i.hf = trunc nuw i32 %i.he to i1
  br i1 %i.hf, label %.critedge134.thread, label %.critedge136

bb.al:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.hg = icmp ugt i32 %i.fj, 5
  br i1 %i.hg, label %.critedge134.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = icmp eq i32 %i.fj, 5
  %i.hi = trunc i64 %i.gh to i1
  %i.hj = or i1 %i.bm, %i.hi
  %or.cond225 = select i1 %i.hh, i1 %i.hj, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.an:                                            ; preds = %.thread265
  %.1205264270 = trunc nuw nsw i64 %.1205264270.in to i32
  %i.hk = lshr i32 %i.er, 31
  %i.hl = or i64 %i.cr, %i.bj
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = or i32 %.1205264270, %i.hn
  %i.hp = and i32 %i.ho, %i.hk
  %i.hq = trunc nuw i32 %i.hp to i1
  br i1 %i.hq, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.am, %bb.af, %.split217, %bb.ae, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.al
  %i.hr = load ptr, ptr %4, align 8, !tbaa !176
  %i.hs = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hr, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 -1     ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !56
  %i.hw = add i8 %i.hv, 1
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !56
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread265, %bb.an
  %i.hx = load ptr, ptr %4, align 8, !tbaa !176
  %i.hy = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hx, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 -1     ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !56
  %i.ic = add i8 %i.ib, 1
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !56
  %.not240 = icmp eq i32 %.0187, 1
  br i1 %.not240, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.id = phi i64 [ %i.hs, %.critedge134.thread ], [ %i.hy, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.id, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ie = load ptr, ptr %4, align 8, !tbaa !176
  %i.if = and i64 %indvars.iv.next, 4294967295
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !56
  %i.ii = icmp sgt i8 %i.ih, 57
  br i1 %i.ii, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge134
  %i.ij = phi i64 [ 1, %.critedge134 ], [ %i.id, %bb.ao ], [ %i.id, %.lr.ph ]
  %i.ik = load ptr, ptr %4, align 8, !tbaa !176   ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !56
  %i.im = icmp sgt i8 %i.il, 57
  br i1 %i.im, label %bb.ap, label %.critedge136

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.ig, align 1, !tbaa !56
  %i.in = load ptr, ptr %4, align 8, !tbaa !176
  %i.io = getelementptr i8, ptr %i.in, i64 %indvars.iv
  %i.ip = getelementptr i8, ptr %i.io, i64 -2     ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !56
  %i.ir = add i8 %i.iq, 1
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !56
  %i.is = trunc nuw i64 %indvars.iv to i32
  %i.it = icmp sgt i32 %i.is, 2
  br i1 %i.it, label %.lr.ph, label %.critedge, !llvm.loop !1511

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.ik, align 1, !tbaa !56
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.iu = add nuw nsw i32 %.0187, 1
  %i.iv = load ptr, ptr %4, align 8, !tbaa !176
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ij
  store i8 48, ptr %i.iw, align 1, !tbaa !56
  br label %.critedge136

bb.ar:                                            ; preds = %bb.ap
  %i.ix = add nsw i32 %i.co, 1
  store i32 %i.ix, ptr %i.a, align 4, !tbaa !118
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.am, %bb.af, %.critedge, %bb.ar, %bb.aq, %bb.an
  %.1188 = phi i32 [ %i.iu, %bb.aq ], [ %.0187, %bb.ar ], [ %.0187, %.critedge ], [ %.0187, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %.0187, %.split217 ]
  %i.iy = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !177 ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iy
  br i1 %i.jb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge136
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !165
  tail call void %i.jd(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.iy), !inline_history !1509
  %.pre.i148 = load i64, ptr %i.iz, align 8, !tbaa !177
  br label %bb.at

.thread219:                                       ; preds = %bb.o
  %i.je = add nsw i32 %.0106, -1
  %i.jf = add nsw i32 %i.je, %.neg125
  store i32 %i.jf, ptr %i.a, align 4, !tbaa !118
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge136
  %i.jg = phi i64 [ %i.ja, %.critedge136 ], [ %.pre.i148, %bb.as ]
  %i.jh = tail call noundef i64 @llvm.umin.i64(i64 %i.iy, i64 %i.jg)
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !184
  br label %.thread

bb.au:                                            ; preds = %.thread219
  %i.jj = fptrunc double %0 to float
  %i.jk = bitcast float %i.jj to i32              ; 2 uses
  %i.jl = and i32 %i.jk, 8388607                  ; 2 uses
  %i.jm = zext nneg i32 %i.jl to i128             ; 2 uses
  %i.jn = and i32 %i.jk, 2139095040               ; 3 uses
  %i.jo = icmp eq i32 %i.jn, 0                    ; 2 uses
  %i.jp = lshr exact i32 %i.jn, 23
  %i.jq = or disjoint i128 %i.jm, 8388608
  %i.jr = add nsw i32 %i.jp, -150
  %storemerge.i = select i1 %i.jo, i128 %i.jm, i128 %i.jq
  %.0.i150 = select i1 %i.jo, i32 -149, i32 %i.jr
  %i.js = icmp eq i32 %i.jl, 0
  %i.jt = icmp samesign ugt i32 %i.jn, 16777215
  %i.ju = and i1 %i.js, %i.jt
  br label %bb.aw

bb.av:                                            ; preds = %.thread219
  %i.jv = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.jw = or disjoint i128 %i.jv, 4503599627370496
  %i.jx = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.jv, i128 %i.jw
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.jx
  %i.jy = icmp eq i64 %i.ad, 0
  %i.jz = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.ka = and i1 %i.jy, %i.jz
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.au ], [ %storemerge.i151, %bb.av ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.au ], [ %.0.i152, %bb.av ]
  %i.kb = phi i1 [ %i.ju, %bb.au ], [ %i.ka, %bb.av ]
  %spec.select = zext i1 %i.kb to i32             ; 2 uses
  %i.kc = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.kc, i32 %spec.select
  %i.kd = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !1515
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !118
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp.420") align 16 %5, i32 noundef %.1111, i32 noundef %i.kd, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.r, %bb.v, %bb.u, %bb.aw
  br i1 %i.d, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %.thread
  %i.ke = load i32, ptr %2, align 4, !tbaa !179
  %i.kf = and i32 %i.ke, 8192
  %.not227 = icmp eq i32 %i.kf, 0
  br i1 %.not227, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !184 ; 2 uses
  %.not132235 = icmp eq i64 %i.kh, 0
  br i1 %.not132235, label %.critedge3.thread, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.ay
  %.promoted = load i32, ptr %i.a, align 4
  %i.ki = load ptr, ptr %4, align 8, !tbaa !176
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph237, %bb.ba
  %.0236 = phi i64 [ %i.kh, %.lr.ph237 ], [ %i.kk, %bb.ba ] ; 5 uses
  %i.kj = phi i32 [ %.promoted, %.lr.ph237 ], [ %i.ko, %bb.ba ]
  %i.kk = add i64 %.0236, -1                      ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !56
  %i.kn = icmp eq i8 %i.km, 48
  br i1 %i.kn, label %bb.ba, label %.critedge3

bb.ba:                                            ; preds = %bb.az
  %i.ko = add nsw i32 %i.kj, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.a, align 4, !tbaa !118
  %.not132 = icmp eq i64 %i.kk, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.az, !llvm.loop !1512

.critedge3.thread:                                ; preds = %bb.ba, %bb.ay
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !177
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.az
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !177 ; 2 uses
  %i.kt = icmp ugt i64 %.0236, %i.ks
  br i1 %i.kt, label %bb.bb, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.bb:                                            ; preds = %.critedge3
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !165
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0236), !inline_history !1509
  %.pre.i153 = load i64, ptr %i.kr, align 8, !tbaa !177
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a
._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !275
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !275
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !276 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !270   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !118 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !118 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !118
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1605

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !118 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !118
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1606

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !271
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !269
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg), !inline_history !1607
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !276 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !270
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !276
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !118
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !276  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !275  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !276  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !275  ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i91 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i91, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !28

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !118  ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !271 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !269
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ab), !inline_history !1608
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !271
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !276
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !270 ; 13 uses
  br i1 %i.aj, label %.lr.ph.i, label %.lr.ph.preheader.i.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add nuw i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 5 uses
  %i.an = zext nneg i32 %i.ak to i64              ; 5 uses
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !118
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !118
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !118
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1609

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !118
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !118
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1610

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = xor i32 %i.k, -1
  %i.bj = add i32 %i.e, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bm, i1 false), !tbaa !118
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !275
  %i.bo = sub nsw i32 %i.bn, %i.y                 ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !275
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !276
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !118
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !118
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !118
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !118
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !118
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !118
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !118
  %i.ce = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !118
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !1611

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cg = phi i32 [ %i.e, %select.unfold ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %i.ch = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ck = phi i32 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ex, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cl = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ez, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cm = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ev, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cn = trunc i64 %i.cm to i32
  %.not21.i = icmp eq i64 %i.cl, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.co = load i32, ptr %i.j, align 8, !tbaa !275
  %i.cp = sub i32 %i.co, %i.ck
  %i.cq = load ptr, ptr %1, align 8, !tbaa !270   ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !270   ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %xtraiter121 = and i64 %i.cl, 1
  %i.ct = icmp eq i64 %i.cl, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ea, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !118
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !118
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01822.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !118
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %._crit_edge.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cs, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ea, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !118
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !118
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !118
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !118
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !118
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !118
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a
  %indvars.iv45.i23100 = phi i64 [ %indvars.iv.next46.i28, %bb.n ], [ %i.fj, %bb.m ]
  %indvars.iv.next.i27 = add nsw i64 %indvars.iv.i24101, -1 ; 3 uses
  %indvars.iv.next46.i28 = add nsw i64 %indvars.iv45.i23100, -1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i27
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !118 ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv.next46.i28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !118 ; 2 uses
  %.not37.i29 = icmp eq i32 %i.fl, %i.fn
  br i1 %.not37.i29, label %bb.n, label %.loopexit.i30, !llvm.loop !28

._crit_edge104:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i23.lcssa = phi i64 [ %i.fj, %bb.m ], [ %indvars.iv.next46.i28, %bb.n ]
  %or.cond.not49 = icmp slt i64 %smin59, %indvars.iv45.i23.lcssa
  br i1 %or.cond.not49, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge

.loopexit.i30:                                    ; preds = %.lr.ph103
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  br i1 %i.fo, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge: ; preds = %.loopexit.i30, %bb.l, %._crit_edge104
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31, !llvm.loop !1614

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge104, %.loopexit.i30, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.ev, %bb.l ], [ %i.ev, %.loopexit.i30 ], [ %i.ev, %._crit_edge104 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !271  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !270    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !276  ; 2 uses
  %i.m = icmp ule i64 %i.l, %.0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl i64 %i.l, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.h, i64 %i.n, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !270
  store i64 %.0, ptr %i.a, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.o
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.h) #33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.422", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !276  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !269
  %i.g = load ptr, ptr %0, align 8, !tbaa !270    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !271  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !270
  store i64 %i.i, ptr %i.e, align 8, !tbaa !271
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !118
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !270
  store i64 %i.i, ptr %i.e, align 8, !tbaa !271
  store ptr %i.j, ptr %0, align 8, !tbaa !270
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.n = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.i, %bb.b ]
  %i.o = icmp ugt i64 %i.b, %i.i
  br i1 %i.o, label %bb.d, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.p = lshr i64 %i.i, 1
  %i.q = add i64 %i.p, %i.i                       ; 3 uses
  %i.r = icmp ugt i64 %i.b, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.b, %bb.d ] ; 4 uses
  %i.u = shl i64 %.0.i, 2
  %i.v = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %i.u)
          to label %.noexc112 unwind label %bb.i  ; 2 uses

.noexc112:                                        ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !276  ; 2 uses
  %i.y = icmp ule i64 %i.x, %.0.i
  call void @llvm.assume(i1 %i.y)
  %i.z = shl i64 %i.x, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.m, i64 %i.z, i1 false)
  store ptr %i.v, ptr %1, align 8, !tbaa !270
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !271
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.m, %i.aa
  br i1 %.not.i, label %.noexc.i, label %bb.h

bb.h:                                             ; preds = %.noexc112
  call void @free(ptr noundef %i.m) #33
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !271
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.h, %.noexc112
  %.pre.i.i.i.i = phi i64 [ %.pre.i.i.i.i.pre, %bb.h ], [ %.0.i, %.noexc112 ]
  %.pre = load i64, ptr %i.h, align 8, !tbaa !271
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #37
  unreachable

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit: ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, %.noexc.i
  %i.ad = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre, %.noexc.i ] ; 2 uses
  %i.ae = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ae)
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !276
  %i.ah = zext i32 %i.d to i64                    ; 3 uses
  %i.ai = icmp ult i64 %i.ad, %i.ah
  br i1 %i.ai, label %bb.j, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.j:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !269
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ah)
          to label %.noexc unwind label %bb.r, !inline_history !1615

.noexc:                                           ; preds = %bb.j
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !271
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, %.noexc
  %i.al = phi i64 [ %i.ad, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.am = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.al) ; 4 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !276
  %i.an = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.an, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.ao = load ptr, ptr %1, align 8, !tbaa !270   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.k
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.k ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bh, %bb.k ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.ap = icmp eq i64 %indvars.iv, 0
  br i1 %i.ap, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.l

.preheader.loopexit:                              ; preds = %bb.k
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bh, %.preheader.loopexit ]
  %i.aq = icmp sgt i32 %i.d, %i.c
  br i1 %i.aq, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ar = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.as = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.at = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.at, %i.as
  %i.au = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.as, -1      ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv82.prol
  br label %bb.o

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.k, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.cb, %.unr-lcssa ]
  %lcmp.mod148 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !118
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv62.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !118
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul nuw i64 %i.bb, %i.ay
  %i.bd = zext i64 %i.bc to i128
  %i.be = add i128 %.147.epil.init, %i.bd
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa145 = phi i128 [ %i.cb, %.unr-lcssa ], [ %i.be, %.epil.preheader ] ; 2 uses
  %i.bf = trunc i128 %.lcssa145 to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !118
  %i.bh = lshr i128 %.lcssa145, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !1616

bb.l:                                             ; preds = %bb.l, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.l ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.l ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.cb, %bb.l ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.l ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !118
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv62
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !118
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw i64 %i.bn, %i.bk
  %i.bp = zext i64 %i.bo to i128
  %i.bq = add i128 %.147, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !118
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv62
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !118
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw i64 %i.by, %i.bu
  %i.ca = zext i64 %i.bz to i128
  %i.cb = add i128 %i.bq, %i.ca                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.l, !llvm.loop !1617

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.cc = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.cd = trunc nuw i64 %i.am to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cd, i32 1) ; 2 uses
  %i.ce = trunc nuw i64 %i.am to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph140, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph140
  %i.cg = trunc nuw i64 %i.cj to i32              ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %.lr.ph140, label %.critedge.i, !llvm.loop !30

.lr.ph140:                                        ; preds = %._crit_edge59, %bb.m
  %i.ci = phi i32 [ %i.cg, %bb.m ], [ %i.ce, %._crit_edge59 ]
  %indvars.iv.i139 = phi i64 [ %i.cj, %bb.m ], [ %i.am, %._crit_edge59 ]
  %i.cj = add nsw i64 %indvars.iv.i139, -1        ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !118
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %..critedge.i_crit_edge, !llvm.loop !30

..critedge.i_crit_edge:                           ; preds = %.lr.ph140
  br label %.critedge.i, !llvm.loop !30

.critedge.i:                                      ; preds = %bb.m, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.ci, %..critedge.i_crit_edge ], [ %smin.i, %bb.m ]
  %i.cn = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.co = icmp ult i64 %i.al, %i.cn
  br i1 %i.co, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.critedge.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !269
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cn)
          to label %.noexc43 unwind label %bb.r, !inline_history !1618

.noexc43:                                         ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !271
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.as, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.dg, %._crit_edge ] ; 3 uses
  %i.cr = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cr, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cs = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.ct = sub i32 %indvar, %i.c
  %i.cu = and i32 %i.ct, 1
  %lcmp.mod150.not.not = icmp eq i32 %i.cu, 0
  br i1 %lcmp.mod150.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cs, 1
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cs
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !118
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load i32, ptr %i.av, align 4, !tbaa !118
  %i.cz = zext i32 %i.cy to i64
  %i.da = mul nuw i64 %i.cz, %i.cx
  %i.db = zext i64 %i.da to i128
  %i.dc = add nuw nsw i128 %.256, %i.db           ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa144.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.dc, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.as, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.cs, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.dc, %.lr.ph.prol ]
  %i.dd = icmp eq i32 %i.au, %indvar
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.o
  %.3.lcssa = phi i128 [ %.256, %bb.o ], [ %.lcssa144.unr, %.lr.ph.prol.loopexit ], [ %i.ea, %.lr.ph ] ; 2 uses
  %i.de = trunc i128 %.3.lcssa to i32
  %i.df = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.de, ptr %i.df, align 4, !tbaa !118
  %i.dg = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.o, !llvm.loop !1619

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.ea, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv80
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !118
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv82.in
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !118
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.dj
  %i.dp = zext i64 %i.do to i128
  %i.dq = add i128 %.352, %i.dp
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv80
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !118
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv82.1
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !118
  %i.dx = zext i32 %i.dw to i64
  %i.dy = mul nuw i64 %i.dx, %i.du
  %i.dz = zext i64 %i.dy to i128
  %i.ea = add i128 %i.dq, %i.dz                   ; 2 uses
  %lftr.wideiv117.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv117.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1620

bb.p:                                             ; preds = %.noexc43, %.critedge.i
  %i.eb = phi i64 [ %i.al, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ec = call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.eb)
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !276
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !275
  %i.ef = shl nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !275
  %i.eg = load ptr, ptr %1, align 8, !tbaa !270   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.eg) #33
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.r:                                             ; preds = %bb.n, %bb.j
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load ptr, ptr %1, align 8, !tbaa !270   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ej) #33
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.ei
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %class.anon.426, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !179    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr %5)
  %.pre = load i32, ptr %2, align 4, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.e = phi i8 [ %i.c, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !246  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !247
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  %i.l = trunc i32 %i.d to i8
  %i.m = and i8 %i.l, 7
  switch i8 %i.m, label %bb.d [
    i8 2, label %bb.e
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !181  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %. = select i1 %i.p, i32 %i.o, i32 %4
  %i.q = icmp sgt i32 %i.j, -4
  %i.r = icmp sle i32 %i.j, %.
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = ptrtoint ptr %5 to i64
  %i.u = tail call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.g, i8 noundef signext %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.t)
  br label %bb.q

bb.f:                                             ; preds = %bb.c, %bb.d
  %.not51 = icmp ne i32 %3, 0
  %i.v = zext i1 %.not51 to i32
  %i.w = add nsw i32 %i.g, %i.v
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = and i32 %i.d, 8192
  %.not53 = icmp eq i32 %i.y, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !181
  %i.ab = sub nsw i32 %i.aa, %i.g
  %i.ac = tail call noundef i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add nsw i64 %i.ad, %i.x
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.g, 1
  %spec.select = select i1 %i.af, i8 0, i8 %i.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.049 = phi i32 [ %i.ac, %bb.g ], [ 0, %bb.h ]
  %.048 = phi i64 [ %i.ae, %bb.g ], [ %i.x, %bb.h ]
  %.0 = phi i8 [ %i.e, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ag = zext i1 %.not52 to i64
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true) ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 100
  %i.aj = icmp samesign ugt i32 %i.ah, 999
  %i.ak = select i1 %i.aj, i64 6, i64 5
  %.0.i = select i1 %i.ai, i64 4, i64 %i.ak
  %i.al = add nsw i64 %.048, %.0.i
  %i.am = add nsw i64 %i.al, %i.ag                ; 3 uses
  %i.an = and i32 %i.d, 4096
  %.not54 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i32 %3, ptr %6, align 8, !tbaa !278
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1622
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.g, ptr %i.aq, align 8, !tbaa !279
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %.0, ptr %i.ar, align 4, !tbaa !280
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.049, ptr %i.as, align 8, !tbaa !281
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 %i.ao, ptr %i.at, align 4, !tbaa !282
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.k, ptr %i.au, align 8, !tbaa !283
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !208 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = tail call i64 @llvm.usub.sat.i64(i64 %i.ay, i64 %i.am) ; 4 uses
  %i.ba = lshr i32 %i.d, 3
  %i.bb = and i32 %i.ba, 7
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.387, i64 %i.bc
end_hunk_4
