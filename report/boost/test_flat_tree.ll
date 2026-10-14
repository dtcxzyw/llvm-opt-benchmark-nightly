Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_flat_tree?download=true
inline.NumInlined: 2063
inline.NumDeleted: 427
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESA_EEbT_PKcSD_SD_iSD_RKT0_RKT1_:bb.a
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.g, %bb.f, %_ZNK5boost6detail10lw_test_eqclINS_5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESA_EEbRKT_RKT0_.exit, %_ZN5boost6detail12test_resultsEv.exit17
  %i.cq = phi i1 [ false, %_ZN5boost6detail12test_resultsEv.exit17 ], [ true, %_ZNK5boost6detail10lw_test_eqclINS_5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESA_EEbRKT_RKT0_.exit ], [ true, %bb.f ], [ true, %bb.g ]
  ret i1 %i.cq
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKNS_5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESC_EEbT_PKcSF_SF_iSF_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !36
  %i.b = load ptr, ptr %6, align 8, !tbaa !36
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.o) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.34, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !76
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %0, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h, %bb.i
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.35, i64 noundef 1) ; 0 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.49, i64 noundef 2) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.35, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !76
  %i.al = or i32 %i.ak, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, i32 noundef %i.al)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.am = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %1, i64 noundef %i.am) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.j, %bb.k
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.36, i64 noundef 4) ; 0 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !36
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.ap) ; 4 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.37, i64 noundef 2) ; 0 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.49, i64 noundef 2) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.38, i64 noundef 2) ; 0 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !36
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.au) ; 8 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.39, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !76
  %i.bd = or i32 %i.bc, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ba, i32 noundef %i.bd)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.be = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #25
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %4, i64 noundef %i.be) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.l, %bb.m
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 67
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bm)
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bm, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.bq, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext %.0.i.i.i)
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) ; 0 uses
  %i.bx = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !40

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bz = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i16 = icmp eq i32 %i.bz, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  %i.ca = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !30
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !30
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit17
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail16test_all_eq_implISoN9__gnu_cxx17__normal_iteratorIPNS_5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISB_SaISB_EEEEPKSB_EEbRT_PKciSM_T0_SN_T1_SO_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %.not.i59 = icmp eq ptr %3, null                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %.sroa.0.0 = phi ptr [ %4, %bb.a ], [ %i.be, %bb.o ] ; 3 uses
  %.045 = phi i64 [ 0, %bb.a ], [ %i.bh, %bb.o ]  ; 5 uses
  %.044 = phi ptr [ %6, %bb.a ], [ %i.bf, %bb.o ] ; 3 uses
  %i.a = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.bg, %bb.o ] ; 2 uses
  %.not8097 = icmp eq ptr %.sroa.0.0, %5
  %.not98 = icmp eq ptr %.044, %7                 ; 2 uses
  %or.cond99 = select i1 %.not8097, i1 true, i1 %.not98
  br i1 %or.cond99, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit
  %.1103 = phi ptr [ %i.v, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ], [ %.044, %bb.b ] ; 11 uses
  %.sroa.0.1100 = phi ptr [ %i.u, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ], [ %.sroa.0.0, %bb.b ] ; 11 uses
  %i.b = phi <2 x i64> [ %i.w, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ], [ %i.a, %bb.b ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.1100, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %.1103, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1100, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %.1103, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !85
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %.sroa.0.1100, align 8, !tbaa !86
  %i.n = load i32, ptr %.1103, align 8, !tbaa !86
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.1100, i64 24
  %.sroa.01.0.copyload.i = load i64, ptr %i.p, align 8, !tbaa !17 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1100, i64 32
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.1103, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1103, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !32
  %i.r = icmp eq i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.r, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.s, label %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.f
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 %.sroa.01.0.copyload.i)
  %i.t = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.t, label %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit, label %.critedge

_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1100, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1103, i64 40 ; 3 uses
  %i.w = add nsw <2 x i64> %i.b, splat (i64 1)    ; 2 uses
  %.not80 = icmp eq ptr %i.u, %5
  %.not = icmp eq ptr %i.v, %7                    ; 2 uses
  %or.cond = select i1 %.not80, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !236

