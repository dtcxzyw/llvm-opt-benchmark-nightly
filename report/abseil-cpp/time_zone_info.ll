Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/time_zone_info?download=true
inline.NumInlined: 1282
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo7VersionB5cxx11Ev:bb.a
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo11DescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.i)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.2, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZNSolsEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 48
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.s)
          to label %_ZNSolsEm.exit3 unwind label %bb.e ; 0 uses

_ZNSolsEm.exit3:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %_ZNSolsEm.exit3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !52, !alias.scope !240
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !18, !alias.scope !240
  store i8 0, ptr %i.ab, align 8, !tbaa !38, !alias.scope !240
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !242, !noalias !240 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !240 ; 2 uses
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %.08.i.i.i = select i1 %i.ah, ptr %i.ae, ptr %i.ag ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !243, !noalias !240 ; 2 uses
  %i.ak = ptrtoint ptr %.08.i.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.am)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !23, !alias.scope !240 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !38, !alias.scope !240
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %.body

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !75
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.az, align 8, !tbaa !75
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !38
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.az, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4, %_ZNSolsEm.exit3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.e ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ao, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !58
  %i.g = icmp slt i64 %i.f, -576460752303423487
  %spec.select.idx = select i1 %i.g, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.idx ; 4 uses
  %.sroa.0.0.copyload.i.i1.i = load i64, ptr %1, align 8, !tbaa !62
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %spec.select to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11upper_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit

_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.b
  %i.l = udiv exact i64 %i.j, 48
  br label %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.01116.i.i = phi ptr [ %spec.select, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.112.i.i, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.01116.i.i, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp slt i64 %.sroa.0.0.copyload.i.i1.i, %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = xor i64 %i.m, -1
  %i.s = add nsw i64 %.017.i.i, %i.r
  %.112.i.i = select i1 %i.p, ptr %.01116.i.i, ptr %i.q ; 2 uses
  %.1.i.i = select i1 %i.p, i64 %i.m, i64 %i.s    ; 2 uses
  %i.t = icmp sgt i64 %.1.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit, !llvm.loop !3

_ZSt11upper_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.b
  %.011.lcssa.i.i = phi ptr [ %spec.select, %bb.b ], [ %.112.i.i, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not33 = icmp eq ptr %.011.lcssa.i.i, %i.d
  br i1 %.not33, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt11upper_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30
  %.02634 = phi ptr [ %.011.lcssa.i.i, %.lr.ph ], [ %i.ar, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30 ] ; 8 uses
  %i.w = icmp eq ptr %.02634, %spec.select
  %i.x = getelementptr inbounds i8, ptr %.02634, i64 -40
  %.in = select i1 %i.w, ptr %i.v, ptr %i.x
  %i.y = load i8, ptr %.in, align 8, !tbaa !38    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02634, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !55   ; 2 uses
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i8 %i.y to i64
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22  ; 2 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.ac ; 3 uses
  %i.af = zext i8 %i.aa to i64
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !29
  %i.ai = load i32, ptr %i.ag, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.ah, %i.ai
  br i1 %.not.i, label %bb.e, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !30, !range !31, !noundef !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.am = load i8, ptr %i.al, align 8, !tbaa !30, !range !31, !noundef !32
  %.not11.i = icmp eq i8 %i.ak, %i.am
  br i1 %.not11.i, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 41
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 41
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %.not12.i = icmp eq i8 %i.ao, %i.aq
  br i1 %.not12.i, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30: ; preds = %bb.c, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.02634, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.d
  br i1 %.not, label %bb.g, label %bb.c, !llvm.loop !244

_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread: ; preds = %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit, %bb.e, %bb.d
  %.not32 = icmp eq ptr %.02634, %i.d
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %.02634, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.as, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.02634, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %sext.i.i = shl i64 %.sroa.2.0.copyload, 56
  %i.at = ashr exact i64 %sext.i.i, 56
  %i.au = shl i64 %.sroa.2.0.copyload, 48
  %i.av = ashr i64 %i.au, 56
  %i.aw = shl i64 %.sroa.2.0.copyload, 40
  %i.ax = ashr i64 %i.aw, 56
  %i.ay = shl i64 %.sroa.2.0.copyload, 32
  %i.az = ashr i64 %i.ay, 56
  %i.ba = shl i64 %.sroa.2.0.copyload, 24
  %i.bb = ashr i64 %i.ba, 56
  %i.bc = add nsw i64 %i.bb, 1
  %i.bd = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %.sroa.0.0.copyload, i64 noundef %i.at, i64 noundef %i.av, i64 noundef %i.ax, i64 noundef %i.az, i64 noundef %i.bc) #24 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.bd, 1
  %.sroa.2.8.insert.ext.i = and i64 %.fca.1.extract.i.i, 1099511627775
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  store i64 %i.be, ptr %2, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.02634, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !85
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30, %_ZSt11upper_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit, %bb.f, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread ], [ true, %bb.f ], [ false, %_ZSt11upper_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit ], [ false, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !58
  %i.g = icmp slt i64 %i.f, -576460752303423487
  %spec.select.idx = select i1 %i.g, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.idx ; 5 uses
  %.sroa.0.0.copyload.i.i1.i = load i64, ptr %1, align 8, !tbaa !62
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %spec.select to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread

_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.b
  %i.l = udiv exact i64 %i.j, 48
  br label %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.01116.i.i = phi ptr [ %spec.select, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.112.i.i, %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.01116.i.i, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp slt i64 %i.o, %.sroa.0.0.copyload.i.i1.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = xor i64 %i.m, -1
  %i.s = add nsw i64 %.017.i.i, %i.r
  %.112.i.i = select i1 %i.p, ptr %i.q, ptr %.01116.i.i ; 3 uses
  %.1.i.i = select i1 %i.p, i64 %i.s, i64 %i.m    ; 2 uses
  %i.t = icmp sgt i64 %.1.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit, !llvm.loop !245

_ZSt11lower_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4absl12lts_2026052613time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not53 = icmp eq ptr %.112.i.i, %spec.select
  br i1 %.not53, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt11lower_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge
  %.04054 = phi ptr [ %.112.i.i, %.lr.ph ], [ %i.w, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge ] ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %.04054, i64 -48 ; 2 uses
  %i.x = icmp eq ptr %i.w, %spec.select           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.04054, i64 -88
  %.in = select i1 %i.x, ptr %i.v, ptr %i.y
  %i.z = load i8, ptr %.in, align 8, !tbaa !38    ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.04054, i64 -40
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !55  ; 2 uses
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = zext i8 %i.z to i64
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !22  ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = zext i8 %i.ab to i64
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.ag ; 3 uses
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !29
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.ai, %i.aj
  br i1 %.not.i, label %bb.e, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !30, !range !31, !noundef !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.an = load i8, ptr %i.am, align 8, !tbaa !30, !range !31, !noundef !32
  %.not11.i = icmp eq i8 %i.al, %i.an
  br i1 %.not11.i, label %.split, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

.split:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 41
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28
  %.not12.i = icmp eq i8 %i.ap, %i.ar
  br i1 %.not12.i, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge: ; preds = %.split, %bb.c
  br i1 %i.x, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %bb.c

_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread: ; preds = %.split, %bb.e, %bb.d
  %.not52 = icmp eq ptr %.04054, %spec.select
  br i1 %.not52, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread
  %i.as = getelementptr inbounds i8, ptr %.04054, i64 -16
  %.sroa.0.0.copyload = load i64, ptr %i.as, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %.04054, i64 -8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %sext.i.i44 = shl i64 %.sroa.2.0.copyload, 56
  %i.at = ashr exact i64 %sext.i.i44, 56
  %i.au = shl i64 %.sroa.2.0.copyload, 48
  %i.av = ashr i64 %i.au, 56
  %i.aw = shl i64 %.sroa.2.0.copyload, 40
  %i.ax = ashr i64 %i.aw, 56
  %i.ay = shl i64 %.sroa.2.0.copyload, 32
  %i.az = ashr i64 %i.ay, 56
  %i.ba = shl i64 %.sroa.2.0.copyload, 24
  %i.bb = ashr i64 %i.ba, 56
  %i.bc = add nsw i64 %i.bb, 1
  %i.bd = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %.sroa.0.0.copyload, i64 noundef %i.at, i64 noundef %i.av, i64 noundef %i.ax, i64 noundef %i.az, i64 noundef %i.bc) #24 ; 2 uses
  %.fca.1.extract.i.i45 = extractvalue { i64, i64 } %i.bd, 1
  %.sroa.2.8.insert.ext.i46 = and i64 %.fca.1.extract.i.i45, 1099511627775
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  store i64 %i.be, ptr %2, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.8.insert.ext.i46, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds i8, ptr %.04054, i64 -32
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !85
  br label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread

_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread: ; preds = %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge, %bb.b, %_ZSt11lower_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit, %bb.f, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread ], [ true, %bb.f ], [ false, %_ZSt11lower_boundIPKN4absl12lts_2026052613time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit ], [ false, %bb.b ], [ false, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12TimeZoneInfoE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !38
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !38
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !38
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
end_hunk_0
