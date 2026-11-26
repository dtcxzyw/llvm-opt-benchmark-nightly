Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_solver?download=true
inline.NumInlined: 3993
inline.NumDeleted: 1521
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN9cancel_ehI8reslimitEclE22event_handler_caller_t:bb.a
bb.f:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  ret void
}

declare void @_ZN8reslimit10inc_cancelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit, label %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit

_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit, %.noexc
  %.06.i = phi ptr [ %i.k, %.noexc ], [ %i.b, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !265
  %i.j = load ptr, ptr %0, align 8, !tbaa !441, !nonnull !73, !align !74
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.h
  br i1 %i.l, label %.lr.ph.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit, !llvm.loop !27

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit: ; preds = %.noexc
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !439 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6: ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit
  %i.m = phi ptr [ %.pre, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit ], [ %i.b, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit: ; preds = %bb.a, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread6
  ret void

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #30
  unreachable
}

declare void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z7convertRN10polynomial7managerEPNS_10polynomialES1_jj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN10polynomial7manager7max_varEPKNS_10polynomialE(ptr noundef) local_unnamed_addr #2

declare void @_ZN5nlsat7explain22display_last_lws_inputERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp22collect_vars_on_clauseEjPKN3sat7literalE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1017) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.5, align 8           ; 11 uses
  %5 = alloca %"class.std::vector.72", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread, label %_ZNK5nlsat6solver3imp8num_varsEv.exit

_ZNK5nlsat6solver3imp8num_varsEv.exit.thread:     ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !183
  br label %_ZN7svectorIbjEC2EjRKb.exit

_ZNK5nlsat6solver3imp8num_varsEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192  ; 4 uses
  store ptr null, ptr %4, align 8, !tbaa !183
  %.not.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.not.i.i.i, label %_ZN7svectorIbjEC2EjRKb.exit, label %.preheader.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i, %.preheader.i.i
  call void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pr.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !183
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit, %thread-pre-split.i.i.i
  %i.f = phi ptr [ %.pr.pre.i.i.i, %thread-pre-split.i.i.i ], [ null, %_ZNK5nlsat6solver3imp8num_varsEv.exit ] ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %thread-pre-split.i.i.i, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i:        ; preds = %.preheader.i.i
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192
  %i.j = icmp ugt i32 %i.e, %i.i
  br i1 %i.j, label %thread-pre-split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -4
  store i32 %i.e, ptr %i.k, align 4, !tbaa !192
  %i.l = zext i32 %i.e to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.l, i1 false), !tbaa !261
  br label %_ZN7svectorIbjEC2EjRKb.exit

