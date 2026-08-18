inline.NumInlined: 6299
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7testing8internal7PrintToINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEEvRKSt4pairIT_T0_EPSo:bb.a
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !363
  %.not.i7 = icmp eq i64 %i.v, 0
  br i1 %.not.i7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase14DescribeToImplEPSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

declare void @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase22DescribeNegationToImplEPSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEESaISD_EEE15AnalyzeElementsIN9__gnu_cxx17__normal_iteratorIPKSD_SF_EEEENS0_11MatchMatrixET_SQ_PS2_IS9_SaIS9_EEPNS_19MatchResultListenerE(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::MatchMatrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %2, ptr %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !555    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !557  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !558

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !557
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !287
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !9
  %.not62100 = icmp eq ptr %2, %3
  br i1 %.not62100, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge, label %.lr.ph106

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre141 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !525
  %.phi.trans.insert142 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre143 = load ptr, ptr %.phi.trans.insert142, align 8, !tbaa !546
  br label %._crit_edge107

.lr.ph106:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %._crit_edge
  %.024105 = phi i64 [ 0, %.lr.ph106 ], [ %i.aq, %._crit_edge ]
  %.sroa.058.0104 = phi ptr [ %2, %.lr.ph106 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %.sroa.050.0103 = phi ptr [ null, %.lr.ph106 ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.9.0102 = phi ptr [ null, %.lr.ph106 ], [ %.sroa.9.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.13.0101 = phi ptr [ null, %.lr.ph106 ], [ %.sroa.13.1.lcssa.a, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !287
  %.not63 = icmp eq ptr %i.q, null
  br i1 %.not63, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN7testing13PrintToStringISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEEES7_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.058.0104)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !557  ; 6 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !559
  %.not.i.i31 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !28
  %i.u = load ptr, ptr %8, align 8, !tbaa !38     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.y, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.r, align 8, !tbaa !38
  %i.z = load i64, ptr %i.m, align 8, !tbaa !34
  store i64 %i.z, ptr %i.t, align 8, !tbaa !34
  %.pre = load i64, ptr %i.n, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.w, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !32
  store ptr %i.m, ptr %8, align 8, !tbaa !38
  store i64 0, ptr %i.n, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !557
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !557
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  %.pre140 = load ptr, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.ae = icmp eq ptr %.pre140, %i.m
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.af = load i64, ptr %i.m, align 8, !tbaa !34
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre140, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.m
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.i
  %i.al = load i64, ptr %i.m, align 8, !tbaa !34
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.ai, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !525 ; 3 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !546 ; 2 uses
  %.not2793 = icmp eq ptr %i.an, %i.ao
  br i1 %.not2793, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %bb.j
  %.pre144146 = phi ptr [ %i.an, %bb.j ], [ %i.bs, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.br, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.13.1.lcssa.a = phi ptr [ %.sroa.13.0101, %bb.j ], [ %.sroa.13.3.a, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0102, %bb.j ], [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.050.1.lcssa = phi ptr [ %.sroa.050.0103, %bb.j ], [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %i.aq = add i64 %.024105, 1                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.058.0104, i64 48 ; 2 uses
  %.not62 = icmp eq ptr %i.ar, %3
  br i1 %.not62, label %._crit_edge107, label %bb.b, !llvm.loop !575

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.as = phi ptr [ %i.bs, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %i.ao, %bb.j ]
  %.01997 = phi i64 [ %i.bq, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 0, %bb.j ] ; 2 uses
  %.sroa.050.196 = phi ptr [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.050.0103, %bb.j ] ; 6 uses
  %.sroa.9.195 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.9.0102, %bb.j ] ; 3 uses
  %.sroa.13.194 = phi ptr [ %.sroa.13.3.a, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.13.0101, %bb.j ] ; 8 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.01997 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !529
  %i.aw = icmp ne ptr %i.av, null
  %i.ax = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.aw)
          to label %.noexc35 unwind label %.loopexit

.noexc35:                                         ; preds = %.lr.ph
  br i1 %i.ax, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.133, i32 noundef 234)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %bb.k
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.134, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc36
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.m

bb.l:                                             ; preds = %.noexc36
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc35
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !529
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !576
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.058.0104, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit unwind label %.loopexit, !inline_history !577

_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit: ; preds = %bb.m
  %i.bd = zext i1 %i.bc to i8                     ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.9.195, %.sroa.050.196
  br i1 %.not.i.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit
  store i8 %i.bd, ptr %.sroa.9.195, align 1, !tbaa !34
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit
  %i.be = ptrtoint ptr %.sroa.050.196 to i64
  %i.bf = ptrtoint ptr %.sroa.13.194 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 8 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775807
  br i1 %i.bh, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #25
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bi = add i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bg
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 9223372036854775807)
  %i.bl = select i1 %i.bj, i64 9223372036854775807, i64 %i.bk ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #24
          to label %.noexc41 unwind label %.loopexit ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bg ; 2 uses
  store i8 %i.bd, ptr %i.bn, align 1, !tbaa !34
  %i.bo = icmp sgt i64 %i.bg, 0
  br i1 %i.bo, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr align 1 %.sroa.13.194, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc41
  %.not.i17.i.i.i = icmp eq ptr %.sroa.13.194, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.13.194, i64 noundef %i.bg) #23
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.n
  %.sroa.13.3.a = phi ptr [ %i.bm, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.13.194, %bb.n ] ; 2 uses
  %.pn64 = phi ptr [ %i.bn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.9.195, %bb.n ]
  %.sroa.050.3 = phi ptr [ %i.bp, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.050.196, %bb.n ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn64, i64 1 ; 2 uses
  %i.bq = add i64 %.01997, 1                      ; 2 uses
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !525 ; 2 uses
  %i.bs = load ptr, ptr %i.o, align 8, !tbaa !546 ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 24
  %.not27 = icmp eq i64 %i.bq, %i.bw
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !578

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge107:                                   ; preds = %._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge
  %.pre144 = phi ptr [ %.pre143, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge ], [ %.pre144146, %._crit_edge ] ; 3 uses
  %i.bx = phi ptr [ %.pre141, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge ], [ %i.ap, %._crit_edge ] ; 6 uses
  %.sroa.13.0.lcssa.a = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge ], [ %.sroa.13.1.lcssa.a, %._crit_edge ] ; 5 uses
  %.sroa.050.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 2 uses
  %.024.lcssa = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge107_crit_edge ], [ %i.aq, %._crit_edge ] ; 4 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %.pre144 to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 14 uses
  store i64 %.024.lcssa, ptr %0, align 8, !tbaa !579
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !584
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = mul i64 %i.cb, %.024.lcssa              ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge107
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #25
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #24
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc4.i
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !552
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !554
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cg, i8 0, i64 %i.ce, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %.noexc43, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cj = phi ptr [ %i.cg, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.cl, align 8, !tbaa !585
  %.not117 = icmp eq i64 %.024.lcssa, 0
  br i1 %.not117, label %._crit_edge120, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.s
  %min.iters.check = icmp ult i64 %i.cb, 4
  %min.iters.check220 = icmp ult i64 %i.cb, 32
  %i.cm = and i64 %i.cb, 28
  %n.vec = and i64 %i.cb, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cm, 0
  %n.vec222 = and i64 %i.cb, -4                   ; 4 uses
  %cmp.n227 = icmp eq i64 %i.cb, %n.vec222
  %xtraiter = and i64 %i.cb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge115
  %i.cn = phi ptr [ %i.dt, %._crit_edge115 ], [ %i.bx, %.preheader.preheader ]
  %.018119 = phi i64 [ %i.du, %._crit_edge115 ], [ 0, %.preheader.preheader ] ; 3 uses
  %.sroa.048.0118 = phi ptr [ %.sroa.048.1.lcssa, %._crit_edge115 ], [ %.sroa.13.0.lcssa.a, %.preheader.preheader ] ; 7 uses
  %.not25111 = icmp eq ptr %i.cn, %.pre144
  br i1 %.not25111, label %._crit_edge115, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.sroa.048.0118219 = ptrtoaddr ptr %.sroa.048.0118 to i64
  %i.co = mul i64 %i.cb, %.018119
  %i.cp = add i64 %i.co, %i.ck
  %i.cq = mul i64 %.018119, %i.cb
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.cq  ; 7 uses
  %i.cs = sub i64 %.sroa.048.0118219, %i.cp
  %diff.check = icmp ugt i64 %i.cs, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check220, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ct = getelementptr i8, ptr %.sroa.048.0118, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0118, i64 %index ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !34
  %wide.load221 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !34
  %i.cv = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.cw = icmp ne <16 x i8> %wide.load221, zeroinitializer
  %i.cx = zext <16 x i1> %i.cv to <16 x i8>
  %i.cy = zext <16 x i1> %i.cw to <16 x i8>
  %i.cz = getelementptr i8, ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <16 x i8> %i.cx, ptr %i.cz, align 1, !tbaa !34
  store <16 x i8> %i.cy, ptr %i.da, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !586

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge115, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !589

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dc = getelementptr i8, ptr %.sroa.048.0118, i64 %n.vec222 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 3 uses
  %next.gep224 = getelementptr i8, ptr %.sroa.048.0118, i64 %index223
  %wide.load225 = load <4 x i8>, ptr %next.gep224, align 1, !tbaa !34
  %i.dd = icmp ne <4 x i8> %wide.load225, zeroinitializer
  %i.de = zext <4 x i1> %i.dd to <4 x i8>
  %i.df = getelementptr i8, ptr %i.cr, i64 %index223
  store <4 x i8> %i.de, ptr %i.df, align 1, !tbaa !34
  %index.next226 = add nuw i64 %index223, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next226, %n.vec222
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !590

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n227, label %._crit_edge115, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0113.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.048.1112.ph = phi ptr [ %.sroa.048.0118, %iter.check ], [ %i.ct, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0113.prol = phi i64 [ %i.dm, %vec.epilog.scalar.ph.prol ], [ %.0113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.048.1112.prol = phi ptr [ %i.dh, %vec.epilog.scalar.ph.prol ], [ %.sroa.048.1112.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.048.1112.prol, i64 1 ; 3 uses
  %i.di = load i8, ptr %.sroa.048.1112.prol, align 1, !tbaa !34
  %i.dj = icmp ne i8 %i.di, 0
  %i.dk = zext i1 %i.dj to i8
  %i.dl = getelementptr i8, ptr %i.cr, i64 %.0113.prol
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !34
  %i.dm = add i64 %.0113.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !591

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %.0113.unr = phi i64 [ %.0113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dm, %vec.epilog.scalar.ph.prol ]
  %.sroa.048.1112.unr = phi ptr [ %.sroa.048.1112.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %i.dn = sub nsw i64 %.0113.ph, %i.cb
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %._crit_edge115, label %vec.epilog.scalar.ph

._crit_edge120:                                   ; preds = %._crit_edge115, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i = icmp eq ptr %.sroa.13.0.lcssa.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge120
  %i.dp = ptrtoint ptr %.sroa.050.0.lcssa to i64
  %i.dq = ptrtoint ptr %.sroa.13.0.lcssa.a to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.13.0.lcssa.a, i64 noundef %i.dr) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge120, %bb.t
  ret void

bb.u:                                             ; preds = %.noexc4.i, %.noexc.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge115:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.dt = phi ptr [ %.pre144, %.preheader ], [ %i.bx, %middle.block ], [ %i.bx, %vec.epilog.middle.block ], [ %i.bx, %vec.epilog.scalar.ph ], [ %i.bx, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.048.1.lcssa = phi ptr [ %.sroa.048.0118, %.preheader ], [ %i.ct, %middle.block ], [ %i.dc, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.em, %vec.epilog.scalar.ph ]
  %i.du = add nuw i64 %.018119, 1                 ; 2 uses
  %.not = icmp eq i64 %i.du, %.024.lcssa
  br i1 %.not, label %._crit_edge120, label %.preheader, !llvm.loop !593

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0113 = phi i64 [ %i.es, %vec.epilog.scalar.ph ], [ %.0113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.048.1112 = phi ptr [ %i.em, %vec.epilog.scalar.ph ], [ %.sroa.048.1112.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.048.1112, i64 1
  %i.dw = load i8, ptr %.sroa.048.1112, align 1, !tbaa !34
  %i.dx = icmp ne i8 %i.dw, 0
  %i.dy = zext i1 %i.dx to i8
  %i.dz = getelementptr i8, ptr %i.cr, i64 %.0113
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !34
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.048.1112, i64 2
  %i.eb = load i8, ptr %i.dv, align 1, !tbaa !34
  %i.ec = icmp ne i8 %i.eb, 0
  %i.ed = zext i1 %i.ec to i8
  %i.ee = getelementptr i8, ptr %i.cr, i64 %.0113
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  store i8 %i.ed, ptr %i.ef, align 1, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.048.1112, i64 3
  %i.eh = load i8, ptr %i.ea, align 1, !tbaa !34
  %i.ei = icmp ne i8 %i.eh, 0
  %i.ej = zext i1 %i.ei to i8
  %i.ek = getelementptr i8, ptr %i.cr, i64 %.0113
  %i.el = getelementptr i8, ptr %i.ek, i64 2
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !34
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.048.1112, i64 4 ; 2 uses
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !34
  %i.eo = icmp ne i8 %i.en, 0
  %i.ep = zext i1 %i.eo to i8
  %i.eq = getelementptr i8, ptr %i.cr, i64 %.0113
  %i.er = getelementptr i8, ptr %i.eq, i64 3
  store i8 %i.ep, ptr %i.er, align 1, !tbaa !34
  %i.es = add i64 %.0113, 4                       ; 2 uses
  %.not25.3 = icmp eq i64 %i.es, %i.cb
  br i1 %.not25.3, label %._crit_edge115, label %vec.epilog.scalar.ph, !llvm.loop !594

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.u, %bb.l
  %.sroa.13.2.a = phi ptr [ %.sroa.13.194, %bb.l ], [ %.sroa.13.0101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.13.0.lcssa.a, %bb.u ], [ %.sroa.13.194, %.loopexit ], [ %.sroa.13.194, %.loopexit.split-lp ] ; 3 uses
  %.sroa.050.2 = phi ptr [ %.sroa.050.196, %bb.l ], [ %.sroa.050.0103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.050.0.lcssa, %bb.u ], [ %.sroa.050.196, %.loopexit ], [ %.sroa.050.196, %.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ds, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i45 = icmp eq ptr %.sroa.13.2.a, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %.body
  %i.et = ptrtoint ptr %.sroa.050.2 to i64
  %i.eu = ptrtoint ptr %.sroa.13.2.a to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.13.2.a, i64 noundef %i.ev) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit46

_ZNSt6vectorIcSaIcEED2Ev.exit46:                  ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn28
}

declare noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase11FindPairingERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !555    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !557  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !558

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !555
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !559
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEEES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal7PrintToINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !28, !alias.scope !601
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !32, !alias.scope !601
  store i8 0, ptr %i.b, align 8, !tbaa !34, !alias.scope !601
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35, !noalias !601 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !601 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !601 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !601 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !34, !alias.scope !601
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #23
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE5PrintERKSC_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !9
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !9
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !34
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #21
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !9
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !557  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !555    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_129Status_AddSourceLocation_Test8TestBodyEv:bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.u
  %.pn63 = phi { ptr, i32 } [ %i.at, %bb.u ], [ %i.cn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !97 ; 2 uses
  %i.cq = trunc i64 %i.cp to i1
  br i1 %i.cq, label %_ZN4absl12lts_202605266StatusD2Ev.exit72, label %bb.as

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1
  %i.cr = inttoptr i64 %i.cl to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cr)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  tail call void @__clang_call_terminate(ptr %i.ct) #22
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1, %bb.ap
  %i.cu = load i64, ptr %1, align 16, !tbaa !97   ; 2 uses
  %i.cv = trunc i64 %i.cu to i1
  br i1 %i.cv, label %_ZN4absl12lts_202605266StatusD2Ev.exit.1, label %bb.ar

bb.ar:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  %i.cw = inttoptr i64 %i.cu to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cw)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit.1 unwind label %bb.aq

_ZN4absl12lts_202605266StatusD2Ev.exit.1:         ; preds = %bb.ar, %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.cx = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 53, i64 3, ptr nonnull @.str.168, i64 883, ptr nonnull @.str.2) ; 3 uses
  store i64 %i.cx, ptr %3, align 8, !tbaa !97
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %.split144.us, label %.split142.preheader

.split144.us:                                     ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.1, %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit74.9
  %i.cz = phi i64 [ %i.dz, %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit74.9 ], [ 1, %_ZN4absl12lts_202605266StatusD2Ev.exit.1 ] ; 2 uses
  %i.da = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24
          to label %bb.bf unwind label %bb.bn     ; 5 uses

bb.as:                                            ; preds = %bb.ao
  %i.db = inttoptr i64 %i.cp to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.db)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit72 unwind label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #22
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit72:         ; preds = %bb.ao, %bb.as
  %i.de = load i64, ptr %1, align 16, !tbaa !97   ; 2 uses
  %i.df = trunc i64 %i.de to i1
  br i1 %i.df, label %.loopexit124, label %bb.au

bb.au:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit72
  %i.dg = inttoptr i64 %i.de to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dg)
          to label %.loopexit124 unwind label %bb.at

.loopexit124:                                     ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit72, %bb.au, %.loopexit124.loopexit152
  %.pn63.pn = phi { ptr, i32 } [ %i.e, %.loopexit124.loopexit152 ], [ %.pn63, %bb.au ], [ %.pn63, %_ZN4absl12lts_202605266StatusD2Ev.exit72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.cf

.split142.preheader:                              ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.1
  %i.dh = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.cx, i64 0, ptr nonnull @.str.82)
          to label %bb.av unwind label %bb.be     ; 3 uses

bb.av:                                            ; preds = %.split142.preheader
  store i64 %i.dh, ptr %3, align 8, !tbaa !97
  %i.di = icmp ne i64 %i.dh, 1
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dh, i64 0, ptr nonnull @.str.82)
          to label %bb.aw unwind label %bb.be     ; 3 uses

bb.aw:                                            ; preds = %bb.av
  store i64 %i.dj, ptr %3, align 8, !tbaa !97
  %i.dk = icmp ne i64 %i.dj, 1
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dj, i64 0, ptr nonnull @.str.82)
          to label %bb.ax unwind label %bb.be     ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  store i64 %i.dl, ptr %3, align 8, !tbaa !97
  %i.dm = icmp ne i64 %i.dl, 1
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dl, i64 0, ptr nonnull @.str.82)
          to label %bb.ay unwind label %bb.be     ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.dn, ptr %3, align 8, !tbaa !97
  %i.do = icmp ne i64 %i.dn, 1
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dn, i64 0, ptr nonnull @.str.82)
          to label %bb.az unwind label %bb.be     ; 3 uses

