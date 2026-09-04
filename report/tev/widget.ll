Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/widget?download=true
inline.NumInlined: 566
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EERS8_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !48
  store ptr %i.l, ptr %i.g, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.m, ptr %i.f, align 8, !tbaa !43
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !48
  store ptr %i.u, ptr %i.g, align 8, !tbaa !48
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %bb.d
  %.sroa.6.0.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %i.t, %.lr.ph.i.preheader ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.f, align 8, !tbaa !43
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.v = ashr exact i64 %i.q, 3
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr align 8 %i.e, i64 %i.q, i1 false)
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %._crit_edge.i, %bb.e
  %.not = icmp ugt ptr %1, %2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.z = icmp ult ptr %2, %i.y
  %spec.select.idx = select i1 %i.z, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit
  %.018 = phi ptr [ %2, %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ], [ %spec.select, %bb.f ]
  %i.aa = load ptr, ptr %.018, align 8, !tbaa !48
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !48
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ab = ptrtoint ptr %i.g to i64
  %i.ac = sub i64 %i.ab, %i.c
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 1                    ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %bb.i, label %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  unreachable

_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.i to i64
  %i.ah = sub i64 %i.ag, %i.c                     ; 2 uses
  %.not.i = icmp ult i64 %i.ah, 9223372036854775800
  %i.ai = ashr exact i64 %i.ah, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ae)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.ak, align 8, !tbaa !84
  %i.al = icmp eq i64 %.0.i, 0
  br i1 %i.al, label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.am = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.am, label %bb.k, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #20
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %bb.j
  %i.an = shl nuw i64 %.0.i, 3                    ; 2 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #21
  br label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %.idx.pre-phi = phi i64 [ %i.an, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ], [ 0, %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %i.ap = phi ptr [ %i.ao, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ], [ null, %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 5 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.d ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.pre-phi ; 3 uses
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !45
  %i.au = icmp samesign eq i64 %i.d, %.idx.pre-phi
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.not29 = icmp eq ptr %1, %i.a
  br i1 %.not29, label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit.i, label %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i

_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i: ; preds = %bb.l
  %i.av = ashr exact i64 %i.d, 3
  %i.aw = add nsw i64 %i.av, 1
  %.neg.i = sdiv i64 %i.aw, -2
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %.neg.i
  br label %bb.n

_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit.i: ; preds = %bb.l
  %i.ay = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i unwind label %bb.q ; 3 uses

_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %.idx.pre-phi) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i, %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %i.ba = phi ptr [ %i.az, %bb.m ], [ %i.az, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i ], [ %i.at, %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i ], [ %i.at, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit ]
  %i.bb = phi ptr [ %i.ay, %bb.m ], [ %i.ay, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i ], [ %i.ax, %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i ], [ %i.aq, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit ] ; 5 uses
  %i.bc = load ptr, ptr %2, align 8, !tbaa !48
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !44    ; 5 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.be
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN7nanogui6WidgetEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bb, %bb.n ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %bb.n ]
  %i.bg = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !48, !noalias !85
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -8 ; 3 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !48, !noalias !85
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN7nanogui6WidgetEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !83

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN7nanogui6WidgetEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.n
  %.pre.i26 = phi ptr [ %i.bb, %bb.n ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !43  ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.b                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN7nanogui6WidgetEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.e, i64 %i.bl, i1 false)
  br label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %bb.o, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN7nanogui6WidgetEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bl
  store ptr %.pre.i26, ptr %0, align 8, !tbaa !45
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !45
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !45
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !45
  %.not.i27 = icmp eq ptr %i.be, null
  br i1 %.not.i27, label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.be to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bq) #18
  br label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEEC2EmmS6_.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.br

bb.r:                                             ; preds = %bb.c, %bb.g, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEED2Ev.exit
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.g ], [ %i.bb, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEED2Ev.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Widget12remove_childEPKS0_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %.not7.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i, label %_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.08.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %.08.i.i, align 8, !tbaa !48
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPKS3_EET_S9_S9_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i, label %_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit, label %.lr.ph.i.i, !llvm.loop !86

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPKS3_EET_S9_S9_RKT0_.exit: ; preds = %.lr.ph.i.i
  %i.h = ptrtoint ptr %.08.i.i to i64             ; 2 uses
  %i.i = icmp eq ptr %.08.i.i, %i.d
  br i1 %i.i, label %_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPKS3_EET_S9_S9_RKT0_.exit
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0714.i.i = phi ptr [ %0, %bb.c ], [ %i.p, %bb.e ] ; 2 uses
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %.0714.i.i, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6ScreenE, i64 0) #19 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.n, null
  br i1 %.not11.i.i, label %bb.e, label %_ZN7nanogui6Widget6screenEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0714.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZN7nanogui6Widget6screenEv.exit.i, label %bb.d, !llvm.loop !1

