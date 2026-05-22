inline.NumInlined: 29985
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb10StringUtil14SplitWithQuoteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc:bb.a

bb.l:                                             ; preds = %_ZN6duckdb20string_util_internal13ConsumeLetterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmc.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  invoke void @_ZN6duckdb20string_util_internal22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmcc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef signext %2, i8 noundef signext %3)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !109 ; 6 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !183
  %.not.i14 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i14, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !178
  %i.af = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.m
  br i1 %i.ag, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !139 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !16
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !79
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !79
  %.pre = load i64, ptr %i.n, align 8, !tbaa !139
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ah, %bb.o ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !139
  store ptr %i.m, ptr %6, align 8, !tbaa !16
  store i64 0, ptr %i.n, align 8, !tbaa !139
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit unwind label %bb.t

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.p
  %.pre22 = load ptr, ptr %6, align 8, !tbaa !16  ; 2 uses
  %i.ap = icmp eq ptr %.pre22, %i.m
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef %.pre22) #61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !139 ; 3 uses
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i16, label %_ZN6duckdb20string_util_internal10SkipSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit17

.lr.ph.i16:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i16
  %i.au = phi i64 [ %i.aq, %.lr.ph.i16 ], [ %i.ax, %bb.r ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !79
  switch i8 %i.aw, label %_ZN6duckdb20string_util_internal10SkipSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit17 [
    i8 32, label %bb.r
    i8 12, label %bb.r
    i8 11, label %bb.r
    i8 10, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.ax = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !33
  %exitcond21.not = icmp eq i64 %i.ax, %i.ar
  br i1 %exitcond21.not, label %._crit_edge, label %bb.q, !llvm.loop !3304

_ZN6duckdb20string_util_internal10SkipSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit17: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = phi i64 [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.au, %bb.q ] ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ar
  br i1 %i.az, label %bb.d, label %._crit_edge, !llvm.loop !3305

bb.s:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.t:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.m
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bc) #61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.s ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.bb, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %.body

._crit_edge:                                      ; preds = %bb.c, %_ZN6duckdb20string_util_internal10SkipSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit17, %bb.r, %_ZN6duckdb20string_util_internal10SkipSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret void

.body:                                            ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn16.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #59
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20string_util_internal22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmcc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, i8 noundef signext %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !139
  store i8 0, ptr %i.a, align 8, !tbaa !79
  %i.c = load i64, ptr %2, align 8, !tbaa !33     ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1, !tbaa !79
  %i.g = icmp eq i8 %i.f, %4
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.c, 1                          ; 4 uses
  store i64 %i.h, ptr %2, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !139
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !tbaa !79    ; 2 uses
  %.not.i41 = icmp eq i8 %i.n, %4
  br i1 %.not.i41, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %i.q = load i8, ptr %i.p, align 1, !tbaa !79    ; 2 uses
  %.not.i = icmp eq i8 %i.q, %4
  br i1 %.not.i, label %.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge, label %.lr.ph, !llvm.loop !3306

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.r = phi i8 [ %i.q, %.lr.ph.i ], [ %i.n, %.lr.ph.i.preheader ]
  %i.s = load i64, ptr %i.b, align 8, !tbaa !139  ; 4 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a                   ; 2 uses
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.w = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.c, %.lr.ph
  %i.x = load i64, ptr %i.a, align 8
  %i.y = select i1 %i.v, i64 15, i64 %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.aa = phi ptr [ %.pre.i.i, %.noexc ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !79
  store i64 %i.t, ptr %i.b, align 8, !tbaa !139
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.t
  store i8 0, ptr %i.ad, align 1, !tbaa !79
  %i.ae = load i64, ptr %2, align 8, !tbaa !33
  %i.af = add i64 %i.ae, 1                        ; 6 uses
  store i64 %i.af, ptr %2, align 8, !tbaa !33
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !139 ; 2 uses
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge, !llvm.loop !3306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i
  br label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit, !llvm.loop !3306

.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge: ; preds = %.lr.ph.i
  %i.ai = icmp ult i64 %i.af, %i.ag
  br label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit

_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit: ; preds = %.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge, %.lr.ph.i.preheader
  %7 = phi i1 [ %i.ai, %.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ true, %.lr.ph.i.preheader ]
  %8 = phi i64 [ %i.af, %.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  br i1 %7, label %bb.e, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread

bb.e:                                             ; preds = %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !79
  %.not11.i = icmp eq i8 %i.al, %4
  br i1 %.not11.i, label %_ZN6duckdb20string_util_internal13ConsumeLetterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmc.exit, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread

_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread: ; preds = %bb.b, %bb.e, %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #59 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2080, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.f:                                             ; preds = %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread
  invoke void @_ZN6duckdb15ParserExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #60
          to label %bb.j unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ap) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br i1 %.0.i, label %bb.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br i1 %.0.i, label %bb.i, label %.body

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn16.i = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.am) #59
  br label %.body

bb.j:                                             ; preds = %bb.g
  unreachable

_ZN6duckdb20string_util_internal13ConsumeLetterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmc.exit: ; preds = %bb.e
  %i.as = add nuw i64 %8, 1
  store i64 %i.as, ptr %2, align 8, !tbaa !33
  br label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit

bb.k:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !139
  %i.aw = icmp ult i64 %i.c, %i.av
  br i1 %i.aw, label %.lr.ph.i19, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit

.lr.ph.i19:                                       ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i21
  %i.ax = phi i64 [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i21 ], [ %i.c, %bb.l ]
  %i.ay = load ptr, ptr %1, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !79  ; 4 uses
  %.not.i.i = icmp eq i8 %i.ba, %3
  %.not3.i.i = icmp eq i8 %i.ba, %4
  %or.cond.i.i = or i1 %.not.i.i, %.not3.i.i
  br i1 %or.cond.i.i, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i19
  switch i8 %i.ba, label %_ZZN6duckdb20string_util_internal22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccENKUlcE0_clEc.exit.i [
    i8 32, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit
    i8 12, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit
    i8 11, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit
    i8 10, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit
    i8 9, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit
    i8 13, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit
  ]

_ZZN6duckdb20string_util_internal22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccENKUlcE0_clEc.exit.i: ; preds = %bb.m
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !139 ; 4 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a                 ; 2 uses
  br i1 %i.be, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i20

bb.n:                                             ; preds = %_ZZN6duckdb20string_util_internal22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccENKUlcE0_clEc.exit.i
  %i.bf = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i20: ; preds = %bb.n, %_ZZN6duckdb20string_util_internal22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccENKUlcE0_clEc.exit.i
  %i.bg = load i64, ptr %i.a, align 8
  %i.bh = select i1 %i.be, i64 15, i64 %i.bg
  %i.bi = icmp ugt i64 %i.bc, %i.bh
  br i1 %i.bi, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i21

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc23 unwind label %bb.p

.noexc23:                                         ; preds = %bb.o
  %.pre.i.i22 = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i21: ; preds = %.noexc23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i20
  %i.bj = phi ptr [ %.pre.i.i22, %.noexc23 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i20 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i8 %i.ba, ptr %i.bk, align 1, !tbaa !79
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !139
  %i.bl = load ptr, ptr %0, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 0, ptr %i.bm, align 1, !tbaa !79
  %i.bn = load i64, ptr %2, align 8, !tbaa !33
  %i.bo = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bo, ptr %2, align 8, !tbaa !33
  %i.bp = load i64, ptr %i.au, align 8, !tbaa !139
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph.i19, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit, !llvm.loop !3307

bb.p:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE0_EEvS9_SA_RKT_RS7_.exit: ; preds = %.lr.ph.i19, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i21, %bb.l, %_ZN6duckdb20string_util_internal13ConsumeLetterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmc.exit
  ret void

.body:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.br, %bb.p ], [ %i.at, %bb.k ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn16.i, %bb.i ]
  %i.bs = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.a
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.bs) #61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10StringUtil20SplitWithParenthesesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEccc(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.33") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::stack.1881", align 8   ; 18 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !178
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.e, align 8, !tbaa !139
  store i8 0, ptr %i.d, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 0)
          to label %_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit.preheader unwind label %bb.b