bb.az:                                            ; preds = %bb.ay
  store i64 %i.dp, ptr %3, align 8, !tbaa !97
  %i.dq = icmp ne i64 %i.dp, 1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dp, i64 0, ptr nonnull @.str.82)
          to label %bb.ba unwind label %bb.be     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  store i64 %i.dr, ptr %3, align 8, !tbaa !97
  %i.ds = icmp ne i64 %i.dr, 1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dr, i64 0, ptr nonnull @.str.82)
          to label %bb.bb unwind label %bb.be     ; 3 uses

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.dt, ptr %3, align 8, !tbaa !97
  %i.du = icmp ne i64 %i.dt, 1
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dt, i64 0, ptr nonnull @.str.82)
          to label %bb.bc unwind label %bb.be     ; 3 uses

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.dv, ptr %3, align 8, !tbaa !97
  %i.dw = icmp ne i64 %i.dv, 1
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dv, i64 0, ptr nonnull @.str.82)
          to label %bb.bd unwind label %bb.be     ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.dx, ptr %3, align 8, !tbaa !97
  %i.dy = icmp ne i64 %i.dx, 1
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dx, i64 0, ptr nonnull @.str.82)
          to label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit74.9 unwind label %bb.be ; 3 uses

_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit74.9: ; preds = %bb.bd
  store i64 %i.dz, ptr %3, align 8, !tbaa !97
  %i.ea = icmp ne i64 %i.dz, 1
  tail call void @llvm.assume(i1 %i.ea)
  br label %.split144.us

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %.split142.preheader
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bf:                                            ; preds = %.split144.us
  store ptr %i.da, ptr %4, align 8, !tbaa !1089
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1091
  store i32 883, ptr %i.da, align 4, !tbaa !219
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !1092
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 %4, i64 888, ptr nonnull @.str.2)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit76 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit84

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 4) #23
  %i.ef = trunc i64 %i.cz to i1
  br i1 %i.ef, label %_ZN4absl12lts_202605266StatusD2Ev.exit77, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit76
  %i.eg = inttoptr i64 %i.cz to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eg)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit77 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  tail call void @__clang_call_terminate(ptr %i.ei) #22
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit77:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit76, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ej = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 53, i64 3, ptr nonnull @.str.168, i64 893, ptr nonnull @.str.2) ; 2 uses
  store i64 %i.ej, ptr %5, align 8, !tbaa !97
  %i.ek = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24
          to label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i unwind label %bb.bp ; 4 uses

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit77
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 893, ptr %i.ek, align 4, !tbaa !219
  %i.em = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #24
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %bb.bq ; 4 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  store i32 893, ptr %i.em, align 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 4) #23
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 44
  %.sroa.13.0145 = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  br label %bb.br

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.eo = ptrtoint ptr %.sroa.13.0 to i64
  %i.ep = ptrtoint ptr %.sroa.21.4.a to i64       ; 2 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.sroa.13.0, %.sroa.21.4.a
  br i1 %.not.i.i.i.i, label %.thread, label %bb.bj