_ZN7svectorIbjEC2EjRKb.exit:                      ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread, %_ZNK5nlsat6solver3imp8num_varsEv.exit, %.lr.ph.preheader.i.i.i
  %i.m = phi ptr [ null, %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread ], [ null, %_ZNK5nlsat6solver3imp8num_varsEv.exit ], [ %i.f, %.lr.ph.preheader.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not47 = icmp eq i32 %2, 0
  br i1 %.not47, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %_ZN7svectorIbjEC2EjRKb.exit
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = phi ptr [ null, %.lr.ph45 ], [ %i.ab, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 3 uses
  %i.s = phi ptr [ null, %.lr.ph45 ], [ %i.ac, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph45 ], [ %i.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.u, align 4, !tbaa !192
  invoke void @_ZN5nlsat6solver3imp12collect_varsEN3sat7literalE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.72") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1017) %1, i32 %.sroa.0.0.copyload)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %5, align 8, !tbaa !295    ; 3 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !295  ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  %i.y = load ptr, ptr %4, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  %or.cond = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.split

._crit_edge.loopexit51:                           ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre55 = load ptr, ptr %5, align 8, !tbaa !443
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit51, %bb.c
  %i.aa = phi ptr [ %.pre55, %._crit_edge.loopexit51 ], [ %i.v, %bb.c ] ; 3 uses
  %i.ab = phi ptr [ %i.bm, %._crit_edge.loopexit51 ], [ %i.r, %bb.c ]
  %i.ac = phi ptr [ %i.bn, %._crit_edge.loopexit51 ], [ %i.s, %bb.c ]
  %i.ad = phi ptr [ %i.bo, %._crit_edge.loopexit51 ], [ %i.t, %bb.c ]
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !444
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge46.loopexit, label %bb.b, !llvm.loop !658

bb.e:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit20

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pr = load ptr, ptr %4, align 8, !tbaa !183
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.c, %.lr.ph.splitthread-pre-split
  %i.aj = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.y, %bb.c ] ; 3 uses
  %i.ak = phi ptr [ %i.bm, %.lr.ph.splitthread-pre-split ], [ %i.r, %bb.c ] ; 10 uses
  %i.al = phi ptr [ %i.bn, %.lr.ph.splitthread-pre-split ], [ %i.s, %bb.c ] ; 8 uses
  %i.am = phi ptr [ %i.bo, %.lr.ph.splitthread-pre-split ], [ %i.t, %bb.c ] ; 7 uses
  %.sroa.031.043 = phi ptr [ %i.bp, %.lr.ph.splitthread-pre-split ], [ %i.v, %bb.c ] ; 2 uses
  %i.an = load i32, ptr %.sroa.031.043, align 4, !tbaa !192 ; 4 uses
  %i.ao = icmp eq ptr %i.aj, null
  br i1 %i.ao, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit

_ZNK6vectorIbLb0EjE4sizeEv.exit:                  ; preds = %.lr.ph.split
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !192
  %i.ar = icmp ult i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit
  %i.as = zext i32 %i.an to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !261, !range !75, !noundef !73
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i:                ; preds = %bb.f
  store i8 1, ptr %i.at, align 1, !tbaa !261
  %.not.i15 = icmp eq ptr %i.am, %i.al
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i
  store i32 %i.an, ptr %i.am, align 4, !tbaa !192
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.aw, ptr %i.o, align 8, !tbaa !445
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.h:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i
  %i.ax = ptrtoint ptr %i.am to i64
  %i.ay = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i16)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #32
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %i.an, ptr %i.bi, align 4, !tbaa !192
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc18
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.ak, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %6 = ptrtoint ptr %i.al to i64
  %7 = sub i64 %6, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %7) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.bh, ptr %0, align 8, !tbaa !443
  store ptr %i.bk, ptr %i.o, align 8, !tbaa !445
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bl, ptr %i.p, align 8, !tbaa !444
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !443 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIjSaIjEED2Ev.exit20, label %bb.l

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %.lr.ph.split, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.g, %bb.f, %_ZNK6vectorIbLb0EjE4sizeEv.exit
  %i.bm = phi ptr [ %i.ak, %.lr.ph.split ], [ %i.bh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ak, %bb.g ], [ %i.ak, %bb.f ], [ %i.ak, %_ZNK6vectorIbLb0EjE4sizeEv.exit ] ; 2 uses
  %i.bn = phi ptr [ %i.al, %.lr.ph.split ], [ %i.bl, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %i.al, %_ZNK6vectorIbLb0EjE4sizeEv.exit ] ; 2 uses
  %i.bo = phi ptr [ %i.am, %.lr.ph.split ], [ %i.bk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.aw, %bb.g ], [ %i.am, %bb.f ], [ %i.am, %_ZNK6vectorIbLb0EjE4sizeEv.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.031.043, i64 4 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.w
  br i1 %i.bq, label %._crit_edge.loopexit51, label %.lr.ph.splitthread-pre-split, !llvm.loop !659

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !444
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %.pre.pre to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %.pre.pre, i64 noundef %i.bu) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit20

