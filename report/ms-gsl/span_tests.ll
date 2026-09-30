Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/span_tests?download=true
inline.NumInlined: 8112
inline.NumDeleted: 2088
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl:bb.a
.loopexit:                                        ; preds = %bb.h, %.preheader, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.bf = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %bb.j, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bf, %bb.j ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i15
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i15
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.bp, %i.bh
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bb, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.j
  %i.bq = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bf, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i: ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.cd = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cj = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.ck = load ptr, ptr %i.r, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %i.ac

bb.p:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.co = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit19, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.r, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit19

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit19: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN3gsl7details13span_iteratorIcEENSt7__cxx1112regex_traitsIcEEE8_M_applyES4_S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %1, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %2, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %3, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !range !34, !noundef !35
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.011.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.015.0.copyload = load ptr, ptr %2, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.216.0.copyload = load ptr, ptr %.sroa.216.0..sroa_idx, align 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.317.0.copyload = load ptr, ptr %.sroa.317.0..sroa_idx, align 8 ; 3 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.222.0..sroa_idx, align 8 ; 2 uses
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.323.0.copyload = load ptr, ptr %.sroa.323.0..sroa_idx, align 8 ; 2 uses
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.329.0.copyload = load ptr, ptr %.sroa.329.0..sroa_idx, align 8
  %i.c = icmp eq ptr %.sroa.015.0.copyload, %.sroa.011.0.copyload
  %i.d = icmp eq ptr %.sroa.216.0.copyload, %.sroa.2.0.copyload
  %i.e = select i1 %i.c, i1 %i.d, i1 false, !prof !38
  br i1 %i.e, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i: ; preds = %bb.b
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.228.0.copyload = load ptr, ptr %.sroa.228.0..sroa_idx, align 8
  %.sroa.027.0.copyload = load ptr, ptr %4, align 8
  %.sroa.021.0.copyload = load ptr, ptr %3, align 8
  %i.f = icmp eq ptr %.sroa.027.0.copyload, %.sroa.021.0.copyload
  %i.g = icmp eq ptr %.sroa.228.0.copyload, %.sroa.222.0.copyload
  %i.h = select i1 %i.f, i1 %i.g, i1 false, !prof !38
  br i1 %i.h, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i, label %bb.d, !prof !38

bb.d:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i
  %i.i = ptrtoint ptr %.sroa.317.0.copyload to i64
  %i.j = ptrtoint ptr %.sroa.3.0.copyload to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ptrtoint ptr %.sroa.329.0.copyload to i64
  %i.m = ptrtoint ptr %.sroa.323.0.copyload to i64
  %i.n = sub i64 %i.l, %i.m
  %.not.i = icmp eq i64 %i.k, %i.n
  br i1 %.not.i, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i
  %.not.us26.i.i.i.i.i = icmp eq ptr %.sroa.3.0.copyload, %.sroa.317.0.copyload
  br i1 %.not.us26.i.i.i.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i
  %i.o = phi ptr [ %i.s, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ], [ %.sroa.3.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.p = phi ptr [ %i.t, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ], [ %.sroa.323.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not.i.us.i.i.i.i.i = icmp eq ptr %i.o, %.sroa.2.0.copyload
  br i1 %.not.i.us.i.i.i.i.i, label %.split19.us.i.i.i.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not.i1.us.i.i.i.i.i = icmp eq ptr %i.p, %.sroa.222.0.copyload
  br i1 %.not.i1.us.i.i.i.i.i, label %.split23.us.i.i.i.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i
  %i.q = load i8, ptr %i.o, align 1
  %i.r = load i8, ptr %i.p, align 1
  %6 = icmp eq i8 %i.q, %i.r                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.not.us.i.i.i.i.i = icmp ne ptr %i.s, %.sroa.317.0.copyload
  %or.cond.not = select i1 %6, i1 %.not.us.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

.split19.us.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split23.us.i.i.i.i.i:                            ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !35, !align !40
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.v) #32
  %i.w = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.x = load ptr, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w
  %i.ab = load ptr, ptr %i.aa, align 8            ; 5 uses
  %.not.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %.sroa.033.0.copyload = load ptr, ptr %1, align 8
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.234.0.copyload = load ptr, ptr %.sroa.234.0..sroa_idx, align 8 ; 2 uses
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.335.0.copyload = load ptr, ptr %.sroa.335.0..sroa_idx, align 8 ; 3 uses
  %.sroa.039.0.copyload = load ptr, ptr %2, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.240.0.copyload = load ptr, ptr %.sroa.240.0..sroa_idx, align 8
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.341.0.copyload = load ptr, ptr %.sroa.341.0..sroa_idx, align 8 ; 3 uses
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.246.0.copyload = load ptr, ptr %.sroa.246.0..sroa_idx, align 8 ; 2 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.347.0.copyload = load ptr, ptr %.sroa.347.0..sroa_idx, align 8 ; 2 uses
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.353.0.copyload = load ptr, ptr %.sroa.353.0..sroa_idx, align 8
  %i.ac = icmp eq ptr %.sroa.039.0.copyload, %.sroa.033.0.copyload
  %i.ad = icmp eq ptr %.sroa.240.0.copyload, %.sroa.234.0.copyload
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false, !prof !38
  br i1 %i.ae, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8, label %bb.g, !prof !38

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8: ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.252.0.copyload = load ptr, ptr %.sroa.252.0..sroa_idx, align 8
  %.sroa.051.0.copyload = load ptr, ptr %4, align 8
  %.sroa.045.0.copyload = load ptr, ptr %3, align 8
  %i.af = icmp eq ptr %.sroa.051.0.copyload, %.sroa.045.0.copyload
  %i.ag = icmp eq ptr %.sroa.252.0.copyload, %.sroa.246.0.copyload
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false, !prof !38
  br i1 %i.ah, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i, label %bb.h, !prof !38

bb.h:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8
  %i.ai = ptrtoint ptr %.sroa.341.0.copyload to i64
  %i.aj = ptrtoint ptr %.sroa.335.0.copyload to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ptrtoint ptr %.sroa.353.0.copyload to i64
  %i.am = ptrtoint ptr %.sroa.347.0.copyload to i64
  %i.an = sub i64 %i.al, %i.am
  %.not.i9 = icmp eq i64 %i.ak, %i.an
  br i1 %.not.i9, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i
  %.not.us27.i.i = icmp eq ptr %.sroa.335.0.copyload, %.sroa.341.0.copyload
  br i1 %.not.us27.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i
  %i.ao = phi ptr [ %i.ba, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ %.sroa.335.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ] ; 3 uses
  %i.ap = phi ptr [ %i.bb, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ %.sroa.347.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ] ; 3 uses
  %.not.i.us.i.i = icmp eq ptr %i.ao, %.sroa.234.0.copyload
  br i1 %.not.i.us.i.i, label %.split20.us.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i: ; preds = %.lr.ph.i.i
  %.not.i1.us.i.i = icmp eq ptr %i.ap, %.sroa.246.0.copyload
  br i1 %.not.i1.us.i.i, label %.split24.us.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i
  %i.aq = load i8, ptr %i.ao, align 1
  %i.ar = load i8, ptr %i.ap, align 1
  %i.as = load ptr, ptr %i.ab, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext %i.aq), !inline_history !385
  %i.aw = load ptr, ptr %i.ab, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext %i.ar), !inline_history !385
  %7 = icmp eq i8 %i.av, %i.az                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.not.us.i.i = icmp ne ptr %i.ba, %.sroa.341.0.copyload
  %or.cond72.not = select i1 %7, i1 %.not.us.i.i, i1 false
  br i1 %or.cond72.not, label %.lr.ph.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