.thread:                                          ; preds = %bb.bi
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.es = getelementptr inbounds i8, ptr null, i64 %i.eq ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.es, ptr %i.et, align 8, !tbaa !1091
  br label %bb.by

bb.bj:                                            ; preds = %bb.bi
  %i.eu = icmp ugt i64 %i.eq, 9223372036854775804
  br i1 %i.eu, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !1236

.noexc.i.i:                                       ; preds = %bb.bj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc81 unwind label %bb.bq

.noexc81:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bj
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #24
          to label %.noexc82 unwind label %bb.bq  ; 8 uses

.noexc82:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ev, ptr %6, align 8, !tbaa !1089
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !1092
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eq ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !1091
  %i.ez = icmp samesign ugt i64 %i.eq, 4
  br i1 %i.ez, label %bb.bk, label %bb.bl, !prof !1237

bb.bk:                                            ; preds = %.noexc82
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ev, ptr align 4 %.sroa.21.4.a, i64 %i.eq, i1 false)
  br label %bb.by

bb.bl:                                            ; preds = %.noexc82
  %i.fa = icmp eq i64 %i.eq, 4
  br i1 %i.fa, label %bb.bm, label %bb.by

bb.bm:                                            ; preds = %bb.bl
  %i.fb = load i32, ptr %.sroa.21.4.a, align 4, !tbaa !219
  store i32 %i.fb, ptr %i.ev, align 4, !tbaa !219
  br label %bb.by