_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit.preheader: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !139
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit._crit_edge: ; preds = %_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit, %_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit.preheader
  %i.o = load i64, ptr %i.e, align 8, !tbaa !139  ; 5 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.c:                                             ; preds = %.lr.ph, %_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit
  %.01657 = phi i64 [ 0, %.lr.ph ], [ %i.by, %_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv.exit ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_:bb.a
  %.01116.i = phi ptr [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i ], [ %i.c, %.preheader.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !139
  %i.r = icmp eq i64 %.fr20.i, %i.q
  br i1 %i.r, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i: ; preds = %.preheader.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.t, i64 %.fr20.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %.preheader.split.i
  %i.v = load ptr, ptr %.017.i, align 8, !tbaa !120 ; 2 uses
  %.not14.i = icmp eq ptr %i.v, null
  br i1 %.not14.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %.preheader.split.i, !llvm.loop !4889

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %bb.c, %.preheader.split.us.i
  %i.w = phi ptr [ %i.o, %bb.c ], [ %i.d, %.preheader.split.us.i ], [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %.017.us19.i, %bb.c ], [ %i.c, %.preheader.split.us.i ], [ %.01116.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1431 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !2441
  %i.ab = urem i64 %i.aa, %i.y                    ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !1429  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ab
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !475
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !139
  %i.af = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ac, i64 noundef %i.ae, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #62
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1431 ; 5 uses
  %i.ak = urem i64 %i.af, %i.aj                   ; 5 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !1429  ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !475 ; 6 uses
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !120 ; 3 uses
  %i.ap = load i64, ptr %i.ad, align 8
  %.fr22.i = freeze i64 %i.ap                     ; 3 uses
  %i.aq = icmp eq i64 %.fr22.i, 0
  %i.ar = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !tbaa !2441 ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f, %bb.h
  %i.as = phi i64 [ %i.az, %bb.h ], [ %.pre26.i, %bb.f ]
  %.015.us.i = phi ptr [ %.0.us.i, %bb.h ], [ %i.an, %bb.f ]
  %.0.us.i = phi ptr [ %i.ax, %bb.h ], [ %i.ao, %bb.f ] ; 4 uses
  %i.at = icmp eq i64 %i.af, %i.as
  br i1 %i.at, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i

bb.g:                                             ; preds = %.split.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !139
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i: ; preds = %bb.g, %.split.us.i
  %i.ax = load ptr, ptr %.0.us.i, align 8, !tbaa !120 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.ax, null
  br i1 %.not18.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !2441 ; 2 uses
  %i.ba = urem i64 %i.az, %i.aj
  %.not19.us.i = icmp eq i64 %i.ba, %i.ak
  br i1 %.not19.us.i, label %.split.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !4883

.split.i:                                         ; preds = %bb.f, %bb.j
  %i.bb = phi i64 [ %i.bl, %bb.j ], [ %.pre26.i, %bb.f ]
  %.015.i = phi ptr [ %.0.i, %bb.j ], [ %i.an, %bb.f ]
  %.0.i = phi ptr [ %i.bj, %bb.j ], [ %i.ao, %bb.f ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bd = icmp eq i64 %i.af, %i.bb
  br i1 %i.bd, label %bb.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i

bb.i:                                             ; preds = %.split.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !139
  %i.bg = icmp eq i64 %.fr22.i, %i.bf
  br i1 %i.bg, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i: ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !16
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ar, ptr %i.bh, i64 %.fr22.i)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bi, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %bb.i, %.split.i
  %i.bj = load ptr, ptr %.0.i, align 8, !tbaa !120 ; 3 uses
  %.not18.i = icmp eq ptr %i.bj, null
  br i1 %.not18.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !2441 ; 2 uses
  %i.bm = urem i64 %i.bl, %i.aj
  %.not19.i = icmp eq i64 %i.bm, %i.ak
  br i1 %.not19.i, label %.split.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !4883

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit
  %i.bn = phi i64 [ %i.y, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.aj, %bb.g ], [ %i.aj, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre54, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.an, %bb.g ], [ %i.an, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 3 uses
  %i.bp = phi ptr [ %.pre, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.al, %bb.g ], [ %i.al, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 3 uses
  %.120 = phi ptr [ %i.w, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.0.us.i, %bb.g ], [ %.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 6 uses
  %.018 = phi i64 [ %i.ab, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.ak, %bb.g ], [ %i.ak, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 3 uses
  %.016 = phi ptr [ %.1.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.015.us.i, %bb.g ], [ %.015.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.018
  %i.br = icmp eq ptr %.016, %i.bo
  %i.bs = load ptr, ptr %.120, align 8, !tbaa !120 ; 4 uses
  %.not18.i26 = icmp eq ptr %i.bs, null           ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.loopexit
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !2441
  %i.bv = urem i64 %i.bu, %i.bn                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bv, %.018
  br i1 %.not9.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bv
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !475
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bo
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !4138
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  store ptr null, ptr %i.bq, align 8, !tbaa !475
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i

bb.p:                                             ; preds = %.loopexit
  br i1 %.not18.i26, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !2441
  %i.cb = urem i64 %i.ca, %i.bn                   ; 2 uses
  %.not17.i = icmp eq i64 %i.cb, %.018
  br i1 %.not17.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cb
  store ptr %.016, ptr %i.cc, align 8, !tbaa !475
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.l
  %i.cd = load ptr, ptr %.120, align 8, !tbaa !120
  store ptr %i.cd, ptr %.016, align 8, !tbaa !120
  %i.ce = getelementptr inbounds nuw i8, ptr %.120, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.120, i64 40
  tail call void @_ZN6duckdb13EncryptionKeyD1Ev(ptr noundef nonnull align 1 dead_on_return(32) dereferenceable(32) %i.cf) #59
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.120, i64 24
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSC_15_Hash_node_baseEPNSC_10_Hash_nodeISA_Lb1EEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i
  tail call void @_ZdlPv(ptr noundef %i.cg) #61
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSC_15_Hash_node_baseEPNSC_10_Hash_nodeISA_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSC_15_Hash_node_baseEPNSC_10_Hash_nodeISA_Lb1EEE.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEEm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.120) #61
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !4881
  %i.ck = add i64 %i.cj, -1
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !4881
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.us.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSC_15_Hash_node_baseEPNSC_10_Hash_nodeISA_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSC_15_Hash_node_baseEPNSC_10_Hash_nodeISA_Lb1EEE.exit ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_15EncryptionTypes17EncryptionVersionEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.a = load i8, ptr %3, align 1, !tbaa !4890, !noalias !4891
  %i.b = zext i8 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !429
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !178
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !139  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !16
  %i.q = load i64, ptr %i.k, align 8, !tbaa !79
  store i64 %i.q, ptr %i.i, align 8, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !139
  store ptr %i.k, ptr %i.h, align 8, !tbaa !16
  store i64 0, ptr %i.s, align 8, !tbaa !139
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !59
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #61
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  call void @_ZN6duckdb20ExceptionFormatValue6FormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %2), !inline_history !4243
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #61
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1479
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !120 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !120 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !4894

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !139
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !120 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !4894

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !139
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #62
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !439  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !437
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !475 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !120 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !2441 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !139
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !120 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE6formatINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEEEES6_v:bb.a
  %.sroa.0.sroa.0.0.insert.ext.i47.i = zext nneg i8 %i.gf to i32
  store i32 %.sroa.0.sroa.0.0.insert.ext.i47.i, ptr %22, align 16
  store i32 9, ptr %i.r, align 16, !tbaa !1504
  br label %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.ci:                                            ; preds = %bb.ca
  %i.gg = load i8, ptr %22, align 16, !tbaa !79
  %.sroa.0.sroa.0.0.insert.ext.i49.i = zext i8 %i.gg to i32
  store i32 %.sroa.0.sroa.0.0.insert.ext.i49.i, ptr %22, align 16
  store i32 9, ptr %i.r, align 16, !tbaa !1504
  br label %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bz, %bb.bx
  %i.gh = load i8, ptr %i.l, align 4, !tbaa !4906
  %i.gi = icmp eq i8 %i.gh, 100
  %or.cond4 = and i1 %.051, %i.gi
  br i1 %or.cond4, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  store i8 46, ptr %i.o, align 4, !tbaa !4907
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %i.gj = load ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #59
  store ptr %.sroa.0.0.copyload.i, ptr %25, align 8
  store ptr null, ptr %i.aa, align 8, !tbaa !34
  store ptr %17, ptr %i.ab, align 8, !tbaa !4933
  store ptr %0, ptr %i.ac, align 8, !tbaa !4940
  %i.gk = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 16 dereferenceable(20) %22) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #59
  %.pre150 = load ptr, ptr %i.b, align 8, !tbaa !32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.b, %bb.ck, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit
  %i.gl = phi ptr [ %.pre150, %bb.ck ], [ %i.ba, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit ], [ %i.ae, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.gj, %bb.ck ], [ %i.ba, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit ], [ %.0146, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %i.gl, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.k, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.bw
  %.pn78.pn = phi { ptr, i32 } [ %.pn78128, %bb.bw ], [ %i.ca, %bb.j ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.cb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %common.resume

._crit_edge:                                      ; preds = %bb.cl, %bb.a
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.1, %bb.cl ] ; 2 uses
  %.lcssa134 = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.cl ]
  %i.gm = ptrtoint ptr %.lcssa134 to i64
  %i.gn = ptrtoint ptr %.0.lcssa to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = icmp sgt i64 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i.i.i.i.i104, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit111

.lr.ph.i.i.i.i.i104:                              ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107, %.lr.ph.i.i.i.i.i104
  %.07.i.i.i.i.i105 = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i104 ], [ %i.he, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107 ] ; 2 uses
  %.056.i.i.i.i.i106 = phi ptr [ %.0.lcssa, %.lr.ph.i.i.i.i.i104 ], [ %i.hd, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107 ] ; 2 uses
  %i.gt = load i64, ptr %i.gq, align 8, !tbaa !1699 ; 2 uses
  %i.gu = add i64 %i.gt, 1                        ; 3 uses
  %i.gv = load i64, ptr %i.gr, align 8, !tbaa !1689
  %i.gw = icmp ugt i64 %i.gu, %i.gv
  br i1 %i.gw, label %bb.cn, label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107

bb.cn:                                            ; preds = %bb.cm
  %i.gx = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !35
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.gu), !inline_history !4898
  %.pre.i.i.i.i.i.i.i109 = load i64, ptr %i.gq, align 8, !tbaa !1699 ; 2 uses
  %.pre2.i.i.i.i.i.i.i110 = add i64 %.pre.i.i.i.i.i.i.i109, 1
  br label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107

_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107: ; preds = %bb.cn, %bb.cm
  %.pre-phi.i.i.i.i.i.i.i108 = phi i64 [ %i.gu, %bb.cm ], [ %.pre2.i.i.i.i.i.i.i110, %bb.cn ]
  %i.gz = phi i64 [ %i.gt, %bb.cm ], [ %.pre.i.i.i.i.i.i.i109, %bb.cn ]
  %i.ha = load i8, ptr %.056.i.i.i.i.i106, align 1, !tbaa !79
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !1687
  store i64 %.pre-phi.i.i.i.i.i.i.i108, ptr %i.gq, align 8, !tbaa !1699
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  store i8 %i.ha, ptr %i.hc, align 1, !tbaa !79
  %i.hd = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i106, i64 1
  %i.he = add nsw i64 %.07.i.i.i.i.i105, -1
  %i.hf = icmp sgt i64 %.07.i.i.i.i.i105, 1
  br i1 %i.hf, label %bb.cm, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit111, !llvm.loop !4899

_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit111: ; preds = %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  ret ptr %.sroa.0.0.copyload.i

bb.co:                                            ; preds = %bb.bt
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE12parse_headerERPKcS9_RNS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(17) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %9 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %10 = alloca %"class.duckdb_fmt::v6::internal::printf_width_handler", align 8 ; 4 uses
  %11 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !79    ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = icmp eq i8 %i.b, 48                      ; 2 uses
  br i1 %i.d, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !32
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit

.preheader.i:                                     ; preds = %bb.b, %bb.e
  %i.f = phi i8 [ %i.n, %bb.e ], [ %i.b, %bb.b ]
  %i.g = phi ptr [ %i.m, %bb.e ], [ %i.a, %bb.b ]
  %.018.i = phi i32 [ %i.l, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.h = icmp ugt i32 %.018.i, 214748364
  br i1 %i.h, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.i = mul nuw nsw i32 %.018.i, 10
  %i.j = zext nneg i8 %i.f to i32
  %i.k = add nsw i32 %i.j, -48
  %i.l = add nuw i32 %i.k, %i.i                   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 5 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.m, %2
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.m, align 1, !tbaa !79    ; 2 uses
  %i.o = add i8 %i.n, -48
  %or.cond.i = icmp ult i8 %i.o, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !4908

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2102, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull %6) #60
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.critedge.thread.i
  unreachable

bb.g:                                             ; preds = %.critedge.thread.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.r) #61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  br label %common.resume

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit: ; preds = %bb.c, %.critedge.i
  %i.u = phi ptr [ %i.e, %bb.c ], [ %i.m, %.critedge.i ] ; 3 uses
  %.017.i = phi i32 [ 0, %bb.c ], [ %i.l, %.critedge.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not = icmp eq ptr %i.u, %2
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit
  %i.v = load i8, ptr %i.u, align 1, !tbaa !79
  %i.w = icmp eq i8 %i.v, 36
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %1, align 8, !tbaa !32
  br label %.thread

bb.j:                                             ; preds = %bb.h, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit
  br i1 %i.d, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 48, ptr %i.y, align 2, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not44 = icmp eq i32 %.017.i, 0
  br i1 %.not44, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l, %bb.i
  %.137.ph = phi i32 [ -1, %bb.l ], [ %.017.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.017.i, ptr %3, align 4, !tbaa !4900
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.x

bb.n:                                             ; preds = %.thread, %bb.a
  %.2 = phi i32 [ %.137.ph, %.thread ], [ -1, %bb.a ] ; 4 uses
  tail call void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE11parse_flagsERNS0_18basic_format_specsIcEERPKcSC_(ptr noundef nonnull align 4 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  %i.z = load ptr, ptr %1, align 8, !tbaa !32     ; 5 uses
  %.not45 = icmp eq ptr %i.z, %2
  br i1 %.not45, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !79   ; 4 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond46 = icmp ult i8 %i.ab, 10
  br i1 %or.cond46, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ac = icmp eq i8 %i.aa, 48
  br i1 %i.ac, label %bb.q, label %.preheader.i47

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ad, ptr %1, align 8, !tbaa !32
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57

.preheader.i47:                                   ; preds = %bb.p, %bb.s
  %i.ae = phi i8 [ %i.am, %bb.s ], [ %i.aa, %bb.p ]
  %i.af = phi ptr [ %i.al, %bb.s ], [ %i.z, %bb.p ]
  %.018.i48 = phi i32 [ %i.ak, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.ag = icmp ugt i32 %.018.i48, 214748364
  br i1 %i.ag, label %.critedge.thread.i53, label %bb.r

bb.r:                                             ; preds = %.preheader.i47
  %i.ah = mul nuw nsw i32 %.018.i48, 10
  %i.ai = zext nneg i8 %i.ae to i32
  %i.aj = add nsw i32 %i.ai, -48
  %i.ak = add nuw i32 %i.aj, %i.ah                ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 4 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !32
  %.not.i49 = icmp eq ptr %i.al, %2
  br i1 %.not.i49, label %.critedge.i51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load i8, ptr %i.al, align 1, !tbaa !79  ; 2 uses
  %i.an = add i8 %i.am, -48
  %or.cond.i50 = icmp ult i8 %i.an, 10
  br i1 %or.cond.i50, label %.preheader.i47, label %.critedge.i51, !llvm.loop !4908

.critedge.i51:                                    ; preds = %bb.s, %bb.r
  %i.ao = icmp slt i32 %i.ak, 0
  br i1 %i.ao, label %.critedge.thread.i53, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57

.critedge.thread.i53:                             ; preds = %.preheader.i47, %.critedge.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2102, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %4) #60
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.critedge.thread.i53
  unreachable

bb.u:                                             ; preds = %.critedge.thread.i53
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.aq) #61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %common.resume

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57: ; preds = %bb.q, %.critedge.i51
  %.017.i52 = phi i32 [ 0, %bb.q ], [ %i.ak, %.critedge.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 %.017.i52, ptr %3, align 4, !tbaa !4900
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #59
  br label %bb.x

bb.v:                                             ; preds = %bb.o
  %i.at = icmp eq i8 %i.aa, 42
  br i1 %i.at, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.au, ptr %1, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #59
  store ptr %3, ptr %10, align 8, !tbaa !4942
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.av), !noalias !4943
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_printf_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %11, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.aw)
  %i.ax = call noundef i32 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal20printf_width_handlerIcEENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 16 dereferenceable(20) %11)
  store i32 %i.ax, ptr %3, align 4, !tbaa !4900
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #59
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.n, %bb.v, %bb.w, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57
  %.1 = phi i32 [ -1, %bb.m ], [ %.2, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57 ], [ %.2, %bb.w ], [ %.2, %bb.v ], [ %.2, %bb.n ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !178
  %i.e = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !139  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i64 %i.g, ptr %i.b, align 8, !tbaa !33
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !16
  %i.j = load i64, ptr %i.b, align 8, !tbaa !33
  store i64 %i.j, ptr %i.d, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !79
  store i8 %i.l, ptr %i.k, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !139
  %i.o = load ptr, ptr %3, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !178
  %i.r = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !tbaa !139  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i64 %i.s, ptr %i.a, align 8, !tbaa !33
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.u, ptr %2, align 8, !tbaa !16
  %i.v = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.v, ptr %i.q, align 8, !tbaa !79
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !79
  store i8 %i.x, ptr %i.w, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !139
  %i.aa = load ptr, ptr %2, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull %2) #60
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.q
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ad) #61
  br label %.body

bb.h:                                             ; preds = %.noexc.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ac, %bb.g ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ag) #61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal24printf_precision_handlerENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(20) %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !4915
  switch i32 %i.b, label %bb.af [
    i32 16, label %bb.ae
    i32 15, label %bb.ad
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.i
    i32 5, label %bb.o
    i32 6, label %bb.u
    i32 7, label %bb.v
    i32 8, label %bb.w
    i32 9, label %bb.x
    i32 10, label %bb.y
    i32 11, label %bb.z
    i32 12, label %bb.aa
    i32 13, label %bb.ab
    i32 14, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 16, !tbaa !79
  %.sroa.speculated.i = tail call noundef i32 @llvm.smax.i32(i32 %i.c, i32 0)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 16, !tbaa !79    ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #59, !inline_history !4946 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2102, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, !inline_history !4946

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.g, !inline_history !4946

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #60
          to label %bb.h unwind label %bb.g, !inline_history !4946

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_:bb.a
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.t, i64 %.fr20.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %.preheader.split.i
  %i.v = load ptr, ptr %.017.i, align 8, !tbaa !120 ; 2 uses
  %.not14.i = icmp eq ptr %i.v, null
  br i1 %.not14.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %.preheader.split.i, !llvm.loop !6460

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %bb.c, %.preheader.split.us.i
  %i.w = phi ptr [ %i.o, %bb.c ], [ %i.d, %.preheader.split.us.i ], [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %.017.us19.i, %bb.c ], [ %i.c, %.preheader.split.us.i ], [ %.01116.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !439  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !2441
  %i.ab = urem i64 %i.aa, %i.y                    ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !437   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ab
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !475
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !139
  %i.af = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ac, i64 noundef %i.ae, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #62
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !439 ; 5 uses
  %i.ak = urem i64 %i.af, %i.aj                   ; 5 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !437   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !475 ; 6 uses
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !120 ; 3 uses
  %i.ap = load i64, ptr %i.ad, align 8
  %.fr22.i = freeze i64 %i.ap                     ; 3 uses
  %i.aq = icmp eq i64 %.fr22.i, 0
  %i.ar = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !tbaa !2441 ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f, %bb.h
  %i.as = phi i64 [ %i.az, %bb.h ], [ %.pre26.i, %bb.f ]
  %.015.us.i = phi ptr [ %.0.us.i, %bb.h ], [ %i.an, %bb.f ]
  %.0.us.i = phi ptr [ %i.ax, %bb.h ], [ %i.ao, %bb.f ] ; 4 uses
  %i.at = icmp eq i64 %i.af, %i.as
  br i1 %i.at, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i

bb.g:                                             ; preds = %.split.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !139
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i: ; preds = %bb.g, %.split.us.i
  %i.ax = load ptr, ptr %.0.us.i, align 8, !tbaa !120 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.ax, null
  br i1 %.not18.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !2441 ; 2 uses
  %i.ba = urem i64 %i.az, %i.aj
  %.not19.us.i = icmp eq i64 %i.ba, %i.ak
  br i1 %.not19.us.i, label %.split.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !4807

.split.i:                                         ; preds = %bb.f, %bb.j
  %i.bb = phi i64 [ %i.bl, %bb.j ], [ %.pre26.i, %bb.f ]
  %.015.i = phi ptr [ %.0.i, %bb.j ], [ %i.an, %bb.f ]
  %.0.i = phi ptr [ %i.bj, %bb.j ], [ %i.ao, %bb.f ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bd = icmp eq i64 %i.af, %i.bb
  br i1 %i.bd, label %bb.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i

bb.i:                                             ; preds = %.split.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !139
  %i.bg = icmp eq i64 %.fr22.i, %i.bf
  br i1 %i.bg, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i: ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !16
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ar, ptr %i.bh, i64 %.fr22.i)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bi, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %bb.i, %.split.i
  %i.bj = load ptr, ptr %.0.i, align 8, !tbaa !120 ; 3 uses
  %.not18.i = icmp eq ptr %i.bj, null
  br i1 %.not18.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !2441 ; 2 uses
  %i.bm = urem i64 %i.bl, %i.aj
  %.not19.i = icmp eq i64 %i.bm, %i.ak
  br i1 %.not19.i, label %.split.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !4807

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit
  %i.bn = phi i64 [ %i.y, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.aj, %bb.g ], [ %i.aj, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre54, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.an, %bb.g ], [ %i.an, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ] ; 3 uses
  %i.bp = phi ptr [ %.pre, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.al, %bb.g ], [ %i.al, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ] ; 3 uses
  %.120 = phi ptr [ %i.w, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.0.us.i, %bb.g ], [ %.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ] ; 7 uses
  %.018 = phi i64 [ %i.ab, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.ak, %bb.g ], [ %i.ak, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ] ; 3 uses
  %.016 = phi ptr [ %.1.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.015.us.i, %bb.g ], [ %.015.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.018
  %i.br = icmp eq ptr %.016, %i.bo
  %i.bs = load ptr, ptr %.120, align 8, !tbaa !120 ; 4 uses
  %.not18.i26 = icmp eq ptr %i.bs, null           ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.loopexit
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !2441
  %i.bv = urem i64 %i.bu, %i.bn                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bv, %.018
  br i1 %.not9.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bv
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !475
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bo
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !441
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  store ptr null, ptr %i.bq, align 8, !tbaa !475
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i

bb.p:                                             ; preds = %.loopexit
  br i1 %.not18.i26, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !2441
  %i.cb = urem i64 %i.ca, %i.bn                   ; 2 uses
  %.not17.i = icmp eq i64 %i.cb, %.018
  br i1 %.not17.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cb
  store ptr %.016, ptr %i.cc, align 8, !tbaa !475
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.l
  %i.cd = load ptr, ptr %.120, align 8, !tbaa !120
  store ptr %i.cd, ptr %.016, align 8, !tbaa !120
  %i.ce = getelementptr inbounds nuw i8, ptr %.120, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.120, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.120, i64 56
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i
  tail call void @_ZdlPv(ptr noundef %i.cg) #61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.120, i64 24
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.cj) #61
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.120) #61
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !1479
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !1479
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.us.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_SB_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIPKcEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !429
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !178
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !139  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !16
  %i.o = load i64, ptr %i.i, align 8, !tbaa !79
  store i64 %i.o, ptr %i.g, align 8, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !139
  store ptr %i.i, ptr %i.f, align 8, !tbaa !16
  store i64 0, ptr %i.q, align 8, !tbaa !139
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !59
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = icmp eq ptr %.pre10, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #61
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #61
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb13UnaryExecutor6SelectImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_EEmS5_S8_mT0_SC_SC_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ]    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !526
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = icmp ne ptr %4, null                     ; 2 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.e
  %i.e = icmp ne ptr %5, null
  %or.cond.i.i = and i1 %i.d, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2515 ; 3 uses
  %i.h = load ptr, ptr %6, align 8, !tbaa !2512   ; 3 uses
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.i = invoke noundef i64 @_ZN6duckdb13UnaryExecutor10SelectLoopImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_Lb0ELb1ELb1EEEmPKT_S8_mT0_RS7_RS9_SC_SC_(ptr noundef %i.g, ptr noundef %.0, i64 noundef %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %_ZN6duckdb13UnaryExecutor16SelectLoopSwitchImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_EEmRNS_19UnifiedVectorFormatES8_mT0_SC_SC_.exit unwind label %bb.w

bb.g:                                             ; preds = %.noexc
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = invoke noundef i64 @_ZN6duckdb13UnaryExecutor10SelectLoopImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_Lb0ELb1ELb0EEEmPKT_S8_mT0_RS7_RS9_SC_SC_(ptr noundef %i.g, ptr noundef %.0, i64 noundef %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %4, ptr noundef %5)
          to label %_ZN6duckdb13UnaryExecutor16SelectLoopSwitchImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_EEmRNS_19UnifiedVectorFormatES8_mT0_SC_SC_.exit unwind label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.k = invoke noundef i64 @_ZN6duckdb13UnaryExecutor10SelectLoopImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_Lb0ELb0ELb1EEEmPKT_S8_mT0_RS7_RS9_SC_SC_(ptr noundef %i.g, ptr noundef %.0, i64 noundef %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef null, ptr noundef %5)
          to label %_ZN6duckdb13UnaryExecutor16SelectLoopSwitchImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_EEmRNS_19UnifiedVectorFormatES8_mT0_SC_SC_.exit unwind label %bb.w

bb.j:                                             ; preds = %bb.d
  %i.l = invoke noundef i64 @_ZN6duckdb13UnaryExecutor19SelectLoopSelSwitchImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_Lb1EEEmRNS_19UnifiedVectorFormatES8_mT0_SC_SC_(ptr noundef nonnull align 8 dereferenceable(73) %6, ptr noundef %.0, i64 noundef %2, ptr %3, ptr noundef %4, ptr noundef %5)
          to label %_ZN6duckdb13UnaryExecutor16SelectLoopSwitchImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_EEmRNS_19UnifiedVectorFormatES8_mT0_SC_SC_.exit unwind label %bb.w

_ZN6duckdb13UnaryExecutor16SelectLoopSwitchImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_EEmRNS_19UnifiedVectorFormatES8_mT0_SC_SC_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.k, %bb.i ], [ %i.j, %bb.h ], [ %i.i, %bb.f ], [ %i.l, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb13UnaryExecutor16SelectLoopSwitchImZNS_13SelectFunctor9OperationILm0EEEmRNS_6VectorEPKNS_15SelectionVectorEmRKNS_12ValidityMaskEPS6_SC_EUlmE_EEmRNS_19UnifiedVectorFormatES8_mT0_SC_SC_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.o, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !73
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #59, !inline_history !6094
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #59, !inline_history !6094
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.m:                                             ; preds = %bb.k
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.r, %bb.n ], [ %i.ab, %bb.o ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !81

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #59
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i
end_hunk_3
begin_hunk_4_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb10StringUtil11TopNStringsENSH_6vectorIS9_Lb1ESC_EEmdE3$_0EEEvT_T0_":bb.a
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdED2Ev.exit13: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEaSEOS6_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3404 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3402   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #60
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #65
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !178
  %i.t = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !139  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !16
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !79
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !139
  store ptr %i.u, ptr %2, align 8, !tbaa !16
  store i64 0, ptr %i.ac, align 8, !tbaa !139
  store i8 0, ptr %i.u, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load double, ptr %i.af, align 8, !tbaa !3405
  store double %i.ag, ptr %i.ae, align 8, !tbaa !3405
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.q, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6901)
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !178, !alias.scope !6898, !noalias !6901
  %i.ai = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6901, !noalias !6898 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !139, !alias.scope !6901, !noalias !6898 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !6903
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !6898, !noalias !6901
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !79, !alias.scope !6901, !noalias !6898
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !79, !alias.scope !6898, !noalias !6901
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !6901, !noalias !6898
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.aq = phi i64 [ %i.am, %bb.e ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !139, !alias.scope !6898, !noalias !6901
  store ptr %i.aj, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6901, !noalias !6898
  store i64 0, ptr %i.ar, align 8, !tbaa !139, !alias.scope !6901, !noalias !6898
  store i8 0, ptr %i.aj, align 8, !tbaa !79, !alias.scope !6901, !noalias !6898
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.av = load double, ptr %i.au, align 8, !tbaa !3405, !alias.scope !6901, !noalias !6898
  store double %i.av, ptr %i.at, align 8, !tbaa !3405, !alias.scope !6898, !noalias !6901
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6904

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ], [ %i.ax, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.ay, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 6 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6908)
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16 ; 3 uses
  store ptr %i.az, ptr %.012.i.i.i.i18, align 8, !tbaa !178, !alias.scope !6905, !noalias !6908
  %i.ba = load ptr, ptr %.0911.i.i.i.i19, align 8, !tbaa !16, !alias.scope !6908, !noalias !6905 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !139, !alias.scope !6908, !noalias !6905 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false), !alias.scope !6910
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.ba, ptr %.012.i.i.i.i18, align 8, !tbaa !16, !alias.scope !6905, !noalias !6908
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !79, !alias.scope !6908, !noalias !6905
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !79, !alias.scope !6905, !noalias !6908
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !139, !alias.scope !6908, !noalias !6905
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.f
  %i.bi = phi i64 [ %i.be, %bb.f ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !139, !alias.scope !6905, !noalias !6908
  store ptr %i.bb, ptr %.0911.i.i.i.i19, align 8, !tbaa !16, !alias.scope !6908, !noalias !6905
  store i64 0, ptr %i.bj, align 8, !tbaa !139, !alias.scope !6908, !noalias !6905
  store i8 0, ptr %i.bb, align 8, !tbaa !79, !alias.scope !6908, !noalias !6905
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !3405, !alias.scope !6908, !noalias !6905
  store double %i.bn, ptr %i.bl, align 8, !tbaa !3405, !alias.scope !6905, !noalias !6908
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !6904

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.ay, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bp, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #61
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !3402
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !3404
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.l
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !3412
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb_jaro_winkler::common::PatternMatchVector", align 8 ; 18 uses
  %6 = alloca %"struct.duckdb_jaro_winkler::common::BlockPatternMatchVector", align 8 ; 16 uses
  %7 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 12 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = icmp ne ptr %3, %2
  %i.h = icmp ne ptr %1, %0
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double ; 2 uses
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %i.k = fdiv double %i.i, %i.j
  %i.l = sitofp i64 %i.f to double                ; 4 uses
  %i.m = fdiv double %i.i, %i.l
  %i.n = fadd double %i.k, %i.m
  %i.o = fadd double %i.n, 1.000000e+00
  %i.p = fdiv double %i.o, 3.000000e+00
  %i.q = fcmp ult double %i.p, %4
  br i1 %i.q, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit
  %i.r = icmp eq i64 %i.c, 1
  %i.s = icmp eq i64 %i.f, 1
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %0, align 1, !tbaa !79
  %i.u = load i8, ptr %2, align 1, !tbaa !79
  %i.v = icmp eq i8 %i.t, %i.u
  %i.w = uitofp i1 %i.v to double
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.x = icmp sgt i64 %i.f, %i.c
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = sdiv i64 %i.f, 2
  %i.z = add nsw i64 %i.y, -1                     ; 5 uses
  %i.aa = add nsw i64 %i.z, %i.c
  %i.ab = icmp sgt i64 %i.f, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.z ; 2 uses
  %.pre279 = ptrtoint ptr %i.ad to i64
  %.pre281.a = add nsw i64 %i.c, %i.z
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.g:                                             ; preds = %bb.d
  %i.ae = sdiv i64 %i.c, 2
  %i.af = add nsw i64 %i.ae, -1                   ; 5 uses
  %i.ag = add nsw i64 %i.af, %i.f
  %i.ah = icmp sgt i64 %i.c, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.af ; 2 uses
  %.pre276 = ptrtoint ptr %i.aj to i64
  %.pre277 = add nsw i64 %i.f, %i.af
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre-phi282 = phi i64 [ %i.f, %bb.e ], [ %.pre281.a, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ]
  %.pre-phi280 = phi i64 [ %i.d, %bb.e ], [ %.pre279, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ]
  %.pre-phi278 = phi i64 [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %.pre277, %bb.h ]
  %.pre-phi = phi i64 [ %i.a, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ], [ %.pre276, %bb.h ]
  %.0162 = phi ptr [ %3, %bb.e ], [ %i.ad, %bb.f ], [ %3, %bb.g ], [ %3, %bb.h ]
  %.0 = phi ptr [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.0.i50 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ], [ %i.af, %bb.h ] ; 6 uses
  %.sroa.speculated.i51 = tail call i64 @llvm.smin.i64(i64 %.pre-phi282, i64 %.pre-phi278) ; 3 uses
  %i.ak = icmp sgt i64 %.sroa.speculated.i51, 0
  br i1 %i.ak, label %.lr.ph.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

.lr.ph.i:                                         ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit, %bb.i
  %.018.i = phi i64 [ %i.ap, %bb.i ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.018.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !79
  %.not.i = icmp eq i8 %i.am, %i.ao
  br i1 %.not.i, label %bb.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.018.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %.sroa.speculated.i51
  br i1 %exitcond.not.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit, label %.lr.ph.i, !llvm.loop !6911

_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit: ; preds = %.lr.ph.i, %bb.i, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ], [ %.sroa.speculated.i51, %bb.i ], [ %.018.i, %.lr.ph.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa.i ; 7 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %.pre-phi, %i.as                ; 8 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %.pre-phi280, %i.au             ; 8 uses
  %i.aw = icmp ne ptr %.0, %i.aq
  %i.ax = icmp ne ptr %.0162, %i.ar
  %or.cond4 = and i1 %i.aw, %i.ax
  br i1 %or.cond4, label %bb.j, label %bb.bj

bb.j:                                             ; preds = %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %i.ay = icmp slt i64 %i.at, 65
  %i.az = icmp slt i64 %i.av, 65
  %or.cond6 = and i1 %i.ay, %i.az
  br i1 %or.cond6, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 2048 ; 4 uses
  %i.bb = icmp sgt i64 %i.at, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %5, i8 0, i64 4096, i1 false)
  br i1 %i.bb, label %.lr.ph22.i.i, label %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit

.lr.ph22.i.i:                                     ; preds = %bb.k, %bb.o
  %.021.i.i = phi i64 [ %i.co, %bb.o ], [ 1, %bb.k ] ; 3 uses
  %.01520.i.i = phi i64 [ %i.cp, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.01520.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !79  ; 3 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph22.i.i
  %i.bf = zext nneg i8 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !33
  %i.bi = or i64 %i.bh, %.021.i.i
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !33
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph22.i.i
  %i.bj = sext i8 %i.bd to i64                    ; 8 uses
  %i.bk = and i64 %i.bj, 127                      ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !6914
  %i.bp = icmp eq i64 %i.bo, %i.bj
  br i1 %i.bp, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.n
  %i.bq = mul nsw i64 %i.bj, 5
  %i.br = add nsw i64 %i.bj, 1
  %i.bs = add nsw i64 %i.br, %i.bq
  %i.bt = and i64 %i.bs, 127                      ; 4 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not1718.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !6914
  %i.by = icmp eq i64 %i.bx, %i.bj
  br i1 %i.by, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %.019.i.i16.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bj, %.lr.ph.i.i.preheader.i.i ]
  %i.bz = phi i64 [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.preheader.i.i ]
  %i.ca = lshr i64 %.019.i.i16.i.i, 5             ; 2 uses
  %i.cb = mul nuw nsw i64 %i.bz, 5
  %i.cc = add nuw nsw i64 %i.ca, 1
  %i.cd = add nuw nsw i64 %i.cc, %i.cb
  %i.ce = and i64 %i.cd, 127                      ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not17.i.i.i.i, label %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6915

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ci = load i64, ptr %i.cf, align 8, !tbaa !6914
  %i.cj = icmp eq i64 %i.ci, %i.bj
  br i1 %i.cj, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i, !llvm.loop !6915

._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, !llvm.loop !6915

_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i, %.preheader.i.i.i.i, %bb.n, %bb.m
  %i.ck = phi i64 [ 0, %bb.m ], [ %i.bn, %bb.n ], [ 0, %.preheader.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.preheader.i.i ], [ 0, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.ch, %.lr.ph.i.i.i.i ]
  %.015.i.i.i.i = phi i64 [ %i.bk, %bb.m ], [ %i.bk, %bb.n ], [ %i.bt, %.preheader.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.preheader.i.i ], [ %i.ce, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.015.i.i.i.i ; 2 uses
  store i64 %i.bj, ptr %i.cl, align 8, !tbaa !6914
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = or i64 %i.ck, %.021.i.i
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !6912
  br label %bb.o

bb.o:                                             ; preds = %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, %bb.l
end_hunk_4
begin_hunk_5_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.o, %bb.k
  %i.cq = trunc i64 %.0.i50 to i32
  %i.cr = add nsw i64 %.0.i50, 1
  %i.cs = icmp slt i32 %i.cq, 63
  %i.ct = and i64 %i.cr, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.ct
  %i.cu = xor i64 %notmask.i.i, -1
  %.0.i.i = select i1 %i.cs, i64 %i.cu, i64 -1    ; 2 uses
  %sext = shl i64 %.0.i50, 32
  %i.cv = ashr exact i64 %sext, 32
  %.sroa.speculated.i52 = tail call i64 @llvm.smin.i64(i64 %i.av, i64 %i.cv) ; 3 uses
  %i.cw = icmp sgt i64 %.sroa.speculated.i52, 0
  br i1 %i.cw, label %.lr.ph.i54, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit
  %.034.lcssa.i = phi i64 [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.eq, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ]
  %.0.lcssa.i53 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %.sroa.speculated.i52, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.eo, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.cx = icmp slt i64 %.0.lcssa.i53, %i.av
  br i1 %i.cx, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit

.lr.ph.i54:                                       ; preds = %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i
  %.sroa.0.057.i = phi i64 [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %.sroa.8.056.i = phi i64 [ %i.eo, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ]
  %.055.i = phi i64 [ %i.er, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 3 uses
  %.03454.i = phi i64 [ %i.eq, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.055.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !79  ; 3 uses
  %i.da = icmp sgt i8 %i.cz, -1
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i54
  %i.db = zext nneg i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i

bb.q:                                             ; preds = %.lr.ph.i54
  %i.de = sext i8 %i.cz to i64                    ; 7 uses
  %i.df = and i64 %i.de, 127
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i.i55 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i55, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = load i64, ptr %i.dg, align 8, !tbaa !6914
  %i.dk = icmp eq i64 %i.dj, %i.de
  br i1 %i.dk, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.preheader.i.i.i.i56

.preheader.i.i.i.i56:                             ; preds = %bb.r
  %i.dl = mul nsw i64 %i.de, 5
  %i.dm = add nsw i64 %i.de, 1
  %i.dn = add nsw i64 %i.dm, %i.dl
  %i.do = and i64 %i.dn, 127                      ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i.i57 = icmp eq i64 %i.dr, 0
  br i1 %.not1718.i.i.i.i57, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.preheader.i.i58

.lr.ph.i.i.preheader.i.i58:                       ; preds = %.preheader.i.i.i.i56
  %i.ds = load i64, ptr %i.dp, align 8, !tbaa !6914
  %i.dt = icmp eq i64 %i.ds, %i.de
  br i1 %i.dt, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.lr.ph.i.i.preheader.i.i58, %.lr.ph.i.i.i.i61
  %.019.i.i7.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i61 ], [ %i.de, %.lr.ph.i.i.preheader.i.i58 ]
  %i.du = phi i64 [ %i.dz, %.lr.ph.i.i.i.i61 ], [ %i.do, %.lr.ph.i.i.preheader.i.i58 ]
  %i.dv = lshr i64 %.019.i.i7.i.i, 5              ; 2 uses
  %i.dw = mul nuw nsw i64 %i.du, 5
  %i.dx = add nuw nsw i64 %i.dv, 1
  %i.dy = add nuw nsw i64 %i.dx, %i.dw
  %i.dz = and i64 %i.dy, 127                      ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i.i60 = icmp eq i64 %i.ec, 0
  br i1 %.not17.i.i.i.i60, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i61, !llvm.loop !6915

.lr.ph.i.i.i.i61:                                 ; preds = %.lr.ph.i.i59
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !6914
  %i.ee = icmp eq i64 %i.ed, %i.de
  br i1 %i.ee, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i59, !llvm.loop !6915

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i59
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, !llvm.loop !6915

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i: ; preds = %.lr.ph.i.i.i.i61, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i58, %.preheader.i.i.i.i56, %bb.r, %bb.q, %bb.p
  %.0.i36.i = phi i64 [ %i.dd, %bb.p ], [ 0, %bb.q ], [ %i.di, %bb.r ], [ 0, %.preheader.i.i.i.i56 ], [ %i.dr, %.lr.ph.i.i.preheader.i.i58 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i ], [ %i.ec, %.lr.ph.i.i.i.i61 ]
  %i.ef = xor i64 %.sroa.0.057.i, -1
  %i.eg = and i64 %.0.i36.i, %i.ef
  %i.eh = and i64 %i.eg, %.03454.i                ; 3 uses
  %i.ei = sub i64 0, %i.eh
  %i.ej = and i64 %i.eh, %i.ei
  %i.ek = or i64 %i.ej, %.sroa.0.057.i            ; 2 uses
  %i.el = icmp ne i64 %i.eh, 0
  %i.em = zext i1 %i.el to i64
  %i.en = shl nuw i64 %i.em, %.055.i
  %i.eo = or i64 %i.en, %.sroa.8.056.i            ; 2 uses
  %i.ep = shl i64 %.03454.i, 1
  %i.eq = or disjoint i64 %i.ep, 1                ; 2 uses
  %i.er = add nuw nsw i64 %.055.i, 1              ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %i.er, %.sroa.speculated.i52
  br i1 %exitcond.not.i62, label %.preheader.i, label %.lr.ph.i54, !llvm.loop !6917

.lr.ph65.i:                                       ; preds = %.preheader.i, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i
  %.sroa.0.164.i = phi i64 [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.0.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.sroa.8.163.i = phi i64 [ %i.gi, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.8.0.lcssa.i, %.preheader.i ]
  %.162.i = phi i64 [ %i.gk, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.0.lcssa.i53, %.preheader.i ] ; 3 uses
  %.13561.i = phi i64 [ %i.gj, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.162.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !79  ; 3 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph65.i
  %i.ev = zext nneg i8 %i.et to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i

bb.t:                                             ; preds = %.lr.ph65.i
  %i.ey = sext i8 %i.et to i64                    ; 7 uses
  %i.ez = and i64 %i.ey, 127
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i37.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i37.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = load i64, ptr %i.fa, align 8, !tbaa !6914
  %i.fe = icmp eq i64 %i.fd, %i.ey
  br i1 %i.fe, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.preheader.i.i.i38.i

.preheader.i.i.i38.i:                             ; preds = %bb.u
  %i.ff = mul nsw i64 %i.ey, 5
  %i.fg = add nsw i64 %i.ey, 1
  %i.fh = add nsw i64 %i.fg, %i.ff
  %i.fi = and i64 %i.fh, 127                      ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i39.i = icmp eq i64 %i.fl, 0
  br i1 %.not1718.i.i.i39.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i.i.preheader.i40.i

.lr.ph.i.i.preheader.i40.i:                       ; preds = %.preheader.i.i.i38.i
  %i.fm = load i64, ptr %i.fj, align 8, !tbaa !6914
  %i.fn = icmp eq i64 %i.fm, %i.ey
  br i1 %i.fn, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i.i.preheader.i40.i, %.lr.ph.i.i.i44.i
  %.019.i.i7.i42.i = phi i64 [ %i.fp, %.lr.ph.i.i.i44.i ], [ %i.ey, %.lr.ph.i.i.preheader.i40.i ]
  %i.fo = phi i64 [ %i.ft, %.lr.ph.i.i.i44.i ], [ %i.fi, %.lr.ph.i.i.preheader.i40.i ]
  %i.fp = lshr i64 %.019.i.i7.i42.i, 5            ; 2 uses
  %i.fq = mul nuw nsw i64 %i.fo, 5
  %i.fr = add nuw nsw i64 %i.fp, 1
  %i.fs = add nuw nsw i64 %i.fr, %i.fq
  %i.ft = and i64 %i.fs, 127                      ; 2 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i43.i = icmp eq i64 %i.fw, 0
  br i1 %.not17.i.i.i43.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, label %.lr.ph.i.i.i44.i, !llvm.loop !6915

.lr.ph.i.i.i44.i:                                 ; preds = %.lr.ph.i41.i
  %i.fx = load i64, ptr %i.fu, align 8, !tbaa !6914
  %i.fy = icmp eq i64 %i.fx, %i.ey
  br i1 %i.fy, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i, !llvm.loop !6915

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i: ; preds = %.lr.ph.i41.i
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, !llvm.loop !6915

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i: ; preds = %.lr.ph.i.i.i44.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, %.lr.ph.i.i.preheader.i40.i, %.preheader.i.i.i38.i, %bb.u, %bb.t, %bb.s
  %.0.i45.i = phi i64 [ %i.ex, %bb.s ], [ 0, %bb.t ], [ %i.fc, %bb.u ], [ 0, %.preheader.i.i.i38.i ], [ %i.fl, %.lr.ph.i.i.preheader.i40.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i ], [ %i.fw, %.lr.ph.i.i.i44.i ]
  %i.fz = xor i64 %.sroa.0.164.i, -1
  %i.ga = and i64 %.0.i45.i, %i.fz
  %i.gb = and i64 %i.ga, %.13561.i                ; 3 uses
  %i.gc = sub i64 0, %i.gb
  %i.gd = and i64 %i.gb, %i.gc
  %i.ge = or i64 %i.gd, %.sroa.0.164.i            ; 2 uses
  %i.gf = icmp ne i64 %i.gb, 0
  %i.gg = zext i1 %i.gf to i64
  %i.gh = shl nuw i64 %i.gg, %.162.i
  %i.gi = or i64 %i.gh, %.sroa.8.163.i            ; 2 uses
  %i.gj = shl i64 %.13561.i, 1
  %i.gk = add nuw nsw i64 %.162.i, 1              ; 2 uses
  %i.gl = icmp slt i64 %i.gk, %i.av
  br i1 %i.gl, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit, !llvm.loop !6918

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, %.preheader.i
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.0.lcssa.i, %.preheader.i ], [ %i.gi, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i, %.preheader.i ], [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %i.gm = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.0.1.lcssa.i)
  %i.gn = add nuw nsw i64 %i.gm, %.0.lcssa.i      ; 3 uses
  %.not.i63 = icmp eq i64 %i.gn, 0
  br i1 %.not.i63, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.go = uitofp nneg i64 %i.gn to double         ; 2 uses
  %i.gp = fdiv double %i.go, %i.j
  %i.gq = fadd double %i.gp, 0.000000e+00
  %i.gr = fdiv double %i.go, %i.l
  %i.gs = fadd double %i.gr, %i.gq
  %i.gt = fadd double %i.gs, 1.000000e+00
  %i.gu = fdiv double %i.gt, 3.000000e+00
  %i.gv = fcmp ult double %i.gu, %4
  br i1 %i.gv, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %.sink.split, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %bb.v, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74
  %.05.i = phi i64 [ %i.il, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74 ], [ %.sroa.0.1.lcssa.i, %bb.v ] ; 3 uses
  %.0124.i = phi i64 [ %i.ii, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74 ], [ 0, %bb.v ]
  %.0133.i = phi i64 [ %i.ik, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74 ], [ %.sroa.8.1.lcssa.i, %bb.v ] ; 3 uses
  %i.gw = sub i64 0, %.05.i
  %i.gx = and i64 %.05.i, %i.gw                   ; 2 uses
  %i.gy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0133.i, i1 true)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !79  ; 3 uses
  %i.hb = icmp sgt i8 %i.ha, -1
  br i1 %i.hb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i65
  %i.hc = zext nneg i8 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74

bb.x:                                             ; preds = %.lr.ph.i65
  %i.hf = sext i8 %i.ha to i64                    ; 7 uses
  %i.hg = and i64 %i.hf, 127
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i.i66 = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i.i.i66, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hk = load i64, ptr %i.hh, align 8, !tbaa !6914
  %i.hl = icmp eq i64 %i.hk, %i.hf
  br i1 %i.hl, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74, label %.preheader.i.i.i.i67

.preheader.i.i.i.i67:                             ; preds = %bb.y
  %i.hm = mul nsw i64 %i.hf, 5
  %i.hn = add nsw i64 %i.hf, 1
  %i.ho = add nsw i64 %i.hn, %i.hm
  %i.hp = and i64 %i.ho, 127                      ; 2 uses
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i.i68 = icmp eq i64 %i.hs, 0
  br i1 %.not1718.i.i.i.i68, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74, label %.lr.ph.i.i.preheader.i.i69

.lr.ph.i.i.preheader.i.i69:                       ; preds = %.preheader.i.i.i.i67
  %i.ht = load i64, ptr %i.hq, align 8, !tbaa !6914
  %i.hu = icmp eq i64 %i.ht, %i.hf
  br i1 %i.hu, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74, label %.lr.ph.i.i70

.lr.ph.i.i70:                                     ; preds = %.lr.ph.i.i.preheader.i.i69, %.lr.ph.i.i.i.i73
  %.019.i.i7.i.i71 = phi i64 [ %i.hw, %.lr.ph.i.i.i.i73 ], [ %i.hf, %.lr.ph.i.i.preheader.i.i69 ]
  %i.hv = phi i64 [ %i.ia, %.lr.ph.i.i.i.i73 ], [ %i.hp, %.lr.ph.i.i.preheader.i.i69 ]
  %i.hw = lshr i64 %.019.i.i7.i.i71, 5            ; 2 uses
  %i.hx = mul nuw nsw i64 %i.hv, 5
  %i.hy = add nuw nsw i64 %i.hw, 1
  %i.hz = add nuw nsw i64 %i.hy, %i.hx
  %i.ia = and i64 %i.hz, 127                      ; 2 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i.i72 = icmp eq i64 %i.id, 0
  br i1 %.not17.i.i.i.i72, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i77, label %.lr.ph.i.i.i.i73, !llvm.loop !6915

.lr.ph.i.i.i.i73:                                 ; preds = %.lr.ph.i.i70
  %i.ie = load i64, ptr %i.ib, align 8, !tbaa !6914
  %i.if = icmp eq i64 %i.ie, %i.hf
  br i1 %i.if, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74, label %.lr.ph.i.i70, !llvm.loop !6915

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i77: ; preds = %.lr.ph.i.i70
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74, !llvm.loop !6915

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74: ; preds = %.lr.ph.i.i.i.i73, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i77, %.lr.ph.i.i.preheader.i.i69, %.preheader.i.i.i.i67, %bb.y, %bb.x, %bb.w
  %.0.i.i75 = phi i64 [ %i.he, %bb.w ], [ 0, %bb.x ], [ %i.hj, %bb.y ], [ 0, %.preheader.i.i.i.i67 ], [ %i.hs, %.lr.ph.i.i.preheader.i.i69 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i77 ], [ %i.id, %.lr.ph.i.i.i.i73 ]
  %i.ig = and i64 %.0.i.i75, %i.gx
  %.not14.i = icmp eq i64 %i.ig, 0
  %i.ih = zext i1 %.not14.i to i64
  %i.ii = add nuw nsw i64 %.0124.i, %i.ih         ; 2 uses
  %i.ij = add i64 %.0133.i, -1
  %i.ik = and i64 %i.ij, %.0133.i                 ; 2 uses
  %i.il = xor i64 %i.gx, %.05.i
  %.not.i76 = icmp eq i64 %i.ik, 0
  br i1 %.not.i76, label %.sink.split, label %.lr.ph.i65, !llvm.loop !6919

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread: ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  invoke void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIPKcEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %i.aq, ptr noundef %.0)
          to label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef nonnull %i.io) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.ab, %bb.aa
  %i.ip = load ptr, ptr %6, align 8, !tbaa !6920  ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i4.i, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ip) #61
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.ac, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.ki, %.body ], [ %i.im, %bb.ac ], [ %i.im, %_ZNSt6vectorImSaImEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  call void @llvm.experimental.noalias.scope.decl(metadata !6923)
  %i.iq = sdiv i64 %i.av, 64
  %i.ir = and i64 %i.av, 63
  %i.is = icmp ne i64 %i.ir, 0
  %i.it = zext i1 %i.is to i64
  %i.iu = add nsw i64 %i.iq, %i.it                ; 5 uses
  %i.iv = sdiv i64 %i.at, 64
  %i.iw = and i64 %i.at, 63
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = zext i1 %i.ix to i64
  %i.iz = add nsw i64 %i.iv, %i.iy                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false), !alias.scope !6923
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.not52.i = icmp eq i64 %i.iu, 0
  br i1 %.not52.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jd = icmp ugt i64 %i.iu, 1152921504606846975
  br i1 %i.jd, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i120

