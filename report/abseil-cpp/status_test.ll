Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/status_test?download=true
inline.NumInlined: 6292
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
  %.not63101 = icmp eq ptr %2, %3
  br i1 %.not63101, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge, label %.lr.ph107

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre142 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !525
  %.phi.trans.insert143 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre144 = load ptr, ptr %.phi.trans.insert143, align 8, !tbaa !546
  br label %._crit_edge108

.lr.ph107:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %._crit_edge
  %.024106 = phi i64 [ 0, %.lr.ph107 ], [ %i.ar, %._crit_edge ]
  %.sroa.059.0105 = phi ptr [ %2, %.lr.ph107 ], [ %i.as, %._crit_edge ] ; 3 uses
  %.sroa.050.0104 = phi ptr [ null, %.lr.ph107 ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.9.0103 = phi ptr [ null, %.lr.ph107 ], [ %.sroa.9.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.13.0102 = phi ptr [ null, %.lr.ph107 ], [ %.sroa.13.1.lcssa.a, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !287
  %.not64 = icmp eq ptr %i.q, null
  br i1 %.not64, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN7testing13PrintToStringISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEEES7_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.059.0105)
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
  %.pre141 = load ptr, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.ae = icmp eq ptr %.pre141, %i.m
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.af = load i64, ptr %i.m, align 8, !tbaa !34
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre141, i64 noundef %i.ag) #23
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
  %.not2794 = icmp eq ptr %i.an, %i.ao
  br i1 %.not2794, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %bb.j
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.bt, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %i.aq = phi ptr [ %i.an, %bb.j ], [ %i.bs, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.13.1.lcssa.a = phi ptr [ %.sroa.13.0102, %bb.j ], [ %.sroa.13.3.a, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0103, %bb.j ], [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.050.1.lcssa = phi ptr [ %.sroa.050.0104, %bb.j ], [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %i.ar = add i64 %.024106, 1                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.059.0105, i64 48 ; 2 uses
  %.not63 = icmp eq ptr %i.as, %3
  br i1 %.not63, label %._crit_edge108, label %bb.b, !llvm.loop !575

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.at = phi ptr [ %i.bt, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %i.ao, %bb.j ]
  %.01998 = phi i64 [ %i.br, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 0, %bb.j ] ; 2 uses
  %.sroa.050.197 = phi ptr [ %.sroa.050.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.050.0104, %bb.j ] ; 8 uses
  %.sroa.9.196 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.9.0103, %bb.j ] ; 6 uses
  %.sroa.13.195 = phi ptr [ %.sroa.13.3.a, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.13.0102, %bb.j ] ; 6 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.01998 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !529
  %i.ax = icmp ne ptr %i.aw, null
  %i.ay = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ax)
          to label %.noexc35 unwind label %.loopexit

.noexc35:                                         ; preds = %.lr.ph
  br i1 %i.ay, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.133, i32 noundef 234)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %bb.k
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.134, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc36
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.m

bb.l:                                             ; preds = %.noexc36
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc35
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !529
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !576
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.059.0105, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit unwind label %.loopexit, !inline_history !577

_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit: ; preds = %bb.m
  %i.be = zext i1 %i.bd to i8                     ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.9.196, %.sroa.13.195
  br i1 %.not.i.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit
  store i8 %i.be, ptr %.sroa.9.196, align 1, !tbaa !34
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.o:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_202605264CordEEE15MatchAndExplainESE_PNS_19MatchResultListenerE.exit
  %i.bf = ptrtoint ptr %.sroa.9.196 to i64
  %i.bg = ptrtoint ptr %.sroa.050.197 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 8 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775807
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #25
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bj = add i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bh
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 9223372036854775807)
  %i.bm = select i1 %i.bk, i64 9223372036854775807, i64 %i.bl ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #24
          to label %.noexc41 unwind label %.loopexit ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store i8 %i.be, ptr %i.bo, align 1, !tbaa !34
  %i.bp = icmp sgt i64 %i.bh, 0
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %.sroa.050.197, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc41
  %.not.i17.i.i.i = icmp eq ptr %.sroa.050.197, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.197, i64 noundef %i.bh) #23
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.n
  %.sroa.13.3.a = phi ptr [ %i.bq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.13.195, %bb.n ] ; 2 uses
  %.pn65 = phi ptr [ %i.bo, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.9.196, %bb.n ]
  %.sroa.050.3 = phi ptr [ %i.bn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.050.197, %bb.n ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn65, i64 1 ; 2 uses
  %i.br = add i64 %.01998, 1                      ; 2 uses
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !525 ; 2 uses
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !546 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24
  %.not27 = icmp eq i64 %i.br, %i.bx
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !578

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.13.195.lcssa = phi ptr [ %.sroa.13.195, %.lr.ph ], [ %.sroa.13.195, %bb.k ], [ %.sroa.13.195, %bb.m ], [ %.sroa.9.196, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge108:                                   ; preds = %._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge
  %i.by = phi ptr [ %.pre144, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ap, %._crit_edge ]
  %i.bz = phi ptr [ %.pre142, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.aq, %._crit_edge ]
  %.sroa.13.0.lcssa.a = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.13.1.lcssa.a, %._crit_edge ] ; 2 uses
  %.sroa.050.0.lcssa = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 5 uses
  %.024.lcssa = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge ], [ %i.ar, %._crit_edge ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24                ; 4 uses
  store i64 %.024.lcssa, ptr %0, align 8, !tbaa !579
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !584
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = mul i64 %i.cf, %.024.lcssa              ; 5 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge108
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #25
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %.noexc4.i

.noexc4.i:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #24
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc4.i
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !552
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !554
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.ci, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %.noexc43, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cn = phi ptr [ %i.ck, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.noexc43 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !tbaa !585
  %.not118 = icmp eq i64 %.024.lcssa, 0
  br i1 %.not118, label %._crit_edge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.s
  %.pre145 = load ptr, ptr %i.cb, align 8, !tbaa !525 ; 6 uses
  %.pre146 = load ptr, ptr %i.ca, align 8, !tbaa !546 ; 3 uses
  %i.cq = ptrtoint ptr %.pre145 to i64
  %i.cr = ptrtoint ptr %.pre146 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24                ; 10 uses
  %min.iters.check = icmp ult i64 %i.ct, 4
  %min.iters.check222 = icmp ult i64 %i.ct, 32
  %i.cu = and i64 %i.ct, 28
  %n.vec = and i64 %i.ct, -32                     ; 5 uses
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  %n.vec224 = and i64 %i.ct, -4                   ; 4 uses
  %cmp.n229 = icmp eq i64 %i.ct, %n.vec224
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge116
  %i.cv = phi ptr [ %.pre145, %.preheader.lr.ph ], [ %i.eb, %._crit_edge116 ]
  %.018120 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ec, %._crit_edge116 ] ; 3 uses
  %.sroa.048.0119 = phi ptr [ %.sroa.050.0.lcssa, %.preheader.lr.ph ], [ %.sroa.048.1.lcssa, %._crit_edge116 ] ; 7 uses
  %.not25112 = icmp eq ptr %i.cv, %.pre146
  br i1 %.not25112, label %._crit_edge116, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.sroa.048.0119221 = ptrtoaddr ptr %.sroa.048.0119 to i64
  %i.cw = mul i64 %i.cf, %.018120
  %i.cx = add i64 %i.cw, %i.co
  %i.cy = mul i64 %.018120, %i.cf
  %i.cz = getelementptr i8, ptr %i.cn, i64 %i.cy  ; 7 uses
  %i.da = sub i64 %.sroa.048.0119221, %i.cx
  %diff.check = icmp ugt i64 %i.da, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check222, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0119, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !34
  %wide.load223 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !34
  %i.dd = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.de = icmp ne <16 x i8> %wide.load223, zeroinitializer
  %i.df = zext <16 x i1> %i.dd to <16 x i8>
  %i.dg = zext <16 x i1> %i.de to <16 x i8>
  %i.dh = getelementptr i8, ptr %i.cz, i64 %index ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store <16 x i8> %i.df, ptr %i.dh, align 1, !tbaa !34
  store <16 x i8> %i.dg, ptr %i.di, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !586

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !589

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dk = getelementptr i8, ptr %.sroa.048.0119, i64 %n.vec224 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next228, %vec.epilog.vector.body ] ; 3 uses
  %next.gep226 = getelementptr i8, ptr %.sroa.048.0119, i64 %index225
  %wide.load227 = load <4 x i8>, ptr %next.gep226, align 1, !tbaa !34
  %i.dl = icmp ne <4 x i8> %wide.load227, zeroinitializer
  %i.dm = zext <4 x i1> %i.dl to <4 x i8>
  %i.dn = getelementptr i8, ptr %i.cz, i64 %index225
  store <4 x i8> %i.dm, ptr %i.dn, align 1, !tbaa !34
  %index.next228 = add nuw i64 %index225, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next228, %n.vec224
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !590

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n229, label %._crit_edge116, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0114.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec224, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.048.1113.ph = phi ptr [ %.sroa.048.0119, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0114.prol = phi i64 [ %i.du, %vec.epilog.scalar.ph.prol ], [ %.0114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.048.1113.prol = phi ptr [ %i.dp, %vec.epilog.scalar.ph.prol ], [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.048.1113.prol, i64 1 ; 3 uses
  %i.dq = load i8, ptr %.sroa.048.1113.prol, align 1, !tbaa !34
  %i.dr = icmp ne i8 %i.dq, 0
  %i.ds = zext i1 %i.dr to i8
  %i.dt = getelementptr i8, ptr %i.cz, i64 %.0114.prol
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !34
  %i.du = add i64 %.0114.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !591

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dp, %vec.epilog.scalar.ph.prol ]
  %.0114.unr = phi i64 [ %.0114.ph, %vec.epilog.scalar.ph.preheader ], [ %i.du, %vec.epilog.scalar.ph.prol ]
  %.sroa.048.1113.unr = phi ptr [ %.sroa.048.1113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dp, %vec.epilog.scalar.ph.prol ]
  %i.dv = sub nsw i64 %.0114.ph, %i.ct
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge116, label %vec.epilog.scalar.ph

._crit_edge121:                                   ; preds = %._crit_edge116, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i = icmp eq ptr %.sroa.050.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge121
  %i.dx = ptrtoint ptr %.sroa.13.0.lcssa.a to i64
  %i.dy = ptrtoint ptr %.sroa.050.0.lcssa to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa, i64 noundef %i.dz) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge121, %bb.t
  ret void

bb.u:                                             ; preds = %.noexc4.i, %.noexc.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge116:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.eb = phi ptr [ %.pre146, %.preheader ], [ %.pre145, %middle.block ], [ %.pre145, %vec.epilog.middle.block ], [ %.pre145, %vec.epilog.scalar.ph ], [ %.pre145, %vec.epilog.scalar.ph.prol.loopexit ]
  %.sroa.048.1.lcssa = phi ptr [ %.sroa.048.0119, %.preheader ], [ %i.db, %middle.block ], [ %i.dk, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.eu, %vec.epilog.scalar.ph ]
  %i.ec = add nuw i64 %.018120, 1                 ; 2 uses
  %.not = icmp eq i64 %i.ec, %.024.lcssa
  br i1 %.not, label %._crit_edge121, label %.preheader, !llvm.loop !593

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0114 = phi i64 [ %i.fa, %vec.epilog.scalar.ph ], [ %.0114.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.048.1113 = phi ptr [ %i.eu, %vec.epilog.scalar.ph ], [ %.sroa.048.1113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 1
  %i.ee = load i8, ptr %.sroa.048.1113, align 1, !tbaa !34
  %i.ef = icmp ne i8 %i.ee, 0
  %i.eg = zext i1 %i.ef to i8
  %i.eh = getelementptr i8, ptr %i.cz, i64 %.0114
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !34
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 2
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !34
  %i.ek = icmp ne i8 %i.ej, 0
  %i.el = zext i1 %i.ek to i8
  %i.em = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.el, ptr %i.en, align 1, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 3
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !34
  %i.eq = icmp ne i8 %i.ep, 0
  %i.er = zext i1 %i.eq to i8
  %i.es = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.et = getelementptr i8, ptr %i.es, i64 2
  store i8 %i.er, ptr %i.et, align 1, !tbaa !34
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.048.1113, i64 4 ; 2 uses
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !34
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr i8, ptr %i.cz, i64 %.0114
  %i.ez = getelementptr i8, ptr %i.ey, i64 3
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !34
  %i.fa = add i64 %.0114, 4                       ; 2 uses
  %.not25.3 = icmp eq i64 %i.fa, %i.ct
  br i1 %.not25.3, label %._crit_edge116, label %vec.epilog.scalar.ph, !llvm.loop !594

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.u, %bb.l
  %.sroa.13.2.a = phi ptr [ %.sroa.13.195, %bb.l ], [ %.sroa.13.0102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.13.0.lcssa.a, %bb.u ], [ %.sroa.13.195.lcssa, %.loopexit ], [ %.sroa.9.196, %.loopexit.split-lp ]
  %.sroa.050.2 = phi ptr [ %.sroa.050.197, %bb.l ], [ %.sroa.050.0104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.sroa.050.0.lcssa, %bb.u ], [ %.sroa.050.197, %.loopexit ], [ %.sroa.050.197, %.loopexit.split-lp ] ; 3 uses
  %.pn28 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ea, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i45 = icmp eq ptr %.sroa.050.2, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %.body
  %i.fb = ptrtoint ptr %.sroa.13.2.a to i64
  %i.fc = ptrtoint ptr %.sroa.050.2 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.2, i64 noundef %i.fd) #23
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
  br i1 %i.cy, label %.split158.us, label %.split156.preheader

.split158.us:                                     ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.1, %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit73.9
  %i.cz = phi i64 [ %i.ea, %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit73.9 ], [ 1, %_ZN4absl12lts_202605266StatusD2Ev.exit.1 ] ; 2 uses
  %i.da = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24
          to label %bb.bf unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i:           ; preds = %.split158.us
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %bb.ao
  %i.dc = inttoptr i64 %i.cp to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dc)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit71 unwind label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  tail call void @__clang_call_terminate(ptr %i.de) #22
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit71:         ; preds = %bb.ao, %bb.as
  %i.df = load i64, ptr %1, align 16, !tbaa !97   ; 2 uses
  %i.dg = trunc i64 %i.df to i1
  br i1 %i.dg, label %.loopexit138, label %bb.au

bb.au:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit71
  %i.dh = inttoptr i64 %i.df to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dh)
          to label %.loopexit138 unwind label %bb.at

