Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_fmt_format_tests?download=true
inline.NumInlined: 3116
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3fmt3v126detail12parse_arg_idIwNS1_20dynamic_spec_handlerIwEEEEPKT_S7_S7_OT0_:bb.a
  %or.cond.i = icmp ult i32 %i.i, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 40
  br i1 %i.m, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.n = icmp eq i64 %i.l, 40
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %.027.i to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = zext nneg i32 %i.e to i64
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = icmp samesign ult i64 %i.r, 2147483648
  br i1 %i.s, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit: ; preds = %bb.f, %bb.e, %.critedge.i, %bb.g
  %.036 = phi ptr [ %i.t, %bb.g ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ], [ %i.g, %bb.f ] ; 3 uses
  %.020 = phi i32 [ 0, %bb.g ], [ %i.f, %.critedge.i ], [ %i.f, %bb.e ], [ 2147483647, %bb.f ]
  %i.u = icmp eq ptr %.036, %1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  %i.v = load i32, ptr %.036, align 4, !tbaa !129
  switch i32 %i.v, label %bb.i [
    i32 125, label %bb.j
    i32 58, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #31
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !351, !nonnull !93, !align !139
  store i32 %.020, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !352, !nonnull !93, !align !140
  store i32 1, ptr %i.z, align 4, !tbaa !136
  %i.aa = load ptr, ptr %2, align 8, !tbaa !353, !nonnull !93, !align !139
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !114
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.31) #31
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit: ; preds = %bb.j
  store i32 -1, ptr %i.ab, align 8, !tbaa !114
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.ae = and i32 %i.a, -33
  %i.af = add i32 %i.ae, -65
  %or.cond8.i = icmp ult i32 %i.af, 26
  %i.ag = icmp eq i32 %i.a, 95
  %i.ah = or i1 %i.ag, %or.cond8.i
  br i1 %i.ah, label %.critedge3, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #31
  unreachable

.critedge3:                                       ; preds = %bb.l, %bb.n
  %.0 = phi ptr [ %i.ai, %bb.n ], [ %0, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 5 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.critedge3
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !129 ; 3 uses
  %i.ak = and i32 %i.aj, -33
  %i.al = add i32 %i.ak, -65
  %or.cond8.i31 = icmp ult i32 %i.al, 26
  %i.am = icmp eq i32 %i.aj, 95
  %i.an = or i1 %i.am, %or.cond8.i31
  %i.ao = add i32 %i.aj, -48
  %or.cond30 = icmp ult i32 %i.ao, 10
  %or.cond37 = or i1 %or.cond30, %i.an
  br i1 %or.cond37, label %.critedge3, label %.critedge, !llvm.loop !349

.critedge:                                        ; preds = %bb.n, %.critedge3
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !351, !nonnull !93, !align !139 ; 2 uses
  store ptr %0, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !352, !nonnull !93, !align !140
  store i32 2, ptr %i.aw, align 4, !tbaa !136
  %i.ax = load ptr, ptr %2, align 8, !tbaa !353, !nonnull !93, !align !139
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 -1, ptr %i.ay, align 8, !tbaa !114
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit
  %.021 = phi ptr [ %.036, %_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit ], [ %i.ai, %.critedge ]
  ret ptr %.021
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextINS0_14basic_appenderIwEEwEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERSA_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.ag
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !76     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !162, !noalias !360 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %bb.d, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76, !noalias !360
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ugt i32 %i.a, 14
  br i1 %i.k, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.a, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 %i.c, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76, !noalias !360
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !111 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !162, !noalias !361 ; 5 uses
  %i.u = and i64 %i.t, 4611686018427387904
  %.not14.i.i = icmp eq i64 %i.u, 0
  br i1 %.not14.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !361 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !165, !noalias !361 ; 2 uses
  %.not15.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not15.not.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !166, !noalias !361
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.an, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01216.i.i ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !168, !noalias !361 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !129, !noalias !361
  %.not5.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not5.i.i.i, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %scevgep.i.i.i = getelementptr i8, ptr %i.ad, i64 4
  %wcslen.i.i.i = tail call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep.i.i.i), !noalias !361
  %i.af = add i64 %wcslen.i.i.i, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.j
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.j ], [ %i.af, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %.0.lcssa.i.i.i, i64 %.sroa.2.0.copyload) ; 2 uses
  %.not13.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not13.i.i.i.i.i, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i, %bb.k
  %.016.i.i.i.i.i = phi i64 [ %i.al, %bb.k ], [ %i.ag, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i ]
  %.0815.i.i.i.i.i = phi ptr [ %i.ak, %bb.k ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i ] ; 2 uses
  %.0914.i.i.i.i.i = phi ptr [ %i.aj, %bb.k ], [ %i.ad, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i ] ; 2 uses
  %i.ah = load i32, ptr %.0914.i.i.i.i.i, align 4, !tbaa !129, !noalias !361
  %i.ai = load i32, ptr %.0815.i.i.i.i.i, align 4, !tbaa !129, !noalias !361
  %or.cond.not.i.i.i = icmp eq i32 %i.ah, %i.ai
  br i1 %or.cond.not.i.i.i, label %bb.k, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i, i64 4
  %i.al = add i64 %.016.i.i.i.i.i, -1             ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i: ; preds = %bb.k, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i
  %i.am = icmp eq i64 %.0.lcssa.i.i.i, %.sroa.2.0.copyload
  br i1 %i.am, label %_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE6get_idIwEEiNS0_17basic_string_viewIT_EE.exit.i, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i
  %i.an = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.aa
  br i1 %exitcond.not.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.j, !llvm.loop !12

_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE6get_idIwEEiNS0_17basic_string_viewIT_EE.exit.i: ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !169, !noalias !361 ; 6 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.l, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE6get_idIwEEiNS0_17basic_string_viewIT_EE.exit.i
  %i.ar = icmp sgt i64 %i.t, -1
  br i1 %i.ar, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = trunc i64 %i.t to i32
  %i.at = icmp slt i32 %i.ap, %i.as
  br i1 %i.at, label %bb.n, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.au
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.aw = icmp samesign ugt i32 %i.ap, 14
  br i1 %i.aw, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = shl nuw nsw i32 %i.ap, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %i.t, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %.not.i.i10 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i10, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit: ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.av, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !76 ; 3 uses
  %.sroa.011.sroa.0.sroa.0.0.extract.trunc74 = trunc i128 %storemerge to i32
  %.sroa.011.sroa.0.sroa.11.0.extract.shift89104 = lshr i128 %storemerge, 32
  %.sroa.011.sroa.0.sroa.11.0.extract.trunc90 = trunc i128 %.sroa.011.sroa.0.sroa.11.0.extract.shift89104 to i32
  %.sroa.011.sroa.11.0.extract.shift62 = lshr i128 %storemerge, 64
  %.sroa.011.sroa.11.0.extract.trunc63 = trunc nuw i128 %.sroa.011.sroa.11.0.extract.shift62 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !141 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread: ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE6get_idIwEEiNS0_17basic_string_viewIT_EE.exit.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #31
  unreachable

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ap, %bb.p ]
  %.sink110 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.040.ph = phi i32 [ %i.p, %bb.g ], [ %i.bb, %bb.p ]
  %i.bc = zext nneg i32 %.sink to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sink110, i64 %i.bc
  %.sroa.011.0.copyload26 = load i128, ptr %i.bd, align 16, !tbaa !76 ; 3 uses
  %.sroa.011.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.011.0.copyload26 to i32
  %.sroa.011.sroa.0.sroa.11.0.extract.shift105 = lshr i128 %.sroa.011.0.copyload26, 32
  %.sroa.011.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.011.sroa.0.sroa.11.0.extract.shift105 to i32
  %.sroa.011.sroa.11.0.extract.shift = lshr i128 %.sroa.011.0.copyload26, 64
  %.sroa.011.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.011.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38: ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %.sroa.011.sroa.0.sroa.11.0 = phi i32 [ %.sroa.011.sroa.0.sroa.11.0.extract.trunc90, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.011.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ] ; 4 uses
  %.sroa.011.sroa.0.sroa.0.0 = phi i32 [ %.sroa.011.sroa.0.sroa.0.0.extract.trunc74, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.011.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ] ; 7 uses
  %.sroa.011.sroa.11.0 = phi i64 [ %.sroa.011.sroa.11.0.extract.trunc63, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.011.sroa.11.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ]
  %.sroa.23.040 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.23.040.ph, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ]
  switch i32 %.sroa.23.040, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %i.be = icmp slt i32 %.sroa.011.sroa.0.sroa.0.0, 0
  %i.bf = zext nneg i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  br i1 %i.be, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

