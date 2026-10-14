Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_sentinel_resolve_fsm?download=true
inline.NumInlined: 1721
inline.NumDeleted: 398
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis7addressES4_EEbT_PKcS7_S7_iS7_RKT0_RKT1_:bb.a

bb.d:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread18
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !133
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread
  %i.y = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !14
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44
  %i.ae = or i32 %i.ad, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, i32 noundef %i.ae)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread
  %i.af = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.af) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.70, i64 noundef 1) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 13 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.71, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !44
  %i.aq = or i32 %i.ap, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.an, i32 noundef %i.aq)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %0, i64 noundef %i.ar) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h, %bb.i
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.72, i64 noundef 1) ; 0 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.79, i64 noundef 2) ; 0 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.72, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ai, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !44
  %i.bc = or i32 %i.bb, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.az, i32 noundef %i.bc)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.bd = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %1, i64 noundef %i.bd) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.j, %bb.k
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.73, i64 noundef 4) ; 0 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.8, i64 noundef 15) ; 0 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !22
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !24
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.bh, i64 noundef %i.bi) ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bm, i64 noundef %i.bo) ; 6 uses
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.74, i64 noundef 2) ; 0 uses
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.79, i64 noundef 2) ; 0 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.75, i64 noundef 2) ; 0 uses
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.8, i64 noundef 15) ; 0 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.bv, i64 noundef %i.bw) ; 2 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !24
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %i.ca, i64 noundef %i.cc) ; 9 uses
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.76, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !44
  %i.cm = or i32 %i.cl, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cj, i32 noundef %i.cm)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.cn = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull %4, i64 noundef %i.cn) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.l, %bb.m
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cd, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !140 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !146
  %.not.i1.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 67
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cv)
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call noundef signext i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(570) %i.cv, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.cz, %bb.o ], [ %i.dd, %bb.p ]
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext %.0.i.i.i)
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de) ; 0 uses
  %i.dg = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !130

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.di = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i16 = icmp eq i32 %i.di, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !133
  %i.dj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !147
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !147
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.e, %bb.d, %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread18, %_ZN5boost6detail12test_resultsEv.exit17
  %i.dm = phi i1 [ false, %_ZN5boost6detail12test_resultsEv.exit17 ], [ true, %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread18 ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %i.dm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail16test_all_eq_implISoN9__gnu_cxx17__normal_iteratorIPNS_5redis7addressESt6vectorIS5_SaIS5_EEEEPKS5_EEbRT_PKciSG_T0_SH_T1_SI_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %.not.i59 = icmp eq ptr %3, null                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.sroa.0.0 = phi ptr [ %4, %bb.a ], [ %i.ca, %bb.l ] ; 3 uses
  %.045 = phi i64 [ 0, %bb.a ], [ %i.cd, %bb.l ]  ; 6 uses
  %.044 = phi ptr [ %6, %bb.a ], [ %i.cb, %bb.l ] ; 3 uses
  %i.a = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cc, %bb.l ] ; 2 uses
  %.not8198 = icmp eq ptr %.sroa.0.0, %5
  %.not99 = icmp eq ptr %.044, %7
  %or.cond100 = select i1 %.not8198, i1 true, i1 %.not99
  br i1 %or.cond100, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80
  %.1104 = phi ptr [ %i.x, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.044, %bb.b ] ; 11 uses
  %.sroa.0.1101 = phi ptr [ %i.w, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.sroa.0.0, %bb.b ] ; 11 uses
  %i.b = phi <2 x i64> [ %i.y, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %i.a, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.1104, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.c
  %i.i = load ptr, ptr %.1104, align 8, !tbaa !22
  %i.j = load ptr, ptr %.sroa.0.1101, align 8, !tbaa !22
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.1104, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.1104, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit

_ZN5boost5rediseqERKNS0_7addressES3_.exit:        ; preds = %bb.d
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !22
  %bcmp.i4.i = tail call i32 @bcmp(ptr %i.u, ptr %i.t, i64 %i.o)
  %i.v = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.v, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80: ; preds = %bb.d, %_ZN5boost5rediseqERKNS0_7addressES3_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.1104, i64 64 ; 3 uses
  %i.y = add nsw <2 x i64> %i.b, splat (i64 1)    ; 2 uses
  %.not81 = icmp eq ptr %i.w, %5
  %.not = icmp eq ptr %i.x, %7
  %or.cond = select i1 %.not81, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !289

_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZN5boost5rediseqERKNS0_7addressES3_.exit
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %.1104, i64 8
  %i.z = icmp eq i64 %.045, 0
  br i1 %i.z, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.70, i64 noundef 1) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 5 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.80, i64 noundef 42) ; 0 uses
  br i1 %.not.i59, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !14
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !44
  %i.as = or i32 %i.ar, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, i32 noundef %i.as)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %3, i64 noundef %i.at) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.h, %bb.i
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.81, i64 noundef 2) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread
  %i.aw = icmp samesign ugt i64 %.045, 7
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.82, i64 noundef 4) ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.83, i64 noundef 2) ; 0 uses
  %i.az = extractelement <2 x i64> %i.b, i64 0
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.az) ; 3 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.84, i64 noundef 3) ; 0 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.8, i64 noundef 15) ; 0 uses
  %i.bd = load ptr, ptr %.sroa.0.1101, align 8, !tbaa !22
  %i.be = load i64, ptr %8, align 8, !tbaa !24
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bd, i64 noundef %i.be) ; 2 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bi, i64 noundef %i.bk) ; 4 uses
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.85, i64 noundef 6) ; 0 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.8, i64 noundef 15) ; 0 uses
  %i.bp = load ptr, ptr %.1104, align 8, !tbaa !22
  %i.bq = load i64, ptr %9, align 8, !tbaa !24
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bp, i64 noundef %i.bq) ; 2 uses
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1104, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %.1104, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bu, i64 noundef %i.bw) ; 2 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1104, i64 64 ; 2 uses
  %i.cc = add nsw <2 x i64> %i.b, splat (i64 1)   ; 2 uses
  %i.cd = add nuw nsw i64 %.045, 1                ; 2 uses
  %.not82 = icmp eq ptr %i.ca, %5
  br i1 %.not82, label %.critedge, label %bb.b, !llvm.loop !290

