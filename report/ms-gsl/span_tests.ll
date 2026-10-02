Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/span_tests?download=true
inline.NumInlined: 8112
inline.NumDeleted: 2088
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNSt8__detail17__regex_algo_implIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEEcNS5_12regex_traitsIcEEEEbT_SB_RNS5_13match_resultsISB_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a

.noexc:                                           ; preds = %bb.h
  br i1 %i.r, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 64
  %.not.i52 = icmp eq i32 %i.u, 0
  br i1 %.not.i52, label %bb.j, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.v = or i32 %i.t, 128
  store i32 %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 88
  br label %bb.k

bb.k:                                             ; preds = %.noexc53, %bb.j
  %i.ab = load ptr, ptr %i.o, align 8
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false, !prof !38
  br i1 %i.ah, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i, label %bb.l, !prof !38

bb.l:                                             ; preds = %bb.k
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i: ; preds = %bb.k
  %i.ai = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.aj = load ptr, ptr %i.aa, align 8
  %.not2.not.i.not.not = icmp ne ptr %i.ai, %i.aj ; 3 uses
  br i1 %.not2.not.i.not.not, label %bb.m, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.m:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i
  %.not.i.i = icmp eq ptr %i.ai, %i.ae
  br i1 %.not.i.i, label %bb.n, label %_ZN3gsl7details13span_iteratorIcEppEv.exit.i, !prof !36

bb.n:                                             ; preds = %bb.m
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZN3gsl7details13span_iteratorIcEppEv.exit.i:     ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.al = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSB_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(189) %9, i8 noundef zeroext 1)
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit.i
  br i1 %i.al, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.k, !llvm.loop !346

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit: ; preds = %.noexc53, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i, %bb.i, %.noexc, %bb.f
  %.049.in = phi i1 [ %i.q, %bb.f ], [ false, %bb.i ], [ true, %.noexc ], [ %.not2.not.i.not.not, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i ], [ %.not2.not.i.not.not, %.noexc53 ]
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  %i.aq = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i ], [ %i.aq, %bb.p ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.as
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.am, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.p
  %i.bb = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.aq, %bb.p ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i: ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i: ; preds = %bb.s, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.bo = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br i1 %.049.in, label %bb.ac, label %bb.aj

bb.u:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(181) %10, i8 0, i64 48, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr %3, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr %.pre, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %2, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 48                ; 7 uses
  %i.ci = icmp ugt i64 %i.ch, 288230376151711743
  br i1 %i.ci, label %.noexc.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

.noexc.i:                                         ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
  unreachable

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i54 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i54, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.cj = shl nuw nsw i64 %i.ch, 5
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #36 ; 4 uses
  store ptr %i.ck, ptr %i.bz, align 8
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %i.cl, ptr %i.cm, align 8
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ck, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ] ; 2 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ch, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.cn = add nsw i64 %.01012.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !347

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.co, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ck, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.co, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ch, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cp = icmp ult i64 %i.ch, 8
  br i1 %i.cp, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cq, i8 0, i64 28, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cr, i8 0, i64 28, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cs, i8 0, i64 28, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ct, i8 0, i64 28, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cu, i8 0, i64 28, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cv, i8 0, i64 28, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cw, i8 0, i64 28, i1 false)
  %i.cx = add nsw i64 %.01012.i.i.i.i.i.i, -8     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.dc = load i64, ptr %i.db, align 8
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.df = and i32 %4, 128
  %.not.i56 = icmp eq i32 %i.df, 0
  %i.dg = and i32 %4, -6
  %spec.select = select i1 %.not.i56, i32 %4, i32 %i.dg
  store i32 %spec.select, ptr %i.de, align 8
  br i1 %6, label %bb.v, label %bb.x

common.resume:                                    ; preds = %bb.g, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.dn, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %.loopexit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 180 ; 2 uses
  store i8 0, ptr %i.di, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.dj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(181) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc57 unwind label %bb.w   ; 0 uses

