Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/tie_anonymous?download=true
inline.NumInlined: 240
inline.NumDeleted: 132
begin_hunk_0_@_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_:bb.a
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEEbRKT_RKT0_.exit.thread19
  %i.l = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEEbRKT_RKT0_.exit.thread19
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.s) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !52
  %i.ad = or i32 %i.ac, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i32 noundef %i.ad)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %0, i64 noundef %i.ae) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.g, %bb.h
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.19, i64 noundef 2) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.v, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !52
  %i.ap = or i32 %i.ao, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i32 noundef %i.ap)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %1, i64 noundef %i.aq) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.i, %bb.j
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.13, i64 noundef 4) ; 0 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !37
  %i.au = load i64, ptr %i.a, align 8, !tbaa !19
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.at, i64 noundef %i.au) ; 12 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.19, i64 noundef 2) ; 0 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %i.az = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %6, i64 noundef %i.az) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.16, i64 noundef 23) ; 0 uses
  %.not.i15 = icmp eq ptr %4, null
  br i1 %.not.i15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !52
  %i.bi = or i32 %i.bh, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, i32 noundef %i.bi)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %4, i64 noundef %i.bj) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %bb.k, %bb.l
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.17, i64 noundef 1) ; 0 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.av, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 67
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.br)
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.br, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i = phi i8 [ %i.bv, %bb.n ], [ %i.bz, %bb.o ]
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext %.0.i.i.i)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) ; 0 uses
  %i.cc = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %_ZN5boost6detail12test_resultsEv.exit18, !prof !38

bb.p:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ce = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  %.not.i17 = icmp eq i32 %i.ce, 0
  br i1 %.not.i17, label %_ZN5boost6detail12test_resultsEv.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !41
  %i.cf = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  br label %_ZN5boost6detail12test_resultsEv.exit18

_ZN5boost6detail12test_resultsEv.exit18:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.p, %bb.q
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !12
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !12
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEEbRKT_RKT0_.exit.thread, %_ZN5boost6detail12test_resultsEv.exit18
  %i.ci = phi i1 [ false, %_ZN5boost6detail12test_resultsEv.exit18 ], [ true, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEEbRKT_RKT0_.exit.thread ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %i.ci
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing12_GLOBAL__N_124other_anon_with_optionalD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !33
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !20
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !20
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %1 = alloca %"struct.testing::(anonymous namespace)::anon", align 4 ; 5 uses
  %2 = alloca i32, align 4                        ; 4 uses
  %3 = alloca %"struct.testing::(anonymous namespace)::other_anon_with_optional", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i32 10, ptr %1, align 4, !tbaa !11
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 20, ptr %4, align 4, !tbaa !11
  %5 = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %bb.a, !prof !38

7:                                                ; preds = %0
  %8 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  %.not.i.i = icmp eq i32 %8, 0
  br i1 %.not.i.i, label %bb.a, label %9

9:                                                ; preds = %7
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !41
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  br label %bb.a

bb.a:                                             ; preds = %0, %7, %9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 20, ptr %2, align 4, !tbaa !12
  %i.a = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEiiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7testing12_GLOBAL__N_115test_in_anon_nsEv, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16
  store i32 1953719668, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i8 0, ptr %i.h, align 4, !tbaa !34
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 82, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7testing12_GLOBAL__N_115test_in_anon_nsEv, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.8)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.g, align 8, !tbaa !33, !range !35, !noundef !36
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.g, align 8, !tbaa !33
  br i1 %i.k, label %bb.c, label %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !20
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.q = load ptr, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZN7testing12_GLOBAL__N_115test_in_anon_nsEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit.i.i
  %i.s = load i64, ptr %i.b, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #17
  br label %_ZN7testing12_GLOBAL__N_115test_in_anon_nsEv.exit

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing12_GLOBAL__N_124other_anon_with_optionalD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.u

_ZN7testing12_GLOBAL__N_115test_in_anon_nsEv.exit: ; preds = %_ZNSt14_Optional_baseIN7testing12_GLOBAL__N_118anon_with_optionalELb0ELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @_ZN7testing18test_in_non_non_nsEv()
  %i.v = call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13report_errorsEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail12test_resultsEv.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !41
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  store i8 1, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !40
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !12 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !43
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.21, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.23, ptr @.str.22
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.24, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !65
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11: ; preds = %bb.j, %bb.k
  %.0.i.i.i10 = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i10)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.ar, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11 ], [ %i.v, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.e, i32 255)
  ret i32 %i.at
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(5) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %6) #16
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread19

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !37
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull align 1 dereferenceable(5) %6, i64 %i.b)
  %i.g = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.g, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread19

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit
  %i.h = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !38

bb.c:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !41
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #16
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread19: ; preds = %bb.a, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread19
  %i.l = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEEbRKT_RKT0_.exit.thread19
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.s) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.g, label %bb.h

end_hunk_0