.invoke:                                          ; preds = %bb.ae, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2092) #60
          to label %.cont unwind label %.body

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i120: ; preds = %bb.ad
  %i.je = shl nuw nsw i64 %i.iu, 3
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #65
          to label %.noexc129 unwind label %.body ; 5 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i120
  store i64 0, ptr %i.jf, align 8, !tbaa !33
  %i.jg = add nsw i64 %i.iu, -1                   ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i122

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i122: ; preds = %.noexc129
  %i.ji = getelementptr i8, ptr %i.jf, i64 8
  %.idx.i.i.i.i.i31.i123 = shl nuw nsw i64 %i.jg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ji, i8 0, i64 %.idx.i.i.i.i.i31.i123, i1 false), !tbaa !33
  br label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i:  ; preds = %.noexc129, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i122
  store ptr %i.jf, ptr %i.ja, align 8, !tbaa !152
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.iu ; 3 uses
  store ptr %i.jj, ptr %i.jb, align 8, !tbaa !150
  store ptr %i.jj, ptr %i.jc, align 8, !tbaa !168
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.jk = phi ptr [ %i.jj, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 3 uses
  %i.jl = phi ptr [ %i.jf, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 13 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not = icmp eq i64 %i.iz, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jo = icmp ugt i64 %i.iz, 1152921504606846975
  br i1 %i.jo, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ae
  %i.jp = shl nuw nsw i64 %i.iz, 3
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #65
          to label %.noexc113 unwind label %.body ; 5 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.jq, align 8, !tbaa !33
  %i.jr = add nsw i64 %i.iz, -1                   ; 2 uses
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc113
  %i.jt = getelementptr i8, ptr %i.jq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.jr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !33
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc113
  store ptr %i.jq, ptr %7, align 8, !tbaa !152
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.iz ; 3 uses
  store ptr %i.ju, ptr %i.jm, align 8, !tbaa !150
  store ptr %i.ju, ptr %i.jn, align 8, !tbaa !168
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i

_ZNSt6vectorImSaImEE6resizeEm.exit34.i:           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.jv = phi ptr [ %i.ju, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 3 uses
  %i.jw = phi ptr [ %i.jq, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 14 uses
  %i.jx = icmp sgt i64 %i.av, 0
  br i1 %i.jx, label %.lr.ph.i79, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit

.lr.ph.i79:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.jy = add nsw i64 %.0.i50, 1
  %.sroa.speculated.i80 = call i64 @llvm.smin.i64(i64 %i.at, i64 %i.jy) ; 2 uses
  %i.jz = and i64 %.sroa.speculated.i80, 63
  %notmask.i = shl nsw i64 -1, %i.jz
  %i.ka = xor i64 %notmask.i, -1
  %i.kb = sdiv i64 %.sroa.speculated.i80, 64
  %i.kc = add nsw i64 %i.kb, 1
  %i.kd = load ptr, ptr %6, align 8, !noalias !6923 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.kg = load ptr, ptr %i.ke, align 8, !noalias !6923 ; 4 uses
  %i.kh = load i64, ptr %i.kf, align 8            ; 4 uses
  br label %bb.af

.body:                                            ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i120, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  call void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %common.resume

bb.af:                                            ; preds = %bb.ba, %.lr.ph.i79
  %.079.i = phi i64 [ 0, %.lr.ph.i79 ], [ %i.ss, %bb.ba ] ; 6 uses
  %.sroa.0.078.i = phi i64 [ %i.kc, %.lr.ph.i79 ], [ %.sroa.0.2.i, %bb.ba ] ; 4 uses
  %.sroa.17.076.i = phi i64 [ -1, %.lr.ph.i79 ], [ %.sroa.17.1.i, %bb.ba ] ; 5 uses
  %.sroa.13.074.i = phi i64 [ %i.ka, %.lr.ph.i79 ], [ %.sroa.13.1.i, %bb.ba ] ; 5 uses
  %.sroa.10.073.i = phi i64 [ 0, %.lr.ph.i79 ], [ %.sroa.10.1.i, %bb.ba ] ; 12 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.079.i
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !79, !noalias !6923 ; 12 uses
  %i.kl = lshr i64 %.079.i, 6                     ; 4 uses
  %i.km = and i64 %.079.i, 63                     ; 4 uses
  %i.kn = icmp eq i64 %.sroa.0.078.i, 1
  br i1 %i.kn, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ko = icmp sgt i8 %i.kk, -1
  br i1 %i.ko, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kp = zext nneg i8 %i.kk to i64
  %i.kq = mul nsw i64 %i.kh, %i.kp
  %i.kr = getelementptr [8 x i8], ptr %i.kg, i64 %i.kq
  %i.ks = getelementptr [8 x i8], ptr %i.kr, i64 %.sroa.10.073.i
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ku = getelementptr inbounds nuw [2048 x i8], ptr %i.kd, i64 %.sroa.10.073.i ; 3 uses
  %i.kv = sext i8 %i.kk to i64                    ; 7 uses
  %i.kw = and i64 %i.kv, 127
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.kz, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.la = load i64, ptr %i.kx, align 8, !tbaa !6914
  %i.lb = icmp eq i64 %i.la, %i.kv
  br i1 %i.lb, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.aj
  %i.lc = mul nsw i64 %i.kv, 5
  %i.ld = add nsw i64 %i.kv, 1
  %i.le = add nsw i64 %i.ld, %i.lc
  %i.lf = and i64 %i.le, 127                      ; 2 uses
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i.i.i = icmp eq i64 %i.li, 0
  br i1 %.not1718.i.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.lj = load i64, ptr %i.lg, align 8, !tbaa !6914
  %i.lk = icmp eq i64 %i.lj, %i.kv
  br i1 %i.lk, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i
  %.019.i.i9.i.i.i = phi i64 [ %i.lm, %.lr.ph.i.i.i.i.i ], [ %i.kv, %.lr.ph.i.i.preheader.i.i.i ]
  %i.ll = phi i64 [ %i.lq, %.lr.ph.i.i.i.i.i ], [ %i.lf, %.lr.ph.i.i.preheader.i.i.i ]
  %i.lm = lshr i64 %.019.i.i9.i.i.i, 5            ; 2 uses
  %i.ln = mul nuw nsw i64 %i.ll, 5
  %i.lo = add nuw nsw i64 %i.lm, 1
  %i.lp = add nuw nsw i64 %i.lo, %i.ln
  %i.lq = and i64 %i.lp, 127                      ; 2 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.lt, 0
  br i1 %.not17.i.i.i.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6915

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.lu = load i64, ptr %i.lr, align 8, !tbaa !6914
  %i.lv = icmp eq i64 %i.lu, %i.kv
  br i1 %i.lv, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !6915

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i, !llvm.loop !6915

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, %.lr.ph.i.i.preheader.i.i.i, %.preheader.i.i.i.i.i, %bb.aj, %bb.ai, %bb.ah
  %.0.i.i.i = phi i64 [ %i.kt, %bb.ah ], [ 0, %bb.ai ], [ %i.kz, %bb.aj ], [ 0, %.preheader.i.i.i.i.i ], [ %i.li, %.lr.ph.i.i.preheader.i.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i ], [ %i.lt, %.lr.ph.i.i.i.i.i ]
  %i.lw = and i64 %.sroa.17.076.i, %.0.i.i.i
  %i.lx = and i64 %i.lw, %.sroa.13.074.i          ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.sroa.10.073.i ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !33 ; 2 uses
  %i.ma = xor i64 %i.lz, -1
  %i.mb = and i64 %i.lx, %i.ma                    ; 2 uses
  %i.mc = sub i64 0, %i.mb
  %i.md = and i64 %i.lx, %i.mc
  %i.me = or i64 %i.md, %i.lz
  store i64 %i.me, ptr %i.ly, align 8, !tbaa !33
  %i.mf = icmp ne i64 %i.mb, 0
  %i.mg = zext i1 %i.mf to i64
  %i.mh = shl nuw i64 %i.mg, %i.km
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.kl ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !33
  %i.mk = or i64 %i.mh, %i.mj
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

bb.ak:                                            ; preds = %bb.af
  %.not.i.i = icmp eq i64 %.sroa.17.076.i, 0
  br i1 %.not.i.i, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ml = icmp sgt i8 %i.kk, -1
  br i1 %i.ml, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mm = zext nneg i8 %i.kk to i64
  %i.mn = mul nsw i64 %i.kh, %i.mm
  %i.mo = getelementptr [8 x i8], ptr %i.kg, i64 %i.mn
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %.sroa.10.073.i
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i

bb.an:                                            ; preds = %bb.al
  %i.mr = getelementptr inbounds nuw [2048 x i8], ptr %i.kd, i64 %.sroa.10.073.i ; 3 uses
  %i.ms = sext i8 %i.kk to i64                    ; 7 uses
  %i.mt = and i64 %i.ms, 127
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i64.i.i = icmp eq i64 %i.mw, 0
  br i1 %.not.i.i.i64.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mx = load i64, ptr %i.mu, align 8, !tbaa !6914
  %i.my = icmp eq i64 %i.mx, %i.ms
  br i1 %i.my, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i, label %.preheader.i.i.i65.i.i

.preheader.i.i.i65.i.i:                           ; preds = %bb.ao
  %i.mz = mul nsw i64 %i.ms, 5
  %i.na = add nsw i64 %i.ms, 1
  %i.nb = add nsw i64 %i.na, %i.mz
  %i.nc = and i64 %i.nb, 127                      ; 2 uses
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %i.nc ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i66.i.i = icmp eq i64 %i.nf, 0
  br i1 %.not1718.i.i.i66.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i, label %.lr.ph.i.i.preheader.i67.i.i

.lr.ph.i.i.preheader.i67.i.i:                     ; preds = %.preheader.i.i.i65.i.i
  %i.ng = load i64, ptr %i.nd, align 8, !tbaa !6914
  %i.nh = icmp eq i64 %i.ng, %i.ms
  br i1 %i.nh, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i, label %.lr.ph.i68.i.i

.lr.ph.i68.i.i:                                   ; preds = %.lr.ph.i.i.preheader.i67.i.i, %.lr.ph.i.i.i71.i.i
  %.019.i.i9.i69.i.i = phi i64 [ %i.nj, %.lr.ph.i.i.i71.i.i ], [ %i.ms, %.lr.ph.i.i.preheader.i67.i.i ]
  %i.ni = phi i64 [ %i.nn, %.lr.ph.i.i.i71.i.i ], [ %i.nc, %.lr.ph.i.i.preheader.i67.i.i ]
  %i.nj = lshr i64 %.019.i.i9.i69.i.i, 5          ; 2 uses
  %i.nk = mul nuw nsw i64 %i.ni, 5
  %i.nl = add nuw nsw i64 %i.nj, 1
  %i.nm = add nuw nsw i64 %i.nl, %i.nk
  %i.nn = and i64 %i.nm, 127                      ; 2 uses
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %i.nn ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i70.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not17.i.i.i70.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i, label %.lr.ph.i.i.i71.i.i, !llvm.loop !6915

.lr.ph.i.i.i71.i.i:                               ; preds = %.lr.ph.i68.i.i
  %i.nr = load i64, ptr %i.no, align 8, !tbaa !6914
  %i.ns = icmp eq i64 %i.nr, %i.ms
  br i1 %i.ns, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i, label %.lr.ph.i68.i.i, !llvm.loop !6915

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i: ; preds = %.lr.ph.i68.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i, !llvm.loop !6915

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i: ; preds = %.lr.ph.i.i.i71.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i, %.lr.ph.i.i.preheader.i67.i.i, %.preheader.i.i.i65.i.i, %bb.ao, %bb.an, %bb.am
  %.0.i72.i.i = phi i64 [ %i.mq, %bb.am ], [ 0, %bb.an ], [ %i.mw, %bb.ao ], [ 0, %.preheader.i.i.i65.i.i ], [ %i.nf, %.lr.ph.i.i.preheader.i67.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i ], [ %i.nq, %.lr.ph.i.i.i71.i.i ]
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.sroa.10.073.i ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !33 ; 2 uses
  %i.nv = xor i64 %i.nu, -1
end_hunk_5
begin_hunk_6_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i92.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not17.i.i.i92.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i, label %.lr.ph.i.i.i93.i.i, !llvm.loop !6915

.lr.ph.i.i.i93.i.i:                               ; preds = %.lr.ph.i90.i.i
  %i.rp = load i64, ptr %i.rm, align 8, !tbaa !6914
  %i.rq = icmp eq i64 %i.rp, %i.qq
  br i1 %i.rq, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, label %.lr.ph.i90.i.i, !llvm.loop !6915

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i: ; preds = %.lr.ph.i90.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, !llvm.loop !6915

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i: ; preds = %.lr.ph.i.i.i93.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i, %.lr.ph.i.i.preheader.i89.i.i, %.preheader.i.i.i87.i.i, %bb.av, %bb.au, %bb.at
  %.0.i94.i.i = phi i64 [ %i.qo, %bb.at ], [ 0, %bb.au ], [ %i.qu, %bb.av ], [ 0, %.preheader.i.i.i87.i.i ], [ %i.rd, %.lr.ph.i.i.preheader.i89.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i ], [ %i.ro, %.lr.ph.i.i.i93.i.i ]
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.2.lcssa.i.i ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !33 ; 2 uses
  %i.rt = xor i64 %i.rs, -1
  %i.ru = and i64 %.0.i94.i.i, %i.rt
  %i.rv = and i64 %i.ru, %.sroa.13.074.i          ; 3 uses
  %i.rw = sub i64 0, %i.rv
  %i.rx = and i64 %i.rv, %i.rw
  %i.ry = or i64 %i.rx, %i.rs
  store i64 %i.ry, ptr %i.rr, align 8, !tbaa !33
  %i.rz = icmp ne i64 %i.rv, 0
  %i.sa = zext i1 %i.rz to i64
  %i.sb = shl nuw i64 %i.sa, %i.km
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.kl ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !33
  %i.se = or i64 %i.sb, %i.sd
  store i64 %i.se, ptr %i.sc, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, %._crit_edge.i.i, %.split.us.i.i, %bb.ap, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i
  %i.sf = add nsw i64 %.079.i, %.0.i50            ; 2 uses
  %i.sg = add nsw i64 %i.sf, 1
  %i.sh = icmp slt i64 %i.sg, %i.at
  br i1 %i.sh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %i.si = shl i64 %.sroa.13.074.i, 1              ; 2 uses
  %i.sj = or disjoint i64 %i.si, 1
  %i.sk = add nsw i64 %i.sf, 2
  %i.sl = icmp slt i64 %i.sk, %i.at
  %i.sm = icmp eq i64 %i.si, -2
  %or.cond.i83 = select i1 %i.sl, i1 %i.sm, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i83, i64 0, i64 %i.sj
  %i.sn = zext i1 %or.cond.i83 to i64
  %spec.select51.i = add nsw i64 %.sroa.0.078.i, %i.sn
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.13.1.i = phi i64 [ %.sroa.13.074.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select.i, %bb.aw ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.078.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select51.i, %bb.aw ] ; 3 uses
  %.not.i81 = icmp slt i64 %.079.i, %.0.i50
  br i1 %.not.i81, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.so = shl i64 %.sroa.17.076.i, 1              ; 2 uses
  %i.sp = icmp eq i64 %i.so, 0
  br i1 %i.sp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.sq = add nsw i64 %.sroa.0.1.i, -1
  %i.sr = add nsw i64 %.sroa.10.073.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10.1.i = phi i64 [ %.sroa.10.073.i, %bb.ax ], [ %i.sr, %bb.az ], [ %.sroa.10.073.i, %bb.ay ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.076.i, %bb.ax ], [ -1, %bb.az ], [ %i.so, %bb.ay ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ax ], [ %i.sq, %bb.az ], [ %.sroa.0.1.i, %bb.ay ]
  %i.ss = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.ss, %i.av
  br i1 %exitcond.not.i82, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit, label %bb.af, !llvm.loop !6927

_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit: ; preds = %bb.ba, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.st = ptrtoint ptr %i.jv to i64               ; 2 uses
  %i.su = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.sx = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = icmp ult i64 %i.sv, %i.sy
  br i1 %i.sz, label %.preheader.i88, label %.preheader20.i

.preheader20.i:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit
  %.not22.i = icmp eq ptr %i.jl, %i.jk
  br i1 %.not22.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i86.preheader

.lr.ph.i86.preheader:                             ; preds = %.preheader20.i
  %i.ta = add i64 %i.sw, -8
  %i.tb = sub i64 %i.ta, %i.sx                    ; 2 uses
  %i.tc = lshr i64 %i.tb, 3
  %i.td = add nuw nsw i64 %i.tc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.tb, 24
  br i1 %min.iters.check, label %.lr.ph.i86.preheader531, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i86.preheader
  %n.vec = and i64 %i.td, 4611686018427387900     ; 3 uses
  %i.te = shl i64 %n.vec, 3
  %i.tf = getelementptr i8, ptr %i.jl, i64 %i.te
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tk, %vector.body ]
  %vec.phi483 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tl, %vector.body ]
  %i.tg = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jl, i64 %i.tg ; 2 uses
  %i.th = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !33
  %wide.load484 = load <2 x i64>, ptr %i.th, align 8, !tbaa !33
  %i.ti = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.tj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load484)
  %i.tk = add <2 x i64> %i.ti, %vec.phi           ; 2 uses
  %i.tl = add <2 x i64> %i.tj, %vec.phi483        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tm = icmp eq i64 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !6928

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.tl, %i.tk
  %i.tn = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.td, %n.vec
  br i1 %cmp.n, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i86.preheader531

.lr.ph.i86.preheader531:                          ; preds = %.lr.ph.i86.preheader, %middle.block
  %.124.i.ph = phi i64 [ 0, %.lr.ph.i86.preheader ], [ %i.tn, %middle.block ]
  %.sroa.012.023.i.ph = phi ptr [ %i.jl, %.lr.ph.i86.preheader ], [ %i.tf, %middle.block ]
  br label %.lr.ph.i86

.preheader.i88:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit
  %.not1925.i = icmp eq ptr %i.jw, %i.jv
  br i1 %.not1925.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i88
  %i.to = add i64 %i.st, -8
  %i.tp = sub i64 %i.to, %i.su                    ; 2 uses
  %i.tq = lshr i64 %i.tp, 3
  %i.tr = add nuw nsw i64 %i.tq, 1                ; 2 uses
  %min.iters.check486 = icmp ult i64 %i.tp, 24
  br i1 %min.iters.check486, label %.lr.ph28.i.preheader527, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph28.i.preheader
  %n.vec489 = and i64 %i.tr, 4611686018427387900  ; 3 uses
  %i.ts = shl i64 %n.vec489, 3
  %i.tt = getelementptr i8, ptr %i.jw, i64 %i.ts
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph487
  %index491 = phi i64 [ 0, %vector.ph487 ], [ %index.next497, %vector.body490 ] ; 2 uses
  %vec.phi492 = phi <2 x i64> [ zeroinitializer, %vector.ph487 ], [ %i.ty, %vector.body490 ]
  %vec.phi493 = phi <2 x i64> [ zeroinitializer, %vector.ph487 ], [ %i.tz, %vector.body490 ]
  %i.tu = shl i64 %index491, 3
  %next.gep494 = getelementptr i8, ptr %i.jw, i64 %i.tu ; 2 uses
  %i.tv = getelementptr i8, ptr %next.gep494, i64 16
  %wide.load495 = load <2 x i64>, ptr %next.gep494, align 8, !tbaa !33
  %wide.load496 = load <2 x i64>, ptr %i.tv, align 8, !tbaa !33
  %i.tw = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load495)
  %i.tx = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load496)
  %i.ty = add <2 x i64> %i.tw, %vec.phi492        ; 2 uses
  %i.tz = add <2 x i64> %i.tx, %vec.phi493        ; 2 uses
  %index.next497 = add nuw i64 %index491, 4       ; 2 uses
  %i.ua = icmp eq i64 %index.next497, %n.vec489
  br i1 %i.ua, label %middle.block498, label %vector.body490, !llvm.loop !6929