bb.r:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %i.bg = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext75 = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift76 = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext75, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext64 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert66 = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift76, %.sroa.011.sroa.0.sroa.0.0.insert.ext64
  %i.bh = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.011.sroa.0.sroa.0.0.insert.insert66, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift, %.sroa.011.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext83 = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift84 = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext83, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext70 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert72 = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift84, %.sroa.011.sroa.0.sroa.0.0.insert.ext70
  %.not106 = icmp sgt i64 %.sroa.011.sroa.11.0, -1
  br i1 %.not106, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext79 = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift80 = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext79, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext67 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert69 = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift80, %.sroa.011.sroa.0.sroa.0.0.insert.ext67
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19parse_format_stringIwNS1_14format_handlerIwEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
    i32 125, label %bb.bo
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.u = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef %.024176, ptr noundef nonnull %.0177, ptr %.sroa.0.0.copyload.i.i) ; 0 uses
  %i.v = icmp eq ptr %i.s, %i.a
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.s, align 4, !tbaa !129
  switch i32 %i.w, label %bb.ai [
    i32 125, label %bb.f
    i32 123, label %bb.af
    i32 58, label %bb.ag
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.c, align 8, !tbaa !114  ; 7 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.30) #31
  unreachable

_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit: ; preds = %bb.f
  %i.z = add nuw nsw i32 %i.x, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !114
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !162, !noalias !465 ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = icmp slt i32 %i.x, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !76, !noalias !465
  %i.af = zext nneg i32 %i.x to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %.sroa.21141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.21141.0.copyload = load i32, ptr %.sroa.21141.0..sroa_idx, align 16, !tbaa !141
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit

bb.j:                                             ; preds = %_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit
  %i.ah = icmp samesign ugt i32 %i.x, 14
  br i1 %i.ah, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = shl nuw nsw i32 %i.x, 2
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 %i.aa, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 15                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !76, !noalias !465
  %i.ao = zext nneg i32 %i.x to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit: ; preds = %bb.i, %bb.l
  %.sroa.0125.0.copyload.sink272.in = phi ptr [ %i.ag, %bb.i ], [ %i.ap, %bb.l ]
  %.sroa.21141.0 = phi i32 [ %.sroa.21141.0.copyload, %bb.i ], [ %i.am, %bb.l ]
  %.sroa.0125.0.copyload.sink272 = load i128, ptr %.sroa.0125.0.copyload.sink272.in, align 16, !tbaa !76 ; 7 uses
  %extract.t242 = trunc i128 %.sroa.0125.0.copyload.sink272 to i32 ; 4 uses
  %extract.t245 = trunc i128 %.sroa.0125.0.copyload.sink272 to i64 ; 7 uses
  %extract = lshr i128 %.sroa.0125.0.copyload.sink272, 64
  %extract.t250 = trunc nuw i128 %extract to i64  ; 2 uses
  %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i = inttoptr i64 %extract.t245 to ptr ; 7 uses
  %.sroa.0.0.copyload.i35 = load ptr, ptr %i.b, align 8, !tbaa !116 ; 20 uses
  switch i32 %.sroa.21141.0, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread [
    i32 15, label %bb.ae
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
    i32 7, label %bb.s
    i32 8, label %bb.t
    i32 9, label %bb.v
    i32 10, label %bb.w
    i32 11, label %bb.x
    i32 12, label %bb.y
    i32 13, label %bb.ab
    i32 14, label %bb.ac
  ]

bb.m:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.aq = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i35, i32 noundef %extract.t242) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.n:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.ar = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i35, i32 noundef %extract.t242) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.o:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.as = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i35, i64 noundef %extract.t245) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.p:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.at = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i35, i64 noundef %extract.t245) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.q:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.au = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEnTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i35, i128 noundef %.sroa.0125.0.copyload.sink272) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.r:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.av = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i35, i128 noundef %.sroa.0125.0.copyload.sink272) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %extract.t = trunc i128 %.sroa.0125.0.copyload.sink272 to i1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i32 32768, ptr %14, align 4, !tbaa !121
  store i8 32, ptr %i.i, align 4, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.j, align 4, !tbaa !123
  %i.aw = select i1 %extract.t, ptr @.str.55, ptr @.str.56
  %i.ax = select i1 %extract.t, i64 4, i64 5      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.aw, ptr %13, align 8, !tbaa !124
  store i64 %i.ax, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !111
  %i.ay = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_11write_bytesIwLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.0.0.copyload.i35, ptr noundef nonnull align 4 dereferenceable(16) %14, i64 noundef %i.ax, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i35, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !119 ; 2 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i35, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !109
  %i.be = icmp ugt i64 %i.bb, %i.bd
  br i1 %i.be, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i35, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !107
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i35, i64 noundef %i.bb), !inline_history !458
  %.pre.i.i = load i64, ptr %i.az, align 8, !tbaa !119 ; 2 uses
  %.pre6.i.i = load i64, ptr %i.bc, align 8, !tbaa !109
  %.pre7.i.i = add i64 %.pre.i.i, 1               ; 3 uses
  %i.bh = icmp ugt i64 %.pre7.i.i, %.pre6.i.i
  br i1 %i.bh, label %bb.u, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