_ZN7nanogui6Widget6screenEv.exit.i:               ; preds = %bb.e, %bb.d
  tail call void @_ZN7nanogui6Screen14dispose_widgetEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(520) %i.n, ptr noundef %i.m)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.h, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN7nanogui6Widget6screenEv.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i: ; preds = %bb.f, %_ZN7nanogui6Widget6screenEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  store ptr %i.z, ptr %i.c, align 8, !tbaa !43
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #19
  br label %_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit

_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit: ; preds = %bb.b, %bb.a, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPKS3_EET_S9_S9_RKT0_.exit, %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0714.i = phi ptr [ %0, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %.0714.i, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6ScreenE, i64 0) #19 ; 2 uses
  %.not11.i = icmp eq ptr %i.g, null
  br i1 %.not11.i, label %bb.d, label %_ZN7nanogui6Widget6screenEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0714.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN7nanogui6Widget6screenEv.exit, label %bb.c, !llvm.loop !1

_ZN7nanogui6Widget6screenEv.exit:                 ; preds = %bb.c, %bb.d
  tail call void @_ZN7nanogui6Screen14dispose_widgetEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(520) %i.g, ptr noundef %i.f)
  %i.j = load ptr, ptr %1, align 8, !tbaa !88
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7nanogui6Widget6screenEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit: ; preds = %_ZN7nanogui6Widget6screenEv.exit, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  store ptr %i.u, ptr %i.b, align 8, !tbaa !43
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Widget15remove_child_atEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0714.i.i = phi ptr [ %0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.i = tail call ptr @__dynamic_cast(ptr nonnull %.0714.i.i, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6ScreenE, i64 0) #19 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.i, null
  br i1 %.not11.i.i, label %bb.d, label %_ZN7nanogui6Widget6screenEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.0714.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN7nanogui6Widget6screenEv.exit.i, label %bb.c, !llvm.loop !1

_ZN7nanogui6Widget6screenEv.exit.i:               ; preds = %bb.d, %bb.c
  tail call void @_ZN7nanogui6Screen14dispose_widgetEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(520) %i.i, ptr noundef %i.h)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN7nanogui6Widget6screenEv.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.p, ptr nonnull align 8 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i: ; preds = %bb.e, %_ZN7nanogui6Widget6screenEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  store ptr %i.v, ptr %i.e, align 8, !tbaa !43
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #19
  br label %_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit

_ZN7nanogui6Widget19remove_child_helperERKNSt3__111__wrap_iterIPPS0_EE.exit: ; preds = %bb.a, %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS3_EE.exit.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef ptr @_ZN7nanogui6Widget6screenEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(148) %0) local_unnamed_addr #9 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.0714 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.c ] ; 2 uses
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %.0714, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6ScreenE, i64 0) #19 ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0714, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !1

.thread:                                          ; preds = %bb.b, %bb.c
  ret ptr %i.a
}

declare void @_ZN7nanogui6Screen14dispose_widgetEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(520), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK7nanogui6Widget11child_indexEPS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %.not7.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPKPN7nanogui6WidgetEEES4_EET_S8_S8_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.08.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.08.i.i, align 8, !tbaa !48
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPKPN7nanogui6WidgetEEES4_EET_S8_S8_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPKPN7nanogui6WidgetEEES4_EET_S8_S8_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !89

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPKPN7nanogui6WidgetEEES4_EET_S8_S8_RKT0_.exit: ; preds = %.lr.ph.i.i, %bb.b, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.08.i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp eq ptr %.0.lcssa.i.i, %i.d
  %i.l = lshr exact i64 %i.j, 3
  %i.m = trunc i64 %i.l to i32
  %.0 = select i1 %i.k, i32 -1, i32 %i.m
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef ptr @_ZN7nanogui6Widget6windowEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(148) %0) local_unnamed_addr #9 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.0714 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.c ] ; 2 uses
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %.0714, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #19 ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0714, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !2

.thread:                                          ; preds = %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef ptr @_ZNK7nanogui6Widget6screenEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(148) %0) local_unnamed_addr #9 align 2 {
bb.a:
  br label %bb.b
end_hunk_0
