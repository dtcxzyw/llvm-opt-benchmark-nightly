Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/functions_for?download=true
inline.NumInlined: 1491
inline.NumDeleted: 594
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqE17comparable_structS3_EEbT_PKcS6_S6_iS6_RKT0_RKT1_:bb.a
bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !56
  %i.au = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZNK5boost6detail10lw_test_eqclI17comparable_structS3_EEbRKT_RKT0_.exit.thread: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %_ZNK5boost6detail10lw_test_eqclI17comparable_structS3_EEbRKT_RKT0_.exit
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclI17comparable_structS3_EEbRKT_RKT0_.exit.thread
  %i.av = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !46
  %i.bb = or i32 %i.ba, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, i32 noundef %i.bb)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.m:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclI17comparable_structS3_EEbRKT_RKT0_.exit.thread
  %i.bc = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.bc) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.l, %bb.m
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.23, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !46
  %i.bn = or i32 %i.bm, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bk, i32 noundef %i.bn)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bo = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %0, i64 noundef %i.bo) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.n, %bb.o
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.24, i64 noundef 1) ; 0 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.24, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bf, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !46
  %i.bz = or i32 %i.by, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bw, i32 noundef %i.bz)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ca = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %1, i64 noundef %i.ca) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.p, %bb.q
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.25, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %5, ptr %8, align 8
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost3pfr6detaillsIcSt11char_traitsIcE17comparable_structEERSt13basic_ostreamIT_T0_ESA_ONS1_14io_fields_implIRKT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.26, i64 noundef 2) ; 0 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.27, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %6, ptr %7, align 8
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost3pfr6detaillsIcSt11char_traitsIcE17comparable_structEERSt13basic_ostreamIT_T0_ESA_ONS1_14io_fields_implIRKT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.28, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !20
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.ch, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !46
  %i.cp = or i32 %i.co, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cm, i32 noundef %i.cp)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.cq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %4, i64 noundef %i.cq) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.r, %bb.s
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !20
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %i.ch, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !43
  %.not.i1.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 67
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cy)
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef signext i8 %i.df(ptr noundef nonnull align 8 dereferenceable(570) %i.cy, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.u, %bb.v
  %.0.i.i.i = phi i8 [ %i.dc, %bb.u ], [ %i.dg, %bb.v ]
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i8 noundef signext %.0.i.i.i)
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh) ; 0 uses
  %i.dj = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.w, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !53

