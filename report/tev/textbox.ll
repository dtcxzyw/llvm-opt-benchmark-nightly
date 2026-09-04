Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/textbox?download=true
inline.NumInlined: 3846
inline.NumDeleted: 1489
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_basic_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.l = zext i1 %i.g to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__120__l_anchor_multilineIcEE, i64 16), ptr %i.c, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.l, ptr %i.n, align 8, !tbaa !145
  store ptr %i.c, ptr %i.j, align 8, !tbaa !140
  store ptr %i.c, ptr %i.h, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0 = phi ptr [ %i.o, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.not18 = icmp eq ptr %.sroa.010.0, %2
  br i1 %.not18, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i, %bb.e
  %.sroa.04.0.i = phi ptr [ %.sroa.010.0, %bb.e ], [ %i.x, %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i ] ; 9 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %2
  br i1 %.not.i, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !138
  %i.s = load i32, ptr %i.q, align 4, !tbaa !139
  %i.t = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_nondupl_REINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.04.0.i, ptr %2), !inline_history !4 ; 2 uses
  %.not13.i = icmp eq ptr %i.t, %.sroa.04.0.i
  br i1 %.not13.i, label %bb.h, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i: ; preds = %bb.g
  %i.u = add i32 %i.s, 1
  %i.v = load i32, ptr %i.q, align 4, !tbaa !139
  %i.w = add i32 %i.v, 1
  %i.x = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_RE_dupl_symbolINS_11__wrap_iterIPKcEEEET_S9_S9_PNS_16__owns_one_stateIcEEjj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.t, ptr %2, ptr noundef %i.r, i32 noundef %i.u, i32 noundef %i.w), !inline_history !4 ; 2 uses
  %i.y = icmp eq ptr %i.x, %.sroa.04.0.i
  br i1 %i.y, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g, %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_simple_REINS_11__wrap_iterIPKcEEEET_S9_S9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 1 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %2
  br i1 %i.aa, label %bb.i, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %.sroa.04.0.i, align 1, !tbaa !63
  %i.ac = icmp eq i8 %i.ab, 36
  br i1 %i.ac, label %bb.j, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !131
  %i.ag = and i32 %i.af, 1520
  %i.ah = icmp eq i32 %i.ag, 1024
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !140
  %i.al = zext i1 %i.ah to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__120__r_anchor_multilineIcEE, i64 16), ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i8 %i.al, ptr %i.an, align 8, !tbaa !147
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !140
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !138
  br label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.d
  %.sroa.010.2 = phi ptr [ %.sroa.010.0, %bb.d ], [ %.sroa.04.0.i, %bb.h ], [ %i.z, %bb.j ], [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0.i, %bb.f ] ; 2 uses
  %.not20 = icmp eq ptr %.sroa.010.2, %2
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #27
  unreachable

bb.l:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, %bb.a
  %.sroa.010.3 = phi ptr [ %.sroa.010.2, %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_RE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.010.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE24__parse_extended_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2), !inline_history !328 ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %bb.b, label %.preheader29

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #27, !inline_history !328
  unreachable

.preheader29:                                     ; preds = %bb.a, %.preheader29
  %.sroa.018.0 = phi ptr [ %i.e, %.preheader29 ], [ %i.c, %bb.a ] ; 6 uses
  %i.e = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.018.0, ptr %2), !inline_history !328 ; 2 uses
  %.not = icmp eq ptr %i.e, %.sroa.018.0
  br i1 %.not, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit, label %.preheader29, !llvm.loop !329

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit: ; preds = %.preheader29
  %i.f = icmp eq ptr %.sroa.018.0, %1
  br i1 %i.f, label %bb.c, label %.preheader28