bb.bn:                                            ; preds = %.split144.us
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZNSt6vectorIiSaIiEED2Ev.exit84:                  ; preds = %bb.bf
  %i.fd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 4) #23
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEED2Ev.exit84, %bb.be
  %.pn61 = phi { ptr, i32 } [ %i.eb, %bb.be ], [ %i.fd, %_ZNSt6vectorIiSaIiEED2Ev.exit84 ], [ %i.fc, %bb.bn ]
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.cf

bb.bp:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit77
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit98

bb.bq:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.sroa.21.1.a = phi ptr [ %.sroa.21.4.a, %.noexc.i.i ], [ %.sroa.21.4.a, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ek, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %.sroa.0101.1 = phi ptr [ %.sroa.0101.4, %.noexc.i.i ], [ %.sroa.0101.4, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.el, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.fg = phi i64 [ %i.ej, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.fz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.13.0149 = phi ptr [ %.sroa.13.0145, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.13.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.051148 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ga, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.sroa.0101.0147 = phi ptr [ %i.en, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0101.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.21.0146 = phi ptr [ %i.em, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.21.4.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit86, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fi = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.fg, i64 898, ptr nonnull @.str.2)
          to label %.noexc85 unwind label %bb.bx  ; 3 uses

.noexc85:                                         ; preds = %bb.bs
  store i64 %i.fi, ptr %5, align 8, !tbaa !97
  %i.fj = icmp ne i64 %i.fi, 1
  tail call void @llvm.assume(i1 %i.fj)
  br label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit86

_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit86: ; preds = %.noexc85, %bb.br
  %i.fk = phi i64 [ %i.fi, %.noexc85 ], [ 1, %bb.br ]
  %.not.i.i = icmp eq ptr %.sroa.13.0149, %.sroa.0101.0147
  br i1 %.not.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit86
  store i32 898, ptr %.sroa.13.0149, align 4, !tbaa !219
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bu:                                            ; preds = %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit86
  %i.fl = ptrtoint ptr %.sroa.13.0149 to i64
  %i.fm = ptrtoint ptr %.sroa.21.0146 to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 6 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775804
  br i1 %i.fo, label %bb.bv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #25
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.fp = ashr exact i64 %i.fn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 2305843009213693951)
  %i.ft = select i1 %i.fr, i64 2305843009213693951, i64 %i.fs ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.ft, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.fu = shl nuw nsw i64 %i.ft, 2
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #24
          to label %.noexc89 unwind label %.loopexit ; 4 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fn ; 2 uses
  store i32 898, ptr %i.fw, align 4, !tbaa !219
  %i.fx = icmp sgt i64 %i.fn, 0
  br i1 %i.fx, label %bb.bw, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.bw:                                            ; preds = %.noexc89
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %.sroa.21.0146, i64 %i.fn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bw, %.noexc89
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.21.0146, i64 noundef %i.fn) #23
  %.pre = load i64, ptr %5, align 8, !tbaa !97
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ft
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bt
  %i.fz = phi i64 [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.fk, %bb.bt ]
  %.sroa.21.4.a = phi ptr [ %i.fv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.21.0146, %bb.bt ] ; 10 uses
  %.pn = phi ptr [ %i.fw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0149, %bb.bt ]
  %.sroa.0101.4 = phi ptr [ %i.fy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0101.0147, %bb.bt ] ; 6 uses
  %i.ga = add nuw nsw i32 %.051148, 1             ; 2 uses
  %.sroa.13.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %exitcond.not = icmp eq i32 %i.ga, 10
  br i1 %exitcond.not, label %bb.bi, label %bb.br, !llvm.loop !1238

bb.bx:                                            ; preds = %bb.bs
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

.loopexit.split-lp:                               ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

bb.by:                                            ; preds = %.thread, %bb.bk, %bb.bl, %bb.bm
  %i.gc = phi ptr [ %i.ex, %bb.bk ], [ %i.ex, %bb.bl ], [ %i.ex, %bb.bm ], [ %i.es, %.thread ] ; 3 uses
  %i.gd = phi ptr [ %i.ew, %bb.bk ], [ %i.ew, %bb.bl ], [ %i.ew, %bb.bm ], [ %i.er, %.thread ]
  %i.ge = phi ptr [ %i.ev, %bb.bk ], [ %i.ev, %bb.bl ], [ %i.ev, %bb.bm ], [ null, %.thread ] ; 6 uses
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !1092
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef align 8 %6, i64 901, ptr nonnull @.str.2)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %.not.i.i.i90 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIiSaIiEED2Ev.exit93, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gh) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit93

_ZNSt6vectorIiSaIiEED2Ev.exit93:                  ; preds = %bb.bz, %bb.ca
  %i.gi = ptrtoint ptr %.sroa.0101.4 to i64
  %i.gj = sub i64 %i.gi, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.21.4.a, i64 noundef %i.gj) #23
  %.pre160 = load i64, ptr %5, align 8, !tbaa !97 ; 2 uses
  %i.gk = trunc i64 %.pre160 to i1
  br i1 %i.gk, label %_ZN4absl12lts_202605266StatusD2Ev.exit94, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit93
  %i.gl = inttoptr i64 %.pre160 to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.gl)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit94 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  tail call void @__clang_call_terminate(ptr %i.gn) #22
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit94:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit93, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.cd:                                            ; preds = %bb.by
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIiSaIiEED2Ev.exit96, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gp = ptrtoint ptr %i.gc to i64
  %i.gq = ptrtoint ptr %i.ge to i64
  %i.gr = sub i64 %i.gp, %i.gq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gr) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

