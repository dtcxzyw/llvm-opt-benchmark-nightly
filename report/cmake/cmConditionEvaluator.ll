Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmConditionEvaluator?download=true
inline.NumInlined: 861
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN20cmConditionEvaluator6IsTrueERKSt6vectorI25cmExpandedCommandArgumentSaIS1_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType:bb.a
  %.0.us = phi i64 [ %i.m, %bb.e ], [ %i.k, %.split.us.preheader ]
  %i.l = invoke noundef zeroext i1 @_ZN20cmConditionEvaluator12HandleLevel0ERNS_14cmArgumentListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.d unwind label %.split45.us.loopexit

bb.d:                                             ; preds = %.split.us
  br i1 %i.l, label %bb.e, label %.critedge42

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.n = icmp ult i64 %i.m, %.0.us
  br i1 %i.n, label %.split.us, label %.split.us.1, !llvm.loop !80

.split45.us.loopexit:                             ; preds = %.split.us
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split45.us.loopexit.split-lp.loopexit:           ; preds = %.split.us.1
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.split.us.2
  %lpad.loopexit63 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.split.us.3
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.us.4
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split.us.1:                                      ; preds = %bb.e, %bb.g
  %.0.us.1 = phi i64 [ %i.p, %bb.g ], [ %i.m, %bb.e ]
  %i.o = invoke noundef zeroext i1 @_ZN20cmConditionEvaluator12HandleLevel1ERNS_14cmArgumentListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 poison, ptr nonnull align 4 poison)
          to label %bb.f unwind label %.split45.us.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %.split.us.1
  br i1 %i.o, label %bb.g, label %.critedge42

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.q = icmp ult i64 %i.p, %.0.us.1
  br i1 %i.q, label %.split.us.1, label %.split.us.2, !llvm.loop !80

.split.us.2:                                      ; preds = %bb.g, %bb.i
  %.0.us.2 = phi i64 [ %i.s, %bb.i ], [ %i.p, %bb.g ]
  %i.r = invoke noundef zeroext i1 @_ZN20cmConditionEvaluator12HandleLevel2ERNS_14cmArgumentListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.h unwind label %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %.split.us.2
  br i1 %i.r, label %bb.i, label %.critedge42

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.t = icmp ult i64 %i.s, %.0.us.2
  br i1 %i.t, label %.split.us.2, label %.split.us.3, !llvm.loop !80

.split.us.3:                                      ; preds = %bb.i, %bb.k
  %.0.us.3 = phi i64 [ %i.v, %bb.k ], [ %i.s, %bb.i ]
  %i.u = invoke noundef zeroext i1 @_ZN20cmConditionEvaluator12HandleLevel3ERNS_14cmArgumentListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 poison, ptr nonnull align 4 poison)
          to label %bb.j unwind label %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.j:                                             ; preds = %.split.us.3
  br i1 %i.u, label %bb.k, label %.critedge42

bb.k:                                             ; preds = %bb.j
  %i.v = load i64, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.w = icmp ult i64 %i.v, %.0.us.3
  br i1 %i.w, label %.split.us.3, label %.split.us.4, !llvm.loop !80

.split.us.4:                                      ; preds = %bb.k, %bb.m
  %.0.us.4 = phi i64 [ %i.y, %bb.m ], [ %i.v, %bb.k ]
  %i.x = invoke noundef zeroext i1 @_ZN20cmConditionEvaluator12HandleLevel4ERNS_14cmArgumentListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 poison, ptr nonnull align 4 poison)
          to label %bb.l unwind label %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.split.us.4
  br i1 %i.x, label %bb.m, label %.critedge42

bb.m:                                             ; preds = %bb.l
  %i.y = load i64, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.z = icmp ult i64 %i.y, %.0.us.4
  br i1 %i.z, label %.split.us.4, label %.critedge.4, !llvm.loop !80

