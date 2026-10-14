Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_request?download=true
inline.NumInlined: 1664
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_:bb.a
  %i.b = load i32, ptr %6, align 4, !tbaa !34
  %i.c = zext i32 %i.b to i64
  %i.d = icmp eq i64 %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !62
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !64
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !86
  %i.o = or i32 %i.n, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.o)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.p) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.7, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !86
  %i.aa = or i32 %i.z, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %0, i64 noundef %i.ab) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h, %bb.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !86
  %i.am = or i32 %i.al, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aj, i32 noundef %i.am)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.an = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %1, i64 noundef %i.an) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.j, %bb.k
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.aq = load i64, ptr %5, align 8, !tbaa !33
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.aq) ; 4 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.11, i64 noundef 2) ; 0 uses
  %i.av = load i32, ptr %6, align 4, !tbaa !34
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.aw) ; 8 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.12, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !86
  %i.bf = or i32 %i.be, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, i32 noundef %i.bf)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bg = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #25
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %4, i64 noundef %i.bg) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.l, %bb.m
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.ax, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !79 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !85
  %.not.i1.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 67
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef signext i8 %i.bv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.bs, %bb.o ], [ %i.bw, %bb.p ]
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext %.0.i.i.i)
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) ; 0 uses
  %i.bz = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !59

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.cb = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i16 = icmp eq i32 %i.cb, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !62
  %i.cc = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !34
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !34
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit17
  ret i1 %i.d
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120check_pubsub_changesERKN5boost5redis7requestENS0_4spanIKNS_17pubsub_change_strELm18446744073709551615EEENS0_15source_locationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr %1, i64 %2, ptr noundef byval(%"struct.boost::source_location") align 8 %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %.not126 = icmp eq ptr %i.b, %i.d
  br i1 %.not126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.u

._crit_edge:                                      ; preds = %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit, %bb.a
  %.sroa.077.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.077.1, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.9.1, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.1, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc31, %._crit_edge
  %.sroa.0.0.i = phi ptr [ %.sroa.077.0.lcssa, %._crit_edge ], [ %i.al, %.noexc31 ] ; 3 uses
  %.045.i = phi i64 [ 0, %._crit_edge ], [ %i.ao, %.noexc31 ] ; 5 uses
  %.044.i = phi ptr [ %1, %._crit_edge ], [ %i.am, %.noexc31 ] ; 3 uses
  %i.h = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %i.an, %.noexc31 ] ; 2 uses
  %.not623.i = icmp eq ptr %.sroa.0.0.i, %.sroa.9.0.lcssa
  %.not24.i = icmp eq ptr %.044.i, %i.g           ; 2 uses
  %or.cond25.i = select i1 %.not623.i, i1 true, i1 %.not24.i
  br i1 %or.cond25.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i
  %.129.i = phi ptr [ %i.s, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i ], [ %.044.i, %bb.b ] ; 7 uses
  %.sroa.0.126.i = phi ptr [ %i.r, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i ], [ %.sroa.0.0.i, %bb.b ] ; 7 uses
  %i.i = phi <2 x i64> [ %i.t, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i ], [ %i.h, %bb.b ] ; 4 uses
  %i.j = load i32, ptr %.sroa.0.126.i, align 8, !tbaa !91
  %i.k = load i32, ptr %.129.i, align 8, !tbaa !91
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.126.i, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !33 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.126.i, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %.129.i, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.129.i, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.o = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.o, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %.sroa.01.0.copyload.i.i, 0
  br i1 %i.p, label %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.01.0.copyload.i.i)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i, label %.critedge.i

_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.126.i, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.129.i, i64 24 ; 3 uses
  %i.t = add nsw <2 x i64> %i.i, splat (i64 1)    ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %.sroa.9.0.lcssa
  %.not.i = icmp eq ptr %i.s, %i.g                ; 2 uses
  %or.cond.i = select i1 %.not6.i, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !117

.critedge.i:                                      ; preds = %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c, %.lr.ph.i, %bb.b
  %.sroa.0.1.lcssa.i = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %i.r, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i ], [ %.sroa.0.126.i, %.lr.ph.i ], [ %.sroa.0.126.i, %bb.c ], [ %.sroa.0.126.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ] ; 5 uses
  %.1.lcssa.i = phi ptr [ %.044.i, %bb.b ], [ %i.s, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i ], [ %.129.i, %.lr.ph.i ], [ %.129.i, %bb.c ], [ %.129.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ] ; 4 uses
  %.not.lcssa.i = phi i1 [ %.not24.i, %bb.b ], [ %.not.i, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i ], [ false, %.lr.ph.i ], [ false, %bb.c ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %5 = phi <2 x i64> [ %i.h, %bb.b ], [ %i.t, %_ZN12_GLOBAL__N_1eqERKNS_17pubsub_change_strES2_.exit.i ], [ %i.i, %.lr.ph.i ], [ %i.i, %bb.c ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ] ; 4 uses
  %6 = icmp eq ptr %.sroa.0.1.lcssa.i, %.sroa.9.0.lcssa
  %or.cond58.i = select i1 %6, i1 true, i1 %.not.lcssa.i
  br i1 %or.cond58.i, label %.critedge.thread.i, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.u = icmp eq i64 %.045.i, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 60)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %bb.f
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit ; 0 uses