.noexc57:                                         ; preds = %bb.v
  %i.dk = load i64, ptr %i.da, align 8
  invoke void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %10, i8 noundef zeroext 0, i64 noundef %i.dk)
          to label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.w

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc57
  %i.dl = load i8, ptr %i.di, align 4, !range !34, !noundef !35
  %i.dm = trunc nuw i8 %i.dl to i1
  br label %bb.y

bb.w:                                             ; preds = %.noexc57, %bb.v, %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume

bb.x:                                             ; preds = %.loopexit.i
  %i.do = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(181) %10)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.x
  %.1.in = phi i1 [ %i.dm, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.do, %bb.x ]
  %i.dp = load ptr, ptr %i.bz, align 8            ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60: ; preds = %bb.z, %bb.y
  %i.dv = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i.i.i1.i61 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i1.i61, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br i1 %.1.in, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.ab
  %i.eb = load ptr, ptr %2, align 8               ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not6970 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not6970, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ae
  %.pre72 = load ptr, ptr %i.ec, align 8
  %.pre73 = load ptr, ptr %2, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ac
  %i.ee = phi ptr [ %.pre73, %._crit_edge.loopexit ], [ %i.eb, %bb.ac ] ; 2 uses
  %i.ef = phi ptr [ %.pre72, %._crit_edge.loopexit ], [ %i.eb, %bb.ac ]
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr i8, ptr %i.ee, i64 %i.ei  ; 14 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 -112   ; 3 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 -56    ; 3 uses
  br i1 %6, label %bb.af, label %bb.ag

.lr.ph:                                           ; preds = %bb.ac, %bb.ae
  %.sroa.064.071 = phi ptr [ %i.eq, %bb.ae ], [ %i.eb, %bb.ac ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 48
  %i.en = load i8, ptr %i.em, align 8, !range !34, !noundef !35
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.064.071, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 56 ; 2 uses
  %.not69 = icmp eq ptr %i.eq, %i.ed
  br i1 %.not69, label %._crit_edge.loopexit, label %.lr.ph

bb.af:                                            ; preds = %._crit_edge
  %i.er = getelementptr i8, ptr %i.ej, i64 -64
  store i8 0, ptr %i.er, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.es = getelementptr i8, ptr %i.ej, i64 -88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.et = getelementptr i8, ptr %i.ej, i64 -8
  store i8 0, ptr %i.et, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.eu = getelementptr i8, ptr %i.ej, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.ak

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ev = load ptr, ptr %2, align 8
  %i.ew = getelementptr i8, ptr %i.ej, i64 -88    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  %i.ex = load <2 x ptr>, ptr %i.ek, align 8
  %i.ey = load <2 x ptr>, ptr %i.ew, align 8
  %i.ez = icmp eq <2 x ptr> %i.ex, %i.ey          ; 2 uses
  %i.fa = extractelement <2 x i1> %i.ez, i64 0
  %i.fb = extractelement <2 x i1> %i.ez, i64 1
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false, !prof !38
  br i1 %i.fc, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.ah, !prof !38

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.ag
  %i.fd = getelementptr i8, ptr %i.ej, i64 -96
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr i8, ptr %i.ej, i64 -72
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = icmp ne ptr %i.fe, %i.fg
  %i.fi = getelementptr i8, ptr %i.ej, i64 -64
  %i.fj = zext i1 %i.fh to i8
  store i8 %i.fj, ptr %i.fi, align 8
  %i.fk = load ptr, ptr %2, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false)
  %i.fm = getelementptr i8, ptr %i.ej, i64 -32    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fn = load <2 x ptr>, ptr %i.el, align 8
  %i.fo = load <2 x ptr>, ptr %i.fm, align 8
  %i.fp = icmp eq <2 x ptr> %i.fn, %i.fo          ; 2 uses
  %i.fq = extractelement <2 x i1> %i.fp, i64 0
  %i.fr = extractelement <2 x i1> %i.fp, i64 1
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false, !prof !38
  br i1 %i.fs, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63, label %bb.ai, !prof !38