.critedge.4:                                      ; preds = %bb.m
  %.not39 = icmp eq i64 %i.y, 1
  br i1 %.not39, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.critedge.4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull @.str.75, i64 noundef 27)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.n
  store i32 1, ptr %3, align 4, !tbaa !47
  br label %.critedge42

bb.o:                                             ; preds = %bb.n, %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.critedge.4
  %i.ad = load ptr, ptr %4, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = invoke noundef zeroext i1 @_ZNK20cmConditionEvaluator15GetBooleanValueER25cmExpandedCommandArgument(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(33) %i.ae)
          to label %.critedge42 unwind label %bb.o

.critedge42:                                      ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.af, %bb.p ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.d ]
  %i.ag = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ag, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI25cmExpandedCommandArgumentSaIS1_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge42, %_ZN25cmExpandedCommandArgumentD2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.ah, %_ZN25cmExpandedCommandArgumentD2Ev.exit.i.i ], [ %i.ag, %.critedge42 ] ; 4 uses
  %i.ah = load ptr, ptr %.09.i.i, align 8, !tbaa !40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN25cmExpandedCommandArgumentD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !27
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZN25cmExpandedCommandArgumentD2Ev.exit.i.i

_ZN25cmExpandedCommandArgumentD2Ev.exit.i.i:      ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 56) #23
  %.not.i.i = icmp eq ptr %i.ah, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI25cmExpandedCommandArgumentSaIS1_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseI25cmExpandedCommandArgumentSaIS1_EED2Ev.exit: ; preds = %_ZN25cmExpandedCommandArgumentD2Ev.exit.i.i, %.critedge42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.q

.body:                                            ; preds = %bb.o, %.split45.us.loopexit.split-lp.loopexit, %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit, %.split45.us.loopexit, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.ac, %bb.o ], [ %lpad.loopexit49, %.split45.us.loopexit ], [ %lpad.loopexit56, %.split45.us.loopexit.split-lp.loopexit ], [ %lpad.loopexit63, %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit70, %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp71, %.split45.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1110_List_baseI25cmExpandedCommandArgumentSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseI25cmExpandedCommandArgumentSaIS1_EED2Ev.exit
  %.4 = phi i1 [ %.3, %_ZNSt7__cxx1110_List_baseI25cmExpandedCommandArgumentSaIS1_EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN20cmConditionEvaluator12HandleLevel0ERNS_14cmArgumentListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.148", align 8   ; 10 uses
  %5 = alloca %class.cmExpandedCommandArgument, align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.0101.0137 = load ptr, ptr %1, align 8, !tbaa !40 ; 2 uses
  %.not138 = icmp eq ptr %.sroa.0101.0137, %1
  br i1 %.not138, label %.loopexit, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph141, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit.thread
  %.sroa.0101.0139 = phi ptr [ %.sroa.0101.0137, %.lr.ph141 ], [ %.sroa.0101.0, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit.thread ] ; 10 uses
  %.sroa.015.0.copyload = load i64, ptr @_ZN12_GLOBAL__N_19keyParenLE, align 8 ; 3 uses
  %.sroa.216.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19keyParenLE, i64 8), align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0101.0139, i64 16 ; 7 uses
  %i.j = call noundef zeroext i1 @_ZNK25cmExpandedCommandArgument9WasQuotedEv(ptr noundef nonnull align 8 dereferenceable(33) %i.i)
  br i1 %i.j, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK25cmExpandedCommandArgument8GetValueB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(33) %i.i) ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = icmp eq i64 %i.n, %.sroa.015.0.copyload
  br i1 %i.o, label %bb.d, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.p, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.d
  %bcmp.i.i = call i32 @bcmp(ptr %i.l, ptr readonly %.sroa.216.0.copyload, i64 %.sroa.015.0.copyload)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit.thread