middle.block498:                                  ; preds = %vector.body490
  %bin.rdx499 = add <2 x i64> %i.tz, %i.ty
  %i.ub = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx499) ; 2 uses
  %cmp.n500 = icmp eq i64 %i.tr, %n.vec489
  br i1 %cmp.n500, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader527

.lr.ph28.i.preheader527:                          ; preds = %.lr.ph28.i.preheader, %middle.block498
  %.027.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %i.ub, %middle.block498 ]
  %.sroa.016.026.i.ph = phi ptr [ %i.jw, %.lr.ph28.i.preheader ], [ %i.tt, %middle.block498 ]
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader527, %.lr.ph28.i
  %.027.i = phi i64 [ %i.ue, %.lr.ph28.i ], [ %.027.i.ph, %.lr.ph28.i.preheader527 ]
  %.sroa.016.026.i = phi ptr [ %i.uf, %.lr.ph28.i ], [ %.sroa.016.026.i.ph, %.lr.ph28.i.preheader527 ] ; 2 uses
  %i.uc = load i64, ptr %.sroa.016.026.i, align 8, !tbaa !33
  %i.ud = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.uc)
  %i.ue = add nuw nsw i64 %i.ud, %.027.i          ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.uf, %i.jv
  br i1 %.not19.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i, !llvm.loop !6930

