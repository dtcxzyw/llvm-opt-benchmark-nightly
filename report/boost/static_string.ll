Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5370
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5380
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_14static_strings19basic_static_stringILm17EcSt11char_traitsIcEEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEbT_PKcSE_SE_iSE_RKT0_RKT1_:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.i, %bb.j
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.6182, i64 noundef 4) ; 0 uses
  %i.au = load i8, ptr %5, align 1, !tbaa !93
  %i.av = zext i8 %i.au to i64
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost2io11ostream_putIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_PKS5_m(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.d, i64 noundef %i.av) ; 4 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.6183, i64 noundef 2) ; 0 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.6186, i64 noundef 2) ; 0 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.6184, i64 noundef 2) ; 0 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !87
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !89
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ba, i64 noundef %i.bb) ; 8 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.6185, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !63
  %i.bk = or i32 %i.bj, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bh, i32 noundef %i.bk)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bl = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #32
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %4, i64 noundef %i.bl) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.k, %bb.l
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.5410, i64 noundef 1) ; 0 uses
  %i.bo = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %i.bc, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 240
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !76
  %.not.i1.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 67
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bt)
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef signext i8 %i.ca(ptr noundef nonnull align 8 dereferenceable(570) %i.bt, i8 noundef signext 10), !inline_history !8
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i18 = phi i8 [ %i.bx, %bb.n ], [ %i.cb, %bb.o ]
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i8 noundef signext %.0.i.i.i18)
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) ; 0 uses
  %i.ce = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.p, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !47