.split20.us.i.i:                                  ; preds = %.lr.ph.i.i
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split24.us.i.i:                                  ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.bc

_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i
  %.0 = phi i1 [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ], [ false, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i ], [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ], [ %7, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ false, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i ], [ %6, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 56
  %i.o = icmp ugt i64 %i.n, 164703072086692425
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -56
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 56
  %i.t = add i64 %.fr.i, 56
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ab = udiv exact i64 %i.f, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %.0910.i.i.i.i.i, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !range !34, !noundef !35
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  store i8 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  %i.aj = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ak = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, !llvm.loop !386

bb.h:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.z, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.am = udiv exact i64 %i.z, 56
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i27 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0811.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(49) %.0910.i.i.i.i.i30, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !range !34, !noundef !35
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 48
  store i8 %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 56
  %i.au = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.av = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit, !llvm.loop !387

_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i27
  %.pre = load ptr, ptr %1, align 8
  %.pre34 = load ptr, ptr %i.w, align 8           ; 2 uses
  %.pre35 = load ptr, ptr %0, align 8
  %.pre36 = load ptr, ptr %i.a, align 8
  %.pre37 = ptrtoint ptr %.pre34 to i64
  %.pre38 = ptrtoint ptr %.pre35 to i64
  %.pre40 = sub i64 %.pre37, %.pre38
  br label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit: ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit, %bb.h
  %.pre-phi41 = phi i64 [ %.pre40, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.z, %bb.h ]
  %i.aw = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.b, %bb.h ] ; 2 uses
  %i.ax = phi ptr [ %.pre34, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.x, %bb.h ]
  %i.ay = phi ptr [ %.pre, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.c, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.pre-phi41 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.az, %i.aw
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.az, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0810.i.i.i.i, i64 56, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.aw
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !388

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0 = alloca %"struct.std::pair", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge236, %bb.a
  %.tr28 = phi i64 [ %2, %bb.a ], [ %.tr28.be237, %tailrecurse.backedge236 ] ; 6 uses
  %i.k = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.tr28 ; 13 uses
  %i.o = load i32, ptr %i.n, align 8
  switch i32 %i.o, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.f
    i32 9, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 11, label %bb.p
    i32 3, label %bb.q
    i32 12, label %bb.r
    i32 1, label %bb.s
  ]

bb.b:                                             ; preds = %tailrecurse
end_hunk_0
