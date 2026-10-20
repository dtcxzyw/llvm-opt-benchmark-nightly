Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/bindexplib?download=true
inline.NumInlined: 389
inline.NumDeleted: 166
begin_hunk_0_@_ZN10bindexplib13AddObjectFileEPKc:bb.a
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit_crit_edge.i.i unwind label %bb.i

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit_crit_edge.i.i: ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit.i.i: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit_crit_edge.i.i, %._crit_edge.i.i.i32.i.i
  %i.o = phi ptr [ %.pre.i.i, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit_crit_edge.i.i ], [ %i.n, %._crit_edge.i.i.i32.i.i ] ; 7 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !24
  %.not.i36.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i36.i.i, label %bb.c, label %._crit_edge.i.i.i37.i.i

._crit_edge.i.i.i37.i.i:                          ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.q, ptr noundef nonnull align 1 dereferenceable(15) @.str.9, i64 14, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 14, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 30
  store i8 0, ptr %i.s, align 2, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit.i.i

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA10_KcEEERS5_DpOT_.exit.i.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.o, ptr noundef nonnull align 1 dereferenceable(15) @.str.9)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit_crit_edge.i.i unwind label %bb.i

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre90.i.i = load ptr, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit.i.i: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit_crit_edge.i.i, %._crit_edge.i.i.i37.i.i
  %i.u = phi ptr [ %.pre90.i.i, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit_crit_edge.i.i ], [ %i.t, %._crit_edge.i.i.i37.i.i ] ; 7 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !24
  %.not.i42.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i42.i.i, label %bb.d, label %._crit_edge.i.i.i43.i.i

._crit_edge.i.i.i43.i.i:                          ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.w, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, i64 14, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 14, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  store i8 0, ptr %i.y, align 2, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.z, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit49.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit.i.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.u, ptr noundef nonnull align 1 dereferenceable(15) @.str.10)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit49.i.i unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit49.i.i: ; preds = %bb.d, %._crit_edge.i.i.i43.i.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit49.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ab = invoke noundef zeroext i1 @_ZN13cmSystemTools16RunSingleCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS6_SB_PiPKcNS_12OutputOptionENSt6chrono8durationIdSt5ratioILl1ELl1EEEEN15cmProcessOutput8EncodingES8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0, double 0.000000e+00, i32 noundef 1, ptr noundef nonnull align 8 %4)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ac, %bb.f ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.f
  %i.al = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ac, %bb.f ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !62
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.at = load ptr, ptr %2, align 8, !tbaa !26
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.11, ptr noundef %i.at) #23 ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA15_KcEEERS5_DpOT_.exit49.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  br label %bb.x

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 8)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ax, ptr %6, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !19
  store i8 0, ptr %i.ax, align 8, !tbaa !20
  %i.az = load ptr, ptr %5, align 8, !tbaa !31
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %5, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i5084.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i5084.i.i, label %._crit_edge.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.l
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc51.i.i.a unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51.i.i.a:                                   ; preds = %._crit_edge.i.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.l, %.backedge.i.i
  %i.bf = phi ptr [ %i.cd, %.backedge.i.i ], [ %i.be, %bb.l ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !53
  %.not.i1.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf)
          to label %.noexc52.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52.i.i:                                     ; preds = %bb.n
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc52.i.i, %bb.m
  %.0.i.i.i.i.i = phi i8 [ %i.bj, %bb.m ], [ %i.bn, %.noexc52.i.i ]
  %i.bo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext %.0.i.i.i.i.i)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !54
  %i.bv = and i32 %i.bu, 5
  %.not.i55.not.not.not.i.not.not.not.i.not.not.not.not.not = icmp ne i32 %i.bv, 0 ; 2 uses
  br i1 %.not.i55.not.not.not.i.not.not.not.i.not.not.not.not.not, label %.critedge.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.backedge.i.i, label %7

.backedge.i.i:                                    ; preds = %.invoke.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i, %bb.p
  %i.by = load ptr, ptr %5, align 8, !tbaa !31
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %5, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i50.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i50.i.i, label %._crit_edge.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i, !llvm.loop !61

bb.q:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

7:                                                ; preds = %bb.p
  %8 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 32, i64 noundef 0) #21 ; 3 uses
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %.critedge.sink.split.i.i, label %bb.r

