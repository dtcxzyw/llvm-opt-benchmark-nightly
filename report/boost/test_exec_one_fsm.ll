Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_exec_one_fsm?download=true
inline.NumInlined: 783
inline.NumDeleted: 266
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis6detail15exec_one_actionENS4_20exec_one_action_typeEEEbT_PKcS9_S9_iS9_RKT0_RKT1_:bb.a
  %i.m = icmp eq i64 %i.l, 0
  %i.n = icmp eq ptr %.0.i18.i.i.i, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i18.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, %i.l
  %i.r = select i1 %i.m, i1 %i.n, i1 %i.q
  br i1 %i.r, label %bb.c, label %_ZNK5boost6detail10lw_test_eqclINS_5redis6detail15exec_one_actionENS4_20exec_one_action_typeEEEbRKT_RKT0_.exit.thread

bb.c:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINS_5redis6detail15exec_one_actionENS4_20exec_one_action_typeEEEbRKT_RKT0_.exit
  %i.s = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN5boost6detail12test_resultsEv.exit, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !72
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZNK5boost6detail10lw_test_eqclINS_5redis6detail15exec_one_actionENS4_20exec_one_action_typeEEEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK5boost6detail10lw_test_eqclINS_5redis6detail15exec_one_actionENS4_20exec_one_action_typeEEEbRKT_RKT0_.exit
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINS_5redis6detail15exec_one_actionENS4_20exec_one_action_typeEEEbRKT_RKT0_.exit.thread
  %i.w = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !12
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !46
  %i.ac = or i32 %i.ab, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.z, i32 noundef %i.ac)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINS_5redis6detail15exec_one_actionENS4_20exec_one_action_typeEEEbRKT_RKT0_.exit.thread
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.ad) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 24 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.40, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46
  %i.ao = or i32 %i.an, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i32 noundef %i.ao)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %0, i64 noundef %i.ap) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h, %bb.i
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.48, i64 noundef 2) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.ag, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !46
  %i.ba = or i32 %i.az, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ax, i32 noundef %i.ba)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.bb = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %1, i64 noundef %i.bb) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.j, %bb.k
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.42, i64 noundef 4) ; 0 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis6detaillsERSoRKNS1_15exec_one_actionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.43, i64 noundef 2) ; 0 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.48, i64 noundef 2) ; 0 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.44, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bi = load i32, ptr %6, align 4, !tbaa !50
  store i32 %i.bi, ptr %7, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis6detaillsERSoRKNS1_15exec_one_actionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 0 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.45, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.ag, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !46
  %i.bs = or i32 %i.br, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bp, i32 noundef %i.bs)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #28
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %4, i64 noundef %i.bt) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.l, %bb.m
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  %i.bw = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.ag, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !79 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !85
  %.not.i1.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 67
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cb)
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef signext i8 %i.ci(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.cf, %bb.o ], [ %i.cj, %bb.p ]
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i8 noundef signext %.0.i.i.i)
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.cm = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !68

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.co = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  %.not.i16 = icmp eq i32 %i.co, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !72
  %i.cp = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !67
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !67
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.e, %bb.d, %bb.c, %_ZN5boost6detail12test_resultsEv.exit17
  %i.cs = phi i1 [ false, %_ZN5boost6detail12test_resultsEv.exit17 ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %i.cs
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN5boost6detail16test_all_eq_implISoN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113adapter_eventESt6vectorIS5_SaIS5_EEEEPKS5_EEbRT_PKciSG_T0_SH_T1_SI_(i32 noundef range(i32 139, 203) %0, ptr noundef %1, ptr %2, ptr %3, ptr noundef nonnull %4, ptr noundef nonnull %5) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %.sroa.0.0 = phi ptr [ %2, %bb.a ], [ %i.bh, %bb.m ] ; 3 uses
  %.045 = phi i64 [ 0, %bb.a ], [ %i.bk, %bb.m ]  ; 5 uses
  %.044 = phi ptr [ %4, %bb.a ], [ %i.bi, %bb.m ] ; 3 uses
  %i.a = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.bj, %bb.m ] ; 2 uses
  %.not724 = icmp eq ptr %.sroa.0.0, %3
  %.not25 = icmp eq ptr %.044, %5                 ; 2 uses
  %or.cond26 = select i1 %.not724, i1 true, i1 %.not25
  br i1 %or.cond26, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6
  %.130 = phi ptr [ %i.ag, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6 ], [ %.044, %bb.b ] ; 13 uses
  %.sroa.0.127 = phi ptr [ %i.af, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6 ], [ %.sroa.0.0, %bb.b ] ; 13 uses
  %i.b = phi <2 x i64> [ %i.ah, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6 ], [ %i.a, %bb.b ] ; 7 uses
  %i.c = load i32, ptr %.sroa.0.127, align 8, !tbaa !54
  %i.d = load i32, ptr %.130, align 8, !tbaa !54
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.127, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.130, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.127, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %.130, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.127, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %.130, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.f, align 8, !tbaa !55
  %i.s = load i32, ptr %i.g, align 8, !tbaa !55
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.127, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.130, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.127, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.130, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !22
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6, label %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit

_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit: ; preds = %bb.g
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !20
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.ac, i64 %i.x)
  %i.ae = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ae, label %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6, label %.critedge

_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6: ; preds = %bb.g, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.127, i64 64 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.130, i64 64 ; 3 uses
  %i.ah = add nsw <2 x i64> %i.b, splat (i64 1)   ; 2 uses
  %.not7 = icmp eq ptr %i.af, %3
  %.not = icmp eq ptr %i.ag, %5                   ; 2 uses
  %or.cond = select i1 %.not7, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !165

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6, %.lr.ph, %bb.e, %bb.d, %bb.c, %bb.f, %bb.b
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0, %bb.b ], [ %.sroa.0.127, %bb.f ], [ %.sroa.0.127, %bb.c ], [ %.sroa.0.127, %bb.d ], [ %.sroa.0.127, %bb.e ], [ %.sroa.0.127, %.lr.ph ], [ %i.af, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6 ], [ %.sroa.0.127, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit ] ; 5 uses
  %.1.lcssa = phi ptr [ %.044, %bb.b ], [ %.130, %bb.f ], [ %.130, %bb.c ], [ %.130, %bb.d ], [ %.130, %bb.e ], [ %.130, %.lr.ph ], [ %i.ag, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6 ], [ %.130, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit ] ; 4 uses
  %.not.lcssa = phi i1 [ %.not25, %bb.b ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %.lr.ph ], [ %.not, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6 ], [ false, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit ]
  %6 = phi <2 x i64> [ %i.a, %bb.b ], [ %i.b, %bb.f ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %.lr.ph ], [ %i.ah, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread6 ], [ %i.b, %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit ] ; 4 uses
  %7 = icmp eq ptr %.sroa.0.1.lcssa, %3
  %or.cond58 = select i1 %7, i1 true, i1 %.not.lcssa
  br i1 %or.cond58, label %.critedge.a, label %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread

_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread: ; preds = %.critedge
  %i.ai = icmp eq i64 %.045, 0
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.30, i64 noundef 65) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %0) ; 5 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.52, i64 noundef 42) ; 0 uses
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !46
  %i.at = or i32 %i.as, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aq, i32 noundef %i.at)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.j:                                             ; preds = %bb.h
  %i.au = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %1, i64 noundef %i.au) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i, %bb.j
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.53, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_1eqERKNS_13adapter_eventES2_.exit.thread
  %i.ax = icmp samesign ugt i64 %.045, 7
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.54, i64 noundef 4) ; 0 uses
  br label %.critedge.a

bb.m:                                             ; preds = %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.55, i64 noundef 2) ; 0 uses
  %i.ba = extractelement <2 x i64> %6, i64 0
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.ba) ; 2 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.56, i64 noundef 3) ; 0 uses
  %i.bd = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN12_GLOBAL__N_1lsERSoRKNS_13adapter_eventE(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1.lcssa) ; 2 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.57, i64 noundef 6) ; 0 uses
  %i.bf = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN12_GLOBAL__N_1lsERSoRKNS_13adapter_eventE(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %.1.lcssa)
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 64 ; 2 uses
  %i.bj = add nsw <2 x i64> %6, splat (i64 1)     ; 2 uses
  %i.bk = add nuw nsw i64 %.045, 1                ; 2 uses
  %.not8 = icmp eq ptr %i.bh, %3
  br i1 %.not8, label %.critedge.a, label %bb.b, !llvm.loop !166