.loopexit138:                                     ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit71, %bb.au, %.loopexit138.loopexit166
  %.pn63.pn = phi { ptr, i32 } [ %i.e, %.loopexit138.loopexit166 ], [ %.pn63, %bb.au ], [ %.pn63, %_ZN4absl12lts_202605266StatusD2Ev.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.cc

.split156.preheader:                              ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.1
  %i.di = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.cx, i64 0, ptr nonnull @.str.82)
          to label %bb.av unwind label %bb.be     ; 3 uses

bb.av:                                            ; preds = %.split156.preheader
  store i64 %i.di, ptr %3, align 8, !tbaa !97
  %i.dj = icmp ne i64 %i.di, 1
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.di, i64 0, ptr nonnull @.str.82)
          to label %bb.aw unwind label %bb.be     ; 3 uses

bb.aw:                                            ; preds = %bb.av
  store i64 %i.dk, ptr %3, align 8, !tbaa !97
  %i.dl = icmp ne i64 %i.dk, 1
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dk, i64 0, ptr nonnull @.str.82)
          to label %bb.ax unwind label %bb.be     ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  store i64 %i.dm, ptr %3, align 8, !tbaa !97
  %i.dn = icmp ne i64 %i.dm, 1
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dm, i64 0, ptr nonnull @.str.82)
          to label %bb.ay unwind label %bb.be     ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.do, ptr %3, align 8, !tbaa !97
  %i.dp = icmp ne i64 %i.do, 1
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.do, i64 0, ptr nonnull @.str.82)
          to label %bb.az unwind label %bb.be     ; 3 uses