.noexc19:                                         ; preds = %.noexc
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 70)
          to label %.noexc20 unwind label %.loopexit ; 3 uses

.noexc20:                                         ; preds = %.noexc19
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.42, i64 noundef 42)
          to label %.noexc21 unwind label %.loopexit ; 0 uses

.noexc21:                                         ; preds = %.noexc20
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_120check_pubsub_changesERKN5boost5redis7requestENS0_4spanIKNS_17pubsub_change_strELm18446744073709551615EEENS0_15source_locationE, i64 noundef 127)
          to label %.noexc22 unwind label %.loopexit ; 0 uses

.noexc22:                                         ; preds = %.noexc21
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.43, i64 noundef 2)
          to label %.noexc23 unwind label %.loopexit ; 0 uses

bb.g:                                             ; preds = %bb.e
  %i.ab = icmp samesign ugt i64 %.045.i, 7
  br i1 %i.ab, label %bb.h, label %.noexc23

bb.h:                                             ; preds = %bb.g
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.44, i64 noundef 4)
          to label %.critedge.thread.i unwind label %.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %.noexc22, %bb.g
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.45, i64 noundef 2)
          to label %.noexc25 unwind label %.loopexit ; 0 uses

.noexc25:                                         ; preds = %.noexc23
  %i.ae = extractelement <2 x i64> %5, i64 0
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.ae)
          to label %.noexc26 unwind label %.loopexit ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.46, i64 noundef 3)
          to label %.noexc27 unwind label %.loopexit ; 0 uses

.noexc27:                                         ; preds = %.noexc26
  %i.ah = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN12_GLOBAL__N_1lsERSoRKNS_17pubsub_change_strE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.lcssa.i)
          to label %.noexc28 unwind label %.loopexit ; 2 uses

.noexc28:                                         ; preds = %.noexc27
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.47, i64 noundef 6)
          to label %.noexc29 unwind label %.loopexit ; 0 uses

.noexc29:                                         ; preds = %.noexc28
  %i.aj = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN12_GLOBAL__N_1lsERSoRKNS_17pubsub_change_strE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.1.lcssa.i)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc29
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit ; 0 uses

.noexc31:                                         ; preds = %.noexc30
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa.i, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 24 ; 2 uses
  %i.an = add nsw <2 x i64> %5, splat (i64 1)     ; 2 uses
  %i.ao = add nuw nsw i64 %.045.i, 1              ; 2 uses
  %.not7.i = icmp eq ptr %i.al, %.sroa.9.0.lcssa
  br i1 %.not7.i, label %.critedge.thread.i, label %bb.b, !llvm.loop !118

.critedge.thread.i:                               ; preds = %.noexc31, %.critedge.i, %bb.h
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.lcssa.i, %bb.h ], [ %.sroa.9.0.lcssa, %.noexc31 ], [ %.sroa.0.1.lcssa.i, %.critedge.i ]
  %.146.i = phi i64 [ %.045.i, %bb.h ], [ %i.ao, %.noexc31 ], [ %.045.i, %.critedge.i ] ; 3 uses
  %.2.i = phi ptr [ %.1.lcssa.i, %bb.h ], [ %i.am, %.noexc31 ], [ %.1.lcssa.i, %.critedge.i ]
  %7 = phi <2 x i64> [ %5, %bb.h ], [ %i.an, %.noexc31 ], [ %5, %.critedge.i ] ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.aq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 24
  %i.at = extractelement <2 x i64> %7, i64 0
  %i.au = add nsw i64 %i.as, %i.at                ; 2 uses
  %i.av = ptrtoint ptr %i.g to i64
  %i.aw = ptrtoint ptr %.2.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 24
  %i.az = extractelement <2 x i64> %7, i64 1
  %i.ba = add nsw i64 %i.ay, %i.az                ; 2 uses
  %.not56.i = icmp eq i64 %i.au, %i.ba
  br i1 %.not56.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i
  %i.bb = icmp eq i64 %.146.i, 0
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 60)
          to label %.noexc32 unwind label %.loopexit.split-lp ; 0 uses

.noexc32:                                         ; preds = %bb.j
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %.noexc33 unwind label %.loopexit.split-lp ; 0 uses

.noexc33:                                         ; preds = %.noexc32
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 70)
          to label %.noexc34 unwind label %.loopexit.split-lp ; 4 uses