bb.u:                                             ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !107
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i35, i64 noundef %.pre7.i.i), !inline_history !459
  %.pre.i.i.i.i = load i64, ptr %i.az, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit: ; preds = %bb.t, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i, %bb.u
  %.pre-phi.i.i.i.i = phi i64 [ %.pre7.i.i, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i ], [ %.pre2.i.i.i.i, %bb.u ], [ %i.bb, %bb.t ]
  %i.bj = phi i64 [ %.pre.i.i, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i ], [ %.pre.i.i.i.i, %bb.u ], [ %i.ba, %bb.t ]
  %i.bk = load ptr, ptr %.sroa.0.0.copyload.i35, align 8, !tbaa !108
  store i64 %.pre-phi.i.i.i.i, ptr %i.az, align 8, !tbaa !119
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  store i32 %extract.t242, ptr %i.bl, align 4, !tbaa !129
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.v:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %.sroa.0125.0..sroa.0125.0..sroa.0125.0.134 = bitcast i32 %extract.t242 to float
  %i.bm = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i35, float noundef %.sroa.0125.0..sroa.0125.0..sroa.0125.0.134) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %.sroa.0125.0..sroa.0125.0..sroa.0125.0.130 = bitcast i64 %extract.t245 to double
  %i.bn = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i35, double noundef %.sroa.0125.0..sroa.0125.0..sroa.0125.0.130) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.x:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %extract.t248 = trunc i128 %.sroa.0125.0.copyload.sink272 to i80
  %.sroa.0125.0..sroa.0125.0..sroa.0125.0.127 = bitcast i80 %extract.t248 to x86_fp80
  %i.bo = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i35, x86_fp80 noundef %.sroa.0125.0..sroa.0125.0..sroa.0125.0.127, i64 137438986240, i64 -4294967296, ptr null) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.y:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %.not.i.i47 = icmp eq i64 %extract.t245, 0
  br i1 %.not.i.i47, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = load i32, ptr %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i, align 4, !tbaa !129
  %.not5.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not5.i.i.i, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.z
  %scevgep.i.i.i48 = getelementptr i8, ptr %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i, i64 4
  %wcslen.i.i.i = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep.i.i.i48)
  %i.bq = add i64 %wcslen.i.i.i, 1
  br label %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit

bb.aa:                                            ; preds = %bb.y
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #31
  unreachable

_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit: ; preds = %bb.z, %.lr.ph.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.z ], [ %i.bq, %.lr.ph.preheader.i.i.i ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i, i64 %.0.lcssa.i.i.i
  %i.bs = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef nonnull %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i, ptr noundef nonnull %i.br, ptr %.sroa.0.0.copyload.i35) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.ab:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i, i64 %extract.t250
  %i.bu = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i, ptr noundef %i.bt, ptr %.sroa.0.0.copyload.i35) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.ac:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i32 32768, ptr %12, align 4, !tbaa !121
  store i8 32, ptr %i.f, align 4, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i50, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !123
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.03.i.i.i.i.i = phi i64 [ %extract.t245, %bb.ac ], [ %i.bw, %bb.ad ]
  %.0.i.i.i.i.i = phi i32 [ 0, %bb.ac ], [ %i.bv, %bb.ad ] ; 2 uses
  %i.bv = add nuw nsw i32 %.0.i.i.i.i.i, 1        ; 2 uses
  %i.bw = lshr i64 %.03.i.i.i.i.i, 4              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, label %bb.ad, !llvm.loop !18

_ZN3fmt3v126detail21default_arg_formatterIwEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit: ; preds = %bb.ad
  %narrow.i.i.i = add nuw i32 %.0.i.i.i.i.i, 3
  %i.bx = zext i32 %narrow.i.i.i to i64           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store i64 %extract.t245, ptr %11, align 8, !tbaa !202
  store i32 %i.bv, ptr %i.h, align 8, !tbaa !203
  %i.by = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEERZNS1_9write_ptrIwS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i35, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 noundef %i.bx, i64 noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(12) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

bb.ae:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %.sroa.0125.8..sroa.0125.8..sroa.0125.8..sroa.2.0.copyload.i = inttoptr i64 %extract.t250 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %.sroa.0.0.copyload.i35, ptr %10, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void %.sroa.0125.8..sroa.0125.8..sroa.0125.8..sroa.2.0.copyload.i(ptr noundef %.sroa.0125.0..sroa.0125.0..sroa.0125.0..sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(32) %10), !inline_history !460
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread: ; preds = %bb.h, %bb.k, %bb.j, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #31
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit, %bb.v, %bb.w, %bb.x, %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, %bb.ab, %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %.0177, i64 8 ; 2 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit

bb.af:                                            ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %.0177, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i53 = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.cb = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ca, ptr %.sroa.0.0.copyload.i.i53) ; 0 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit

bb.ag:                                            ; preds = %bb.e
  %i.cc = load i32, ptr %i.c, align 8, !tbaa !114 ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.ah, label %_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit54

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.30) #31
  unreachable

_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit54: ; preds = %bb.ag
  %i.ce = add nuw nsw i32 %i.cc, 1
  store i32 %i.ce, ptr %i.c, align 8, !tbaa !114
  br label %bb.bk

bb.ai:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store ptr %2, ptr %15, align 8, !tbaa !466
  store i32 0, ptr %i.l, align 8, !tbaa !206
  %i.cf = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIwRZNS1_23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(12) %15) ; 4 uses
  %i.cg = load i32, ptr %i.l, align 8, !tbaa !206 ; 6 uses
  %.not.i = icmp eq ptr %i.cf, %i.a
  br i1 %.not.i, label %.thread158, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !129
  switch i32 %i.ch, label %.thread158 [
    i32 125, label %bb.ak
    i32 58, label %bb.bj
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !162, !noalias !467 ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  br i1 %i.cj, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = trunc i64 %i.ci to i32
  %i.cl = icmp slt i32 %i.cg, %i.ck
  br i1 %i.cl, label %bb.am, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56.thread

bb.am:                                            ; preds = %bb.al
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !76, !noalias !467
  %i.cn = sext i32 %i.cg to i64
  %i.co = getelementptr inbounds [32 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16, !tbaa !141
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56

bb.an:                                            ; preds = %bb.ak
  %i.cp = icmp ugt i32 %i.cg, 14
  br i1 %i.cp, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cq = shl nuw nsw i32 %i.cg, 2
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 %i.ci, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 15                       ; 2 uses
  %.not.i.i55 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i55, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !76, !noalias !467
  %i.cw = zext nneg i32 %i.cg to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cw
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56: ; preds = %bb.am, %bb.ap
  %.sroa.0106.0.copyload.sink276.in = phi ptr [ %i.co, %bb.am ], [ %i.cx, %bb.ap ]
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %bb.am ], [ %i.cu, %bb.ap ]
  %.sroa.0106.0.copyload.sink276 = load i128, ptr %.sroa.0106.0.copyload.sink276.in, align 16, !tbaa !76 ; 7 uses
  %extract.t256 = trunc i128 %.sroa.0106.0.copyload.sink276 to i32 ; 4 uses
  %extract.t259 = trunc i128 %.sroa.0106.0.copyload.sink276 to i64 ; 7 uses
  %extract264 = lshr i128 %.sroa.0106.0.copyload.sink276, 64
  %extract.t265 = trunc nuw i128 %extract264 to i64 ; 2 uses
  %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31 = inttoptr i64 %extract.t259 to ptr ; 7 uses
  %.sroa.0.0.copyload.i57 = load ptr, ptr %i.b, align 8, !tbaa !116 ; 20 uses
  switch i32 %.sroa.21.0, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56.thread [
    i32 15, label %bb.bi
    i32 1, label %bb.aq
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.av
    i32 7, label %bb.aw
    i32 8, label %bb.ax
    i32 9, label %bb.az
    i32 10, label %bb.ba
    i32 11, label %bb.bb
    i32 12, label %bb.bc
    i32 13, label %bb.bf
    i32 14, label %bb.bg
  ]

bb.aq:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.cy = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i57, i32 noundef %extract.t256) ; 0 uses
  br label %.thread161

