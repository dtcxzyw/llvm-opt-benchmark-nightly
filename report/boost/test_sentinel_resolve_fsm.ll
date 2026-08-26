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
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !156
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !158
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINS_5redis7addressES4_EEbRKT_RKT0_.exit.thread
  %i.y = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !32
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
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !32
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
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ai, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !32
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
  %i.bh = load ptr, ptr %5, align 8, !tbaa !17
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.bh, i64 noundef %i.bi) ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bm, i64 noundef %i.bo) ; 6 uses
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.74, i64 noundef 2) ; 0 uses
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.79, i64 noundef 2) ; 0 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.75, i64 noundef 2) ; 0 uses
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.8, i64 noundef 15) ; 0 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !17
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !20
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.bv, i64 noundef %i.bw) ; 2 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %i.ca, i64 noundef %i.cc) ; 9 uses
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.76, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !9
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !32
  %i.cm = or i32 %i.cl, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cj, i32 noundef %i.cm)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.cn = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull %4, i64 noundef %i.cn) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.l, %bb.m
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !9
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cd, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !159 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !166
  %.not.i1.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 67
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cv)
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call noundef signext i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(570) %i.cv, i8 noundef signext 10), !inline_history !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.cz, %bb.o ], [ %i.dd, %bb.p ]
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext %.0.i.i.i)
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de) ; 0 uses
  %i.dg = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !155

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.di = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i16 = icmp eq i32 %i.di, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !156
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !158
  %i.dj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !173
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !173
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
  %.sroa.0.0 = phi ptr [ %4, %bb.a ], [ %i.by, %bb.l ] ; 3 uses
  %.045.a = phi i64 [ 0, %bb.a ], [ %i.ca, %bb.l ] ; 6 uses
  %.044 = phi ptr [ %6, %bb.a ], [ %i.bz, %bb.l ] ; 3 uses
  %8 = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %12, %bb.l ] ; 2 uses
  %.not8198 = icmp eq ptr %.sroa.0.0, %5
  %.not99 = icmp eq ptr %.044, %7
  %or.cond100 = select i1 %.not8198, i1 true, i1 %.not99
  br i1 %or.cond100, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80
  %.1104 = phi ptr [ %i.v, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.044, %bb.b ] ; 11 uses
  %.sroa.0.1101 = phi ptr [ %i.u, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.sroa.0.0, %bb.b ] ; 11 uses
  %9 = phi <2 x i64> [ %10, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %8, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.1104, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.c
  %i.g = load ptr, ptr %.1104, align 8, !tbaa !17
  %i.h = load ptr, ptr %.sroa.0.1101, align 8, !tbaa !17
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.1104, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.1104, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit

_ZN5boost5rediseqERKNS0_7addressES3_.exit:        ; preds = %bb.d
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !17
  %bcmp.i4.i = tail call i32 @bcmp(ptr %i.s, ptr %i.r, i64 %i.m)
  %i.t = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.t, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80, label %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread

_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80: ; preds = %bb.d, %_ZN5boost5rediseqERKNS0_7addressES3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 64 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1104, i64 64 ; 3 uses
  %10 = add nsw <2 x i64> %9, splat (i64 1)       ; 2 uses
  %.not81 = icmp eq ptr %i.u, %5
  %.not = icmp eq ptr %i.v, %7
  %or.cond = select i1 %.not81, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !278

_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZN5boost5rediseqERKNS0_7addressES3_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.1104, i64 8
  %i.y = icmp eq i64 %.045.a, 0
  br i1 %i.y, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !9
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = or i32 %i.ae, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, i32 noundef %i.af)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ag) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.70, i64 noundef 1) ; 0 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 5 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.80, i64 noundef 42) ; 0 uses
  br i1 %.not.i59, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !9
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.ar = or i32 %i.aq, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef %i.ar)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %3, i64 noundef %i.as) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.h, %bb.i
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.81, i64 noundef 2) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread
  %i.av = icmp samesign ugt i64 %.045.a, 7
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.82, i64 noundef 4) ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.83, i64 noundef 2) ; 0 uses
  %11 = extractelement <2 x i64> %9, i64 0
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %11) ; 3 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.84, i64 noundef 3) ; 0 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.8, i64 noundef 15) ; 0 uses
  %i.bb = load ptr, ptr %.sroa.0.1101, align 8, !tbaa !17
  %i.bc = load i64, ptr %i.w, align 8, !tbaa !20
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.bb, i64 noundef %i.bc) ; 2 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bg, i64 noundef %i.bi) ; 4 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.85, i64 noundef 6) ; 0 uses
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.8, i64 noundef 15) ; 0 uses
  %i.bn = load ptr, ptr %.1104, align 8, !tbaa !17
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !20
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bn, i64 noundef %i.bo) ; 2 uses
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1104, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.1104, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !20
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.bs, i64 noundef %i.bu) ; 2 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1104, i64 64 ; 2 uses
  %12 = add nsw <2 x i64> %9, splat (i64 1)       ; 2 uses
  %i.ca = add nuw nsw i64 %.045.a, 1              ; 2 uses
  %.not82 = icmp eq ptr %i.by, %5
  br i1 %.not82, label %.critedge, label %bb.b, !llvm.loop !279