.critedge:                                        ; preds = %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit, %bb.d, %bb.c, %.lr.ph, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0, %bb.b ], [ %.sroa.0.1100, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.0.1100, %bb.e ], [ %.sroa.0.1100, %.lr.ph ], [ %.sroa.0.1100, %bb.c ], [ %.sroa.0.1100, %bb.d ], [ %i.u, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ] ; 5 uses
  %.1.lcssa = phi ptr [ %.044, %bb.b ], [ %.1103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.1103, %bb.e ], [ %.1103, %.lr.ph ], [ %.1103, %bb.c ], [ %.1103, %bb.d ], [ %i.v, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ] ; 4 uses
  %.not.lcssa = phi i1 [ %.not98, %bb.b ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %bb.d ], [ %.not, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ]
  %8 = phi <2 x i64> [ %i.a, %bb.b ], [ %i.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.b, %bb.e ], [ %i.b, %.lr.ph ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %i.w, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ] ; 4 uses
  %9 = icmp eq ptr %.sroa.0.1.lcssa, %5
  %or.cond58 = select i1 %9, i1 true, i1 %.not.lcssa
  br i1 %or.cond58, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.x = icmp eq i64 %.045, 0
  br i1 %i.x, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !11
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !76
  %i.ae = or i32 %i.ad, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, i32 noundef %i.ae)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.j:                                             ; preds = %bb.h
  %i.af = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.af) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i, %bb.j
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 5 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.54, i64 noundef 42) ; 0 uses
  br i1 %.not.i59, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !76
  %i.aq = or i32 %i.ap, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.an, i32 noundef %i.aq)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %3, i64 noundef %i.ar) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.k, %bb.l
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.55, i64 noundef 2) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.au = icmp samesign ugt i64 %.045, 7
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.56, i64 noundef 4) ; 0 uses
  br label %.critedge.thread

bb.o:                                             ; preds = %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.57, i64 noundef 2) ; 0 uses
  %i.ax = extractelement <2 x i64> %8, i64 0
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ax) ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.58, i64 noundef 3) ; 0 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis5resp3lsISt17basic_string_viewIcSt11char_traitsIcEEEERSoS7_RKNS1_10basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.lcssa) ; 2 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.59, i64 noundef 6) ; 0 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis5resp3lsISt17basic_string_viewIcSt11char_traitsIcEEEERSoS7_RKNS1_10basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %.1.lcssa)
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 40 ; 2 uses
  %i.bg = add nsw <2 x i64> %8, splat (i64 1)     ; 2 uses
  %i.bh = add nuw nsw i64 %.045, 1                ; 2 uses
  %.not81 = icmp eq ptr %i.be, %5
  br i1 %.not81, label %.critedge.thread, label %bb.b, !llvm.loop !237

.critedge.thread:                                 ; preds = %.critedge, %bb.o, %bb.n
  %.sroa.0.2 = phi ptr [ %.sroa.0.1.lcssa, %bb.n ], [ %5, %bb.o ], [ %.sroa.0.1.lcssa, %.critedge ]
  %.146 = phi i64 [ %.045, %bb.n ], [ %i.bh, %bb.o ], [ %.045, %.critedge ] ; 3 uses
  %.2 = phi ptr [ %.1.lcssa, %bb.n ], [ %i.bf, %bb.o ], [ %.1.lcssa, %.critedge ]
  %10 = phi <2 x i64> [ %8, %bb.n ], [ %i.bg, %bb.o ], [ %8, %.critedge ] ; 2 uses
  %i.bi = ptrtoint ptr %5 to i64
  %i.bj = ptrtoint ptr %.sroa.0.2 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 40
  %i.bm = extractelement <2 x i64> %10, i64 0
  %i.bn = add nsw i64 %i.bl, %i.bm                ; 2 uses
  %i.bo = ptrtoint ptr %7 to i64
  %i.bp = ptrtoint ptr %.2 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 40
  %i.bs = extractelement <2 x i64> %10, i64 1
  %i.bt = add nsw i64 %i.br, %i.bs                ; 2 uses
  %.not56 = icmp eq i64 %i.bn, %i.bt
  br i1 %.not56, label %bb.x, label %bb.p