bb.w:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.dl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  %.not.i16 = icmp eq i32 %i.dl, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !56
  %i.dm = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.w, %bb.x
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !12
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !12
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.k, %bb.j, %bb.i, %_ZN5boost6detail12test_resultsEv.exit17
  %i.dp = phi i1 [ false, %_ZN5boost6detail12test_resultsEv.exit17 ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ]
  ret i1 %i.dp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost3pfr6detaillsIcSt11char_traitsIcE17comparable_structEERSt13basic_ostreamIT_T0_ESA_ONS1_14io_fields_implIRKT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"struct.boost::pfr::detail::sequence_tuple::tuple", align 8 ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !174, !nonnull !18, !align !87 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 123, ptr %i.b, align 1, !tbaa !44
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 123) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, <4 x i64> <i64 12, i64 16, i64 20, i64 24>
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.c, <4 x i64> <i64 0, i64 4, i64 6, i64 8>
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store <4 x ptr> %3, ptr %2, align 8, !tbaa !89, !alias.scope !175
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x ptr> %i.l, ptr %i.p, align 8, !tbaa !60, !alias.scope !175
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.m, ptr %i.q, align 8, !tbaa !60, !alias.scope !175
  %i.r = load i32, ptr %i.c, align 4, !tbaa !12
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.r) ; 0 uses
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 2) ; 0 uses
  %i.u = load i16, ptr %4, align 4, !tbaa !14
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef signext %i.u) ; 0 uses
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 2) ; 0 uses
  %i.x = load i8, ptr %i.o, align 2, !tbaa !16, !range !17, !noundef !18
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %i.y) ; 0 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 2) ; 0 uses
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !12
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ab) ; 0 uses
  call void @_ZN5boost3pfr6detail10print_implILm4ELm9EE5printISoNS1_14sequence_tuple5tupleIJRKiRKsRKbS8_S8_S8_S8_S8_S8_EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1, !tbaa !44
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %.not.i5 = icmp eq i64 %i.ai, 0
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 125) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7: ; preds = %bb.d, %bb.e
  %.0.i6 = phi ptr [ %i.aj, %bb.d ], [ %0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.0.i6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost3pfr6detailrsIcSt11char_traitsIcE17comparable_structEERSt13basic_istreamIT_T0_ESA_ONS1_14io_fields_implIRT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"struct.boost::pfr::detail::sequence_tuple::tuple.10", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !183, !nonnull !18, !align !87 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  store i32 0, ptr %i.g, align 4, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.j)
  %i.k = load ptr, ptr %0, align 8, !tbaa !20
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !59
  store i32 0, ptr %i.o, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !44
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  %i.r = load i8, ptr %i.a, align 1, !tbaa !44
  %.not = icmp eq i8 %i.r, 123
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !20
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !46
  %i.y = or i32 %i.x, 4
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.y)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, <4 x i64> <i64 12, i64 16, i64 20, i64 24>
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, <4 x i64> <i64 0, i64 4, i64 6, i64 8>
  store <4 x ptr> %i.aa, ptr %2, align 8, !tbaa !89, !alias.scope !184
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x ptr> %i.z, ptr %i.ab, align 8, !tbaa !60, !alias.scope !184
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %3, ptr %i.ac, align 8, !tbaa !60, !alias.scope !184
  %i.ad = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @_ZN5boost3pfr6detail9read_implILm1ELm9EE4readISiNS1_14sequence_tuple5tupleIJRiRsRbS7_S7_S7_S7_S7_S7_EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  %i.af = load i8, ptr %i.a, align 1, !tbaa !44
  %.not14 = icmp eq i8 %i.af, 125
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.am = or i32 %i.al, 4
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aj, i32 noundef %i.am)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = load ptr, ptr %0, align 8, !tbaa !20
  %i.ao = getelementptr i8, ptr %i.an, i64 -24    ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.p, ptr %i.ar, align 8, !tbaa !59
  %i.as = load i64, ptr %i.ao, align 8
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i32 %i.h, ptr %i.au, align 4, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !46
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3setIN3foo7testingESt4lessIvESaIS1_EEC2ESt16initializer_listIS1_ERKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !82
  %.idx = shl nuw nsw i64 %2, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE22_M_insert_range_uniqueIPKS1_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESC_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE17_M_insert_unique_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i
  %.08.i = phi ptr [ %i.ag, %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE17_M_insert_unique_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS1_ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(8) %.08.i)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 6 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE17_M_insert_unique_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = extractvalue { ptr, ptr } %i.g, 0
  %.not.i.i.i = icmp ne ptr %i.i, null
  %i.j = icmp eq ptr %i.h, %i.a
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond.i.i.i, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 33
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.p = load i8, ptr %.08.i, align 1, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.q = load i8, ptr %i.k, align 1, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.r = icmp samesign ult i8 %i.p, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i8 %i.p, %i.q
  br i1 %i.s, label %bb.e, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.l, align 1, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.u = load i8, ptr %i.n, align 1, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.v = icmp samesign ult i8 %i.t, %i.u
  br i1 %i.v, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i8 %i.t, %i.u
  br i1 %i.w, label %bb.g, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.m, align 4, !tbaa !12
  %i.y = load i32, ptr %i.o, align 4, !tbaa !12
  %i.z = icmp slt i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %.08.i, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #22
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !82
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.e, align 8, !tbaa !82
  br label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE17_M_insert_unique_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE17_M_insert_unique_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i: ; preds = %.noexc6, %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE22_M_insert_range_uniqueIPKS1_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESC_SC_.exit, label %.lr.ph.i, !llvm.loop !185

_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE22_M_insert_range_uniqueIPKS1_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESC_SC_.exit: ; preds = %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE17_M_insert_unique_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %.lr.ph.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIN3foo7testingES1_St9_IdentityIS1_ESt4lessIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #22
  resume { ptr, i32 } %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !tbaa !72
  %i.b = load i32, ptr %6, align 4, !tbaa !12
  %i.c = zext i32 %i.b to i64
  %i.d = icmp eq i64 %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !56
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !46
  %i.o = or i32 %i.n, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.o)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.p) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.23, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

end_hunk_0