.critedge:                                        ; preds = %bb.l, %bb.b, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80, %bb.k
  %.sroa.0.2 = phi ptr [ %.sroa.0.1101, %bb.k ], [ %i.u, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.sroa.0.0, %bb.b ], [ %5, %bb.l ]
  %.146 = phi i64 [ %.045.a, %bb.k ], [ %.045.a, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.045.a, %bb.b ], [ %i.ca, %bb.l ] ; 3 uses
  %.2 = phi ptr [ %.1104, %bb.k ], [ %i.v, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %.044, %bb.b ], [ %i.bz, %bb.l ]
  %13 = phi <2 x i64> [ %9, %bb.k ], [ %10, %_ZN5boost5rediseqERKNS0_7addressES3_.exit.thread80 ], [ %8, %bb.b ], [ %12, %bb.l ] ; 2 uses
  %i.cb = ptrtoint ptr %5 to i64
  %i.cc = ptrtoint ptr %.sroa.0.2 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 6
  %14 = extractelement <2 x i64> %13, i64 0
  %i.cf = add nsw i64 %i.ce, %14                  ; 2 uses
  %i.cg = ptrtoint ptr %7 to i64
  %i.ch = ptrtoint ptr %.2 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 6
  %15 = extractelement <2 x i64> %13, i64 1
  %i.ck = add nsw i64 %i.cj, %15                  ; 2 uses
  %.not56 = icmp eq i64 %i.cf, %i.ck
  br i1 %.not56, label %bb.u, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.cl = icmp eq i64 %.146, 0
  br i1 %i.cl, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = load ptr, ptr %0, align 8, !tbaa !9
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %0, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !32
  %i.cs = or i32 %i.cr, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cp, i32 noundef %i.cs)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

bb.p:                                             ; preds = %bb.n
  %i.ct = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ct) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.o, %bb.p
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.70, i64 noundef 1) ; 0 uses
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 6 uses
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.86, i64 noundef 39) ; 0 uses
  br i1 %.not.i59, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !9
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !32
  %i.de = or i32 %i.dd, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.db, i32 noundef %i.de)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.df = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %3, i64 noundef %i.df) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.q, %bb.r
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.87, i64 noundef 8) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.90, i64 noundef 10) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %.sink154 = phi ptr [ %0, %bb.s ], [ %i.cw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 ]
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink154, i64 noundef %i.cf) ; 2 uses
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.88, i64 noundef 10) ; 0 uses
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, i64 noundef %i.ck)
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.89, i64 noundef 1) ; 0 uses
  %i.dn = add i64 %.146, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge
  %.247.a = phi i64 [ %i.dn, %bb.t ], [ %.146, %.critedge ]
  %i.do = icmp eq i64 %.247.a, 0                  ; 2 uses
  br i1 %i.do, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dp = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.w, label %_ZN5boost6detail12test_resultsEv.exit, !prof !155

bb.w:                                             ; preds = %bb.v
  %i.dr = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i65 = icmp eq i32 %i.dr, 0
  br i1 %.not.i65, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !156
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !158
  %i.ds = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.y:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr %0, align 8, !tbaa !9
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %0, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !159 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !166
  %.not.i1.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 67
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dy)
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = tail call noundef signext i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(570) %i.dy, i8 noundef signext 10), !inline_history !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i = phi i8 [ %i.ec, %bb.aa ], [ %i.eg, %bb.ab ]
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh) ; 0 uses
  %i.ej = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.ac, label %_ZN5boost6detail12test_resultsEv.exit67, !prof !155

bb.ac:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.el = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i66 = icmp eq i32 %i.el, 0
  br i1 %.not.i66, label %_ZN5boost6detail12test_resultsEv.exit67, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !156
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !158
  %i.em = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit67

_ZN5boost6detail12test_resultsEv.exit67:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.ac, %bb.ad
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !173
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !173
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.x, %bb.w, %bb.v, %_ZN5boost6detail12test_resultsEv.exit67
  ret i1 %i.do
}

declare void @_ZNK5boost5redis6detail11log_fixture9check_logESt16initializer_listIKNS1_11log_messageEENS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef byval(%"struct.boost::source_location") align 8) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_17fixtureD2Ev(ptr noundef nonnull align 8 dead_on_return(1512) dereferenceable(1512) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5boost5redis6detail16connection_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(1472) dereferenceable(1472) %i.a) #26
  %i.b = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5boost5redis6detail11log_messageEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5boost5redis6detail11log_fixtureD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5boost5redis6detail11log_messageES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZN5boost5redis6detail11log_fixtureD2Ev.exit

end_hunk_0
