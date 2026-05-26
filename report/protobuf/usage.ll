inline.NumInlined: 1217
inline.NumDeleted: 482
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal9MaybeExitENS1_8HelpModeE:bb.a
    i32 7, label %bb.c
    i32 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a, %bb.a
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #29
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 captures(none) dereferenceable(41) %0, i64 %1, ptr %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::ByAnyChar", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 18 uses
  %8 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 11 uses
  %9 = alloca %"class.absl::lts_20250512::strings_internal::Splitter.12", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::ByAnyChar", align 8 ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator.14", align 8 ; 15 uses
  %12 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator.14", align 8 ; 9 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN4absl12lts_202505129ByAnyCharC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 2, ptr nonnull @.str.18)
  invoke void @_ZN4absl12lts_202505128StrSplitINS0_9ByAnyCharEEENS0_16strings_internal8SplitterINS3_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS3_23ConvertibleToStringViewES6_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::strings_internal::Splitter") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit

_ZN4absl12lts_202505129ByAnyCharD2Ev.exit:        ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_(ptr noundef nonnull align 8 dereferenceable(73) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit unwind label %bb.f

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_(ptr noundef nonnull align 8 dereferenceable(73) %8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader unwind label %bb.g

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader: ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !96
  %i.m = load i32, ptr %i.k, align 8, !tbaa !96
  %i.n = icmp ne i32 %i.l, %i.m
  %i.o = load i64, ptr %7, align 8
  %i.p = load i64, ptr %8, align 8
  %i.q = icmp ne i64 %i.o, %i.p
  %.not3.i287 = select i1 %i.n, i1 true, i1 %i.q
  br i1 %.not3.i287, label %.lr.ph291, label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge

.lr.ph291:                                        ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 40
  br label %bb.h

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader
  %.sroa.29.0.lcssa = phi ptr [ null, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ], [ %.sroa.29.2.lcssa, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ], [ %.sroa.14.2.lcssa, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  %.sroa.0150.0.lcssa = phi ptr [ null, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ], [ %.sroa.0150.2.lcssa, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit: ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !28
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit45

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit45: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit45
  %i.av = load i64, ptr %i.at, align 8, !tbaa !28
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47

bb.e:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.e
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !28
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #24
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit131

bb.f:                                             ; preds = %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit96

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93

.loopexit190:                                     ; preds = %bb.q
  %lpad.loopexit192 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69

.loopexit.split-lp191:                            ; preds = %bb.t
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69

bb.h:                                             ; preds = %.lr.ph291, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %.sroa.0150.0290 = phi ptr [ null, %.lr.ph291 ], [ %.sroa.0150.2.lcssa, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 9 uses
  %.sroa.14.0289 = phi ptr [ null, %.lr.ph291 ], [ %.sroa.14.2.lcssa, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 10 uses
  %.sroa.29.0288 = phi ptr [ null, %.lr.ph291 ], [ %.sroa.29.2.lcssa, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 3 uses
  %.sroa.09.0.copyload = load i64, ptr %i.r, align 8, !tbaa !21
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !22
  %i.bf = icmp eq ptr %.sroa.0150.0290, %.sroa.14.0289
  br i1 %i.bf, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA2_KcEEERS3_DpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %.sroa.14.0289, %.sroa.29.0288
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 1, ptr %.sroa.14.0289, align 8, !tbaa !103
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.14.0289, i64 8
  store ptr @.str.19, ptr %i.bg, align 8, !tbaa !104
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.14.0289, i64 16
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA2_KcEEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.14.0289 to i64
  %i.bj = ptrtoint ptr %.sroa.0150.0290 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 5 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775792
  br i1 %i.bl, label %bb.l, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.noexc134 unwind label %.loopexit.split-lp186

.noexc134:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %13 = ashr exact i64 %i.bk, 4
  %i.bm = ashr exact i64 %i.bk, 3                 ; 2 uses
  %14 = icmp ult i64 %i.bm, %13
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bm, i64 576460752303423487)
  %15 = select i1 %14, i64 576460752303423487, i64 %i.bn ; 2 uses
  %i.bo = shl nuw nsw i64 %15, 4
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #28
          to label %.noexc135 unwind label %.loopexit185 ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk ; 2 uses
  store i64 1, ptr %i.bq, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @.str.19, ptr %i.br, align 8, !tbaa !104
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc135, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.bp, %.noexc135 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.sroa.0150.0290, %.noexc135 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !105, !alias.scope !106
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bs, %.sroa.14.0289
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !110

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i23.i = icmp eq ptr %.sroa.0150.0290, null
  br i1 %.not.i23.i, label %.noexc, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0290, i64 noundef %i.bk) #24
  br label %.noexc

.noexc:                                           ; preds = %bb.m, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %15
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA2_KcEEERS3_DpOT_.exit

.loopexit185:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit187 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69

.loopexit.split-lp186:                            ; preds = %bb.l
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA2_KcEEERS3_DpOT_.exit: ; preds = %.noexc, %bb.j, %bb.h
  %.sroa.29.1 = phi ptr [ %.sroa.29.0288, %bb.h ], [ %i.bv, %.noexc ], [ %.sroa.29.0288, %bb.j ] ; 7 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0289, %bb.h ], [ %i.bu, %.noexc ], [ %i.bh, %bb.j ] ; 2 uses
  %.sroa.0150.1 = phi ptr [ %.sroa.0150.0290, %bb.h ], [ %i.bp, %.noexc ], [ %.sroa.0150.0290, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN4absl12lts_202505129ByAnyCharC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 2, ptr nonnull @.str.20)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA2_KcEEERS3_DpOT_.exit
  invoke void @_ZN4absl12lts_202505128StrSplitINS0_9ByAnyCharENS0_9SkipEmptyEEENS0_16strings_internal8SplitterINS4_15SelectDelimiterIT_E4typeET0_St17basic_string_viewIcSt11char_traitsIcEEEENS4_23ConvertibleToStringViewES7_SA_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::strings_internal::Splitter.12") align 8 %9, i64 %.sroa.09.0.copyload, ptr %.sroa.5.0.copyload, ptr noundef nonnull %10)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.s
  br i1 %i.bx, label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %bb.o
  %i.by = load i64, ptr %i.s, align 8, !tbaa !28
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #24
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit54

_ZN4absl12lts_202505129ByAnyCharD2Ev.exit54:      ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_(ptr noundef nonnull align 8 dereferenceable(73) %11, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(49) %9)
          to label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit unwind label %bb.w

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_(ptr noundef nonnull align 8 dereferenceable(73) %12, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(49) %9)
          to label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader unwind label %bb.x

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader: ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.ca = load i32, ptr %i.t, align 8, !tbaa !111
  %i.cb = load i32, ptr %i.u, align 8, !tbaa !111
  %i.cc = icmp ne i32 %i.ca, %i.cb
  %i.cd = load i64, ptr %11, align 8
  %i.ce = load i64, ptr %12, align 8
  %i.cf = icmp ne i64 %i.cd, %i.ce
  %.not3.i57281 = select i1 %i.cc, i1 true, i1 %i.cf
  br i1 %.not3.i57281, label %.lr.ph, label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader
  %.sroa.29.2.lcssa = phi ptr [ %.sroa.29.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ], [ %.sroa.29.12, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 4 uses
  %.sroa.14.2.lcssa = phi ptr [ %.sroa.14.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ], [ %.sroa.14.5, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  %.sroa.0150.2.lcssa = phi ptr [ %.sroa.0150.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ], [ %.sroa.0150.12, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 4 uses
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !24  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.z
  br i1 %i.ch, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58: ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge
  %i.ci = load i64, ptr %i.z, align 8, !tbaa !28
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit: ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aa
  br i1 %i.cl, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit
  %i.cm = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit62

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit62: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ac
  br i1 %i.cp, label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit62
  %i.cq = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #24
  br label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.cs = load i32, ptr %i.j, align 8, !tbaa !96
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  store i32 2, ptr %i.j, align 8, !tbaa !96
  %.pre372 = load i64, ptr %7, align 8
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cu, align 8, !tbaa !21 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !22 ; 3 uses
  %i.cv = load i64, ptr %7, align 8, !tbaa !117
  %i.cw = invoke { i64, ptr } @_ZNK4absl12lts_202505129ByAnyChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.cv)
          to label %.noexc65 unwind label %.loopexit190 ; 2 uses

.noexc65:                                         ; preds = %bb.q
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = extractvalue { i64, ptr } %i.cw, 1      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc65
  store i32 1, ptr %i.j, align 8, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc65
  %i.db = load i64, ptr %7, align 8, !tbaa !117   ; 5 uses
  %i.dc = icmp ugt i64 %i.db, %.sroa.0.0.copyload.i.i
  br i1 %i.dc, label %bb.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.db, i64 noundef %.sroa.0.0.copyload.i.i) #26
          to label %.noexc66 unwind label %.loopexit.split-lp191

.noexc66:                                         ; preds = %bb.t
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.s
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.db ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.dd, %i.df
  %i.dh = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.db
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dh, i64 %i.dg) ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %i.r, align 8, !tbaa !21
  store ptr %i.de, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !22
  %i.di = add i64 %i.db, %i.cx
  %i.dj = add i64 %i.di, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.dj, ptr %7, align 8, !tbaa !117
  %.pre371 = load i32, ptr %i.j, align 8, !tbaa !96
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, !llvm.loop !118

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %bb.p, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.dk = phi i64 [ %.pre372, %bb.p ], [ %i.dj, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %i.dl = phi i32 [ 2, %bb.p ], [ %.pre371, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %i.dm = load i32, ptr %i.k, align 8, !tbaa !96
  %i.dn = icmp ne i32 %i.dl, %i.dm
  %i.do = load i64, ptr %8, align 8
  %i.dp = icmp ne i64 %i.dk, %i.do
  %.not3.i = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %.not3.i, label %bb.h, label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge

bb.u:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA2_KcEEERS3_DpOT_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69

bb.v:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.s
  br i1 %i.dt, label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %bb.v
  %i.du = load i64, ptr %i.s, align 8, !tbaa !28
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #24
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69

bb.w:                                             ; preds = %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit54
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit87

bb.x:                                             ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84

.loopexit:                                        ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %.sroa.0150.2284 = phi ptr [ %.sroa.0150.12, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.sroa.0150.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ] ; 8 uses
  %.sroa.14.2283 = phi ptr [ %.sroa.14.5, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.sroa.14.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ] ; 8 uses
  %.sroa.29.2282 = phi ptr [ %.sroa.29.12, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.sroa.29.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ] ; 2 uses
  %.not.i70 = icmp eq ptr %.sroa.14.2283, %.sroa.29.2282
  br i1 %.not.i70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.2283, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dy = ptrtoint ptr %.sroa.14.2283 to i64
  %i.dz = ptrtoint ptr %.sroa.0150.2284 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775792
  br i1 %i.eb, label %bb.aa, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.noexc71 unwind label %.loopexit.split-lp181

.noexc71:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.ec = ashr exact i64 %i.ea, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i, %i.ec ; 2 uses
  %16 = icmp ult i64 %i.ed, %i.ec
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ed, i64 576460752303423487)
  %17 = select i1 %16, i64 576460752303423487, i64 %i.ee ; 3 uses
  %.not.i.i.i = icmp ne i64 %17, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ef = shl nuw nsw i64 %17, 4
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #28
          to label %.noexc72 unwind label %.loopexit180 ; 5 uses

.noexc72:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0150.2284, %.sroa.14.2283
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc72, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.eg, %.noexc72 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.0150.2284, %.noexc72 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !105, !alias.scope !119
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ei, %.sroa.14.2283
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc72
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.eg, %.noexc72 ], [ %i.ej, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0150.2284, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.2284, i64 noundef %i.ea) #24
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.y
  %.sroa.29.12 = phi ptr [ %i.ek, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.29.2282, %bb.y ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.2283, %bb.y ]
  %.sroa.0150.12 = phi ptr [ %i.eg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0150.2284, %bb.y ] ; 4 uses
  %.sroa.14.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i77, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  %i.el = load i32, ptr %i.t, align 8, !tbaa !111
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 2, ptr %i.t, align 8, !tbaa !111
  %.pre370 = load i64, ptr %11, align 8
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr %i.w, align 8, !tbaa !123 ; 2 uses
  %.sroa.0.0.copyload.i.i74 = load i64, ptr %i.en, align 8, !tbaa !21 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i75 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.2.0.copyload.i.i76 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i75, align 8, !tbaa !22 ; 3 uses
  %i.eo = load i64, ptr %11, align 8, !tbaa !124
  %i.ep = invoke { i64, ptr } @_ZNK4absl12lts_202505129ByAnyChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 %.sroa.0.0.copyload.i.i74, ptr %.sroa.2.0.copyload.i.i76, i64 noundef %i.eo)
          to label %.noexc80 unwind label %.loopexit ; 2 uses

.noexc80:                                         ; preds = %bb.ae
  %i.eq = extractvalue { i64, ptr } %i.ep, 0
  %i.er = extractvalue { i64, ptr } %i.ep, 1      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i76, i64 %.sroa.0.0.copyload.i.i74
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc80
  store i32 1, ptr %i.t, align 8, !tbaa !111
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.noexc80
  %i.eu = load i64, ptr %11, align 8, !tbaa !124  ; 5 uses
  %i.ev = icmp ugt i64 %i.eu, %.sroa.0.0.copyload.i.i74
  br i1 %i.ev, label %bb.ah, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i77

bb.ah:                                            ; preds = %bb.ag
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.eu, i64 noundef %.sroa.0.0.copyload.i.i74) #26
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %bb.ah
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i77: ; preds = %bb.ag
  %i.ew = ptrtoint ptr %i.er to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i76, i64 %i.eu ; 2 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ew, %i.ey
  %i.fa = sub nuw i64 %.sroa.0.0.copyload.i.i74, %i.eu
  %.sroa.speculated.i.i78 = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ez) ; 3 uses
  store i64 %.sroa.speculated.i.i78, ptr %i.v, align 8, !tbaa !21
  store ptr %i.ex, ptr %.sroa.4.0..sroa_idx.i73, align 8, !tbaa !22
  %i.fb = add i64 %i.eu, %i.eq
  %i.fc = add i64 %i.fb, %.sroa.speculated.i.i78  ; 2 uses
  store i64 %i.fc, ptr %11, align 8, !tbaa !124
  %.not.i79 = icmp eq i64 %.sroa.speculated.i.i78, 0
  br i1 %.not.i79, label %bb.ac, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit, !llvm.loop !125

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i77
  %.pre = load i32, ptr %i.t, align 8, !tbaa !111
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit, %bb.ad
  %i.fd = phi i64 [ %i.fc, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit ], [ %.pre370, %bb.ad ]
  %i.fe = phi i32 [ %.pre, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit ], [ 2, %bb.ad ]
  %i.ff = load i32, ptr %i.u, align 8, !tbaa !111
  %i.fg = icmp ne i32 %i.fe, %i.ff
  %i.fh = load i64, ptr %12, align 8
  %i.fi = icmp ne i64 %i.fd, %i.fh
  %.not3.i57 = select i1 %i.fg, i1 true, i1 %i.fi
  br i1 %.not3.i57, label %.lr.ph, label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge

.loopexit180:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp181:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit180, %.loopexit.split-lp181, %.loopexit, %.loopexit.split-lp
  %.sroa.29.3 = phi ptr [ %.sroa.29.12, %.loopexit.split-lp ], [ %.sroa.29.12, %.loopexit ], [ %.sroa.14.2283, %.loopexit.split-lp181 ], [ %.sroa.14.2283, %.loopexit180 ] ; 2 uses
  %.sroa.0150.3 = phi ptr [ %.sroa.0150.12, %.loopexit.split-lp ], [ %.sroa.0150.12, %.loopexit ], [ %.sroa.0150.2284, %.loopexit.split-lp181 ], [ %.sroa.0150.2284, %.loopexit180 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp183, %.loopexit.split-lp181 ], [ %lpad.loopexit182, %.loopexit180 ] ; 2 uses
  %i.fj = load ptr, ptr %i.y, align 8, !tbaa !24  ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.z
  br i1 %i.fk, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82: ; preds = %bb.ai
  %i.fl = load i64, ptr %i.z, align 8, !tbaa !28
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82, %bb.x
  %.sroa.29.4 = phi ptr [ %.sroa.29.1, %bb.x ], [ %.sroa.29.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82 ], [ %.sroa.29.3, %bb.ai ] ; 2 uses
  %.sroa.0150.4 = phi ptr [ %.sroa.0150.1, %bb.x ], [ %.sroa.0150.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82 ], [ %.sroa.0150.3, %bb.ai ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.x ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82 ], [ %.pn, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.fn = load ptr, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.aa
  br i1 %i.fo, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84
  %i.fp = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit87

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit87: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85, %bb.w
  %.sroa.29.5 = phi ptr [ %.sroa.29.1, %bb.w ], [ %.sroa.29.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85 ], [ %.sroa.29.4, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84 ]
  %.sroa.0150.5 = phi ptr [ %.sroa.0150.1, %bb.w ], [ %.sroa.0150.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85 ], [ %.sroa.0150.4, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84 ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.w ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85 ], [ %.pn.pn, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fr = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ac
  br i1 %i.fs, label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit87
  %i.ft = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #24
  br label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit90

_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit90: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69

_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69:      ; preds = %bb.v, %.loopexit185, %.loopexit.split-lp186, %.loopexit190, %.loopexit.split-lp191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67, %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit90, %bb.u
  %.sroa.29.6 = phi ptr [ %.sroa.29.5, %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit90 ], [ %.sroa.29.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67 ], [ %.sroa.29.2.lcssa, %.loopexit.split-lp191 ], [ %.sroa.29.1, %bb.u ], [ %.sroa.14.0289, %.loopexit.split-lp186 ], [ %.sroa.29.2.lcssa, %.loopexit190 ], [ %.sroa.14.0289, %.loopexit185 ], [ %.sroa.29.1, %bb.v ] ; 2 uses
  %.sroa.0150.6 = phi ptr [ %.sroa.0150.5, %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit90 ], [ %.sroa.0150.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67 ], [ %.sroa.0150.2.lcssa, %.loopexit.split-lp191 ], [ %.sroa.0150.1, %bb.u ], [ %.sroa.0150.0290, %.loopexit.split-lp186 ], [ %.sroa.0150.2.lcssa, %.loopexit190 ], [ %.sroa.0150.0290, %.loopexit185 ], [ %.sroa.0150.1, %bb.v ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit90 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67 ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp191 ], [ %i.dq, %bb.u ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp186 ], [ %lpad.loopexit192, %.loopexit190 ], [ %lpad.loopexit187, %.loopexit185 ], [ %i.dr, %bb.v ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !24 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91: ; preds = %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !28
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93: ; preds = %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91, %bb.g
  %.sroa.29.7 = phi ptr [ null, %bb.g ], [ %.sroa.29.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91 ], [ %.sroa.29.6, %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69 ] ; 2 uses
  %.sroa.0150.7 = phi ptr [ null, %bb.g ], [ %.sroa.0150.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91 ], [ %.sroa.0150.6, %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69 ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91 ], [ %.pn.pn.pn.pn.pn.pn, %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit69 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !28
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #24
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit96

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit96: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94, %bb.f
  %.sroa.29.8 = phi ptr [ null, %bb.f ], [ %.sroa.29.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94 ], [ %.sroa.29.7, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93 ]
  %.sroa.0150.8 = phi ptr [ null, %bb.f ], [ %.sroa.0150.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94 ], [ %.sroa.0150.7, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit96
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !28
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #24
  br label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit99

_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit99: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit50

.thread:                                          ; preds = %bb.b
  %i.gn = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  store i64 %1, ptr %i.gn, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx172, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  br label %.lr.ph297

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_1lsERSoRKNS2_10XMLElementE:bb.a
  %.not = icmp eq ptr %i.ac, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN4absl12lts_2025051214flags_internal11ForEachFlagESt8functionIFvRNS0_15CommandLineFlagEEE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKS2_EENS5_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !134
  br i1 %i.e, label %"_ZSt10__invoke_rIvRZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.f = load ptr, ptr %1, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !134
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 4 uses
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051214flags_internal17kStrippedFlagHelpE) #23
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i: ; preds = %bb.b
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !24
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.j, 0
  %.pre35.i.i.i = load ptr, ptr %2, align 8, !tbaa !24 ; 3 uses
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.pre35.i.i.i, ptr nonnull @_ZN4absl12lts_2025051214flags_internal17kStrippedFlagHelpE, i64 %i.j)
  %i.n = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i: ; preds = %bb.d, %bb.c, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i
  %i.o = phi ptr [ %.pre.i.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i ], [ %.pre35.i.i.i, %bb.d ], [ %.pre35.i.i.i, %bb.c ] ; 2 uses
  %i.p = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i ], [ %i.n, %bb.d ], [ true, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
  %i.s = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
  %i.t = load i64, ptr %i.q, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.p, label %"_ZSt10__invoke_rIvRZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !135, !nonnull !31, !align !32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNKSt8functionIFbRKN4absl12lts_2025051215CommandLineFlagEEEclES4_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbRKN4absl12lts_2025051215CommandLineFlagEEEclES4_.exit.i.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !137
  br i1 %i.aa, label %bb.g, label %"_ZSt10__invoke_rIvRZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.g:                                             ; preds = %_ZNKSt8functionIFbRKN4absl12lts_2025051215CommandLineFlagEEEclES4_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ab = load ptr, ptr %1, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !134
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !138, !nonnull !31, !align !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ag = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i.thread.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.h
  %.1.i.i.in.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %.1.i.i.i.i.i.i = add i64 %.1.i.i.in.i.i.i.i, -1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i.i.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  switch i8 %i.ak, label %bb.h [
    i8 92, label %.loopexit.i.i.i
    i8 47, label %.loopexit.i.i.i
  ]

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, 0
  br i1 %.not17.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.thread.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i, !llvm.loop !139

._crit_edge.i.i.i.i.thread.i.i.i:                 ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br label %bb.k

.loopexit.i.i.i:                                  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %.1.i.i.in.i.i.i.i) ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.a, align 8, !tbaa !21
  %i.an = icmp ugt i64 %.sroa.speculated.i.i.i.i.i, 15
  br i1 %i.an, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.i.i.thread.i unwind label %bb.s ; 2 uses

._crit_edge.i.i.i.i.i.i.thread.i:                 ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.ao, ptr %4, align 8, !tbaa !24
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !28
  br label %bb.j

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.loopexit.i.i.i
  %cond.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 1
  br i1 %cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !28
  store i8 %i.aq, ptr %i.am, align 8, !tbaa !28
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.thread.i
  %i.ar = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.thread.i ], [ %i.am, %._crit_edge.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.ag, i64 %.sroa.speculated.i.i.i.i.i, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !21
  %.pre5.i = load ptr, ptr %4, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.thread.i.i.i
  %i.as = phi ptr [ %i.al, %._crit_edge.i.i.i.i.thread.i.i.i ], [ %.pre5.i, %bb.j ], [ %i.am, %bb.i ]
  %i.at = phi i64 [ 0, %._crit_edge.i.i.i.i.thread.i.i.i ], [ %.pre.i, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.au = phi ptr [ %i.al, %._crit_edge.i.i.i.i.thread.i.i.i ], [ %i.am, %bb.j ], [ %i.am, %bb.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.at, ptr %i.av, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ax = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ay = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.t       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !140 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !142
  %.not.i.i16.i.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i16.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %1, ptr %i.ba, align 8, !tbaa !87
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !140
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !143 ; 4 uses
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 6 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.noexc17.i.i.i unwind label %bb.u

.noexc17.i.i.i:                                   ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bj ; 2 uses
  %5 = icmp ult i64 %i.bk, %i.bj
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %6 = select i1 %5, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %6, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bm = shl nuw nsw i64 %6, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #28
          to label %.noexc18.i.i.i unwind label %bb.u ; 4 uses

.noexc18.i.i.i:                                   ; preds = %_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store ptr %1, ptr %i.bo, align 8, !tbaa !87
  %i.bp = icmp sgt i64 %i.bh, 0
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i

bb.q:                                             ; preds = %.noexc18.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr align 8 %i.be, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i: ; preds = %bb.q, %.noexc18.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #24
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i
  store ptr %i.bn, ptr %i.ay, align 8, !tbaa !143
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !140
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %6
  store ptr %i.br, ptr %i.bb, align 8, !tbaa !142
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, %bb.n
  %i.bs = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.au
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i
  %i.bu = load i64, ptr %i.au, align 8, !tbaa !28
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bw = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !28
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %"_ZSt10__invoke_rIvRZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i

bb.t:                                             ; preds = %bb.l, %bb.k
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.p
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.u ], [ %i.cc, %bb.t ] ; 2 uses
  %i.ce = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.au
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i: ; preds = %bb.v
  %i.cg = load i64, ptr %i.au, align 8, !tbaa !28
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i, %bb.s
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i ], [ %i.cb, %bb.s ], [ %.pn.i.i.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ci = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !28
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit": ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt8functionIFbRKN4absl12lts_2025051215CommandLineFlagEEEclES4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKS2_EENS5_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS0_15CommandLineFlagEEENS1_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0", ptr %0, align 8, !tbaa !131
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !133
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !144
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.40", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEE11lower_boundERSH_.exit, label %bb.b, !llvm.loop !146

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEE11lower_boundERSH_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEE11lower_boundERSH_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEE11lower_boundERSH_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEE11lower_boundERSH_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %1, ptr %2, align 8, !tbaa !60, !alias.scope !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St6vectorIPKN4absl12lts_2025051215CommandLineFlagESaISE_EESt4lessIS5_ESaIS6_IS7_SG_EEEESt10_Select1stISM_ESI_SaISM_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESV_IJEEEEESt17_Rb_tree_iteratorISM_ESt23_Rb_tree_const_iteratorISM_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}
end_hunk_1