bb.p:                                             ; preds = %.critedge.thread
  %i.bu = icmp eq i64 %.146, 0
  br i1 %i.bu, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %0, align 8, !tbaa !11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !76
  %i.cb = or i32 %i.ca, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.by, i32 noundef %i.cb)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

bb.s:                                             ; preds = %bb.q
  %i.cc = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.cc) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.r, %bb.s
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 6 uses
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.60, i64 noundef 39) ; 0 uses
  br i1 %.not.i59, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !76
  %i.cn = or i32 %i.cm, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ck, i32 noundef %i.cn)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.co = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull %3, i64 noundef %i.co) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.t, %bb.u
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.61, i64 noundef 8) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.64, i64 noundef 10) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %.sink145 = phi ptr [ %0, %bb.v ], [ %i.cf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 ]
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink145, i64 noundef %i.bn) ; 2 uses
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.62, i64 noundef 10) ; 0 uses
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i64 noundef %i.bt)
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.63, i64 noundef 1) ; 0 uses
  %i.cw = add i64 %.146, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge.thread
  %.247 = phi i64 [ %i.cw, %bb.w ], [ %.146, %.critedge.thread ]
  %i.cx = icmp eq i64 %.247, 0                    ; 2 uses
  br i1 %i.cx, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cy = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %_ZN5boost6detail12test_resultsEv.exit, !prof !40

bb.z:                                             ; preds = %bb.y
  %i.da = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i65 = icmp eq i32 %i.da, 0
  br i1 %.not.i65, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  %i.db = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.ab:                                            ; preds = %bb.x
  %i.dc = load ptr, ptr %0, align 8, !tbaa !11
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds i8, ptr %0, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 240
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i, label %bb.ac, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i1.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 67
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dh)
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef signext i8 %i.do(ptr noundef nonnull align 8 dereferenceable(570) %i.dh, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.ad, %bb.ae
  %.0.i.i.i = phi i8 [ %i.dl, %bb.ad ], [ %i.dp, %bb.ae ]
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq) ; 0 uses
  %i.ds = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.af, label %_ZN5boost6detail12test_resultsEv.exit67, !prof !40

bb.af:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.du = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i66 = icmp eq i32 %i.du, 0
  br i1 %.not.i66, label %_ZN5boost6detail12test_resultsEv.exit67, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  %i.dv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit67

_ZN5boost6detail12test_resultsEv.exit67:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.af, %bb.ag
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !30
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !30
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.aa, %bb.z, %bb.y, %_ZN5boost6detail12test_resultsEv.exit67
  ret i1 %i.cx
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail16test_all_eq_implISoSt16reverse_iteratorIPKNS_5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEESC_EEbRT_PKciSH_T0_SI_T1_SJ_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !39
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %.not.i57 = icmp eq ptr %3, null                ; 2 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.b = phi ptr [ %.pre, %bb.a ], [ %i.bj, %bb.o ] ; 4 uses
  %.sroa.067.0 = phi ptr [ %i.a, %bb.a ], [ %10, %bb.o ] ; 3 uses
  %.048 = phi ptr [ %6, %bb.a ], [ %i.bg, %bb.o ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bi, %bb.o ]    ; 5 uses
  %i.c = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.bh, %bb.o ] ; 2 uses
  %.not7794 = icmp eq ptr %.sroa.067.0, %i.b
  %.not95 = icmp eq ptr %.048, %7                 ; 2 uses
  %or.cond96 = select i1 %.not7794, i1 true, i1 %.not95
  br i1 %or.cond96, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit
  %.14998 = phi ptr [ %i.x, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ], [ %.048, %bb.b ] ; 11 uses
  %.sroa.067.197 = phi ptr [ %i.e, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ], [ %.sroa.067.0, %bb.b ] ; 10 uses
  %i.d = phi <2 x i64> [ %i.y, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ], [ %i.c, %bb.b ] ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.067.197, i64 -40 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.067.197, i64 -32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %.14998, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !84
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds i8, ptr %.sroa.067.197, i64 -24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %.14998, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !85
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.e, align 8, !tbaa !86
  %i.q = load i32, ptr %.14998, align 8, !tbaa !86
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %.sroa.067.197, i64 -16
  %.sroa.01.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !17 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.067.197, i64 -8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %.14998, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.14998, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !32
  %i.u = icmp eq i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.v, label %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.f
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 %.sroa.01.0.copyload.i)
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit, label %.critedge