_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.d
  %i.r = load ptr, ptr %.sroa.0101.0139, align 8, !tbaa !40 ; 2 uses
  %.not143 = icmp eq ptr %i.r, %1
  br i1 %.not143, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58
  %.039135 = phi i32 [ %i.ak, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58 ], [ 1, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit ]
  %.sroa.095.0134 = phi ptr [ %i.al, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58 ], [ %i.r, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit ] ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr @_ZN12_GLOBAL__N_19keyParenLE, align 8 ; 3 uses
  %.sroa.210.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19keyParenLE, i64 8), align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.095.0134, i64 16 ; 4 uses
  %i.t = call noundef zeroext i1 @_ZNK25cmExpandedCommandArgument9WasQuotedEv(ptr noundef nonnull align 8 dereferenceable(33) %i.s)
  br i1 %i.t, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK25cmExpandedCommandArgument8GetValueB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(33) %i.s) ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34
  %i.y = icmp eq i64 %i.x, %.sroa.09.0.copyload
  br i1 %i.y, label %bb.f, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i64 %.sroa.09.0.copyload, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i52, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i50

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i50: ; preds = %bb.f
  %bcmp.i.i51 = call i32 @bcmp(ptr %i.v, ptr readonly %.sroa.210.0.copyload, i64 %.sroa.09.0.copyload)
  %i.aa = icmp eq i32 %bcmp.i.i51, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i52, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i50, %bb.f
  br label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53

_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53: ; preds = %.lr.ph, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i50, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i52
  %.0.i49 = phi i32 [ 0, %.lr.ph ], [ 0, %bb.e ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i52 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i50 ]
  %.sroa.08.0.copyload = load i64, ptr @_ZN12_GLOBAL__N_19keyParenRE, align 8 ; 3 uses
  %.sroa.2.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19keyParenRE, i64 8), align 8
  %i.ab = call noundef zeroext i1 @_ZNK25cmExpandedCommandArgument9WasQuotedEv(ptr noundef nonnull align 8 dereferenceable(33) %i.s)
  br i1 %i.ab, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58, label %bb.g

bb.g:                                             ; preds = %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53
  %i.ac = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK25cmExpandedCommandArgument8GetValueB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(33) %i.s) ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.ag = icmp eq i64 %i.af, %.sroa.08.0.copyload
  br i1 %i.ag, label %bb.h, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp eq i64 %.sroa.08.0.copyload, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55: ; preds = %bb.h
  %bcmp.i.i56 = call i32 @bcmp(ptr %i.ad, ptr readonly %.sroa.2.0.copyload, i64 %.sroa.08.0.copyload)
  %i.ai = icmp eq i32 %bcmp.i.i56, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55, %bb.h
  br label %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58

_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58: ; preds = %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57
  %.0.i54 = phi i32 [ 0, %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit53 ], [ 0, %bb.g ], [ -1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55 ]
  %i.aj = add i32 %.0.i49, %.039135
  %i.ak = add i32 %i.aj, %.0.i54                  ; 2 uses
  %i.al = load ptr, ptr %.sroa.095.0134, align 8, !tbaa !40 ; 5 uses
  %i.am = icmp ne ptr %i.al, %1
  %i.an = icmp ne i32 %i.ak, 0                    ; 2 uses
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %_ZSt9__advanceISt14_List_iteratorI25cmExpandedCommandArgumentElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge, !llvm.loop !83

_ZSt9__advanceISt14_List_iteratorI25cmExpandedCommandArgumentElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge: ; preds = %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit58
  br i1 %i.an, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZSt9__advanceISt14_List_iteratorI25cmExpandedCommandArgumentElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge
  %i.ap = load ptr, ptr %.sroa.0101.0139, align 8, !tbaa !40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not13.i.i.i.i, label %_ZNSt12_Vector_baseI25cmExpandedCommandArgumentSaIS0_EE11_M_allocateEm.exit.i.i, label %.lr.ph.i.i.i.i