bb.ai:                                            ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63: ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.ft = getelementptr i8, ptr %i.ej, i64 -40
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr i8, ptr %i.ej, i64 -16
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = icmp ne ptr %i.fu, %i.fw
  %i.fy = getelementptr i8, ptr %i.ej, i64 -8
  %i.fz = zext i1 %i.fx to i8
  store i8 %i.fz, ptr %i.fy, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE14_M_fill_assignEmRKS6_(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(49) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63, %bb.af, %bb.a
  %.050 = phi i1 [ false, %bb.a ], [ true, %bb.af ], [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63 ], [ false, %bb.aj ]
  ret i1 %.050
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EEC2ES4_S4_RSt6vectorIS7_S8_ERKNS5_11basic_regexIcSA_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(189) %0, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %1, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48                  ; 7 uses
  %i.q = icmp ugt i64 %i.p, 288230376151711743
  br i1 %i.q, label %bb.b, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 5
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #36
          to label %.noexc10 unwind label %bb.d   ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.s, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.t, ptr %i.u, align 8
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc10, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.s, %.noexc10 ] ; 2 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc10 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc10 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.v = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !348

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc10
  %.lcssa.unr = phi ptr [ poison, %.noexc10 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.s, %.noexc10 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc10 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.p, 8
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  %i.af = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = load ptr, ptr %i.i, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 24, i1 false)
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #36
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.ai) #32
  %i.at = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 0, i64 %i.aq, i1 false)
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.ak, ptr %i.av, align 8
  %i.aw = and i32 %5, 128
  %.not = icmp eq i32 %i.aw, 0
  %i.ax = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %spec.select, ptr %i.ay, align 8
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i, %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.at to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.be) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit: ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.az, %bb.d ], [ %i.as, %.body ], [ %i.as, %bb.e ]
  %i.bf = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(189) dereferenceable(189) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(181) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !35, !align !40
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(181) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !349 ; 0 uses
  %i.i = load i64, ptr %i.d, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext 1, i64 noundef %i.i), !inline_history !349
  %i.j = load i8, ptr %i.c, align 4, !range !34, !noundef !35
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = and i32 %i.m, 64
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = or i32 %i.m, 128
  store i32 %i.o, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit, %bb.c
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = select i1 %i.w, i1 %i.z, i1 false, !prof !38
  br i1 %i.aa, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.e, !prof !38

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ac = load ptr, ptr %i.t, align 8
  %.not2.not.not = icmp ne ptr %i.ab, %i.ac       ; 3 uses
  br i1 %.not2.not.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %.not.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not.i, label %bb.g, label %_ZN3gsl7details13span_iteratorIcEppEv.exit, !prof !36

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZN3gsl7details13span_iteratorIcEppEv.exit:       ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ad, ptr %i.s, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i8 0, ptr %i.c, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.f, align 8, !nonnull !35, !align !40
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(181) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ae), !inline_history !349 ; 0 uses
  %i.ag = load i64, ptr %i.d, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext 1, i64 noundef %i.ag), !inline_history !349
  %i.ah = load i8, ptr %i.c, align 4, !range !34, !noundef !35
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.loopexit, label %bb.d, !llvm.loop !350