_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.14998, i64 40 ; 3 uses
  %i.y = add nsw <2 x i64> %i.d, splat (i64 1)    ; 2 uses
  %.not77 = icmp eq ptr %i.e, %i.b
  %.not = icmp eq ptr %i.x, %7                    ; 2 uses
  %or.cond = select i1 %.not77, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !238

.critedge:                                        ; preds = %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit, %bb.d, %bb.c, %.lr.ph, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %.sroa.067.1.lcssa = phi ptr [ %.sroa.067.0, %bb.b ], [ %.sroa.067.197, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.067.197, %bb.e ], [ %.sroa.067.197, %.lr.ph ], [ %.sroa.067.197, %bb.c ], [ %.sroa.067.197, %bb.d ], [ %i.e, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ] ; 4 uses
  %.149.lcssa = phi ptr [ %.048, %bb.b ], [ %.14998, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.14998, %bb.e ], [ %.14998, %.lr.ph ], [ %.14998, %bb.c ], [ %.14998, %bb.d ], [ %i.x, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ] ; 4 uses
  %.not.lcssa = phi i1 [ %.not95, %bb.b ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %bb.d ], [ %.not, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ]
  %8 = phi <2 x i64> [ %i.c, %bb.b ], [ %i.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.d, %bb.e ], [ %i.d, %.lr.ph ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.y, %_ZN5boost5redis5resp3eqISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS1_10basic_nodeIT_EESB_.exit ] ; 4 uses
  %9 = icmp eq ptr %.sroa.067.1.lcssa, %i.b
  %or.cond56 = select i1 %9, i1 true, i1 %.not.lcssa
  br i1 %or.cond56, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.z = icmp eq i64 %.0, 0
  br i1 %i.z, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i, %bb.j
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 5 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.54, i64 noundef 42) ; 0 uses
  br i1 %.not.i57, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !11
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !76
  %i.as = or i32 %i.ar, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, i32 noundef %i.as)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %3, i64 noundef %i.at) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %bb.k, %bb.l
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.55, i64 noundef 2) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.aw = icmp samesign ugt i64 %.0, 7
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.56, i64 noundef 4) ; 0 uses
  %.pre122 = load ptr, ptr %5, align 8, !tbaa !39
  br label %.critedge.thread

bb.o:                                             ; preds = %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.57, i64 noundef 2) ; 0 uses
  %i.az = extractelement <2 x i64> %8, i64 0
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.az) ; 2 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.58, i64 noundef 3) ; 0 uses
  %10 = getelementptr inbounds i8, ptr %.sroa.067.1.lcssa, i64 -40 ; 5 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis5resp3lsISt17basic_string_viewIcSt11char_traitsIcEEEERSoS7_RKNS1_10basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %10) ; 2 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.59, i64 noundef 6) ; 0 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis5resp3lsISt17basic_string_viewIcSt11char_traitsIcEEEERSoS7_RKNS1_10basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %.149.lcssa)
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.149.lcssa, i64 40 ; 2 uses
  %i.bh = add nsw <2 x i64> %8, splat (i64 1)     ; 2 uses
  %i.bi = add nuw nsw i64 %.0, 1                  ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %.not78 = icmp eq ptr %10, %i.bj
  br i1 %.not78, label %.critedge.thread, label %bb.b, !llvm.loop !239