_ZNSt6vectorIiSaIiEED2Ev.exit96:                  ; preds = %bb.bq, %bb.bx, %bb.cd, %bb.ce, %.loopexit.split-lp, %.loopexit
  %.sroa.21.2.a = phi ptr [ %.sroa.21.4.a, %bb.ce ], [ %.sroa.21.0146, %bb.bx ], [ %.sroa.21.1.a, %bb.bq ], [ %.sroa.21.4.a, %bb.cd ], [ %.sroa.21.0146, %.loopexit ], [ %.sroa.21.0146, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0101.2 = phi ptr [ %.sroa.0101.4, %bb.ce ], [ %.sroa.0101.0147, %bb.bx ], [ %.sroa.0101.1, %bb.bq ], [ %.sroa.0101.4, %bb.cd ], [ %.sroa.13.0149, %.loopexit ], [ %.sroa.13.0149, %.loopexit.split-lp ]
  %.pn57.pn = phi { ptr, i32 } [ %i.go, %bb.ce ], [ %i.gb, %bb.bx ], [ %i.ff, %bb.bq ], [ %i.go, %bb.cd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gs = ptrtoint ptr %.sroa.0101.2 to i64
  %i.gt = ptrtoint ptr %.sroa.21.2.a to i64
  %i.gu = sub i64 %i.gs, %i.gt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.21.2.a, i64 noundef %i.gu) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit98

_ZNSt6vectorIiSaIiEED2Ev.exit98:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit96, %bb.bp
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.bp ], [ %.pn57.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit96 ]
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit98, %bb.bo, %.loopexit124
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %.loopexit124 ], [ %.pn61, %bb.bo ], [ %.pn57.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit98 ]
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134Status_WithSourceLocationCopy_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134Status_WithSourceLocationCopy_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_134Status_WithSourceLocationCopy_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_134Status_WithSourceLocationCopy_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_134Status_WithSourceLocationCopy_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::Status", align 8 ; 9 uses
  %2 = alloca %"class.absl::lts_20260526::Status", align 8 ; 10 uses
  %3 = alloca %"class.std::vector.242", align 8   ; 4 uses
  %4 = alloca %"class.std::vector.242", align 8   ; 4 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 53, i64 7, ptr nonnull @.str.87, i64 907, ptr nonnull @.str.2) ; 6 uses
  store i64 %i.a, ptr %1, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  store i64 %i.a, ptr %2, align 8, !tbaa !97, !alias.scope !1239
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4, !noalias !1239 ; 0 uses
  br label %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i