bb.p:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.cg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #32
  %.not.i16 = icmp eq i32 %i.cg, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !50
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !51
  %i.ch = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #32
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.p, %bb.q
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !77
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !77
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %_ZNK5boost6detail10lw_test_eqclINS_14static_strings19basic_static_stringILm17EcSt11char_traitsIcEEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEbRKT_RKT0_.exit.thread, %_ZN5boost6detail12test_resultsEv.exit17
  %.0.i.i.i20 = phi i1 [ false, %_ZN5boost6detail12test_resultsEv.exit17 ], [ true, %_ZNK5boost6detail10lw_test_eqclINS_14static_strings19basic_static_stringILm17EcSt11char_traitsIcEEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEbRKT_RKT0_.exit.thread ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.0.i.i.i20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings7testTWSIiEEbT_PKw(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::static_strings::basic_static_string.71", align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  store i8 0, ptr %2, align 4, !tbaa !95, !alias.scope !357
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !97, !alias.scope !357
  %i.b = icmp eq i32 %0, 0
  br i1 %i.b, label %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i, label %bb.b

_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i: ; preds = %bb.a
  %.ptr10.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 48, ptr %.ptr10.i.i.i.i, align 4, !tbaa !97, !alias.scope !357
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i.i.i.i, label %.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %spec.select.i.i.i.i.i = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %0)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.132.i.i.i.i.i = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.02231.i.idx.i.i.i.i = phi i64 [ %.02231.i.add8.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 44, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.02231.i.add8.i.i.i.i = add nsw i64 %.02231.i.idx.i.i.i.i, -4
  %.ptr12.i.i.i.i = getelementptr i8, ptr %2, i64 %.02231.i.idx.i.i.i.i
  %i.d = urem i32 %.132.i.i.i.i.i, 10
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @.str.6187, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97, !noalias !357
  store i32 %i.g, ptr %.ptr12.i.i.i.i, align 4, !tbaa !97, !alias.scope !357
  %i.h = udiv i32 %.132.i.i.i.i.i, 10
  %.not33.i.i.i.i.i = icmp ult i32 %.132.i.i.i.i.i, 10
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !353

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.i = icmp eq i32 %0, -2147483648
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97, !alias.scope !357
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !97, !alias.scope !357
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i.i
  %.02231.i.add.i.i.i.i = add nsw i64 %.02231.i.idx.i.i.i.i, -8 ; 2 uses
  %.ptr9.i.i.i.i = getelementptr inbounds i8, ptr %i.a, i64 %.02231.i.add.i.i.i.i
  store i32 45, ptr %.ptr9.i.i.i.i, align 4, !tbaa !97, !alias.scope !357
  br label %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b, %.preheader.i.i.i.i.i
  %.230.i.i.i.i.i = phi i32 [ %i.q, %.preheader.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %.12329.i.idx.i.i.i.i = phi i64 [ %.12329.i.add.i.i.i.i, %.preheader.i.i.i.i.i ], [ 44, %bb.b ] ; 2 uses
  %.12329.i.add.i.i.i.i = add nsw i64 %.12329.i.idx.i.i.i.i, -4 ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %2, i64 %.12329.i.idx.i.i.i.i
  %i.m = urem i32 %.230.i.i.i.i.i, 10
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @.str.6187, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !97, !noalias !357
  store i32 %i.p, ptr %.ptr.i.i.i.i, align 4, !tbaa !97, !alias.scope !357
  %i.q = udiv i32 %.230.i.i.i.i.i, 10
  %.not.i.i.i.i.i = icmp samesign ult i32 %.230.i.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i, label %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !354

_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.024.i.idx.i.i.i.i = phi i64 [ %.02231.i.add.i.i.i.i, %bb.d ], [ %.12329.i.add.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %gepdiff.i.i.i.i = sub nsw i64 44, %.024.i.idx.i.i.i.i
  %i.r = ashr exact i64 %gepdiff.i.i.i.i, 2
  %i.s = icmp eq i64 %.024.i.idx.i.i.i.i, 44
  br i1 %i.s, label %_ZN5boost14static_strings17to_static_wstringEi.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i
  %i.t = phi i64 [ 1, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i ], [ %i.r, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i ] ; 2 uses
  %.024.i.idx15.i.i.i.i = phi i64 [ 40, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i ], [ %.024.i.idx.i.i.i.i, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i ]
  %.024.i.ptr.i.i.i.i = getelementptr inbounds i8, ptr %i.a, i64 %.024.i.idx15.i.i.i.i
  %i.u = call ptr @wmemmove(ptr noundef nonnull %i.a, ptr noundef nonnull %.024.i.ptr.i.i.i.i, i64 noundef %i.t) #32 ; 0 uses
  %i.v = trunc i64 %i.t to i8
  br label %_ZN5boost14static_strings17to_static_wstringEi.exit

_ZN5boost14static_strings17to_static_wstringEi.exit: ; preds = %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i, %bb.e
  %i.w = phi i8 [ 0, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwEiEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i ], [ %i.v, %bb.e ] ; 2 uses
  store i8 %i.w, ptr %2, align 4, !tbaa !95, !alias.scope !357
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  store i32 0, ptr %i.y, align 4, !tbaa !97, !alias.scope !357
  %i.z = call i64 @__isoc23_wcstoll(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #32
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp eq i32 %0, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN5boost14static_stringseqILm11EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.f:                                             ; preds = %_ZN5boost14static_strings17to_static_wstringEi.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5boost14static_stringseqILm11EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %2, align 4, !tbaa !95     ; 2 uses
  %i.ad = zext i8 %i.ac to i64                    ; 2 uses
  %i.ae = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #35
  %or.cond.not.i = icmp eq i64 %i.ae, %i.ad
  br i1 %or.cond.not.i, label %bb.h, label %_ZN5boost14static_stringseqILm11EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i8 %i.ac, 0
  br i1 %i.af, label %_ZN5boost14static_stringseqILm11EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 @wmemcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.ad) #35
  %i.ah = icmp eq i32 %i.ag, 0
  br label %_ZN5boost14static_stringseqILm11EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm11EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_ZN5boost14static_strings17to_static_wstringEi.exit
  %i.ai = phi i1 [ false, %_ZN5boost14static_strings17to_static_wstringEi.exit ], [ true, %bb.f ], [ false, %bb.g ], [ %i.ah, %bb.i ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings7testTWSIxEEbT_PKw(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::static_strings::basic_static_string.75", align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  store i8 0, ptr %2, align 4, !tbaa !99, !alias.scope !366
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.a, i8 0, i64 84, i1 false), !tbaa !97, !alias.scope !366
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i, label %bb.b

_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i: ; preds = %bb.a
  %.ptr10.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 48, ptr %.ptr10.i.i.i.i, align 4, !tbaa !97, !alias.scope !366
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %0, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i.i.i.i, label %.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %spec.select.i.i.i.i.i = tail call i64 @llvm.ssub.sat.i64(i64 0, i64 %0)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.132.i.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.02231.i.idx.i.i.i.i = phi i64 [ %.02231.i.add8.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 80, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.02231.i.add8.i.i.i.i = add nsw i64 %.02231.i.idx.i.i.i.i, -4
  %.ptr12.i.i.i.i = getelementptr i8, ptr %2, i64 %.02231.i.idx.i.i.i.i
  %i.d = urem i64 %.132.i.i.i.i.i, 10
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @.str.6187, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97, !noalias !366
  store i32 %i.f, ptr %.ptr12.i.i.i.i, align 4, !tbaa !97, !alias.scope !366
  %i.g = udiv i64 %.132.i.i.i.i.i, 10
  %.not33.i.i.i.i.i = icmp ult i64 %.132.i.i.i.i.i, 10
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !362

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.h = icmp eq i64 %0, -9223372036854775808
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !97, !alias.scope !366
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !97, !alias.scope !366
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i.i
  %.02231.i.add.i.i.i.i = add nsw i64 %.02231.i.idx.i.i.i.i, -8 ; 2 uses
  %.ptr9.i.i.i.i = getelementptr inbounds i8, ptr %i.a, i64 %.02231.i.add.i.i.i.i
  store i32 45, ptr %.ptr9.i.i.i.i, align 4, !tbaa !97, !alias.scope !366
  br label %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b, %.preheader.i.i.i.i.i
  %.230.i.i.i.i.i = phi i64 [ %i.o, %.preheader.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %.12329.i.idx.i.i.i.i = phi i64 [ %.12329.i.add.i.i.i.i, %.preheader.i.i.i.i.i ], [ 80, %bb.b ] ; 2 uses
  %.12329.i.add.i.i.i.i = add nsw i64 %.12329.i.idx.i.i.i.i, -4 ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %2, i64 %.12329.i.idx.i.i.i.i
  %i.l = urem i64 %.230.i.i.i.i.i, 10
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @.str.6187, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !97, !noalias !366
  store i32 %i.n, ptr %.ptr.i.i.i.i, align 4, !tbaa !97, !alias.scope !366
  %i.o = udiv i64 %.230.i.i.i.i.i, 10
  %.not.i.i.i.i.i = icmp samesign ult i64 %.230.i.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i, label %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !363

_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.024.i.idx.i.i.i.i = phi i64 [ %.02231.i.add.i.i.i.i, %bb.d ], [ %.12329.i.add.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %gepdiff.i.i.i.i = sub nsw i64 80, %.024.i.idx.i.i.i.i
  %i.p = ashr exact i64 %gepdiff.i.i.i.i, 2
  %i.q = icmp eq i64 %.024.i.idx.i.i.i.i, 80
  br i1 %i.q, label %_ZN5boost14static_strings17to_static_wstringEx.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i
  %i.r = phi i64 [ 1, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i ], [ %i.p, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i ] ; 2 uses
  %.024.i.idx15.i.i.i.i = phi i64 [ 76, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.thread.i.i.i.i ], [ %.024.i.idx.i.i.i.i, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i ]
  %.024.i.ptr.i.i.i.i = getelementptr inbounds i8, ptr %i.a, i64 %.024.i.idx15.i.i.i.i
  %i.s = call ptr @wmemmove(ptr noundef nonnull %i.a, ptr noundef nonnull %.024.i.ptr.i.i.i.i, i64 noundef %i.r) #32 ; 0 uses
  %i.t = trunc i64 %i.r to i8
  br label %_ZN5boost14static_strings17to_static_wstringEx.exit

_ZN5boost14static_strings17to_static_wstringEx.exit: ; preds = %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i, %bb.e
  %i.u = phi i8 [ 0, %_ZN5boost14static_strings6detail18integer_to_wstringISt11char_traitsIwExEEPwS5_T0_St17integral_constantIbLb1EE.exit.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  store i8 %i.u, ptr %2, align 4, !tbaa !99, !alias.scope !366
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !97, !alias.scope !366
  %i.x = call i64 @__isoc23_wcstoll(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #32
  %i.y = icmp eq i64 %i.x, %0
  br i1 %i.y, label %bb.f, label %_ZN5boost14static_stringseqILm20EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.f:                                             ; preds = %_ZN5boost14static_strings17to_static_wstringEx.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5boost14static_stringseqILm20EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %2, align 4, !tbaa !99      ; 2 uses
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #35
  %or.cond.not.i = icmp eq i64 %i.ab, %i.aa
  br i1 %or.cond.not.i, label %bb.h, label %_ZN5boost14static_stringseqILm20EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i8 %i.z, 0
  br i1 %i.ac, label %_ZN5boost14static_stringseqILm20EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @wmemcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.aa) #35
  %i.ae = icmp eq i32 %i.ad, 0
  br label %_ZN5boost14static_stringseqILm20EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm20EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_ZN5boost14static_strings17to_static_wstringEx.exit
  %i.af = phi i1 [ false, %_ZN5boost14static_strings17to_static_wstringEx.exit ], [ true, %bb.f ], [ false, %bb.g ], [ %i.ae, %bb.i ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings7testTWSIdEEbT_PKw(double noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::static_strings::basic_static_string.15", align 4 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string.77", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i8 0, ptr %2, align 4, !tbaa !103, !alias.scope !371
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.a, i8 0, i64 104, i1 false), !tbaa !97, !alias.scope !371
  %i.b = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.a, i64 noundef 26, ptr noundef nonnull @.str.5423, double noundef %0) #32 ; 2 uses
  %or.cond.i.i.i.i = icmp ugt i32 %i.b, 25
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN5boost14static_strings17to_static_wstringEd.exit

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.a, i64 noundef 26, ptr noundef nonnull @.str.5424, i32 noundef 18, double noundef %0) #32
  br label %_ZN5boost14static_strings17to_static_wstringEd.exit

_ZN5boost14static_strings17to_static_wstringEd.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi i32 [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = trunc i32 %.0.i.i.i.i to i8
  store i8 %i.d, ptr %2, align 4, !tbaa !103, !alias.scope !371
  %.mask.i.i.i = and i32 %.0.i.i.i.i, 255
  %i.e = zext nneg i32 %.mask.i.i.i to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  store i32 0, ptr %i.f, align 4, !tbaa !97, !alias.scope !371
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.77") align 8 %3, ptr noundef nonnull @vswprintf, i64 noundef 328, ptr noundef nonnull @.str.5423, double noundef %0)
  %i.g = load ptr, ptr %3, align 8, !tbaa !109    ; 4 uses
  %i.h = load i8, ptr %2, align 4, !tbaa !103     ; 2 uses
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.g) #35
  %or.cond.not.i = icmp eq i64 %i.j, %i.i
  br i1 %or.cond.not.i, label %bb.c, label %_ZN5boost14static_stringseqILm25EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.c:                                             ; preds = %_ZN5boost14static_strings17to_static_wstringEd.exit
  %i.k = icmp eq i8 %i.h, 0
  br i1 %i.k, label %_ZN5boost14static_stringseqILm25EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @wmemcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i64 noundef %i.i) #35
  %i.m = icmp eq i32 %i.l, 0
  br label %_ZN5boost14static_stringseqILm25EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm25EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %_ZN5boost14static_strings17to_static_wstringEd.exit, %bb.c, %bb.d
  %.0.i.i = phi i1 [ false, %_ZN5boost14static_strings17to_static_wstringEd.exit ], [ %i.m, %bb.d ], [ true, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.g, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost14static_stringseqILm25EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !24
  %i.q = shl i64 %i.p, 2
  %i.r = add i64 %i.q, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.r) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN5boost14static_stringseqILm25EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings7testTWSIeEEbT_PKw(x86_fp80 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::static_strings::basic_static_string.16", align 4 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string.77", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i8 0, ptr %2, align 4, !tbaa !105, !alias.scope !376
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !tbaa !97, !alias.scope !376
  %i.b = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.5425, x86_fp80 noundef %0) #32 ; 2 uses
  %or.cond.i.i.i.i = icmp ugt i32 %i.b, 31
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN5boost14static_strings17to_static_wstringEe.exit

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.5426, i32 noundef 23, x86_fp80 noundef %0) #32
  br label %_ZN5boost14static_strings17to_static_wstringEe.exit

_ZN5boost14static_strings17to_static_wstringEe.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi i32 [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = trunc i32 %.0.i.i.i.i to i8
  store i8 %i.d, ptr %2, align 4, !tbaa !105, !alias.scope !376
  %.mask.i.i.i = and i32 %.0.i.i.i.i, 255
  %i.e = zext nneg i32 %.mask.i.i.i to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  store i32 0, ptr %i.f, align 4, !tbaa !97, !alias.scope !376
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.77") align 8 %3, ptr noundef nonnull @vswprintf, i64 noundef 4952, ptr noundef nonnull @.str.5425, x86_fp80 noundef %0)
  %i.g = load ptr, ptr %3, align 8, !tbaa !109    ; 4 uses
  %i.h = load i8, ptr %2, align 4, !tbaa !105     ; 2 uses
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.g) #35
  %or.cond.not.i = icmp eq i64 %i.j, %i.i
  br i1 %or.cond.not.i, label %bb.c, label %_ZN5boost14static_stringseqILm31EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.c:                                             ; preds = %_ZN5boost14static_strings17to_static_wstringEe.exit
  %i.k = icmp eq i8 %i.h, 0
  br i1 %i.k, label %_ZN5boost14static_stringseqILm31EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @wmemcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i64 noundef %i.i) #35
  %i.m = icmp eq i32 %i.l, 0
  br label %_ZN5boost14static_stringseqILm31EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm31EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %_ZN5boost14static_strings17to_static_wstringEe.exit, %bb.c, %bb.d
  %.0.i.i = phi i1 [ false, %_ZN5boost14static_strings17to_static_wstringEe.exit ], [ %i.m, %bb.d ], [ true, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.g, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost14static_stringseqILm31EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !24
  %i.q = shl i64 %i.p, 2
  %i.r = add i64 %i.q, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.r) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN5boost14static_stringseqILm31EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings7testTWSIfEEbT_PKw(float noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::static_strings::basic_static_string.14", align 4 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string.77", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = fpext float %0 to double                 ; 3 uses
  store i8 0, ptr %2, align 4, !tbaa !101, !alias.scope !383
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.b, i8 0, i64 72, i1 false), !tbaa !97, !alias.scope !383
  %i.c = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.b, i64 noundef 18, ptr noundef nonnull @.str.5423, double noundef %i.a) #32 ; 2 uses
  %or.cond.i.i.i.i.i = icmp ugt i32 %i.c, 17
  br i1 %or.cond.i.i.i.i.i, label %bb.b, label %_ZN5boost14static_strings17to_static_wstringEf.exit

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.b, i64 noundef 18, ptr noundef nonnull @.str.5424, i32 noundef 10, double noundef %i.a) #32
  br label %_ZN5boost14static_strings17to_static_wstringEf.exit

_ZN5boost14static_strings17to_static_wstringEf.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = trunc i32 %.0.i.i.i.i.i to i8
  store i8 %i.e, ptr %2, align 4, !tbaa !101, !alias.scope !383
  %.mask.i.i.i.i = and i32 %.0.i.i.i.i.i, 255
  %i.f = zext nneg i32 %.mask.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f
  store i32 0, ptr %i.g, align 4, !tbaa !97, !alias.scope !383
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.77") align 8 %3, ptr noundef nonnull @vswprintf, i64 noundef 58, ptr noundef nonnull @.str.5423, double noundef %i.a)
  %i.h = load ptr, ptr %3, align 8, !tbaa !109    ; 4 uses
  %i.i = load i8, ptr %2, align 4, !tbaa !101     ; 2 uses
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.h) #35
  %or.cond.not.i = icmp eq i64 %i.k, %i.j
  br i1 %or.cond.not.i, label %bb.c, label %_ZN5boost14static_stringseqILm17EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.c:                                             ; preds = %_ZN5boost14static_strings17to_static_wstringEf.exit
  %i.l = icmp eq i8 %i.i, 0
  br i1 %i.l, label %_ZN5boost14static_stringseqILm17EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @wmemcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, i64 noundef %i.j) #35
  %i.n = icmp eq i32 %i.m, 0
  br label %_ZN5boost14static_stringseqILm17EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm17EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %bb.d, %bb.c, %_ZN5boost14static_strings17to_static_wstringEf.exit
  %.0.i.i = phi i1 [ false, %_ZN5boost14static_strings17to_static_wstringEf.exit ], [ %i.n, %bb.d ], [ true, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.h, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost14static_stringseqILm17EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !24
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.s) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN5boost14static_stringseqILm17EwSt11char_traitsIwEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost14static_strings8testFindEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNK5boost14static_strings19basic_static_stringILm5EcSt11char_traitsIcEE4findINS_17basic_string_viewIcS3_EEvEEmRKT_m.exit:
  %0 = alloca %"class.boost::static_strings::basic_static_string.8", align 4 ; 125 uses
  %1 = alloca %"class.boost::static_strings::basic_static_string.17", align 4 ; 14 uses
  %.sroa.469746 = alloca [20 x i8], align 16      ; 8 uses
  %.sroa.469709 = alloca [20 x i8], align 16      ; 9 uses
  %.sroa.469669 = alloca [20 x i8], align 16      ; 9 uses
  %.sroa.469588 = alloca [24 x i8], align 16      ; 14 uses
  %.sroa.469494 = alloca [25 x i8], align 16      ; 15 uses
  %.sroa.469397 = alloca [25 x i8], align 16      ; 15 uses
  %.sroa.469203 = alloca [34 x i8], align 16      ; 24 uses
  %.sroa.468998 = alloca [35 x i8], align 16      ; 25 uses
  %.sroa.468994 = alloca [20 x i8], align 16      ; 6 uses
  %.sroa.468975 = alloca [20 x i8], align 16      ; 9 uses
  %.sroa.468945 = alloca [21 x i8], align 16      ; 11 uses
  %.sroa.468941 = alloca [20 x i8], align 16      ; 6 uses
  %.sroa.468913 = alloca [21 x i8], align 16      ; 11 uses
  %.sroa.468854 = alloca [25 x i8], align 16      ; 15 uses
  %.sroa.468784 = alloca [26 x i8], align 16      ; 16 uses
  %.sroa.468780 = alloca [20 x i8], align 16      ; 6 uses
  %.sroa.468713 = alloca [26 x i8], align 16      ; 16 uses
  %.sroa.468669 = alloca [37 x i8], align 16      ; 25 uses
  %2 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 23 uses
  %3 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 35 uses
  %4 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 40 uses
  %5 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 40 uses
  %.sroa.468581 = alloca [20 x i8], align 16      ; 7 uses
  %.sroa.468466 = alloca [20 x i8], align 16      ; 7 uses
  %.sroa.468356 = alloca [20 x i8], align 16      ; 7 uses
  %6 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %7 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %8 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %9 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %10 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %11 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %12 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %13 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %14 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %15 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %16 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %17 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %18 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %19 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %20 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %21 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %22 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %23 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %24 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %25 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %26 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %27 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %28 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %29 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %30 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %31 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %32 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %33 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %34 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %35 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %36 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %37 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %38 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %39 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %40 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %41 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %42 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %43 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %44 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %45 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %46 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %47 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %48 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %49 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 12 uses
  %50 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %51 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %52 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %53 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %54 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %55 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %56 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 12 uses
  %57 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %58 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %59 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %60 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %61 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %62 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %63 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 12 uses
  %64 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %65 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %66 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %67 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %68 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %69 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %70 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %71 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %72 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %73 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %74 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %75 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %76 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 6 uses
  %77 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 6 uses
  %78 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %79 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %80 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %81 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %82 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %83 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %84 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %85 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %86 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 6 uses
  %87 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %88 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %89 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %90 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %91 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %92 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %93 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %94 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 6 uses
  %95 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %96 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %97 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %98 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %99 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %100 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %101 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %102 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %103 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 6 uses
  %104 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %105 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %106 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %107 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %108 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 8 uses
  %109 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 7 uses
  %110 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %111 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %112 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 17 uses
  %.sroa.368191 = alloca [20 x i8], align 16      ; 5 uses
  %.sroa.368188 = alloca [20 x i8], align 16      ; 5 uses
  %113 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %114 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %115 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %116 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %117 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %118 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %119 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %120 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %121 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %122 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %.sroa.368118 = alloca [20 x i8], align 16      ; 5 uses
  %.sroa.368114 = alloca [20 x i8], align 16      ; 5 uses
  %.sroa.368090 = alloca [20 x i8], align 16      ; 5 uses
  %.sroa.3 = alloca [20 x i8], align 16           ; 5 uses
  %123 = alloca %"class.boost::static_strings::basic_static_string.8", align 4 ; 9 uses
  %124 = alloca %"class.boost::static_strings::basic_static_string.17", align 4 ; 8 uses
  %125 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %126 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %127 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 17 uses
  %128 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 17 uses
  %129 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %130 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %131 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %132 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %133 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %134 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %135 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %136 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %137 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 16 uses
  %138 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %139 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %140 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 15 uses
  %141 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 11 uses
  %142 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 11 uses
  %143 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 11 uses
  %144 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 11 uses
  %145 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %146 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %147 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %148 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %149 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %150 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %151 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %152 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 11 uses
  %153 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %154 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 10 uses
  %155 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 14 uses
  %156 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 14 uses
  %157 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 27 uses
  %158 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 27 uses
  %159 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 27 uses
  %160 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 27 uses
  %161 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 27 uses
end_hunk_0