bb.az:                                            ; preds = %bb.ay
  store i64 %i.dq, ptr %3, align 8, !tbaa !97
  %i.dr = icmp ne i64 %i.dq, 1
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dq, i64 0, ptr nonnull @.str.82)
          to label %bb.ba unwind label %bb.be     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  store i64 %i.ds, ptr %3, align 8, !tbaa !97
  %i.dt = icmp ne i64 %i.ds, 1
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.ds, i64 0, ptr nonnull @.str.82)
          to label %bb.bb unwind label %bb.be     ; 3 uses

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.du, ptr %3, align 8, !tbaa !97
  %i.dv = icmp ne i64 %i.du, 1
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.du, i64 0, ptr nonnull @.str.82)
          to label %bb.bc unwind label %bb.be     ; 3 uses

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.dw, ptr %3, align 8, !tbaa !97
  %i.dx = icmp ne i64 %i.dw, 1
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dw, i64 0, ptr nonnull @.str.82)
          to label %bb.bd unwind label %bb.be     ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.dy, ptr %3, align 8, !tbaa !97
  %i.dz = icmp ne i64 %i.dy, 1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.dy, i64 0, ptr nonnull @.str.82)
          to label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit73.9 unwind label %bb.be ; 3 uses

_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit73.9: ; preds = %bb.bd
  store i64 %i.ea, ptr %3, align 8, !tbaa !97
  %i.eb = icmp ne i64 %i.ea, 1
  tail call void @llvm.assume(i1 %i.eb)
  br label %.split158.us

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %.split156.preheader
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bf:                                            ; preds = %.split158.us
  store ptr %i.da, ptr %4, align 8, !tbaa !1077
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !1079
  store i32 883, ptr %i.da, align 4, !tbaa !219
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !1080
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 %4, i64 888, ptr nonnull @.str.2)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit76 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit88

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 4) #23
  %i.eg = trunc i64 %i.cz to i1
  br i1 %i.eg, label %_ZN4absl12lts_202605266StatusD2Ev.exit77, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit76
  %i.eh = inttoptr i64 %i.cz to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eh)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit77 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  tail call void @__clang_call_terminate(ptr %i.ej) #22
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit77:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit76, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ek = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 53, i64 3, ptr nonnull @.str.168, i64 893, ptr nonnull @.str.2) ; 2 uses
  store i64 %i.ek, ptr %5, align 8, !tbaa !97
  %i.el = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24
          to label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i79 ; 5 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i79:         ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit77
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body80

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit77
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 893, ptr %i.el, align 4, !tbaa !219
  %i.eo = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #24
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %bb.bn ; 4 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.ep = load i32, ptr %i.el, align 4
  store i32 %i.ep, ptr %i.eo, align 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 4) #23
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %.sroa.15.0159 = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  br label %bb.bo

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.er = ptrtoint ptr %.sroa.15.0 to i64
  %i.es = ptrtoint ptr %.sroa.0109.4 to i64       ; 2 uses
  %i.et = sub i64 %i.er, %i.es                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.sroa.15.0, %.sroa.0109.4
  br i1 %.not.i.i.i.i, label %.thread, label %bb.bj