.preheader28:                                     ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit
  %.not2632 = icmp eq ptr %.sroa.018.0, %2
  br i1 %.not2632, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #27
  unreachable

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.033 = phi ptr [ %.sroa.018.0, %.lr.ph ], [ %.sroa.022.0, %bb.h ] ; 3 uses
  %i.h = load i8, ptr %.sroa.0.033, align 1, !tbaa !63
  %i.i = icmp eq i8 %i.h, 124
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 1 ; 3 uses
  %i.l = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull %i.k, ptr %2), !inline_history !328 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #27, !inline_history !328
  unreachable

.preheader:                                       ; preds = %bb.e, %.preheader
  %.sroa.022.0 = phi ptr [ %i.n, %.preheader ], [ %i.l, %bb.e ] ; 6 uses
  %i.n = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE22__parse_ERE_expressionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.022.0, ptr %2), !inline_history !328 ; 2 uses
  %.not27 = icmp eq ptr %i.n, %.sroa.022.0
  br i1 %.not27, label %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10, label %.preheader, !llvm.loop !329

_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10: ; preds = %.preheader
  %i.o = icmp eq ptr %.sroa.022.0, %i.k
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE15EEEvv() #27
  unreachable

bb.h:                                             ; preds = %_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE18__parse_ERE_branchINS_11__wrap_iterIPKcEEEET_S9_S9_.exit10
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 4 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.t, align 8, !tbaa !135
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.u, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__111__alternateIcEE, i64 16), ptr %i.p, align 8, !tbaa !24
  store ptr %i.p, ptr %i.g, align 8, !tbaa !140
  store ptr null, ptr %i.r, align 8, !tbaa !140
  %i.v = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !140
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.v, align 8, !tbaa !24
  store ptr %i.v, ptr %i.r, align 8, !tbaa !140
  store ptr null, ptr %i.x, align 8, !tbaa !140
  %i.aa = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !140
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__121__empty_non_own_stateIcEE, i64 16), ptr %i.aa, align 8, !tbaa !24
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !140
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !140
  store ptr %i.af, ptr %i.a, align 8, !tbaa !138
  %.not26 = icmp eq ptr %.sroa.022.0, %2
  br i1 %.not26, label %.critedge, label %bb.d, !llvm.loop !330