.noexc34:                                         ; preds = %.noexc33
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.48, i64 noundef 39)
          to label %.noexc35 unwind label %.loopexit.split-lp ; 0 uses

.noexc35:                                         ; preds = %.noexc34
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_120check_pubsub_changesERKN5boost5redis7requestENS0_4spanIKNS_17pubsub_change_strELm18446744073709551615EEENS0_15source_locationE, i64 noundef 127)
          to label %.noexc36 unwind label %.loopexit.split-lp ; 0 uses

.noexc36:                                         ; preds = %.noexc35
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.49, i64 noundef 8)
          to label %.noexc37 unwind label %.loopexit.split-lp ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.52, i64 noundef 10)
          to label %.noexc37 unwind label %.loopexit.split-lp ; 0 uses

.noexc37:                                         ; preds = %bb.k, %.noexc36
  %_ZSt4cerr.sink.i = phi ptr [ %i.be, %.noexc36 ], [ @_ZSt4cerr, %bb.k ]
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cerr.sink.i, i64 noundef %i.au)
          to label %.noexc39 unwind label %.loopexit.split-lp ; 2 uses

.noexc39:                                         ; preds = %.noexc37
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.50, i64 noundef 10)
          to label %.noexc40 unwind label %.loopexit.split-lp ; 0 uses

.noexc40:                                         ; preds = %.noexc39
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i64 noundef %i.ba)
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc40
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc42 unwind label %.loopexit.split-lp ; 0 uses

.noexc42:                                         ; preds = %.noexc41
  %i.bn = add i64 %.146.i, 1
  br label %bb.l

bb.l:                                             ; preds = %.noexc42, %.critedge.thread.i
  %.247.i = phi i64 [ %i.bn, %.noexc42 ], [ %.146.i, %.critedge.thread.i ]
  %i.bo = icmp eq i64 %.247.i, 0
  br i1 %i.bo, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bp = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %_ZNSolsEPFRSoS_E.exit, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.br = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %_ZNSolsEPFRSoS_E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !62
  %i.bs = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZNSolsEPFRSoS_E.exit

bb.p:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !64
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !79 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

.invoke:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.p
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !85
  %.not.i1.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i1.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 67
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.by)
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.r
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef signext i8 %i.cf(ptr noundef nonnull align 8 dereferenceable(570) %i.by, i8 noundef signext 10)
          to label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i unwind label %.loopexit.split-lp, !inline_history !119

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %.noexc44, %bb.q
  %.0.i.i.i.i = phi i8 [ %i.cc, %bb.q ], [ %i.cg, %.noexc44 ]
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %.noexc47 unwind label %.loopexit.split-lp ; 0 uses

.noexc47:                                         ; preds = %.noexc46
  %i.cj = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %bb.ab, !prof !59

bb.s:                                             ; preds = %.noexc47
  %i.cl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i68.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i68.i, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !62
  %i.cm = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %bb.ab

bb.u:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit
  %.sroa.074.0130 = phi ptr [ %i.b, %.lr.ph ], [ %i.dn, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.14.0129 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %.sroa.9.0128 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.sroa.077.0127 = phi ptr [ null, %.lr.ph ], [ %.sroa.077.1, %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.cn = load i32, ptr %.sroa.074.0130, align 8, !tbaa !127 ; 2 uses
  %i.co = load i64, ptr %i.e, align 8, !tbaa !18  ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.074.0130, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !128 ; 4 uses
  %i.cr = icmp ugt i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i64 noundef %i.cq, i64 noundef %i.co) #29
          to label %.noexc48 unwind label %.loopexit.split-lp83

.noexc48:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.074.0130, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !129
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.cv = sub nuw i64 %i.co, %i.cq
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.ct) ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %.not.i.i49 = icmp eq ptr %.sroa.9.0128, %.sroa.14.0129
  br i1 %.not.i.i49, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.cn, ptr %.sroa.9.0128, align 8, !tbaa !130
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0128, i64 8
  store i64 %.sroa.speculated.i, ptr %.sroa.668.0..sroa_idx, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0128, i64 16
  store ptr %i.cw, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !32
  br label %_ZNSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE9push_backEOS1_.exit

bb.y:                                             ; preds = %bb.w
  %i.cx = ptrtoint ptr %.sroa.14.0129 to i64
  %i.cy = ptrtoint ptr %.sroa.077.0127 to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.z, label %_ZNKSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
          to label %.noexc51 unwind label %.loopexit.split-lp83

.noexc51:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_117pubsub_change_strESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.db = sdiv exact i64 %i.cz, 24                ; 3 uses
  %i.dc = icmp eq ptr %.sroa.14.0129, %.sroa.077.0127 ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dc, i64 1, i64 %i.db
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.db ; 2 uses
end_hunk_0