.lr.ph.i86:                                       ; preds = %.lr.ph.i86.preheader531, %.lr.ph.i86
  %.124.i = phi i64 [ %i.ui, %.lr.ph.i86 ], [ %.124.i.ph, %.lr.ph.i86.preheader531 ]
  %.sroa.012.023.i = phi ptr [ %i.uj, %.lr.ph.i86 ], [ %.sroa.012.023.i.ph, %.lr.ph.i86.preheader531 ] ; 2 uses
  %i.ug = load i64, ptr %.sroa.012.023.i, align 8, !tbaa !33
  %i.uh = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ug)
  %i.ui = add nuw nsw i64 %i.uh, %.124.i          ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8 ; 2 uses
  %.not.i87 = icmp eq ptr %i.uj, %i.jk
  br i1 %.not.i87, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i86, !llvm.loop !6931

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i86, %.lr.ph28.i, %middle.block, %middle.block498, %.preheader20.i, %.preheader.i88
  %.2.i = phi i64 [ %i.ue, %.lr.ph28.i ], [ 0, %.preheader.i88 ], [ 0, %.preheader20.i ], [ %i.ub, %middle.block498 ], [ %i.tn, %middle.block ], [ %i.ui, %.lr.ph.i86 ] ; 3 uses
  %i.uk = add nsw i64 %.2.i, %.0.lcssa.i          ; 3 uses
  %.not.i89 = icmp eq i64 %i.uk, 0
  br i1 %.not.i89, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.ul = sitofp i64 %i.uk to double              ; 2 uses
  %i.um = fdiv double %i.ul, %i.j
  %i.un = fadd double %i.um, 0.000000e+00
  %i.uo = fdiv double %i.ul, %i.l
  %i.up = fadd double %i.uo, %i.un
  %i.uq = fadd double %i.up, 1.000000e+00
  %i.ur = fdiv double %i.uq, 3.000000e+00
  %i.us = fcmp ult double %i.ur, %4
  br i1 %i.us, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91
  %.not19.i92 = icmp eq i64 %.2.i, 0
  br i1 %.not19.i92, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %bb.bb
  %i.ut = load i64, ptr %i.jw, align 8, !tbaa !33
  %i.uu = load i64, ptr %i.jl, align 8, !tbaa !33
  %i.uv = load ptr, ptr %6, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ux = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = load ptr, ptr %i.uw, align 8
  br label %.preheader2.i