.critedge:                                        ; preds = %bb.d, %bb.h, %.preheader28
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.018.0, %.preheader28 ], [ %.sroa.022.0, %bb.h ], [ %.sroa.0.033, %bb.d ]
  ret ptr %.sroa.0.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE12__parse_grepINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 10, i64 noundef %i.e) #29 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %2, ptr %i.f ; 3 uses
  %3 = ptrtoint ptr %spec.select.i.i to i64
  %4 = sub i64 %3, %i.d
  %5 = getelementptr inbounds i8, ptr %1, i64 %4  ; 2 uses
  %.not = icmp eq ptr %spec.select.i.i, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_basic_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr nonnull %5) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.h, align 8, !tbaa !24
  store ptr %i.h, ptr %i.j, align 8, !tbaa !140
  store ptr %i.h, ptr %i.a, align 8, !tbaa !138
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not30 = icmp ne ptr %spec.select.i.i, %2
  %spec.select.idx = zext i1 %.not30 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.idx ; 3 uses
  %.not3134 = icmp eq ptr %spec.select, %2
  br i1 %.not3134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !138
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.an, %bb.h ]
  %.sroa.022.135 = phi ptr [ %spec.select, %.lr.ph ], [ %spec.select29, %bb.h ] ; 5 uses
  %i.o = ptrtoint ptr %.sroa.022.135 to i64       ; 2 uses
  %i.p = sub i64 %i.c, %i.o
  %i.q = tail call noundef ptr @memchr(ptr noundef %.sroa.022.135, i32 noundef 10, i64 noundef %i.p) #29 ; 2 uses
  %.not.not.i.i14 = icmp eq ptr %i.q, null
  %spec.select.i.i15 = select i1 %.not.not.i.i14, ptr %2, ptr %i.q ; 3 uses
  %6 = ptrtoint ptr %spec.select.i.i15 to i64
  %7 = sub i64 %6, %i.o
  %8 = getelementptr inbounds i8, ptr %.sroa.022.135, i64 %7 ; 2 uses
  %.not32 = icmp eq ptr %spec.select.i.i15, %.sroa.022.135
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE21__parse_basic_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.022.135, ptr nonnull %8) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !140
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.s, align 8, !tbaa !24
  store ptr %i.s, ptr %i.u, align 8, !tbaa !140
  store ptr %i.s, ptr %i.a, align 8, !tbaa !138
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 4 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__111__alternateIcEE, i64 16), ptr %i.x, align 8, !tbaa !24
  store ptr %i.x, ptr %i.m, align 8, !tbaa !140
  store ptr null, ptr %i.z, align 8, !tbaa !140
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.ad, align 8, !tbaa !24
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !140
  store ptr null, ptr %i.af, align 8, !tbaa !140
  %i.ai = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__121__empty_non_own_stateIcEE, i64 16), ptr %i.ai, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !140
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !140 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !138
  %.not33 = icmp ne ptr %spec.select.i.i15, %2
  %spec.select29.idx = zext i1 %.not33 to i64
  %spec.select29 = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select29.idx ; 3 uses
  %.not31 = icmp eq ptr %spec.select29, %2
  br i1 %.not31, label %._crit_edge, label %bb.e, !llvm.loop !331

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.sroa.022.1.lcssa = phi ptr [ %spec.select, %bb.d ], [ %spec.select29, %bb.h ]
  ret ptr %.sroa.022.1.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE13__parse_egrepINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 10, i64 noundef %i.e) #29 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %2, ptr %i.f ; 3 uses
  %3 = ptrtoint ptr %spec.select.i.i to i64
  %4 = sub i64 %3, %i.d
  %5 = getelementptr inbounds i8, ptr %1, i64 %4  ; 2 uses
  %.not = icmp eq ptr %spec.select.i.i, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE24__parse_extended_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr nonnull %5) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.h, align 8, !tbaa !24
  store ptr %i.h, ptr %i.j, align 8, !tbaa !140
  store ptr %i.h, ptr %i.a, align 8, !tbaa !138
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not30 = icmp ne ptr %spec.select.i.i, %2
  %spec.select.idx = zext i1 %.not30 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.idx ; 3 uses
  %.not3134 = icmp eq ptr %spec.select, %2
  br i1 %.not3134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !138
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.an, %bb.h ]
  %.sroa.022.135 = phi ptr [ %spec.select, %.lr.ph ], [ %spec.select29, %bb.h ] ; 5 uses
  %i.o = ptrtoint ptr %.sroa.022.135 to i64       ; 2 uses
  %i.p = sub i64 %i.c, %i.o
  %i.q = tail call noundef ptr @memchr(ptr noundef %.sroa.022.135, i32 noundef 10, i64 noundef %i.p) #29 ; 2 uses
  %.not.not.i.i14 = icmp eq ptr %i.q, null
  %spec.select.i.i15 = select i1 %.not.not.i.i14, ptr %2, ptr %i.q ; 3 uses
  %6 = ptrtoint ptr %spec.select.i.i15 to i64
  %7 = sub i64 %6, %i.o
  %8 = getelementptr inbounds i8, ptr %.sroa.022.135, i64 %7 ; 2 uses
  %.not32 = icmp eq ptr %spec.select.i.i15, %.sroa.022.135
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE24__parse_extended_reg_expINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.022.135, ptr nonnull %8) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !140
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.s, align 8, !tbaa !24
  store ptr %i.s, ptr %i.u, align 8, !tbaa !140
  store ptr %i.s, ptr %i.a, align 8, !tbaa !138
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 4 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__111__alternateIcEE, i64 16), ptr %i.x, align 8, !tbaa !24
  store ptr %i.x, ptr %i.m, align 8, !tbaa !140
  store ptr null, ptr %i.z, align 8, !tbaa !140
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__empty_stateIcEE, i64 16), ptr %i.ad, align 8, !tbaa !24
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !140
  store ptr null, ptr %i.af, align 8, !tbaa !140
  %i.ai = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__121__empty_non_own_stateIcEE, i64 16), ptr %i.ai, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !140
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !140 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !138
  %.not33 = icmp ne ptr %spec.select.i.i15, %2
  %spec.select29.idx = zext i1 %.not33 to i64
  %spec.select29 = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select29.idx ; 3 uses
  %.not31 = icmp eq ptr %spec.select29, %2
  br i1 %.not31, label %._crit_edge, label %bb.e, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.sroa.022.1.lcssa = phi ptr [ %spec.select, %bb.d ], [ %spec.select29, %bb.h ]
  ret ptr %.sroa.022.1.lcssa
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE14EEEvv() local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #29 ; 3 uses
  invoke void @_ZNSt3__111regex_errorC1ENS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef 14)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTINSt3__111regex_errorE, ptr nonnull @_ZNSt3__111regex_errorD1Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__111__end_stateIcED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__111__end_stateIcE6__execERNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(93) %1) unnamed_addr #15 comdat align 2 {