_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i:   ; preds = %bb.b, %bb.a
  %i.e = icmp eq i64 %i.a, 1
  br i1 %i.e, label %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i
  %i.f = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.a, i64 911, ptr nonnull @.str.2)
          to label %.noexc.i.i unwind label %bb.d, !noalias !1239 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.c
  store i64 %i.f, ptr %2, align 8, !tbaa !97, !alias.scope !1239
  %i.g = icmp ne i64 %i.f, 1
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit: ; preds = %.noexc.i.i, %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i
  %i.i = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24
          to label %bb.e unwind label %bb.h       ; 5 uses

bb.e:                                             ; preds = %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit
  store ptr %i.i, ptr %3, align 8, !tbaa !1089
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1091
  store i32 907, ptr %i.i, align 4, !tbaa !219
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !1092
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 %3, i64 914, ptr nonnull @.str.2)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit36

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 4) #23
  %i.m = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %bb.f unwind label %bb.i       ; 6 uses

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  store ptr %i.m, ptr %4, align 8, !tbaa !1089
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !1091
  store i32 907, ptr %i.m, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 911, ptr %.sroa.5.0..sroa_idx, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !1092
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef align 8 %4, i64 915, ptr nonnull @.str.2)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit32 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit38

_ZNSt6vectorIiSaIiEED2Ev.exit32:                  ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.q = load i64, ptr %1, align 8, !tbaa !97, !noalias !1242 ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !97, !noalias !1242 ; 3 uses
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit32
  %i.t = or i64 %i.r, %i.q
  %i.u = and i64 %i.t, 1
  %or.cond.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %or.cond.not.i.i.i, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i

_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i: ; preds = %bb.g
  %i.v = inttoptr i64 %i.q to ptr
  %i.w = inttoptr i64 %i.r to ptr
  %i.x = invoke noundef zeroext i1 @_ZNK4absl12lts_2026052615status_internal9StatusRepeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.w)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i
  br i1 %i.x, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i

_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i: ; preds = %.noexc, %_ZNSt6vectorIiSaIiEED2Ev.exit32
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.j

_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i: ; preds = %.noexc, %bb.g
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605266StatusES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.197, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.j

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i
  %i.y = load i8, ptr %5, align 8, !tbaa !44, !range !54, !noundef !55
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.t, label %bb.k

bb.h:                                             ; preds = %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIiSaIiEED2Ev.exit36:                  ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 4) #23
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIiSaIiEED2Ev.exit38:                  ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 8) #23
  br label %.body

bb.j:                                             ; preds = %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i, %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit
end_hunk_1