.loopexit.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i
  %.not.i103 = icmp eq i64 %i.xa, 0
  br i1 %.not.i103, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.i, !llvm.loop !6932

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader2.lr.ph.i
  %.027.i93 = phi ptr [ %i.ar, %.preheader2.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.02625.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %i.ww, %.loopexit.i ]
  %.02824.i = phi i64 [ %i.ut, %.preheader2.lr.ph.i ], [ %i.wz, %.loopexit.i ]
  %.03023.i = phi i64 [ %i.uu, %.preheader2.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.03322.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.235.lcssa.i, %.loopexit.i ]
  %.03621.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.137.lcssa.i, %.loopexit.i ] ; 2 uses
  %.03820.i = phi i64 [ %.2.i, %.preheader2.lr.ph.i ], [ %i.xa, %.loopexit.i ]
  %.not404.i = icmp eq i64 %.03023.i, 0
  br i1 %.not404.i, label %.lr.ph.i105, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i105, %.preheader2.i
  %.137.lcssa.i = phi i64 [ %.03621.i, %.preheader2.i ], [ %i.va, %.lr.ph.i105 ]
  %.131.lcssa.i = phi i64 [ %.03023.i, %.preheader2.i ], [ %i.vd, %.lr.ph.i105 ]
  %.1.lcssa.i = phi ptr [ %.027.i93, %.preheader2.i ], [ %i.vb, %.lr.ph.i105 ] ; 2 uses
  br label %.preheader.i94