.critedge:                                        ; preds = %_ZNK20cmConditionEvaluator9IsKeywordEN2cm18static_string_viewERK25cmExpandedCommandArgument.exit, %_ZSt9__advanceISt14_List_iteratorI25cmExpandedCommandArgumentElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge
  %7 = load i64, ptr %i.c, align 8, !tbaa !34
  %8 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %7, ptr noundef nonnull @.str.76, i64 noundef 35) ; 0 uses
  store i32 1, ptr %3, align 4, !tbaa !47
  br label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.preheader, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ap, %.preheader.preheader ]
  %i.as = load ptr, ptr %.sroa.010.014.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.at = add nuw nsw i64 %.015.i.i.i.i, 1        ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i, label %_ZSt10__distanceI25cmExpandedCommandArgumentElSt14_List_iteratorIT_ES3_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !84

_ZSt10__distanceI25cmExpandedCommandArgumentElSt14_List_iteratorIT_ES3_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.au = icmp samesign ugt i64 %.015.i.i.i.i, 230584300921369394
  br i1 %i.au, label %.noexc.i, label %_ZNSt15__new_allocatorI25cmExpandedCommandArgumentE8allocateEmPKv.exit.i.i.i

.noexc.i:                                         ; preds = %_ZSt10__distanceI25cmExpandedCommandArgumentElSt14_List_iteratorIT_ES3_St18input_iterator_tag.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #24
  unreachable

_ZNSt15__new_allocatorI25cmExpandedCommandArgumentE8allocateEmPKv.exit.i.i.i: ; preds = %_ZSt10__distanceI25cmExpandedCommandArgumentElSt14_List_iteratorIT_ES3_St18input_iterator_tag.exit.i.i
  %i.av = mul nuw nsw i64 %i.at, 40
  %i.aw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25
  br label %_ZNSt12_Vector_baseI25cmExpandedCommandArgumentSaIS0_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseI25cmExpandedCommandArgumentSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorI25cmExpandedCommandArgumentE8allocateEmPKv.exit.i.i.i, %.preheader.preheader
  %.06.i.i811.i.i = phi i64 [ 0, %.preheader.preheader ], [ %i.at, %_ZNSt15__new_allocatorI25cmExpandedCommandArgumentE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  %.pr.i85 = phi ptr [ null, %.preheader.preheader ], [ %i.aw, %_ZNSt15__new_allocatorI25cmExpandedCommandArgumentE8allocateEmPKv.exit.i.i.i ] ; 9 uses
  store ptr %.pr.i85, ptr %4, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.pr.i85, i64 %.06.i.i811.i.i
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !50
  %i.ay = invoke noundef ptr @_ZSt16__do_uninit_copyISt14_List_iteratorI25cmExpandedCommandArgumentEPS1_ET0_T_S5_S4_(ptr %i.ap, ptr nonnull %i.ar, ptr noundef %.pr.i85)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %_ZNSt12_Vector_baseI25cmExpandedCommandArgumentSaIS0_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %.pr.i85, null
  br i1 %.not.i.i7.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx212 = mul nuw nsw i64 %.06.i.i811.i.i, 40
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i85, i64 noundef %.idx212) #23
  br label %.body

bb.k:                                             ; preds = %_ZNSt12_Vector_baseI25cmExpandedCommandArgumentSaIS0_EE11_M_allocateEm.exit.i.i
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !51
  %i.az = invoke noundef zeroext i1 @_ZN20cmConditionEvaluator6IsTrueERKSt6vectorI25cmExpandedCommandArgumentSaIS1_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER11MessageType(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !34
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %.critedge45

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bd = select i1 %i.az, i8 49, i8 48
  store ptr %i.d, ptr %6, align 8, !tbaa !52, !alias.scope !89
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 1, i8 noundef signext %i.bd)
          to label %_ZN12_GLOBAL__N_111bool2stringB5cxx11Eb.exit unwind label %bb.w