.critedge:                                        ; preds = %bb.l, %bb.b, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80, %bb.k
  %.sroa.0.2 = phi ptr [ %.sroa.0.1101, %bb.k ], [ %i.w, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.sroa.0.0, %bb.b ], [ %5, %bb.l ]
  %.146 = phi i64 [ %.045, %bb.k ], [ %.045, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.045, %bb.b ], [ %i.cd, %bb.l ] ; 3 uses
  %.2 = phi ptr [ %.1104, %bb.k ], [ %i.x, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.044, %bb.b ], [ %i.cb, %bb.l ]
  %10 = phi <2 x i64> [ %i.b, %bb.k ], [ %i.y, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %i.a, %bb.b ], [ %i.cc, %bb.l ] ; 2 uses
  %i.ce = ptrtoint ptr %5 to i64
  %i.cf = ptrtoint ptr %.sroa.0.2 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 6
  %i.ci = extractelement <2 x i64> %10, i64 0
  %i.cj = add nsw i64 %i.ch, %i.ci                ; 2 uses
  %i.ck = ptrtoint ptr %7 to i64
  %i.cl = ptrtoint ptr %.2 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 6
  %i.co = extractelement <2 x i64> %10, i64 1
  %i.cp = add nsw i64 %i.cn, %i.co                ; 2 uses
  %.not56 = icmp eq i64 %i.cj, %i.cp
  br i1 %.not56, label %bb.u, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.cq = icmp eq i64 %.146, 0
  br i1 %i.cq, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cr = load ptr, ptr %0, align 8, !tbaa !14
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %0, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !44
  %i.cx = or i32 %i.cw, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cu, i32 noundef %i.cx)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

bb.p:                                             ; preds = %bb.n
  %i.cy = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.cy) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.o, %bb.p
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.70, i64 noundef 1) ; 0 uses
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 6 uses
  %i.dc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.86, i64 noundef 39) ; 0 uses
  br i1 %.not.i59, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !14
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !44
  %i.dj = or i32 %i.di, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dg, i32 noundef %i.dj)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.dk = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %3, i64 noundef %i.dk) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.q, %bb.r
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.87, i64 noundef 8) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.90, i64 noundef 10) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %.sink154 = phi ptr [ %0, %bb.s ], [ %i.db, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 ]
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink154, i64 noundef %i.cj) ; 2 uses
  %i.dp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.88, i64 noundef 10) ; 0 uses
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, i64 noundef %i.cp)
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.89, i64 noundef 1) ; 0 uses
  %i.ds = add i64 %.146, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge
  %.247 = phi i64 [ %i.ds, %bb.t ], [ %.146, %.critedge ]
  %i.dt = icmp eq i64 %.247, 0                    ; 2 uses
  br i1 %i.dt, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.du = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.w, label %_ZN5boost6detail12test_resultsEv.exit, !prof !130

bb.w:                                             ; preds = %bb.v
  %i.dw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i65 = icmp eq i32 %i.dw, 0
  br i1 %.not.i65, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !133
  %i.dx = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.y:                                             ; preds = %bb.u
  %i.dy = load ptr, ptr %0, align 8, !tbaa !14
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr %0, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 240
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !140 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !146
  %.not.i1.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 67
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ed)
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call noundef signext i8 %i.ek(ptr noundef nonnull align 8 dereferenceable(570) %i.ed, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i = phi i8 [ %i.eh, %bb.aa ], [ %i.el, %bb.ab ]
  %i.em = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.em) ; 0 uses
  %i.eo = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.ac, label %_ZN5boost6detail12test_resultsEv.exit67, !prof !130

bb.ac:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.eq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i66 = icmp eq i32 %i.eq, 0
  br i1 %.not.i66, label %_ZN5boost6detail12test_resultsEv.exit67, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !133
  %i.er = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit67

_ZN5boost6detail12test_resultsEv.exit67:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.ac, %bb.ad
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !147
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !147
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.x, %bb.w, %bb.v, %_ZN5boost6detail12test_resultsEv.exit67
  ret i1 %i.dt
}

declare void @_ZNK5boost5redis6detail11log_fixture9check_logESt16initializer_listIKNS1_11log_messageEENS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef byval(%"struct.boost::source_location") align 8) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_17fixtureD2Ev(ptr noundef nonnull align 8 dead_on_return(1512) dereferenceable(1512) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5boost5redis6detail16connection_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(1472) dereferenceable(1472) %i.a) #26
  %i.b = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5boost5redis6detail11log_fixtureD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZN5boost5redis6detail11log_fixtureD2Ev.exit
end_hunk_0