.thread:                                          ; preds = %bb.bi
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ev = getelementptr inbounds i8, ptr null, i64 %i.et ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !1079
  br label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  %i.ex = icmp ugt i64 %i.et, 9223372036854775804
  br i1 %i.ex, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !1224

.noexc.i.i:                                       ; preds = %bb.bj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc84 unwind label %bb.bn

.noexc84:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bj
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #24
          to label %.noexc85 unwind label %bb.bn  ; 8 uses

.noexc85:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ey, ptr %6, align 8, !tbaa !1077
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !1080
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.et ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !1079
  %i.fc = icmp samesign ugt i64 %i.et, 4
  br i1 %i.fc, label %bb.bk, label %bb.bl, !prof !1225

bb.bk:                                            ; preds = %.noexc85
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ey, ptr align 4 %.sroa.0109.4, i64 %i.et, i1 false)
  br label %bb.bv

bb.bl:                                            ; preds = %.noexc85
  %i.fd = icmp eq i64 %i.et, 4
  br i1 %i.fd, label %bb.bm, label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  %i.fe = load i32, ptr %.sroa.0109.4, align 4, !tbaa !219
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !219
  br label %bb.bv

_ZNSt6vectorIiSaIiEED2Ev.exit88:                  ; preds = %bb.bf
  %i.ff = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 4) #23
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i, %bb.be
  %.pn61 = phi { ptr, i32 } [ %i.ec, %bb.be ], [ %i.ff, %_ZNSt6vectorIiSaIiEED2Ev.exit88 ], [ %i.db, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ]
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.cc