_ZN12_GLOBAL__N_111bool2stringB5cxx11Eb.exit:     ; preds = %bb.n
  invoke void @_ZN25cmExpandedCommandArgumentC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(33) %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_111bool2stringB5cxx11Eb.exit
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !35  ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0101.0139, i64 32 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  %i.bh = load ptr, ptr %5, align 8, !tbaa !35    ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.e                 ; 2 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  br i1 %i.bi, label %bb.p, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.o
  br i1 %i.bi, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !34  ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %.not21.i.i = icmp eq ptr %5, %i.i
  br i1 %.not21.i.i, label %_ZN25cmExpandedCommandArgumentaSEOS_.exit, label %bb.q, !prof !29

bb.q:                                             ; preds = %bb.p
  switch i64 %i.bj, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !27
  store i8 %i.bl, ptr %i.be, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.bm = load i64, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0101.0139, i64 24
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !34
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  store i8 0, ptr %i.bp, align 1, !tbaa !27
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !35
  br label %_ZN25cmExpandedCommandArgumentaSEOS_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0101.0139, i64 24
  store ptr %i.bh, ptr %i.i, align 8, !tbaa !35
  %i.br = load <2 x i64>, ptr %i.f, align 8, !tbaa !27
  store <2 x i64> %i.br, ptr %i.bq, align 8, !tbaa !27
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bs = load i64, ptr %i.bf, align 8, !tbaa !27
  store ptr %i.bh, ptr %i.i, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0101.0139, i64 24
  %i.bu = load <2 x i64>, ptr %i.f, align 8, !tbaa !27
  store <2 x i64> %i.bu, ptr %i.bt, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.be, ptr %5, align 8, !tbaa !35
  store i64 %i.bs, ptr %i.e, align 8, !tbaa !27
  br label %_ZN25cmExpandedCommandArgumentaSEOS_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.e, ptr %5, align 8, !tbaa !35
  br label %_ZN25cmExpandedCommandArgumentaSEOS_.exit

_ZN25cmExpandedCommandArgumentaSEOS_.exit:        ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.t, %bb.u
  %i.bv = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.be, %bb.t ], [ %i.e, %bb.u ], [ %i.bh, %bb.p ]
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.bv, align 1, !tbaa !27
  %i.bw = load i8, ptr %i.g, align 8, !tbaa !55, !range !56, !noundef !57
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0101.0139, i64 48
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !55
  %i.by = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.e
  br i1 %i.bz, label %_ZN25cmExpandedCommandArgumentD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN25cmExpandedCommandArgumentaSEOS_.exit
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !27
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #23
  br label %_ZN25cmExpandedCommandArgumentD2Ev.exit

_ZN25cmExpandedCommandArgumentD2Ev.exit:          ; preds = %_ZN25cmExpandedCommandArgumentaSEOS_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cc = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.d
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZN25cmExpandedCommandArgumentD2Ev.exit
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !27
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN25cmExpandedCommandArgumentD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cg = load ptr, ptr %.sroa.0101.0139, align 8, !tbaa !40 ; 2 uses
  %.not6.i70 = icmp eq ptr %i.cg, %i.al
  br i1 %.not6.i70, label %_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_.exit, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i
  %.sroa.05.07.i = phi ptr [ %i.ch, %_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.ch = load ptr, ptr %.sroa.05.07.i, align 8, !tbaa !40 ; 2 uses
  %i.ci = load i64, ptr %i.h, align 8, !tbaa !45
  %i.cj = add i64 %i.ci, -1
  store i64 %i.cj, ptr %i.h, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.07.i) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i, i64 32 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i71
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #23
  br label %_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i

_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i: ; preds = %.lr.ph.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.07.i, i64 noundef 56) #23
  %.not.i72 = icmp eq ptr %i.ch, %i.al
  br i1 %.not.i72, label %_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_.exit, label %.lr.ph.i71, !llvm.loop !87

_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_.exit: ; preds = %_ZNSt7__cxx114listI25cmExpandedCommandArgumentSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load ptr, ptr %4, align 8, !tbaa !49    ; 5 uses
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cq, %i.cr
end_hunk_0