.lr.ph.i105:                                      ; preds = %.preheader2.i, %.lr.ph.i105
  %.16.i = phi ptr [ %i.vb, %.lr.ph.i105 ], [ %.027.i93, %.preheader2.i ]
  %.1375.i = phi i64 [ %i.va, %.lr.ph.i105 ], [ %.03621.i, %.preheader2.i ]
  %i.va = add nsw i64 %.1375.i, 1                 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.16.i, i64 64 ; 2 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.va
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !33 ; 2 uses
  %.not40.i = icmp eq i64 %i.vd, 0
  br i1 %.not40.i, label %.lr.ph.i105, label %.preheader1.i, !llvm.loop !6933

.preheader.i94:                                   ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, %.preheader1.i
  %.12718.i = phi i64 [ %.02625.i, %.preheader1.i ], [ %i.ww, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.12917.i = phi i64 [ %.02824.i, %.preheader1.i ], [ %i.wz, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.23216.i = phi i64 [ %.131.lcssa.i, %.preheader1.i ], [ %i.wy, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 3 uses
  %.13415.i = phi i64 [ %.03322.i, %.preheader1.i ], [ %.235.lcssa.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.13914.i = phi i64 [ %.03820.i, %.preheader1.i ], [ %i.xa, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.not429.i = icmp eq i64 %.12917.i, 0
  br i1 %.not429.i, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %.preheader.i94, %.lr.ph11.i
  %.23510.i = phi i64 [ %i.ve, %.lr.ph11.i ], [ %.13415.i, %.preheader.i94 ]
  %i.ve = add nsw i64 %.23510.i, 1                ; 3 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.ve
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !33 ; 2 uses
  %.not42.i = icmp eq i64 %i.vg, 0
  br i1 %.not42.i, label %.lr.ph11.i, label %._crit_edge.i, !llvm.loop !6934

._crit_edge.i:                                    ; preds = %.lr.ph11.i, %.preheader.i94
  %.235.lcssa.i = phi i64 [ %.13415.i, %.preheader.i94 ], [ %i.ve, %.lr.ph11.i ] ; 4 uses
  %.2.lcssa.i = phi i64 [ %.12917.i, %.preheader.i94 ], [ %i.vg, %.lr.ph11.i ] ; 3 uses
  %i.vh = sub i64 0, %.2.lcssa.i
  %i.vi = and i64 %.2.lcssa.i, %i.vh              ; 2 uses
  %i.vj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.23216.i, i1 true)
  %i.vk = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !79  ; 3 uses
  %i.vm = icmp sgt i8 %i.vl, -1
  br i1 %i.vm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i
  %i.vn = zext nneg i8 %i.vl to i64
  %i.vo = mul nsw i64 %i.uy, %i.vn
  %i.vp = getelementptr [8 x i8], ptr %i.uz, i64 %i.vo
  %i.vq = getelementptr [8 x i8], ptr %i.vp, i64 %.235.lcssa.i
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i

bb.bd:                                            ; preds = %._crit_edge.i
  %i.vs = getelementptr inbounds nuw [2048 x i8], ptr %i.uv, i64 %.235.lcssa.i ; 3 uses
  %i.vt = sext i8 %i.vl to i64                    ; 7 uses
  %i.vu = and i64 %i.vt, 127
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %i.vs, i64 %i.vu ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i.i95 = icmp eq i64 %i.vx, 0
  br i1 %.not.i.i.i.i95, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vy = load i64, ptr %i.vv, align 8, !tbaa !6914
  %i.vz = icmp eq i64 %i.vy, %i.vt
  br i1 %i.vz, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.preheader.i.i.i.i96

.preheader.i.i.i.i96:                             ; preds = %bb.be
  %i.wa = mul nsw i64 %i.vt, 5
  %i.wb = add nsw i64 %i.vt, 1
  %i.wc = add nsw i64 %i.wb, %i.wa
  %i.wd = and i64 %i.wc, 127                      ; 2 uses
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %i.vs, i64 %i.wd ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i.i97 = icmp eq i64 %i.wg, 0
  br i1 %.not1718.i.i.i.i97, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i.preheader.i.i98

.lr.ph.i.i.preheader.i.i98:                       ; preds = %.preheader.i.i.i.i96
  %i.wh = load i64, ptr %i.we, align 8, !tbaa !6914
  %i.wi = icmp eq i64 %i.wh, %i.vt
  br i1 %i.wi, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i99

.lr.ph.i.i99:                                     ; preds = %.lr.ph.i.i.preheader.i.i98, %.lr.ph.i.i.i.i101
  %.019.i.i9.i.i = phi i64 [ %i.wk, %.lr.ph.i.i.i.i101 ], [ %i.vt, %.lr.ph.i.i.preheader.i.i98 ]
  %i.wj = phi i64 [ %i.wo, %.lr.ph.i.i.i.i101 ], [ %i.wd, %.lr.ph.i.i.preheader.i.i98 ]
  %i.wk = lshr i64 %.019.i.i9.i.i, 5              ; 2 uses
  %i.wl = mul nuw nsw i64 %i.wj, 5
  %i.wm = add nuw nsw i64 %i.wk, 1
  %i.wn = add nuw nsw i64 %i.wm, %i.wl
  %i.wo = and i64 %i.wn, 127                      ; 2 uses
  %i.wp = getelementptr inbounds nuw [16 x i8], ptr %i.vs, i64 %i.wo ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i.i100 = icmp eq i64 %i.wr, 0
  br i1 %.not17.i.i.i.i100, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i104, label %.lr.ph.i.i.i.i101, !llvm.loop !6915

.lr.ph.i.i.i.i101:                                ; preds = %.lr.ph.i.i99
  %i.ws = load i64, ptr %i.wp, align 8, !tbaa !6914
  %i.wt = icmp eq i64 %i.ws, %i.vt
  br i1 %i.wt, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i99, !llvm.loop !6915

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i104: ; preds = %.lr.ph.i.i99
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, !llvm.loop !6915

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i: ; preds = %.lr.ph.i.i.i.i101, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i104, %.lr.ph.i.i.preheader.i.i98, %.preheader.i.i.i.i96, %bb.be, %bb.bd, %bb.bc
  %.0.i.i102 = phi i64 [ %i.vr, %bb.bc ], [ 0, %bb.bd ], [ %i.vx, %bb.be ], [ 0, %.preheader.i.i.i.i96 ], [ %i.wg, %.lr.ph.i.i.preheader.i.i98 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i104 ], [ %i.wr, %.lr.ph.i.i.i.i101 ]
  %i.wu = and i64 %.0.i.i102, %i.vi
  %.not43.i = icmp eq i64 %i.wu, 0
  %i.wv = zext i1 %.not43.i to i64
  %i.ww = add nsw i64 %.12718.i, %i.wv            ; 3 uses
  %i.wx = add i64 %.23216.i, -1
  %i.wy = and i64 %i.wx, %.23216.i                ; 2 uses
  %i.wz = xor i64 %i.vi, %.2.lcssa.i              ; 2 uses
  %i.xa = add nsw i64 %.13914.i, -1               ; 3 uses
  %.not41.i = icmp eq i64 %i.wy, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i94, !llvm.loop !6935

_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit: ; preds = %.loopexit.i, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %bb.bb, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91
  %.0.i90172 = phi i1 [ false, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ false, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91 ], [ true, %bb.bb ], [ true, %.loopexit.i ]
  %.143 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ 0, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91 ], [ 0, %bb.bb ], [ %i.ww, %.loopexit.i ]
  %.not.i.i.i.i106 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i106, label %_ZNSt6vectorImSaImEED2Ev.exit.i107, label %bb.bf

bb.bf:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  call void @_ZdlPv(ptr noundef nonnull %i.jl) #61
  %.pre = load ptr, ptr %7, align 8, !tbaa !152
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i107

_ZNSt6vectorImSaImEED2Ev.exit.i107:               ; preds = %bb.bf, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  %i.xb = phi ptr [ %.pre, %bb.bf ], [ %i.jw, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit ] ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.xb, null
  br i1 %.not.i.i.i1.i, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i107
  call void @_ZdlPv(ptr noundef nonnull %i.xb) #61
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i107, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  %i.xc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i.i108, label %_ZNSt6vectorImSaImEED2Ev.exit.i109, label %bb.bh

bb.bh:                                            ; preds = %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.xd) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i109

_ZNSt6vectorImSaImEED2Ev.exit.i109:               ; preds = %bb.bh, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  %i.xe = load ptr, ptr %6, align 8, !tbaa !6920  ; 2 uses
  %.not.i.i.i1.i110 = icmp eq ptr %i.xe, null
  br i1 %.not.i.i.i1.i110, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i109
  call void @_ZdlPv(ptr noundef nonnull %i.xe) #61
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i109, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br i1 %.0.i90172, label %bb.bj, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.sink.split:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74, %bb.v
  %.244.ph = phi i64 [ 0, %bb.v ], [ %i.ii, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %.244 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %.143, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.244.ph, %.sink.split ]
  %.041 = phi i64 [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %i.uk, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %i.gn, %.sink.split ]
  %i.xf = sdiv i64 %.244, 2
  %i.xg = sitofp i64 %.041 to double              ; 4 uses
  %i.xh = fdiv double %i.xg, %i.j
  %i.xi = fadd double %i.xh, 0.000000e+00
  %i.xj = fdiv double %i.xg, %i.l
  %i.xk = fadd double %i.xj, %i.xi
  %i.xl = sitofp i64 %i.xf to double
  %i.xm = fsub double %i.xg, %i.xl
  %i.xn = fdiv double %i.xm, %i.xg
  %i.xo = fadd double %i.xn, %i.xk
  %i.xp = fdiv double %i.xo, 3.000000e+00         ; 2 uses
  %i.xq = fcmp oge double %i.xp, %4
  %i.xr = select i1 %i.xq, double %i.xp, double 0.000000e+00
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread: ; preds = %bb.a, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, %bb.bj, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.w, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.xr, %bb.bj ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread ]
  ret double %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !152    ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !6920   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #61
  br label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit

_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIPKcEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv i64 %i.c, 64
  %i.e = and i64 %i.c, 63
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !6936
  tail call void @_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !6936
  %i.l = shl nsw i64 %i.k, 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !150  ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !152  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 3 uses
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nuw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.u)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ult i64 %i.l, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.w, ptr %i.m, align 8, !tbaa !150
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.x = icmp sgt i64 %i.c, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.y = load ptr, ptr %0, align 8
  %i.z = load ptr, ptr %i.j, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit, %_ZNSt6vectorImSaImEE6resizeEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit ] ; 4 uses
  %i.aa = lshr i64 %.015, 6                       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !79  ; 3 uses
  %i.ad = and i64 %.015, 63
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  %i.af = icmp sgt i8 %i.ac, -1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i8 %i.ac to i64
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !6936
  %i.ai = mul nsw i64 %i.ah, %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.z, i64 %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.aa ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.am = or i64 %i.al, %i.ae
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [2048 x i8], ptr %i.y, i64 %i.aa ; 4 uses
  %i.ao = sext i8 %i.ac to i64                    ; 8 uses
  %i.ap = and i64 %i.ao, 127                      ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !6912 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !6914
  %i.au = icmp eq i64 %i.at, %i.ao
  br i1 %i.au, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h
  %i.av = mul nsw i64 %i.ao, 5
  %i.aw = add nsw i64 %i.ao, 1
  %i.ax = add nsw i64 %i.aw, %i.av
  %i.ay = and i64 %i.ax, 127                      ; 4 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !6912 ; 2 uses
  %.not1718.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not1718.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.preheader.i.i.i
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !6914
  %i.bd = icmp eq i64 %i.bc, %i.ao
  br i1 %i.bd, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %.019.i.i11.i = phi i64 [ %i.bf, %.lr.ph.i.i.i ], [ %i.ao, %.lr.ph.i.i.preheader.i ]
  %i.be = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ %i.ay, %.lr.ph.i.i.preheader.i ]
  %i.bf = lshr i64 %.019.i.i11.i, 5               ; 2 uses
  %i.bg = mul nuw nsw i64 %i.be, 5
  %i.bh = add nuw nsw i64 %i.bf, 1
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  %i.bj = and i64 %i.bi, 127                      ; 4 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !6912 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not17.i.i.i, label %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i, label %.lr.ph.i.i.i, !llvm.loop !6915

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !6914
  %i.bo = icmp eq i64 %i.bn, %i.ao
  br i1 %i.bo, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.lr.ph.i, !llvm.loop !6915