_ZNSt6vectorIjSaIjEED2Ev.exit20:                  ; preds = %bb.l, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %i.bv = phi ptr [ %i.s, %bb.e ], [ %i.al, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.al, %bb.l ]
  %i.bw = phi ptr [ %i.r, %bb.e ], [ %i.ak, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ak, %bb.l ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.not.i.i.i21 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit20
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit20, %bb.m
  call void @_ZN6vectorIbLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn.pn

._crit_edge46.loopexit:                           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.pre56 = load ptr, ptr %4, align 8, !tbaa !183
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %._crit_edge46.loopexit, %_ZN7svectorIbjEC2EjRKb.exit
  %i.ca = phi ptr [ %.pre56, %._crit_edge46.loopexit ], [ %i.m, %_ZN7svectorIbjEC2EjRKb.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %_ZN6vectorIbLb0EjED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge46
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cb)
          to label %_ZN6vectorIbLb0EjED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #30
  unreachable

_ZN6vectorIbLb0EjED2Ev.exit:                      ; preds = %._crit_edge46, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp12collect_varsEN3sat7literalE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1017) %1, i32 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.svector.9, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !203
  invoke void @_ZNK5nlsat6solver3imp4varsEN3sat7literalER7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(1017) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %3, align 8, !tbaa !203    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6vectorIjLb0EjED2Ev.exit.loopexit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph:     ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.e = phi ptr [ %i.a, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph ], [ %i.ag, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.f = phi ptr [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph ], [ %i.ah, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.g = phi ptr [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph ], [ %i.ai, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.h = phi ptr [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph ], [ %i.aj, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 10 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !192
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv, %i.k
  br i1 %i.l, label %bb.d, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.d:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.n, align 4, !tbaa !192
  store i32 %i.o, ptr %i.g, align 4, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !445
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.u = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 2305843009213693951)
  %i.y = select i1 %i.w, i64 2305843009213693951, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #32
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !192
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !192
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc10
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.h, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %4 = ptrtoint ptr %i.f to i64
  %5 = sub i64 %4, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %5) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !445
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.af, ptr %i.d, align 8, !tbaa !444
  %.pre = load ptr, ptr %3, align 8, !tbaa !203
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.e
  %i.ag = phi ptr [ %.pre, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.e, %bb.e ] ; 2 uses
  %i.ah = phi ptr [ %i.af, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.f, %bb.e ]
  %i.ai = phi ptr [ %i.ae, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.p, %bb.e ]
  %i.aj = phi ptr [ %i.aa, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.h, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ak = icmp eq ptr %i.ag, null
  br i1 %i.ak, label %_ZN6vectorIjLb0EjED2Ev.exit.loopexit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, !llvm.loop !660

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %6 = ptrtoint ptr %i.f to i64
  %7 = sub i64 %6, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %7) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.l:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  store ptr %i.h, ptr %0, align 8
  %i.al = getelementptr inbounds i8, ptr %i.e, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.al)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #30
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.loopexit:             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.b
  %.lcssa = phi ptr [ null, %bb.b ], [ %i.aj, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  store ptr %.lcssa, ptr %0, align 8
  br label %_ZN6vectorIjLb0EjED2Ev.exit

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.loopexit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.k, %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %bb.c ], [ %lpad.phi, %bb.j ], [ %lpad.phi, %bb.k ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZN17algebraic_numbers7managerD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17)) unnamed_addr #13

declare void @_ZN8reslimit10dec_cancelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN8reslimit11auto_cancelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIPN5nlsat6clauseELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !236    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !192
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !236
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !181
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !210
  %i.r = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !211  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !227
  %i.y = load i64, ptr %i.s, align 8, !tbaa !212
  store i64 %i.y, ptr %i.q, align 8, !tbaa !212
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !211
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !211
  store ptr %i.s, ptr %1, align 8, !tbaa !227
  store i64 0, ptr %i.aa, align 8, !tbaa !211
  store i8 0, ptr %i.s, align 8, !tbaa !212
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !227   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !212
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @__cxa_free_exception(ptr %i.o) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !236
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !192
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN5nlsat6clauseC1EjjPKN3sat7literalEbPv(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp10undo_untilINS1_10level_predEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !662, !nonnull !73, !align !446
  %i.d = load i32, ptr %i.c, align 4, !tbaa !192
  %i.e = load i32, ptr %i.b, align 8, !tbaa !399
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !347
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5nlsat6solver3imp17unassign_bool_varEj.exit
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.cx, %_ZN5nlsat6solver3imp17unassign_bool_varEj.exit ] ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge, label %_ZNK6vectorIN5nlsat6solver3imp5trailELb0EjE5emptyEv.exit

end_hunk_0
