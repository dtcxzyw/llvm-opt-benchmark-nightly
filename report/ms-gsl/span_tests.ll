Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/span_tests?download=true
inline.NumInlined: 8112
inline.NumDeleted: 2088
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev:bb.a
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
  %i.c = load ptr, ptr %0, align 8                ; 12 uses
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
  %xtraiter39 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ]
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS7_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.l = add i64 %.068.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !351

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
  %i.r = add i64 %.068.i.i.i.i.i.i, -4            ; 2 uses
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
  %xtraiter37 = and i64 %i.aj, 3                  ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i12.prol ], [ %i.ai, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i12.prol ], [ %i.aj, %.lr.ph.i.i.i.i12.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %.lr.ph.i.i.i.i12.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.am = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter37
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
  %.idx.i.i = mul nuw nsw i64 %1, 56              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %3 = add nsw i64 %.idx.i.i, -56                 ; 2 uses
  %4 = udiv i64 %3, 56
  %5 = and i64 %4, 1
  %lcmp.mod.not.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %7 = load i8, ptr %i.ax, align 8, !range !34, !noundef !35
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 %7, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i15.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %9, %.prol.loopexit.unr-lcssa ]
  %10 = icmp ult i64 %3, 56
  br i1 %10, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i15 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i15.unr, %.prol.loopexit ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.06.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %11 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %12 = load i8, ptr %i.ax, align 8, !range !34, !noundef !35
  %13 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 48
  store i8 %12, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %14, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.az = load i8, ptr %i.ax, align 8, !range !34, !noundef !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 104
  store i8 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 112 ; 2 uses
  %.not.i.i.i.i16.1 = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i.i16.1, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !353

_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i14.new, %.prol.loopexit
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
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSB_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.326", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !35, !align !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv exact i64 %i.q, 56
  %i.s = icmp ugt i64 %i.r, 164703072086692425
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !36

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ null, %bb.b ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.y, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 56, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !27

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8
  %i.ac = load ptr, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.g, align 8
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

bb.e:                                             ; preds = %bb.a
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE17_M_realloc_insertIJRlRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = icmp eq i8 %1, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev.exit, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit
  %.012 = phi i8 [ 0, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev.exit ] ; 3 uses
  store i8 0, ptr %i.ae, align 4
  %i.ar = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.as = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.af, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 48
  %i.be = load ptr, ptr %i.ag, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %i.be, i8 0, i64 %i.bd, i1 false)
  %.pre = load ptr, ptr %i.b, align 8
  %.pre30 = load ptr, ptr %i.g, align 8
  br label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit:              ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i
  %i.bf = phi ptr [ %i.as, %bb.g ], [ %.pre30, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.pr.i = phi ptr [ %i.ar, %bb.g ], [ %.pre, %.lr.ph.preheader.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %.pr.i, ptr %2, align 8
  store ptr %i.bf, ptr %i.ah, align 8
  %i.bg = load ptr, ptr %i.i, align 8             ; 2 uses
end_hunk_0