bb.bn:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.sroa.24.1.a = phi ptr [ %.sroa.24.4.a, %.noexc.i.i ], [ %.sroa.24.4.a, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.en, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %.sroa.0109.1 = phi ptr [ %.sroa.0109.4, %.noexc.i.i ], [ %.sroa.0109.4, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.el, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.fh = phi i64 [ %i.ek, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ga, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.15.0163 = phi ptr [ %.sroa.15.0159, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.15.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.051162 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.gb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.sroa.0109.0161 = phi ptr [ %i.eo, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0109.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.24.0160 = phi ptr [ %i.eq, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.24.4.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit90, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fj = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.fh, i64 898, ptr nonnull @.str.2)
          to label %.noexc89 unwind label %bb.bu  ; 3 uses

.noexc89:                                         ; preds = %bb.bp
  store i64 %i.fj, ptr %5, align 8, !tbaa !97
  %i.fk = icmp ne i64 %i.fj, 1
  tail call void @llvm.assume(i1 %i.fk)
  br label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit90

_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit90: ; preds = %.noexc89, %bb.bo
  %i.fl = phi i64 [ %i.fj, %.noexc89 ], [ 1, %bb.bo ]
  %.not.i.i = icmp eq ptr %.sroa.15.0163, %.sroa.24.0160
  br i1 %.not.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit90
  store i32 898, ptr %.sroa.15.0163, align 4, !tbaa !219
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.br:                                            ; preds = %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit90
  %i.fm = ptrtoint ptr %.sroa.15.0163 to i64
  %i.fn = ptrtoint ptr %.sroa.0109.0161 to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 6 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775804
  br i1 %i.fp, label %bb.bs, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #25
          to label %.noexc92 unwind label %.loopexit.split-lp

.noexc92:                                         ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.br
  %i.fq = ashr exact i64 %i.fo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = tail call i64 @llvm.umin.i64(i64 %i.fr, i64 2305843009213693951)
  %i.fu = select i1 %i.fs, i64 2305843009213693951, i64 %i.ft ; 3 uses
  %.not.i.i.i.i91 = icmp ne i64 %i.fu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i91)
  %i.fv = shl nuw nsw i64 %i.fu, 2
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #24
          to label %.noexc93 unwind label %.loopexit ; 4 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo ; 2 uses
  store i32 898, ptr %i.fx, align 4, !tbaa !219
  %i.fy = icmp sgt i64 %i.fo, 0
  br i1 %i.fy, label %bb.bt, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.bt:                                            ; preds = %.noexc93
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr align 4 %.sroa.0109.0161, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bt, %.noexc93
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0161, i64 noundef %i.fo) #23
  %.pre = load i64, ptr %5, align 8, !tbaa !97
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fu
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bq
  %i.ga = phi i64 [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.fl, %bb.bq ]
  %.sroa.24.4.a = phi ptr [ %i.fz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.24.0160, %bb.bq ] ; 6 uses
  %.pn = phi ptr [ %i.fx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.15.0163, %bb.bq ]
  %.sroa.0109.4 = phi ptr [ %i.fw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0109.0161, %bb.bq ] ; 10 uses
  %i.gb = add nuw nsw i32 %.051162, 1             ; 2 uses
  %.sroa.15.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %exitcond.not = icmp eq i32 %i.gb, 10
  br i1 %exitcond.not, label %bb.bi, label %bb.bo, !llvm.loop !1226

bb.bu:                                            ; preds = %bb.bp
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

.loopexit.split-lp:                               ; preds = %bb.bs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.bv:                                            ; preds = %.thread, %bb.bk, %bb.bl, %bb.bm
  %i.gd = phi ptr [ %i.fa, %bb.bk ], [ %i.fa, %bb.bl ], [ %i.fa, %bb.bm ], [ %i.ev, %.thread ] ; 3 uses
  %i.ge = phi ptr [ %i.ez, %bb.bk ], [ %i.ez, %bb.bl ], [ %i.ez, %bb.bm ], [ %i.eu, %.thread ]
  %i.gf = phi ptr [ %i.ey, %bb.bk ], [ %i.ey, %bb.bl ], [ %i.ey, %bb.bm ], [ null, %.thread ] ; 6 uses
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !1080
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef align 8 %6, i64 901, ptr nonnull @.str.2)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %.not.i.i.i94 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIiSaIiEED2Ev.exit99, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gi) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit99

_ZNSt6vectorIiSaIiEED2Ev.exit99:                  ; preds = %bb.bw, %bb.bx
  %i.gj = ptrtoint ptr %.sroa.24.4.a to i64
  %i.gk = sub i64 %i.gj, %i.es
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.4, i64 noundef %i.gk) #23
  %.pre174 = load i64, ptr %5, align 8, !tbaa !97 ; 2 uses
  %i.gl = trunc i64 %.pre174 to i1
  br i1 %i.gl, label %_ZN4absl12lts_202605266StatusD2Ev.exit100, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit99
  %i.gm = inttoptr i64 %.pre174 to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.gm)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit100 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  tail call void @__clang_call_terminate(ptr %i.go) #22
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit100:        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit99, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.ca:                                            ; preds = %bb.bv
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIiSaIiEED2Ev.exit103, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gq = ptrtoint ptr %i.gd to i64
  %i.gr = ptrtoint ptr %i.gf to i64
  %i.gs = sub i64 %i.gq, %i.gr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gs) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