.critedge.thread:                                 ; preds = %.critedge, %bb.o, %bb.n
  %11 = phi ptr [ %.pre122, %bb.n ], [ %10, %bb.o ], [ %i.b, %.critedge ]
  %.sroa.067.2 = phi ptr [ %.sroa.067.1.lcssa, %bb.n ], [ %10, %bb.o ], [ %.sroa.067.1.lcssa, %.critedge ]
  %.250 = phi ptr [ %.149.lcssa, %bb.n ], [ %i.bg, %bb.o ], [ %.149.lcssa, %.critedge ]
  %.1 = phi i64 [ %.0, %bb.n ], [ %i.bi, %bb.o ], [ %.0, %.critedge ] ; 3 uses
  %12 = phi <2 x i64> [ %8, %bb.n ], [ %i.bh, %bb.o ], [ %8, %.critedge ] ; 2 uses
  %i.bk = ptrtoint ptr %.sroa.067.2 to i64
  %i.bl = ptrtoint ptr %11 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 40
  %i.bo = extractelement <2 x i64> %12, i64 0
  %i.bp = add nsw i64 %i.bn, %i.bo                ; 2 uses
  %i.bq = ptrtoint ptr %7 to i64
  %i.br = ptrtoint ptr %.250 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 40
  %i.bu = extractelement <2 x i64> %12, i64 1
  %i.bv = add nsw i64 %i.bt, %i.bu                ; 2 uses
  %.not54 = icmp eq i64 %i.bp, %i.bv
  br i1 %.not54, label %bb.x, label %bb.p

bb.p:                                             ; preds = %.critedge.thread
  %i.bw = icmp eq i64 %.1, 0
  br i1 %i.bw, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = load ptr, ptr %0, align 8, !tbaa !11
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %0, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !76
  %i.cd = or i32 %i.cc, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ca, i32 noundef %i.cd)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

bb.s:                                             ; preds = %bb.q
  %i.ce = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ce) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.r, %bb.s
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 6 uses
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.60, i64 noundef 39) ; 0 uses
  br i1 %.not.i57, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !11
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.ch, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !76
  %i.cp = or i32 %i.co, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cm, i32 noundef %i.cp)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.cq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %3, i64 noundef %i.cq) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.t, %bb.u
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.61, i64 noundef 8) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.64, i64 noundef 10) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %.sink152 = phi ptr [ %0, %bb.v ], [ %i.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 ]
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink152, i64 noundef %i.bp) ; 2 uses
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.62, i64 noundef 10) ; 0 uses
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i64 noundef %i.bv)
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.63, i64 noundef 1) ; 0 uses
  %i.cy = add i64 %.1, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge.thread
  %.2 = phi i64 [ %i.cy, %bb.w ], [ %.1, %.critedge.thread ]
  %i.cz = icmp eq i64 %.2, 0                      ; 2 uses
  br i1 %i.cz, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.da = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.z, label %_ZN5boost6detail12test_resultsEv.exit, !prof !40

bb.z:                                             ; preds = %bb.y
  %i.dc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i63 = icmp eq i32 %i.dc, 0
  br i1 %.not.i63, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  %i.dd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.ab:                                            ; preds = %bb.x
  %i.de = load ptr, ptr %0, align 8, !tbaa !11
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %0, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 240
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %bb.ac, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i1.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 67
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dj)
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = tail call noundef signext i8 %i.dq(ptr noundef nonnull align 8 dereferenceable(570) %i.dj, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.ad, %bb.ae
  %.0.i.i.i = phi i8 [ %i.dn, %bb.ad ], [ %i.dr, %bb.ae ]
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) ; 0 uses
  %i.du = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.af, label %_ZN5boost6detail12test_resultsEv.exit65, !prof !40

bb.af:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.dw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i64 = icmp eq i32 %i.dw, 0
  br i1 %.not.i64, label %_ZN5boost6detail12test_resultsEv.exit65, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  %i.dx = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit65

_ZN5boost6detail12test_resultsEv.exit65:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.af, %bb.ag
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !30
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !30
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.aa, %bb.z, %bb.y, %_ZN5boost6detail12test_resultsEv.exit65
  ret i1 %i.cz
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5boost5redis5resp39flat_tree2atEm(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76
  %i.g = or i32 %i.f, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.h) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 16 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.223, i64 noundef 15) ; 0 uses
  %.not.i4 = icmp eq ptr %0, null
  br i1 %.not.i4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %i.s = or i32 %i.r, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.p, i32 noundef %i.s)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %0, i64 noundef %i.t) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.d, %bb.e
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.224, i64 noundef 27) ; 0 uses
end_hunk_0