.loopexit:                                        ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, %_ZN3gsl7details13span_iteratorIcEppEv.exit, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not2.not.not, %_ZN3gsl7details13span_iteratorIcEppEv.exit ], [ %.not2.not.not, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE14_M_fill_assignEmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 164703072086692425
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 56
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36 ; 4 uses
  %xtraiter37 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.l = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !351

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS6_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.r = add nsw i64 %.068.i.i.i.i.i.i, -4        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS6_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !352

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS6_RKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8
  store ptr %.lcssa, ptr %i.u, align 8
  store ptr %i.t, ptr %i.a, align 8
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS6_RKS7_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  %i.z = sdiv exact i64 %i.y, 56
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.g ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.06.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.ae = load i8, ptr %i.ac, align 8, !range !34, !noundef !35
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48
  store i8 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ag, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit.loopexit, label %bb.g, !llvm.loop !353

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit.loopexit: ; preds = %bb.g
  %.pre21 = load ptr, ptr %i.v, align 8           ; 2 uses
  %.pre22 = load ptr, ptr %0, align 8
  %.pre23 = ptrtoint ptr %.pre21 to i64
  %.pre24 = ptrtoint ptr %.pre22 to i64
  %.pre26 = sub i64 %.pre23, %.pre24
  %i.ah = sdiv exact i64 %.pre26, -56
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit.loopexit, %bb.f
  %.pre-phi27 = phi i64 [ %i.ah, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %.pre21, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit.loopexit ], [ %i.w, %bb.f ] ; 3 uses
  %i.aj = add i64 %.pre-phi27, %1                 ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit
  %i.ak = add i64 %.pre-phi27, %1
  %i.al = add i64 %i.ak, -1
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i12.prol ], [ %i.ai, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i12.prol ], [ %i.aj, %.lr.ph.i.i.i.i12.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %.lr.ph.i.i.i.i12.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.am = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !354

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %.lr.ph.i.i.i.i12.preheader
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i.i.i.i12.preheader ], [ %i.an, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.i.i12.preheader ], [ %i.an, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i12.preheader ], [ %i.am, %.lr.ph.i.i.i.i12.prol ]
  %i.ao = icmp ult i64 %i.al, 3
  br i1 %i.ao, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.as = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !352

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit ], [ %.lcssa36.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.at, %.lr.ph.i.i.i.i12 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.v, align 8
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.au = icmp eq i64 %1, 0
  br i1 %i.au, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i15 = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.bb, %bb.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.06.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.az = load i8, ptr %i.ax, align 8, !range !34, !noundef !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 48
  store i8 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 56 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i.i16, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit, label %bb.i, !llvm.loop !353

_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.v, align 8
  br label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit

_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit, %bb.h
  %i.bc = phi ptr [ %i.w, %bb.h ], [ %.pre, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit ]
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.av, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES6_EvT_S8_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS6_RKS7_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #33
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit, %bb.c
  ret void
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a
bb.q:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7
  %.not.i8 = icmp eq ptr %i.bv, %i.br
  br i1 %.not.i8, label %bb.r, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9, !prof !36

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEdeEv.exit9:     ; preds = %bb.q
  %i.bx = load i8, ptr %i.bv, align 1             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !35, !align !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.ce = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.cf = load ptr, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load ptr, ptr %i.ci, align 8            ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.cj, null
  br i1 %.not.not.i.i.i10, label %bb.s, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.s:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.cd to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = zext i8 %i.bx to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = and i16 %i.co, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.cp, 0
  br i1 %.not4.i.i13, label %bb.t, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

bb.t:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.cq = and i32 %i.cd, 65536
  %.not.i.i14 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cs = load i8, ptr %i.cr, align 8
  %.not.i.i.i15 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i15, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.cu = load i8, ptr %i.ct, align 8
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.w:                                             ; preds = %bb.u
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cj)
  %i.cv = load ptr, ptr %i.cj, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef signext i8 %i.cx(ptr noundef nonnull align 8 dereferenceable(570) %i.cj, i8 noundef signext 95), !inline_history !404
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.w, %bb.v
  %.0.i.i.i17 = phi i8 [ %i.cu, %bb.v ], [ %i.cy, %bb.w ]
  %i.cz = icmp eq i8 %i.bx, %.0.i.i.i17
  %i.da = zext i1 %i.cz to i32
  br label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.t, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7
  %i.db = phi i32 [ 0, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7 ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.t ], [ %i.da, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.dc = icmp ne i32 %.1, %i.db
  br label %bb.x

bb.x:                                             ; preds = %bb.f, %bb.c, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18
  %.03 = phi i1 [ %i.dc, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18 ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.03
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.142", align 8   ; 16 uses
  %3 = alloca %"class.std::__detail::_Executor.331", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 56
  %i.k = icmp ugt i64 %i.j, 164703072086692425
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !36

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  store ptr %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i, i64 56, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(181) %3, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 7 uses
  %i.ap = icmp ugt i64 %i.ao, 288230376151711743
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i15 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i15, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.aq = shl nuw nsw i64 %i.ao, 5
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #36
          to label %.noexc8.i unwind label %bb.e  ; 4 uses

.noexc8.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i
  store ptr %i.ar, ptr %i.ag, align 8
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr %i.as, ptr %i.at, align 8
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc8.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ar, %.noexc8.i ] ; 2 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc8.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc8.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.au = add nsw i64 %.01012.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !406

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc8.i
  %.lcssa.unr = phi ptr [ poison, %.noexc8.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ar, %.noexc8.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %.noexc8.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aw = icmp ult i64 %i.ao, 8
  br i1 %i.aw, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ay, i8 0, i64 28, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.az, i8 0, i64 28, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  %i.be = add nsw i64 %.01012.i.i.i.i.i.i, -8     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.bk = and i32 %i.aa, 128
  %.not.i = icmp eq i32 %i.bk, 0
  %i.bl = and i32 %i.aa, -6
  %spec.select = select i1 %.not.i, i32 %i.aa, i32 %i.bl
  store i32 %spec.select, ptr %i.bj, align 8
  store i64 %1, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 2 uses
  store i8 0, ptr %i.bn, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(181) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !407 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i, %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.bq = load i64, ptr %i.bh, align 8
  invoke void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %3, i8 noundef zeroext 1, i64 noundef %i.bq)
          to label %bb.f unwind label %bb.g, !inline_history !407

bb.f:                                             ; preds = %.noexc
  %i.br = load i8, ptr %i.bn, align 4, !range !34, !noundef !35
  %i.bs = trunc nuw i8 %i.br to i1                ; 2 uses
  br i1 %i.bs, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.bt = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.bu
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %3) #32
  br label %.body

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %i.bw = phi ptr [ %i.ci, %bb.i ], [ %i.bu, %.preheader ] ; 2 uses
  %i.bx = phi ptr [ %i.cj, %bb.i ], [ %i.bt, %.preheader ]
  %.023 = phi i64 [ %i.ck, %bb.i ], [ 0, %.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %.023 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !range !34, !noundef !35
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %i.cc, i64 %.023 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.cd, ptr noundef nonnull align 8 dereferenceable(49) %i.by, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.cg = load i8, ptr %i.bz, align 8, !range !34, !noundef !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  store i8 %i.cg, ptr %i.ch, align 8
  %.pre = load ptr, ptr %i.s, align 8
  %.pre25 = load ptr, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.ci = phi ptr [ %.pre25, %bb.h ], [ %i.bw, %.lr.ph ] ; 2 uses
  %i.cj = phi ptr [ %.pre, %bb.h ], [ %i.bx, %.lr.ph ] ; 2 uses
  %i.ck = add nuw i64 %.023, 1                    ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 56
  %i.cp = icmp ult i64 %i.ck, %i.co
  br i1 %i.cp, label %.lr.ph, label %.loopexit, !llvm.loop !408

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.f
  %i.cq = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i: ; preds = %bb.j, %.loopexit
  %i.cw = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.dc = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.dd = load ptr, ptr %i.r, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %i.bs

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.g ], [ %i.bp, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.dh = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %.body
  %i.di = load ptr, ptr %i.r, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit20: ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_span_tests.cpp() #28 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.u = alloca i64, align 8                      ; 6 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %20 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
end_hunk_1