_ZNSt6vectorIiSaIiEED2Ev.exit103:                 ; preds = %bb.bn, %bb.bu, %bb.ca, %bb.cb, %.loopexit.split-lp, %.loopexit
  %.sroa.24.2.a = phi ptr [ %.sroa.24.4.a, %bb.cb ], [ %.sroa.24.0160, %bb.bu ], [ %.sroa.24.1.a, %bb.bn ], [ %.sroa.24.4.a, %bb.ca ], [ %.sroa.15.0163, %.loopexit ], [ %.sroa.15.0163, %.loopexit.split-lp ]
  %.sroa.0109.2 = phi ptr [ %.sroa.0109.4, %bb.cb ], [ %.sroa.0109.0161, %bb.bu ], [ %.sroa.0109.1, %bb.bn ], [ %.sroa.0109.4, %bb.ca ], [ %.sroa.0109.0161, %.loopexit ], [ %.sroa.0109.0161, %.loopexit.split-lp ] ; 2 uses
  %.pn57.pn = phi { ptr, i32 } [ %i.gp, %bb.cb ], [ %i.gc, %bb.bu ], [ %i.fg, %bb.bn ], [ %i.gp, %bb.ca ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gt = ptrtoint ptr %.sroa.24.2.a to i64
  %i.gu = ptrtoint ptr %.sroa.0109.2 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.2, i64 noundef %i.gv) #23
  br label %.body80