._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, !llvm.loop !6915

_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i: ; preds = %.lr.ph.i.i.i, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i, %.lr.ph.i.i.preheader.i, %.preheader.i.i.i, %bb.h, %bb.g
  %i.bp = phi i64 [ 0, %bb.g ], [ %i.as, %bb.h ], [ 0, %.preheader.i.i.i ], [ %i.bb, %.lr.ph.i.i.preheader.i ], [ 0, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i ], [ %i.bm, %.lr.ph.i.i.i ]
  %.015.i.i.i = phi i64 [ %i.ap, %bb.g ], [ %i.ap, %bb.h ], [ %i.ay, %.preheader.i.i.i ], [ %i.ay, %.lr.ph.i.i.preheader.i ], [ %i.bj, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i ], [ %i.bj, %.lr.ph.i.i.i ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.015.i.i.i ; 2 uses
  store i64 %i.ao, ptr %i.bq, align 8, !tbaa !6914
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = or i64 %i.bp, %i.ae
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !6912
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit: ; preds = %bb.f, %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i
  %i.bt = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !6941
}

end_hunk_6
begin_hunk_7_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_:bb.a
  %.01617.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.018.i.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !79  ; 3 uses
  %i.ay = add i8 %i.ax, -65
  %or.cond.i.i.i.i.i = icmp ult i8 %i.ay, 26
  %i.az = or disjoint i8 %i.ax, 32
  %spec.select.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i8 %i.az, i8 %i.ax
  %i.ba = sext i8 %spec.select.i.i.i.i.i to i32
  %i.bb = add i32 %.01617.i.i.i.i, %i.ba
  %i.bc = mul i32 %i.bb, 1025                     ; 2 uses
  %i.bd = lshr i32 %i.bc, 6
  %i.be = xor i32 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.018.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !79  ; 3 uses
  %i.bi = add i8 %i.bh, -65
  %or.cond.i.i.i.i.i.1 = icmp ult i8 %i.bi, 26
  %i.bj = or disjoint i8 %i.bh, 32
  %spec.select.i.i.i.i.i.1 = select i1 %or.cond.i.i.i.i.i.1, i8 %i.bj, i8 %i.bh
  %i.bk = sext i8 %spec.select.i.i.i.i.i.1 to i32
  %i.bl = add i32 %i.be, %i.bk
  %i.bm = mul i32 %i.bl, 1025                     ; 2 uses
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = xor i32 %i.bn, %i.bm                    ; 3 uses
  %i.bp = add nuw i64 %.018.i.i.i.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !3396

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.e, %._crit_edge.loopexit.i.i.i.i
  %.016.lcssa.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.av, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %i.bq = lshr i32 %.016.lcssa.i.i.i.i, 11
  %i.br = xor i32 %i.bq, %.016.lcssa.i.i.i.i
  %i.bs = mul i32 %i.br, 32769
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1051 ; 5 uses
  %i.bw = urem i64 %i.bt, %i.bv                   ; 5 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !1050  ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !475 ; 6 uses
  %.not.i24 = icmp eq ptr %i.bz, null
  br i1 %.not.i24, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !120 ; 3 uses
  %.phi.trans.insert28.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %.pre29.i = load i64, ptr %.phi.trans.insert28.i, align 8, !tbaa !2441 ; 2 uses
  br i1 %.not.i.i.i.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f, %bb.i
  %i.cb = phi i64 [ %i.ci, %bb.i ], [ %.pre29.i, %bb.f ]
  %.015.us.i = phi ptr [ %i.cc, %bb.i ], [ %i.bz, %bb.f ]
  %i.cc = phi ptr [ %i.cg, %bb.i ], [ %i.ca, %bb.f ] ; 4 uses
  %i.cd = icmp eq i64 %i.cb, %i.bt
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.us.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !139
  %.not.i.i.i.i.i.us.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i.i.us.i, label %.thread47, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.i
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !120 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.cg, null
  br i1 %.not18.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !2441 ; 2 uses
  %i.cj = urem i64 %i.ci, %i.bv
  %.not19.us.i = icmp eq i64 %i.cj, %i.bw
  br i1 %.not19.us.i, label %.split.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !3618

.split.i:                                         ; preds = %bb.f, %bb.l
  %i.ck = phi i64 [ %i.de, %bb.l ], [ %.pre29.i, %bb.f ]
  %.015.i = phi ptr [ %i.cl, %bb.l ], [ %i.bz, %bb.f ]
  %i.cl = phi ptr [ %i.dc, %bb.l ], [ %i.ca, %bb.f ] ; 5 uses
  %i.cm = icmp eq i64 %i.ck, %i.bt
  br i1 %i.cm, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.split.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq i64 %.fr.i25, %i.cq
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cr = add nuw i64 %.01016.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cr, %.fr.i25
  br i1 %exitcond.not.i.i.i.i.i.i, label %.thread47, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2403

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %bb.k
  %.01016.i.i.i.i.i.i = phi i64 [ %i.cr, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.01016.i.i.i.i.i.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !79
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZN6duckdb10StringUtil18ASCII_TO_LOWER_MAPE, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %.01016.i.i.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !79
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN6duckdb10StringUtil18ASCII_TO_LOWER_MAPE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !79
  %.not13.i.i.i.i.i.i = icmp eq i8 %i.cw, %i.db
  br i1 %.not13.i.i.i.i.i.i, label %bb.k, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j, %.split.i
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !120 ; 3 uses
  %.not18.i = icmp eq ptr %i.dc, null
  br i1 %.not18.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !2441 ; 2 uses
  %i.df = urem i64 %i.de, %i.bv
  %.not19.i = icmp eq i64 %i.df, %i.bw
  br i1 %.not19.i, label %.split.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !3618

.thread47:                                        ; preds = %bb.k, %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread31
  %i.dg = phi i64 [ %i.ae, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread31 ], [ %i.bv, %bb.g ], [ %i.bv, %bb.k ] ; 2 uses
  %i.dh = phi ptr [ %.pre66, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread31 ], [ %i.bz, %bb.g ], [ %i.bz, %bb.k ] ; 3 uses
  %i.di = phi ptr [ %.pre, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread31 ], [ %i.bx, %bb.g ], [ %i.bx, %bb.k ] ; 3 uses
  %.120 = phi ptr [ %i.ac, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread31 ], [ %i.cc, %bb.g ], [ %i.cl, %bb.k ] ; 5 uses
  %.018 = phi i64 [ %i.ah, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread31 ], [ %i.bw, %bb.g ], [ %i.bw, %bb.k ] ; 3 uses
  %.016 = phi ptr [ %.1.i34, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread31 ], [ %.015.us.i, %bb.g ], [ %.015.i, %bb.k ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.018
  %i.dk = icmp eq ptr %.016, %i.dh
  %i.dl = load ptr, ptr %.120, align 8, !tbaa !120 ; 4 uses
  %.not18.i27 = icmp eq ptr %i.dl, null           ; 2 uses
  br i1 %i.dk, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.thread47
  br i1 %.not18.i27, label %._crit_edge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2441
  %i.do = urem i64 %i.dn, %i.dg                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.do, %.018
  br i1 %.not9.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.do
  store ptr %i.dh, ptr %i.dp, align 8, !tbaa !475
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dh
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  store ptr %i.dl, ptr %i.dq, align 8, !tbaa !1068
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i
  store ptr null, ptr %i.dj, align 8, !tbaa !475
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i

bb.r:                                             ; preds = %.thread47
  br i1 %.not18.i27, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !2441
  %i.du = urem i64 %i.dt, %i.dg                   ; 2 uses
  %.not17.i = icmp eq i64 %i.du, %.018
  br i1 %.not17.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.du
  store ptr %.016, ptr %i.dv, align 8, !tbaa !475
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.n
  %i.dw = load ptr, ptr %.120, align 8, !tbaa !120
  store ptr %i.dw, ptr %.016, align 8, !tbaa !120
  %i.dx = getelementptr inbounds nuw i8, ptr %.120, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.120, i64 24
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i
  tail call void @_ZdlPv(ptr noundef %i.dy) #61
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.120) #61
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !1076
  %i.ec = add i64 %i.eb, -1
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !1076
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread: ; preds = %bb.l, %.loopexit.i, %bb.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ 0, %bb.h ], [ 0, %.loopexit.i ], [ 0, %bb.l ]
  ret i64 %.1
}

declare noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_13ClientContextEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(512), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #18

declare noundef zeroext i1 @_ZN6duckdb12BooleanValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load i8, ptr %3, align 8, !tbaa !131
  store i8 %i.a, ptr %2, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !403
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !403
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !34
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !34
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !34
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret i1 true
}

declare void @_ZN6duckdb13ExtraTypeInfo11DeserializeERNS_12DeserializerE(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13ExtraTypeInfoESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13ExtraTypeInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #59, !inline_history !7206
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13ExtraTypeInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13ExtraTypeInfoESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13ExtraTypeInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4187 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !79
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #59
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb22AggregateStateTypeInfoESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJNS0_17aggregate_state_tEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::aggregate_state_t", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb22AggregateStateTypeInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !178
  %i.e = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139  ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZN6duckdb17aggregate_state_tC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %2, align 8, !tbaa !16
  %i.l = load i64, ptr %i.f, align 8, !tbaa !79
  store i64 %i.l, ptr %i.d, align 8, !tbaa !79
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !139
  br label %_ZN6duckdb17aggregate_state_tC2EOS0_.exit.i

_ZN6duckdb17aggregate_state_tC2EOS0_.exit.i:      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !139
  store ptr %i.f, ptr %1, align 8, !tbaa !16
  store i64 0, ptr %i.n, align 8, !tbaa !139
  store i8 0, ptr %i.f, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #59
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !179
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !179
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !180
  store ptr %i.w, ptr %i.u, align 8, !tbaa !180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb22AggregateStateTypeInfoC1ENS_17aggregate_state_tE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull %2)
          to label %bb.c unwind label %.body

bb.c:                                             ; preds = %_ZN6duckdb17aggregate_state_tC2EOS0_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !173  ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !176  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.c ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i) #59
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !177

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.c
  %i.ab = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #61
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #59
  %i.ac = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.d
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

.body:                                            ; preds = %_ZN6duckdb17aggregate_state_tC2EOS0_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17aggregate_state_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #59
  resume { ptr, i32 } %i.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE17_M_realloc_insertIJRA4_KcS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !643  ; 3 uses
end_hunk_7