.critedge.a:                                      ; preds = %.critedge, %bb.m, %bb.l
  %.sroa.0.2 = phi ptr [ %.sroa.0.1.lcssa, %bb.l ], [ %3, %bb.m ], [ %.sroa.0.1.lcssa, %.critedge ]
  %.146 = phi i64 [ %.045, %bb.l ], [ %i.bk, %bb.m ], [ %.045, %.critedge ] ; 3 uses
  %.2 = phi ptr [ %.1.lcssa, %bb.l ], [ %i.bi, %bb.m ], [ %.1.lcssa, %.critedge ]
  %8 = phi <2 x i64> [ %6, %bb.l ], [ %i.bj, %bb.m ], [ %6, %.critedge ] ; 2 uses
  %i.bl = ptrtoint ptr %3 to i64
  %i.bm = ptrtoint ptr %.sroa.0.2 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 6
  %i.bp = extractelement <2 x i64> %8, i64 0
  %i.bq = add nsw i64 %i.bo, %i.bp                ; 2 uses
  %i.br = ptrtoint ptr %5 to i64
  %i.bs = ptrtoint ptr %.2 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 6
  %i.bv = extractelement <2 x i64> %8, i64 1
  %i.bw = add nsw i64 %i.bu, %i.bv                ; 2 uses
  %.not56 = icmp eq i64 %i.bq, %i.bw
  br i1 %.not56, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.critedge.a
  %i.bx = icmp eq i64 %.146, 0
  br i1 %i.bx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.30, i64 noundef 65) ; 0 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %0) ; 6 uses
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.58, i64 noundef 39) ; 0 uses
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !12
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !46
  %i.ci = or i32 %i.ch, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69

bb.q:                                             ; preds = %bb.o
  %i.cj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull %1, i64 noundef %i.cj) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.p, %bb.q
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.59, i64 noundef 8) ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.62, i64 noundef 10) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %_ZSt4cerr.sink = phi ptr [ @_ZSt4cerr, %bb.r ], [ %i.ca, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 ]
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cerr.sink, i64 noundef %i.bq) ; 2 uses
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.60, i64 noundef 10) ; 0 uses
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i64 noundef %i.bw)
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.61, i64 noundef 1) ; 0 uses
  %i.cr = add i64 %.146, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.a
  %.247 = phi i64 [ %i.cr, %bb.s ], [ %.146, %.critedge.a ]
  %i.cs = icmp eq i64 %.247, 0
  br i1 %i.cs, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ct = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %_ZN5boost6detail12test_resultsEv.exit, !prof !68

bb.v:                                             ; preds = %bb.u
  %i.cv = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  %.not.i70 = icmp eq i32 %i.cv, 0
  br i1 %.not.i70, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !72
  %i.cw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.x:                                             ; preds = %bb.t
  %i.cx = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !12
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 240
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !79 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !85
  %.not.i1.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i1.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 67
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !21
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dc)
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef signext i8 %i.dj(ptr noundef nonnull align 8 dereferenceable(570) %i.dc, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.z, %bb.aa
  %.0.i.i.i = phi i8 [ %i.dg, %bb.z ], [ %i.dk, %bb.aa ]
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl) ; 0 uses
  %i.dn = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.ab, label %_ZN5boost6detail12test_resultsEv.exit72, !prof !68

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.dp = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  %.not.i71 = icmp eq i32 %i.dp, 0
  br i1 %.not.i71, label %_ZN5boost6detail12test_resultsEv.exit72, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !72
  %i.dq = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #28
  br label %_ZN5boost6detail12test_resultsEv.exit72

_ZN5boost6detail12test_resultsEv.exit72:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.ab, %bb.ac
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !67
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !67
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.w, %bb.v, %bb.u, %_ZN5boost6detail12test_resultsEv.exit72
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5redis6detail11multiplexerD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost5redis11any_adapterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN5boost5redis11any_adapterD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZN5boost5redis11any_adapterD2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt5dequeISt10shared_ptrIN5boost5redis6detail11multiplexer4elemEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost5redis11any_adapterD2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5boost5redis11any_adapterD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5redis6detail11read_bufferD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #31
  br label %_ZN5boost5redis6detail11read_bufferD2Ev.exit

_ZN5boost5redis6detail11read_bufferD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN12_GLOBAL__N_113adapter_eventESaIS1_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_113adapter_eventES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_113adapter_eventEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN12_GLOBAL__N_113adapter_eventEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
end_hunk_0
