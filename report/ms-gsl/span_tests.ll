Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/span_tests?download=true
inline.NumInlined: 8112
inline.NumDeleted: 2088
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNSt8__detail16_Backref_matcherIN3gsl7details13span_iteratorIcEENSt7__cxx1112regex_traitsIcEEE8_M_applyES4_S4_S4_S4_:bb.a
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
  %i.o = phi ptr [ %i.t, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ], [ %.sroa.3.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.p = phi ptr [ %i.u, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ], [ %.sroa.323.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not.i.us.i.i.i.i.i = icmp eq ptr %i.o, %.sroa.2.0.copyload
  br i1 %.not.i.us.i.i.i.i.i, label %.split19.us.i.i.i.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not.i1.us.i.i.i.i.i = icmp eq ptr %i.p, %.sroa.222.0.copyload
  br i1 %.not.i1.us.i.i.i.i.i, label %.split23.us.i.i.i.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i
  %i.q = load i8, ptr %i.o, align 1
  %i.r = load i8, ptr %i.p, align 1
  %i.s = icmp eq i8 %i.q, %i.r                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.not.us.i.i.i.i.i = icmp ne ptr %i.t, %.sroa.317.0.copyload
  %or.cond.not = select i1 %i.s, i1 %.not.us.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

.split19.us.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split23.us.i.i.i.i.i:                            ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !35, !align !40
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #32
  %i.x = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.y = load ptr, ptr %5, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x
  %i.ac = load ptr, ptr %i.ab, align 8            ; 5 uses
  %.not.not.i = icmp eq ptr %i.ac, null
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
  %i.ad = icmp eq ptr %.sroa.039.0.copyload, %.sroa.033.0.copyload
  %i.ae = icmp eq ptr %.sroa.240.0.copyload, %.sroa.234.0.copyload
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false, !prof !38
  br i1 %i.af, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8, label %bb.g, !prof !38

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8: ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.252.0.copyload = load ptr, ptr %.sroa.252.0..sroa_idx, align 8
  %.sroa.051.0.copyload = load ptr, ptr %4, align 8
  %.sroa.045.0.copyload = load ptr, ptr %3, align 8
  %i.ag = icmp eq ptr %.sroa.051.0.copyload, %.sroa.045.0.copyload
  %i.ah = icmp eq ptr %.sroa.252.0.copyload, %.sroa.246.0.copyload
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false, !prof !38
  br i1 %i.ai, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i, label %bb.h, !prof !38

bb.h:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8
  %i.aj = ptrtoint ptr %.sroa.341.0.copyload to i64
  %i.ak = ptrtoint ptr %.sroa.335.0.copyload to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ptrtoint ptr %.sroa.353.0.copyload to i64
  %i.an = ptrtoint ptr %.sroa.347.0.copyload to i64
  %i.ao = sub i64 %i.am, %i.an
  %.not.i9 = icmp eq i64 %i.al, %i.ao
  br i1 %.not.i9, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i
  %.not.us27.i.i = icmp eq ptr %.sroa.335.0.copyload, %.sroa.341.0.copyload
  br i1 %.not.us27.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i
  %i.ap = phi ptr [ %i.bc, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ %.sroa.335.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ] ; 3 uses
  %i.aq = phi ptr [ %i.bd, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ %.sroa.347.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ] ; 3 uses
  %.not.i.us.i.i = icmp eq ptr %i.ap, %.sroa.234.0.copyload
  br i1 %.not.i.us.i.i, label %.split20.us.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i: ; preds = %.lr.ph.i.i
  %.not.i1.us.i.i = icmp eq ptr %i.aq, %.sroa.246.0.copyload
  br i1 %.not.i1.us.i.i, label %.split24.us.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i
  %i.ar = load i8, ptr %i.ap, align 1
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = load ptr, ptr %i.ac, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.ac, i8 noundef signext %i.ar), !inline_history !385
  %i.ax = load ptr, ptr %i.ac, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.ac, i8 noundef signext %i.as), !inline_history !385
  %i.bb = icmp eq i8 %i.aw, %i.ba                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.not.us.i.i = icmp ne ptr %i.bc, %.sroa.341.0.copyload
  %or.cond72.not = select i1 %i.bb, i1 %.not.us.i.i, i1 false
  br i1 %or.cond72.not, label %.lr.ph.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

.split20.us.i.i:                                  ; preds = %.lr.ph.i.i
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split24.us.i.i:                                  ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.be

_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i
  %.0 = phi i1 [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ], [ false, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i ], [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ], [ %i.bb, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ false, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i ], [ %i.s, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
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
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 3 uses
  %i.p = add i64 %i.d, -56
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 56
  %i.s = add i64 %.fr.i, 56
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.u, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.f, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aa = udiv exact i64 %i.f, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %.0910.i.i.i.i.i, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ae = load i8, ptr %i.ad, align 8, !range !34, !noundef !35
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  store i8 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  %i.ai = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, !llvm.loop !386

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp sgt i64 %i.y, 0
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.al = udiv exact i64 %i.y, 56
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i27 ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0811.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(49) %.0910.i.i.i.i.i30, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 48
  %i.ap = load i8, ptr %i.ao, align 8, !range !34, !noundef !35
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 48
  store i8 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 56
  %i.at = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit, !llvm.loop !387

_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i27
  %.pre = load ptr, ptr %1, align 8
  %.pre34 = load ptr, ptr %i.v, align 8           ; 2 uses
  %.pre35 = load ptr, ptr %0, align 8
  %.pre36 = load ptr, ptr %i.a, align 8
  %.pre37 = ptrtoint ptr %.pre34 to i64
  %.pre38 = ptrtoint ptr %.pre35 to i64
  %.pre40 = sub i64 %.pre37, %.pre38
  br label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit: ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit, %bb.h
  %.pre-phi41 = phi i64 [ %.pre40, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.y, %bb.h ]
  %i.av = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.b, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %.pre34, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.w, %bb.h ]
  %i.ax = phi ptr [ %.pre, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.c, %bb.h ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.pre-phi41 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ay, %i.av
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.ay, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0810.i.i.i.i, i64 56, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !388

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !34, !noundef !35
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %.tr28), !inline_history !389
  %i.s = load i8, ptr %i.j, align 4, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %common.ret, label %tailrecurse.backedge236

tailrecurse.backedge236:                          ; preds = %bb.t, %bb.c, %bb.h, %.split, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.n, %bb.o
  %.tr28.be237.in = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.tr28.be237 = load i64, ptr %.tr28.be237.in, align 8
  br label %tailrecurse

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %i.v), !inline_history !389
  %i.w = load i8, ptr %i.j, align 4, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %.tr28), !inline_history !389
  br label %common.ret

common.ret:                                       ; preds = %bb.p, %bb.q, %bb.r, %bb.d, %bb.e, %tailrecurse, %bb.c, %bb.h, %.split, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.n, %bb.o, %bb.k, %bb.t, %bb.u, %bb.g, %bb.f
  ret void

bb.f:                                             ; preds = %tailrecurse
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  %.sroa.0257.0.copyload = load <3 x ptr>, ptr %i.ab, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %i.ad), !inline_history !390
  store <3 x ptr> %.sroa.0257.0.copyload, ptr %i.ab, align 8
  br label %common.ret

bb.g:                                             ; preds = %tailrecurse
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %i.af ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
end_hunk_0