.body80:                                          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit103, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i79
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.em, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i79 ], [ %.pn57.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ]
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.cc

bb.cc:                                            ; preds = %.body80, %.body, %.loopexit138
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %.loopexit138 ], [ %.pn61, %.body ], [ %.pn57.pn.pn, %.body80 ]
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  store i64 %i.a, ptr %2, align 8, !tbaa !97, !alias.scope !1227
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4, !noalias !1227 ; 0 uses
  br label %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i

_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i:   ; preds = %bb.b, %bb.a
  %i.e = icmp eq i64 %i.a, 1
  br i1 %i.e, label %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i
  %i.f = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.a, i64 911, ptr nonnull @.str.2)
          to label %.noexc.i.i unwind label %bb.d, !noalias !1227 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.c
  store i64 %i.f, ptr %2, align 8, !tbaa !97, !alias.scope !1227
  %i.g = icmp ne i64 %i.f, 1
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit: ; preds = %.noexc.i.i, %_ZN4absl12lts_202605266StatusC2ERKS1_.exit.i.i
  %i.i = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24
          to label %bb.e unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i:           ; preds = %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZNKR4absl12lts_202605266Status18WithSourceLocationENS0_14SourceLocationE.exit
  store ptr %i.i, ptr %3, align 8, !tbaa !1077
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1079
  store i32 907, ptr %i.i, align 4, !tbaa !219
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !1080
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 %3, i64 914, ptr nonnull @.str.2)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit45

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 4) #23
  %i.n = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %bb.f unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i34 ; 6 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i34:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  store ptr %i.n, ptr %4, align 8, !tbaa !1077
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !1079
  store i32 907, ptr %i.n, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 911, ptr %.sroa.5.0..sroa_idx, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !1080
  invoke fastcc void @_ZN12_GLOBAL__N_119CheckSourceLocationERKN4absl12lts_202605266StatusESt6vectorIiSaIiEENS1_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef align 8 %4, i64 915, ptr nonnull @.str.2)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit40 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit48