bb.ar:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.cz = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i57, i32 noundef %extract.t256) ; 0 uses
  br label %.thread161

bb.as:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.da = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i57, i64 noundef %extract.t259) ; 0 uses
  br label %.thread161

bb.at:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.db = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i57, i64 noundef %extract.t259) ; 0 uses
  br label %.thread161

bb.au:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.dc = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEnTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i57, i128 noundef %.sroa.0106.0.copyload.sink276) ; 0 uses
  br label %.thread161

bb.av:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.dd = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i57, i128 noundef %.sroa.0106.0.copyload.sink276) ; 0 uses
  br label %.thread161

bb.aw:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %extract.t253 = trunc i128 %.sroa.0106.0.copyload.sink276 to i1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 32768, ptr %8, align 4, !tbaa !121
  store i8 32, ptr %i.p, align 4, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i65, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.q, align 4, !tbaa !123
  %i.de = select i1 %extract.t253, ptr @.str.55, ptr @.str.56
  %i.df = select i1 %extract.t253, i64 4, i64 5   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.de, ptr %7, align 8, !tbaa !124
  store i64 %i.df, ptr %.sroa.2.0..sroa_idx.i.i.i66, align 8, !tbaa !111
  %i.dg = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_11write_bytesIwLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.0.0.copyload.i57, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %i.df, i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.thread161

bb.ax:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i57, i64 8 ; 4 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !119 ; 2 uses
  %i.dj = add i64 %i.di, 1                        ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i57, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !109
  %i.dm = icmp ugt i64 %i.dj, %i.dl
  br i1 %i.dm, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i69, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit75

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i69: ; preds = %bb.ax
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i57, i64 24 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !107
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i57, i64 noundef %i.dj), !inline_history !458
  %.pre.i.i70 = load i64, ptr %i.dh, align 8, !tbaa !119 ; 2 uses
  %.pre6.i.i71 = load i64, ptr %i.dk, align 8, !tbaa !109
  %.pre7.i.i72 = add i64 %.pre.i.i70, 1           ; 3 uses
  %i.dp = icmp ugt i64 %.pre7.i.i72, %.pre6.i.i71
  br i1 %i.dp, label %bb.ay, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit75

bb.ay:                                            ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i69
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !107
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i57, i64 noundef %.pre7.i.i72), !inline_history !459
  %.pre.i.i.i.i73 = load i64, ptr %i.dh, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i.i.i74 = add i64 %.pre.i.i.i.i73, 1
  br label %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit75

_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit75: ; preds = %bb.ax, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i69, %bb.ay
  %.pre-phi.i.i.i.i68 = phi i64 [ %.pre7.i.i72, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i69 ], [ %.pre2.i.i.i.i74, %bb.ay ], [ %i.dj, %bb.ax ]
  %i.dr = phi i64 [ %.pre.i.i70, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit.i.i69 ], [ %.pre.i.i.i.i73, %bb.ay ], [ %i.di, %bb.ax ]
  %i.ds = load ptr, ptr %.sroa.0.0.copyload.i57, align 8, !tbaa !108
  store i64 %.pre-phi.i.i.i.i68, ptr %i.dh, align 8, !tbaa !119
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dr
  store i32 %extract.t256, ptr %i.dt, align 4, !tbaa !129
  br label %.thread161

bb.az:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %.sroa.0106.0..sroa.0106.0..sroa.0106.0.115 = bitcast i32 %extract.t256 to float
  %i.du = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i57, float noundef %.sroa.0106.0..sroa.0106.0..sroa.0106.0.115) ; 0 uses
  br label %.thread161

bb.ba:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %.sroa.0106.0..sroa.0106.0..sroa.0106.0.111 = bitcast i64 %extract.t259 to double
  %i.dv = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i57, double noundef %.sroa.0106.0..sroa.0106.0..sroa.0106.0.111) ; 0 uses
  br label %.thread161

bb.bb:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %extract.t262 = trunc i128 %.sroa.0106.0.copyload.sink276 to i80
  %.sroa.0106.0..sroa.0106.0..sroa.0106.0.108 = bitcast i80 %extract.t262 to x86_fp80
  %i.dw = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i57, x86_fp80 noundef %.sroa.0106.0..sroa.0106.0..sroa.0106.0.108, i64 137438986240, i64 -4294967296, ptr null) ; 0 uses
  br label %.thread161

bb.bc:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %.not.i.i80 = icmp eq i64 %extract.t259, 0
  br i1 %.not.i.i80, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dx = load i32, ptr %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31, align 4, !tbaa !129
  %.not5.i.i.i81 = icmp eq i32 %i.dx, 0
  br i1 %.not5.i.i.i81, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit86, label %.lr.ph.preheader.i.i.i82

.lr.ph.preheader.i.i.i82:                         ; preds = %bb.bd
  %scevgep.i.i.i83 = getelementptr i8, ptr %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31, i64 4
  %wcslen.i.i.i84 = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep.i.i.i83)
  %i.dy = add i64 %wcslen.i.i.i84, 1
  br label %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit86

bb.be:                                            ; preds = %bb.bc
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #31
  unreachable

_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit86: ; preds = %bb.bd, %.lr.ph.preheader.i.i.i82
  %.0.lcssa.i.i.i85 = phi i64 [ 0, %bb.bd ], [ %i.dy, %.lr.ph.preheader.i.i.i82 ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31, i64 %.0.lcssa.i.i.i85
  %i.ea = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef nonnull %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31, ptr noundef nonnull %i.dz, ptr %.sroa.0.0.copyload.i57) ; 0 uses
  br label %.thread161

bb.bf:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31, i64 %extract.t265
  %i.ec = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31, ptr noundef %i.eb, ptr %.sroa.0.0.copyload.i57) ; 0 uses
  br label %.thread161

bb.bg:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 32768, ptr %6, align 4, !tbaa !121
  store i8 32, ptr %i.m, align 4, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i91, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !123
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %.03.i.i.i.i.i92 = phi i64 [ %extract.t259, %bb.bg ], [ %i.ee, %bb.bh ]
  %.0.i.i.i.i.i93 = phi i32 [ 0, %bb.bg ], [ %i.ed, %bb.bh ] ; 2 uses
  %i.ed = add nuw nsw i32 %.0.i.i.i.i.i93, 1      ; 2 uses
  %i.ee = lshr i64 %.03.i.i.i.i.i92, 4            ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i.i.i94, label %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit96, label %bb.bh, !llvm.loop !18

_ZN3fmt3v126detail21default_arg_formatterIwEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit96: ; preds = %bb.bh
  %narrow.i.i.i95 = add nuw i32 %.0.i.i.i.i.i93, 3
  %i.ef = zext i32 %narrow.i.i.i95 to i64         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %extract.t259, ptr %5, align 8, !tbaa !202
  store i32 %i.ed, ptr %i.o, align 8, !tbaa !203
  %i.eg = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEERZNS1_9write_ptrIwS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i57, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef %i.ef, i64 noundef %i.ef, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread161