bb.r:                                             ; preds = %7
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !19
  %10 = add nuw i64 %8, 1                         ; 2 uses
  %11 = icmp ult i64 %i.cf, %10
  br i1 %11, label %.critedge.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %6, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %10
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %8, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i: ; preds = %bb.s
  switch i8 %i.ci, label %.backedge.i.i [
    i8 68, label %.invoke.i.i
    i8 84, label %bb.t
  ]

.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i.i, %bb.s, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %.noexc52.i.i, %bb.n, %._crit_edge.i.i
  %lpad.loopexit.split-lp46 = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ax
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cl = load i64, ptr %i.ax, align 8, !tbaa !20
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %5) #21
  br label %bb.u

.invoke.i.i:                                      ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i
  %i.cn = phi ptr [ %0, %bb.t ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i ]
  %i.co = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.backedge.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i
  br label %.invoke.i.i

.critedge.sink.split.i.i:                         ; preds = %bb.r, %7
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.cq = load ptr, ptr %6, align 8, !tbaa !26
  %i.cr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.12, ptr noundef %i.cq) #23 ; 0 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o, %.critedge.sink.split.i.i
  %i.cs = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ax
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i: ; preds = %.critedge.i.i
  %i.cu = load i64, ptr %i.ax, align 8, !tbaa !20
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i: ; preds = %.critedge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.cw = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cw, ptr %5, align 8, !tbaa !31
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cy = getelementptr i8, ptr %i.cw, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %5, i64 %i.cz
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !31
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.db, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !20
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.db, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.di) #21
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.dj, ptr %5, align 8, !tbaa !31
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.dl = getelementptr i8, ptr %i.dj, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %5, i64 %i.dm
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.do, align 8, !tbaa !64
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dp) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.q
  %.pn.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ce, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i, %bb.h
  %.3.i.i = phi i1 [ false, %bb.h ], [ %.not.i55.not.not.not.i.not.not.not.i.not.not.not.not.not, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.dq = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %.not4.i.i.i63.i.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not4.i.i.i63.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71.i.i, label %.lr.ph.i.i.i64.i.i

.lr.ph.i.i.i64.i.i:                               ; preds = %bb.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67.i.i
  %.05.i.i.i65.i.i = phi ptr [ %i.dx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67.i.i ], [ %i.dq, %bb.v ] ; 3 uses
  %i.ds = load ptr, ptr %.05.i.i.i65.i.i, align 8, !tbaa !26 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i65.i.i, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66.i.i: ; preds = %.lr.ph.i.i.i64.i.i
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !20
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67.i.i: ; preds = %.lr.ph.i.i.i64.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i65.i.i, i64 32 ; 2 uses
  %.not.i.i.i68.i.i = icmp eq ptr %i.dx, %i.dr
  br i1 %.not.i.i.i68.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69.i.i, label %.lr.ph.i.i.i64.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67.i.i
  %.pr.i70.i.i = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69.i.i, %bb.v
  %i.dy = phi ptr [ %.pr.i70.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69.i.i ], [ %i.dq, %bb.v ] ; 3 uses
  %.not.i.i1.i72.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i1.i72.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74.i.i, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71.i.i
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ec) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74.i.i: ; preds = %bb.w, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ed = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.e
  br i1 %i.ee, label %_ZL8DumpFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt3setIS4_St4lessIS4_ESaIS4_EESE_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74.i.i
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !20
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #22
  br label %_ZL8DumpFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt3setIS4_St4lessIS4_ESaIS4_EESE_.exit

bb.x:                                             ; preds = %bb.u, %bb.j
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.u ], [ %i.aw, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.i
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.x ], [ %i.av, %bb.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.eh = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.e
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i: ; preds = %bb.y
  %i.ej = load i64, ptr %i.e, align 8, !tbaa !20
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.i.i

_ZL8DumpFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt3setIS4_St4lessIS4_ESaIS4_EESE_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i1 %.3.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN10bindexplib17AddDefinitionFileEPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef %1, i32 noundef 8)
  %i.a = load ptr, ptr %2, align 8, !tbaa !31
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54
  %i.g = and i32 %i.f, 5
  %.not44 = icmp eq i32 %i.g, 0                   ; 2 uses
  br i1 %.not44, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str, ptr noundef %1) #23 ; 0 uses
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !tbaa !19
  store i8 0, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i48, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

._crit_edge:                                      ; preds = %.backedge, %bb.c
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph, %.backedge
  %i.o = phi ptr [ %i.m, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph ], [ %i.an, %.backedge ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !53
  %.not.i1.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
end_hunk_0