_ZNSt6vectorIiSaIiEED2Ev.exit40:                  ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.s = load i64, ptr %1, align 8, !tbaa !97, !noalias !1230 ; 3 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !97, !noalias !1230 ; 3 uses
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit40
  %i.v = or i64 %i.t, %i.s
  %i.w = and i64 %i.v, 1
  %or.cond.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %or.cond.not.i.i.i, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i

_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i: ; preds = %bb.g
  %i.x = inttoptr i64 %i.s to ptr
  %i.y = inttoptr i64 %i.t to ptr
  %i.z = invoke noundef zeroext i1 @_ZNK4absl12lts_2026052615status_internal9StatusRepeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i
  br i1 %i.z, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, label %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i

_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i: ; preds = %.noexc, %_ZNSt6vectorIiSaIiEED2Ev.exit40
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.h

_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i: ; preds = %.noexc, %bb.g
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605266StatusES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.197, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.h

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i
  %i.aa = load i8, ptr %5, align 8, !tbaa !44, !range !54, !noundef !55
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.r, label %bb.i

_ZNSt6vectorIiSaIiEED2Ev.exit45:                  ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 4) #23
  br label %.body

_ZNSt6vectorIiSaIiEED2Ev.exit48:                  ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #23
  br label %.body

bb.h:                                             ; preds = %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread7.i.i, %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.thread.i.i, %_ZN4absl12lts_20260526eqERKNS0_6StatusES3_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605266StatusES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit
end_hunk_1