bb.bi:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  %.sroa.0106.8..sroa.0106.8..sroa.0106.8..sroa.2.0.copyload.i33 = inttoptr i64 %extract.t265 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %.sroa.0.0.copyload.i57, ptr %4, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  call void %.sroa.0106.8..sroa.0106.8..sroa.0106.8..sroa.2.0.copyload.i33(ptr noundef %.sroa.0106.0..sroa.0106.0..sroa.0106.0..sroa.0.0.copyload.i31, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !460
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.thread161

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56.thread: ; preds = %bb.al, %bb.ao, %bb.an, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit56
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #31
  unreachable

.thread161:                                       ; preds = %bb.bi, %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit96, %bb.bf, %_ZN3fmt3v126detail21default_arg_formatterIwEclIPKwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit86, %bb.bb, %bb.ba, %bb.az, %_ZN3fmt3v126detail21default_arg_formatterIwEclIwTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit75, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit

.thread158:                                       ; preds = %bb.aj, %bb.ai
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.53) #31
  unreachable

bb.bj:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit54
  %.039.i = phi ptr [ %i.cf, %bb.bj ], [ %i.s, %_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit54 ]
  %.037.i = phi i32 [ %i.cg, %bb.bj ], [ %i.cc, %_ZN3fmt3v126detail14format_handlerIwE9on_arg_idEv.exit54 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.039.i, i64 4
  %i.ej = call noundef ptr @_ZN3fmt3v126detail14format_handlerIwE15on_format_specsEiPKwS5_(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %.037.i, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.a) ; 3 uses
  %i.ek = icmp eq ptr %i.ej, %i.a
  br i1 %i.ek, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !129
  %.not47.i = icmp eq i32 %i.el, 125
  br i1 %.not47.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.54) #31
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit

bb.bo:                                            ; preds = %bb.b
  %i.en = icmp eq ptr %i.s, %i.a
  br i1 %i.en, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eo = load i32, ptr %i.s, align 4, !tbaa !129
  %.not30 = icmp eq i32 %i.eo, 125
  br i1 %.not30, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.52) #31
  unreachable

bb.br:                                            ; preds = %bb.bp
  %.sroa.0.0.copyload.i.i103 = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.ep = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef %.024176, ptr noundef nonnull %i.s, ptr %.sroa.0.0.copyload.i.i103) ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0177, i64 8 ; 2 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit

_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit: ; preds = %bb.bn, %bb.af, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit, %.thread161, %bb.b, %bb.br
  %.125 = phi ptr [ %.024176, %bb.b ], [ %i.eq, %bb.br ], [ %i.em, %bb.bn ], [ %i.eh, %.thread161 ], [ %i.bz, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit ], [ %i.ca, %bb.af ] ; 2 uses
  %.1 = phi ptr [ %i.s, %bb.b ], [ %i.eq, %bb.br ], [ %i.em, %bb.bn ], [ %i.eh, %.thread161 ], [ %i.bz, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail21default_arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit ], [ %i.ca, %bb.af ] ; 2 uses
  %.not = icmp eq ptr %.1, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit, %bb.a
  %.024.lcssa = phi ptr [ %0, %bb.a ], [ %.125, %_ZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i104 = load ptr, ptr %i.er, align 8, !tbaa !116
  %i.es = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef %.024.lcssa, ptr noundef %i.a, ptr %.sroa.0.0.copyload.i.i104) ; 0 uses
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #13 comdat {
bb.a:
  %.not31.i.i = icmp eq ptr %0, %1
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !119
  %.pre37.i.i = load i64, ptr %i.b, align 8, !tbaa !109
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.e = phi i64 [ %.pre37.i.i, %.lr.ph34.i.i ], [ %i.r, %._crit_edge.i.i ] ; 2 uses
  %i.f = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.ak, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %0, %.lr.ph34.i.i ], [ %i.al, %._crit_edge.i.i ] ; 8 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.c, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 4 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.m = add i64 %i.j, %i.f
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.m), !inline_history !31
  %i.n = load i64, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.p = sub i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %i.o, %bb.c ], [ %i.e, %bb.b ]
  %i.s = phi i64 [ %i.n, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %.025.i.i = phi i64 [ %i.q, %bb.c ], [ %i.j, %bb.b ] ; 9 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s ; 6 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.025.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.w = shl i64 %i.s, 2
  %i.x = add i64 %i.w, %i.u
  %i.y = sub i64 %i.h, %i.x
  %diff.check = icmp ugt i64 %i.y, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.025.i.i, -8                  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !129
  %wide.load7 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !129
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %wide.load, ptr %i.ab, align 4, !tbaa !129
  store <4 x i32> %wide.load7, ptr %i.ac, align 4, !tbaa !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail13copy_noinlineIwPKwNS0_14basic_appenderIwEEEET1_T0_S8_S7_:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !469

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader8
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader8 ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d
  %i.ak = add i64 %.025.i.i, %i.s                 ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !119
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.b, !llvm.loop !24

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %.030.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.030.i.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !129
  %i.ap = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !129
  %i.at = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.at
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !129
  %i.ax = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !129
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ax
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !129
  %i.bb = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bb, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !470

_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIwRZNS1_23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !129    ; 5 uses
  %i.b = add i32 %i.a, -48
  %or.cond = icmp ult i32 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq i32 %i.a, 48
  br i1 %.not27, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.c = phi i32 [ %i.h, %bb.c ], [ %i.a, %bb.b ]
  %.027.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]
  %i.d = mul i32 %.027.i, 10
  %i.e = add nsw i32 %i.c, -48                    ; 2 uses
  %i.f = add i32 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 7 uses
  %.not34.i = icmp eq ptr %i.g, %1
  br i1 %.not34.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.h = load i32, ptr %i.g, align 4, !tbaa !129  ; 2 uses
  %i.i = add i32 %i.h, -48
  %or.cond.i = icmp ult i32 %i.i, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 40
  br i1 %i.m, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.n = icmp eq i64 %i.l, 40
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %.027.i to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = zext nneg i32 %i.e to i64
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = icmp samesign ult i64 %i.r, 2147483648
  br i1 %i.s, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit: ; preds = %bb.f, %bb.e, %.critedge.i, %bb.g
  %.036 = phi ptr [ %i.t, %bb.g ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ], [ %i.g, %bb.f ] ; 3 uses
  %.020 = phi i32 [ 0, %bb.g ], [ %i.f, %.critedge.i ], [ %i.f, %bb.e ], [ 2147483647, %bb.f ]
  %i.u = icmp eq ptr %.036, %1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  %i.v = load i32, ptr %.036, align 4, !tbaa !129
  switch i32 %i.v, label %bb.i [
    i32 125, label %bb.j
    i32 58, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #31
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.w = load ptr, ptr %2, align 8, !tbaa !472, !nonnull !93, !align !139
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !114
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.31) #31
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit: ; preds = %bb.j
  store i32 -1, ptr %i.x, align 8, !tbaa !114
  br label %_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIwEE.exit

bb.l:                                             ; preds = %bb.a
  %i.aa = and i32 %i.a, -33
  %i.ab = add i32 %i.aa, -65
  %or.cond8.i = icmp ult i32 %i.ab, 26
  %i.ac = icmp eq i32 %i.a, 95
  %i.ad = or i1 %i.ac, %or.cond8.i
  br i1 %i.ad, label %.critedge3, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #31
  unreachable