bb.a:
  store i32 -1000, ptr %1, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16__nodeIcE12__exec_splitEbRNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(93) %2) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16__nodeIcE6__execERNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(93) %1) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt3__114default_deleteINS_13__empty_stateIcEEEclB8ne180100EPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !333
  br label %_ZNKSt3__114default_deleteINS_13__empty_stateIcEEEclB8ne180100EPS2_.exit

_ZNKSt3__114default_deleteINS_13__empty_stateIcEEEclB8ne180100EPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335
  %i.c = icmp eq ptr %i.b, @_ZTSNSt3__110shared_ptrINS_13__empty_stateIcEEE27__shared_ptr_default_deleteIS2_S2_EE
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_pointerIPNS_13__empty_stateIcEENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__empty_stateIcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__116__owns_one_stateIcEE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt3__116__owns_one_stateIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #29, !inline_history !159
  br label %_ZNSt3__116__owns_one_stateIcED2Ev.exit

_ZNSt3__116__owns_one_stateIcED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNKSt3__113__empty_stateIcE6__execERNS_7__stateIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(93) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store i32 -994, ptr %1, align 8, !tbaa !158
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.b, ptr %i.c, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__116__owns_one_stateIcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__116__owns_one_stateIcEE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt3__116__owns_one_stateIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #29, !inline_history !159
  br label %_ZNSt3__116__owns_one_stateIcED2Ev.exit

_ZNSt3__116__owns_one_stateIcED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE17__parse_assertionINS_11__wrap_iterIPKcEEEET_S9_S9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_regex", align 8 ; 10 uses
  %4 = alloca %"class.std::__1::basic_regex", align 8 ; 10 uses
  %.not49 = icmp eq ptr %1, %2
  br i1 %.not49, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !63
  %i.b = sext i8 %i.a to i32
  %i.c = add nsw i32 %i.b, -36                    ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 31)
  switch i32 %i.d, label %bb.ah [
    i32 29, label %bb.c
    i32 0, label %bb.d
    i32 28, label %bb.e
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !131
  %i.h = and i32 %i.g, 1520
  %i.i = icmp eq i32 %i.h, 1024
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !140
  %i.n = zext i1 %i.i to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !135
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__120__l_anchor_multilineIcEE, i64 16), ptr %i.e, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.n, ptr %i.p, align 8, !tbaa !145
  store ptr %i.e, ptr %i.l, align 8, !tbaa !140
  store ptr %i.e, ptr %i.j, align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !131
  %i.u = and i32 %i.t, 1520
  %i.v = icmp eq i32 %i.u, 1024
end_hunk_0