.critedge3:                                       ; preds = %bb.l, %bb.n
  %.0 = phi ptr [ %i.ae, %bb.n ], [ %0, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 5 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.critedge3
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129 ; 3 uses
  %i.ag = and i32 %i.af, -33
  %i.ah = add i32 %i.ag, -65
  %or.cond8.i31 = icmp ult i32 %i.ah, 26
  %i.ai = icmp eq i32 %i.af, 95
  %i.aj = or i1 %i.ai, %or.cond8.i31
  %i.ak = add i32 %i.af, -48
  %or.cond30 = icmp ult i32 %i.ak, 10
  %or.cond37 = or i1 %or.cond30, %i.aj
  br i1 %or.cond37, label %.critedge3, label %.critedge, !llvm.loop !471

.critedge:                                        ; preds = %bb.n, %.critedge3
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !472, !nonnull !93, !align !139 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 -1, ptr %i.aq, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !162 ; 2 uses
  %i.at = and i64 %i.as, 4611686018427387904
  %.not14.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not14.i.i.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp slt i64 %i.as, 0
  %.v.i.i.i.i = select i1 %i.aw, i64 -32, i64 -16
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %.v.i.i.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !165 ; 2 uses
  %.not15.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not15.not.i.i.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !166
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bm, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.01216.i.i.i.i ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !168 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129
  %.not5.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not5.i.i.i.i.i, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i.i.i

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i.i.i: ; preds = %bb.p
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bc, i64 4
  %wcslen.i.i.i.i.i = tail call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep.i.i.i.i.i)
  %i.be = add i64 %wcslen.i.i.i.i.i, 1            ; 3 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i.i.i
  %i.bf = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.ao)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.q
  %.016.i.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.q ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.0815.i.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.q ], [ %0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0914.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.q ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bg = load i32, ptr %.0914.i.i.i.i.i.i.i, align 4, !tbaa !129
  %i.bh = load i32, ptr %.0815.i.i.i.i.i.i.i, align 4, !tbaa !129
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.bg, %i.bh
  br i1 %or.cond.not.i.i.i.i.i, label %bb.q, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i.i.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i.i.i, i64 4
  %i.bk = add i64 %.016.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !11

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i.i.i.loopexit: ; preds = %bb.q
  %i.bl = icmp eq i64 %i.be, %i.ao
  br i1 %i.bl, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.i.i, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i.i.i, %bb.p, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i.i.i.loopexit
  %i.bm = add nuw i64 %.01216.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.az
  br i1 %exitcond.not.i.i.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.thread.i.i, label %bb.p, !llvm.loop !12

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.i.i: ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i.i.i.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !169 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.thread.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIwEE.exit

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.thread.i.i: ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i.i.i, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.i.i, %bb.o, %.critedge
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #31
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIwEE.exit: ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.i.i, %_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit
  %.sink = phi i32 [ %.020, %_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %i.bo, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.i.i ]
  %.021 = phi ptr [ %.036, %_ZZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %i.ae, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE6arg_idENS0_17basic_string_viewIwEE.exit.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.bq, align 8, !tbaa !206
  ret ptr %.021
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail14format_handlerIwE15on_format_specsEiPKwS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.115, align 8            ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::counting_buffer", align 8 ; 9 uses
  %6 = alloca %class.anon.134, align 8            ; 8 uses
  %7 = alloca %class.anon.96, align 8             ; 5 uses
  %8 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %9 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %10 = alloca %"struct.fmt::v12::detail::write_int_arg.70", align 16 ; 5 uses
  %11 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %12 = alloca %"struct.fmt::v12::detail::write_int_arg.70", align 16 ; 5 uses
  %13 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %14 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %15 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %16 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %17 = alloca %"struct.fmt::v12::detail::dynamic_format_specs.46", align 8 ; 53 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !162, !noalias !482 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %1, %i.e
  br i1 %i.f, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %1, 14
  br i1 %i.g, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %1, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %i.c, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76, !noalias !482
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %.sroa.077.0.copyload92 = load i128, ptr %i.p, align 16, !tbaa !76 ; 6 uses
  %i.q = trunc i128 %.sroa.077.0.copyload92 to i64
  %i.r = lshr i128 %.sroa.077.0.copyload92, 64
  %i.s = trunc nuw i128 %i.r to i64
  %i.t = trunc i128 %.sroa.077.0.copyload92 to i80
  %i.u = trunc i128 %.sroa.077.0.copyload92 to i32
  %i.v = trunc i128 %.sroa.077.0.copyload92 to i8
  br label %bb.e

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76, !noalias !482
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %.sroa.077.0.copyload = load i128, ptr %i.z, align 16, !tbaa !76 ; 6 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 16, !tbaa !141 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0.copyload, 0
  %i.aa = trunc i128 %.sroa.077.0.copyload to i64
  %i.ab = lshr i128 %.sroa.077.0.copyload, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = trunc i128 %.sroa.077.0.copyload to i80
  %i.ae = trunc i128 %.sroa.077.0.copyload to i32
  %i.af = trunc i128 %.sroa.077.0.copyload to i8
  br i1 %.not, label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread, label %bb.e

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread: ; preds = %bb.b, %bb.d, %bb.c, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #31
  unreachable

bb.e:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %.sroa.077.0..sroa.077.0..sroa.077.0.90 = phi i32 [ %i.u, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105 ], [ %i.ae, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ] ; 8 uses
  %.sroa.077.0..sroa.077.0..sroa.077.0.86 = phi i64 [ %i.q, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105 ], [ %i.aa, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ] ; 10 uses
  %.sroa.077.0..sroa.077.0..sroa.077.0.78 = phi i128 [ %.sroa.077.0.copyload92, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105 ], [ %.sroa.077.0.copyload, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ] ; 6 uses
  %.sroa.077.0..sroa.077.0..sroa.077.0.91 = phi i8 [ %i.v, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105 ], [ %i.af, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ] ; 2 uses
  %.sroa.077.0..sroa.077.0..sroa.077.0.79.in = phi i80 [ %i.t, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105 ], [ %i.ad, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ]
  %.sroa.077.8..sroa.077.8..sroa.077.8.95 = phi i64 [ %i.s, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105 ], [ %i.ac, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ] ; 5 uses
  %.sroa.23.0107 = phi i32 [ %i.l, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread105 ], [ %.sroa.23.0.copyload, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ] ; 3 uses
  %.sroa.077.0..sroa.077.0..sroa.077.0.79 = bitcast i80 %.sroa.077.0..sroa.077.0..sroa.077.0.79.in to x86_fp80
  %.sroa.077.0..sroa.077.0..sroa.077.0.82 = bitcast i64 %.sroa.077.0..sroa.077.0..sroa.077.0.86 to double
  %.sroa.077.0..sroa.077.0..sroa.077.0.87 = bitcast i32 %.sroa.077.0..sroa.077.0..sroa.077.0.90 to float
  %.sroa.077.0..sroa.077.0..sroa.077.0.83 = inttoptr i64 %.sroa.077.0..sroa.077.0..sroa.077.0.86 to ptr ; 5 uses
  %.not.i = icmp eq i32 %.sroa.23.0107, 15
  br i1 %.not.i, label %bb.f, label %_ZN3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE13format_customEPKwRNS0_13parse_contextIwEERS5_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.077.8..sroa.077.8..sroa.077.8. = inttoptr i64 %.sroa.077.8..sroa.077.8..sroa.077.8.95 to ptr
  %i.ag = load ptr, ptr %0, align 8, !tbaa !207   ; 2 uses
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  store ptr %i.al, ptr %0, align 8, !tbaa !207
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !208
  %i.ao = sub i64 %i.an, %i.ak
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !208
  tail call void %.sroa.077.8..sroa.077.8..sroa.077.8.(ptr noundef %.sroa.077.0..sroa.077.0..sroa.077.0.83, ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !477
  %i.ap = load ptr, ptr %0, align 8, !tbaa !207
  br label %bb.ar

_ZN3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE13format_customEPKwRNS0_13parse_contextIwEERS5_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  store i32 32768, ptr %17, align 8, !tbaa !121
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i8 32, ptr %i.ar, align 4, !tbaa !76
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 5
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.as, align 4, !tbaa !123
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store i32 0, ptr %i.at, align 8, !tbaa !76
  %i.au = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIwEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sroa.23.0107)
  %i.av = load i32, ptr %17, align 8, !tbaa !121  ; 2 uses
  %i.aw = and i32 %i.av, 960
  %.not108 = icmp eq i32 %i.aw, 0
  br i1 %.not108, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE13format_customEPKwRNS0_13parse_contextIwEERS5_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ay = lshr i32 %i.av, 6
  %i.az = and i32 %i.ay, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextINS0_14basic_appenderIwEEwEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERSA_(i32 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.bb = load i32, ptr %17, align 8, !tbaa !121
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = and i32 %i.bc, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextINS0_14basic_appenderIwEEwEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERSA_(i32 noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE13format_customEPKwRNS0_13parse_contextIwEERS5_.exit
  %.sroa.0.0.copyload.i48 = load ptr, ptr %i.a, align 8, !tbaa !116 ; 22 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i49 = load ptr, ptr %i.be, align 8, !tbaa !118 ; 11 uses
  switch i32 %.sroa.23.0107, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail13arg_formatterIwEEEEDTclfp_Li0EEEOT_.exit [
    i32 14, label %.preheader
    i32 1, label %bb.i
    i32 2, label %bb.n
    i32 3, label %bb.q
    i32 4, label %bb.v
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIwEEwmNS1_14digit_groupingIwEEEET_S7_T1_iiT0_RKT2_:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZZN3fmt3v126detail11write_fixedIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !775, !nonnull !93, !align !140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !220  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !119
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = and i32 %i.d, 47
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !16
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ] ; 2 uses
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !108
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  store i32 %i.e, ptr %i.p, align 4, !tbaa !129
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit
  %i.q = phi i64 [ %.pre, %._crit_edge ], [ %.pre-phi.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.s = add i64 %i.q, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !16
  %.pre.i.i6 = load i64, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit8

_ZN3fmt3v1214basic_appenderIwEaSEw.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ] ; 3 uses
  %i.y = phi i64 [ %i.q, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  store i64 %.pre-phi.i.i5, ptr %i.r, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  store i32 48, ptr %i.aa, align 4, !tbaa !129
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !776, !nonnull !93
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !227, !range !92, !noundef !93
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !777, !nonnull !93, !align !140
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !129
  %i.ai = add i64 %.pre-phi.i.i5, 1               ; 3 uses
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !109
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit13

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ai), !inline_history !16
  %.pre.i.i11 = load i64, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  %.pre17 = load ptr, ptr %1, align 8, !tbaa !108
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit13

_ZN3fmt3v1214basic_appenderIwEaSEw.exit13:        ; preds = %bb.f, %bb.g
  %i.an = phi ptr [ %i.z, %bb.f ], [ %.pre17, %bb.g ] ; 2 uses
  %.pre-phi.i.i10 = phi i64 [ %i.ai, %bb.f ], [ %.pre2.i.i12, %bb.g ] ; 2 uses
  %i.ao = phi i64 [ %.pre-phi.i.i5, %bb.f ], [ %.pre.i.i11, %bb.g ]
  store i64 %.pre-phi.i.i10, ptr %i.r, align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  store i32 %i.ah, ptr %i.ap, align 4, !tbaa !129
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !778, !nonnull !93, !align !140
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !71 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEiwEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit13
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i, %.lr.ph.i
  %i.av = phi ptr [ %i.an, %.lr.ph.i ], [ %i.bb, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ]
  %i.aw = phi i64 [ %.pre-phi.i.i10, %.lr.ph.i ], [ %.pre-phi.i.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ] ; 2 uses
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ]
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !109
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !107
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !37
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre18 = load ptr, ptr %1, align 8, !tbaa !108
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i:        ; preds = %bb.i, %bb.h
  %i.bb = phi ptr [ %i.av, %bb.h ], [ %.pre18, %bb.i ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ] ; 2 uses
  %i.bc = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  store i64 %.pre-phi.i.i.i, ptr %i.r, align 8, !tbaa !119
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  store i32 48, ptr %i.bd, align 4, !tbaa !129
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.as
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEiwEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !36

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEiwEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !779, !nonnull !93, !align !139
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !235
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !780, !nonnull !93, !align !140
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !71
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIwmNS0_14basic_appenderIwEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i64 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEiwEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEiwEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_PKT_RKNS0_12format_specsENS0_10locale_refE(ptr %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::counting_buffer", align 8 ; 9 uses
  %5 = alloca %class.anon.134, align 8            ; 8 uses
  %6 = alloca %class.anon.115, align 8            ; 5 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !121
  %i.b = and i32 %i.a, 7                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.03.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %.0.i.i.i = phi i32 [ 0, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.e = add nuw nsw i32 %.0.i.i.i, 1             ; 2 uses
  %i.f = lshr i64 %.03.i.i.i, 4                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit, label %bb.c, !llvm.loop !18

_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit: ; preds = %bb.c
  %narrow.i = add nuw i32 %.0.i.i.i, 3
  %i.g = zext i32 %narrow.i to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 %i.d, ptr %6, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.e, ptr %i.h, align 8, !tbaa !203
  %i.i = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEERZNS1_9write_ptrIwS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.g, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %1, align 4, !tbaa !129
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %scevgep.i = getelementptr i8, ptr %1, i64 4
  %wcslen.i = tail call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep.i)
  %i.k = add i64 %wcslen.i, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit:     ; preds = %bb.f, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.k, %.lr.ph.preheader.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !123  ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.0.lcssa.i, i64 %i.n)
  %i.o = icmp slt i32 %i.m, 0
  %.0.i.i = select i1 %i.o, i64 %.0.lcssa.i, i64 %spec.select.i.i
  %i.p = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.p, label %bb.g, label %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit

bb.g:                                             ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.q, ptr %4, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 256, ptr %i.s, align 8, !tbaa !109
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN3fmt3v126detail15counting_bufferIwE4growERNS1_6bufferIwEEm, ptr %i.t, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 1056 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !211
  %i.v = call ptr @_ZN3fmt3v126detail20write_escaped_stringIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %4, ptr nonnull %1, i64 %.0.lcssa.i) ; 0 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !211
  %i.x = load i64, ptr %i.r, align 8, !tbaa !119
  %i.y = add i64 %i.x, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit, %bb.g
  %.1.i.i = phi i64 [ %i.y, %bb.g ], [ %.0.i.i, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit ] ; 3 uses
  %i.z = zext i1 %i.p to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i8 %i.z, ptr %5, align 8, !tbaa !213
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.aa, align 8, !tbaa !110
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.ab, align 8, !tbaa !214
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.1.i.i, ptr %i.ac, align 8, !tbaa !215
  %i.ad = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_5writeIwS5_TnNSt9enable_ifIXntsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %.1.i.i, i64 noundef %.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit
  %.sroa.06.0 = phi ptr [ %i.i, %_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit ], [ %i.ad, %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit ]
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail20write_escaped_stringIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::find_escape_result.65", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !16
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !108
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  store i32 34, ptr %i.k, align 4, !tbaa !129
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ], [ %i.by, %bb.h ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ], [ %i.bx, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %.not15.i = icmp eq ptr %.0, %i.l
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.0916.i = phi ptr [ %i.s, %bb.d ], [ %.0, %bb.c ] ; 5 uses
  %i.o = load i32, ptr %.0916.i, align 4, !tbaa !129, !noalias !788 ; 4 uses
  %i.p = icmp ult i32 %i.o, 32
  br i1 %i.p, label %.thread.i, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %.lr.ph.i
  switch i32 %i.o, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i [
    i32 127, label %.thread.i
    i32 92, label %.thread.i
    i32 34, label %.thread.i
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i:        ; preds = %switch.early.test.i.i
  %i.q = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.o), !noalias !788
  br i1 %i.q, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %.lr.ph.i
  store ptr %.0916.i, ptr %3, align 8, !tbaa !186, !alias.scope !788
  %i.r = getelementptr inbounds nuw i8, ptr %.0916.i, i64 4
  br label %_ZN3fmt3v126detail11find_escapeIwEENS1_18find_escape_resultIT_EEPKS4_S7_.exit

bb.d:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0916.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.s, %i.l
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !783

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.09.lcssa.i = phi ptr [ %.0, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  store ptr %.09.lcssa.i, ptr %3, align 8, !tbaa !186, !alias.scope !788
  br label %_ZN3fmt3v126detail11find_escapeIwEENS1_18find_escape_resultIT_EEPKS4_S7_.exit

_ZN3fmt3v126detail11find_escapeIwEENS1_18find_escape_resultIT_EEPKS4_S7_.exit: ; preds = %.thread.i, %._crit_edge.i
  %i.t = phi ptr [ %i.r, %.thread.i ], [ null, %._crit_edge.i ] ; 2 uses
  %i.u = phi ptr [ %.0916.i, %.thread.i ], [ %.09.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.lcssa.sink.i = phi i32 [ %i.o, %.thread.i ], [ 0, %._crit_edge.i ]
  store ptr %i.t, ptr %i.m, align 8, !tbaa !187, !alias.scope !788
  store i32 %.lcssa.sink.i, ptr %i.n, align 8, !tbaa !188, !alias.scope !788
  %.not31.i.i = icmp eq ptr %.0, %i.u
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v126detail11find_escapeIwEENS1_18find_escape_resultIT_EEPKS4_S7_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.v, align 8, !tbaa !119
  %.pre37.i.i = load i64, ptr %i.w, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.z = phi i64 [ %.pre37.i.i, %.lr.ph34.i.i ], [ %i.am, %._crit_edge.i.i ] ; 2 uses
  %i.aa = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.bg, %._crit_edge.i.i ] ; 8 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ad = sub i64 %i.x, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 4 uses
  %i.af = icmp ult i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !107
  %i.ah = add i64 %i.ae, %i.aa
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ah), !inline_history !31
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !119 ; 2 uses
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !109 ; 2 uses
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ak)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = phi i64 [ %i.aj, %bb.f ], [ %i.z, %bb.e ]
  %i.an = phi i64 [ %i.ai, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.al, %bb.f ], [ %i.ae, %bb.e ] ; 9 uses
  %i.ao = load ptr, ptr %.sroa.022.0, align 8, !tbaa !108 ; 2 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an ; 6 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ar = shl i64 %i.an, 2
  %i.as = add i64 %i.ar, %i.ap
  %i.at = sub i64 %i.ac, %i.as
  %diff.check = icmp ugt i64 %i.at, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.025.i.i, -8                  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !129
  %wide.load60 = load <4 x i32>, ptr %i.av, align 4, !tbaa !129
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %wide.load, ptr %i.aw, align 4, !tbaa !129
end_hunk_3
begin_hunk_4_@_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS2_IcS3_IcESaIcEEERKT_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !81, !alias.scope !811 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !76, !alias.scope !811
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #27
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE5PrintERKS7_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !59
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !59
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !76
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #26
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !59
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !200
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing8internal17PrintWideStringToERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %i.a, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !174, !alias.scope !818
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !80, !alias.scope !818
  store i8 0, ptr %i.c, align 8, !tbaa !76, !alias.scope !818
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197, !noalias !818 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !818 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198, !noalias !818 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !81, !alias.scope !818 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !76, !alias.scope !818
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !59
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !59
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !76
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #26
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !59
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !200
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.15", align 8 ; 11 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.51, i64 noundef 4) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !170
  %i.d = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #28 ; 8 uses
  %.idx.i = shl nuw nsw i64 %i.d, 2               ; 2 uses
  %i.e = icmp ugt i64 %i.d, 3
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.f, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #31
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i64 %i.d, 2305843009213693951
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, !prof !173

.noexc11.i:                                       ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.h = add nuw nsw i64 %.idx.i, 4
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !105
  store i64 %i.d, ptr %i.c, align 8, !tbaa !76
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, %bb.c
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.c ] ; 4 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.k = load i32, ptr %0, align 4, !tbaa !129
  store i32 %i.k, ptr %i.j, align 4, !tbaa !129
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.l = call ptr @wmemcpy(ptr noundef nonnull %i.j, ptr noundef nonnull %0, i64 noundef %i.d) #26 ; 0 uses
  %.pre8.i.i = load ptr, ptr %2, align 8, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i ], [ %i.j, %bb.f ], [ %.pre8.i.i, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.n, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  store i32 0, ptr %i.o, align 4, !tbaa !129
  invoke void @_ZN7testing8internal17PrintWideStringToERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit unwind label %bb.i

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit: ; preds = %bb.h
  %i.p = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit
  %i.r = load i64, ptr %i.c, align 8, !tbaa !76
  %i.s = shl i64 %i.r, 2
  %i.t = add i64 %i.s, 4
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  %i.x = load i64, ptr %i.c, align 8, !tbaa !76
  %i.y = shl i64 %i.x, 2
  %i.z = add i64 %i.y, 4
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA7_wEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(28) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS2_IcS3_IcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !825
  store ptr %4, ptr %i.a, align 8, !tbaa !110, !noalias !826
  invoke void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !825
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !81     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !76
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.g = load ptr, ptr %5, align 8, !tbaa !81     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !76
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !81     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !76
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.s = load ptr, ptr %5, align 8, !tbaa !81     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !76
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_proxy_fmt_format_tests.cpp() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !174
  %i.b = call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #30 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !81
  store i64 19, ptr %i.a, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 19, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
end_hunk_4
